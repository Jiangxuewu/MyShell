package com.bb_sz.ndk;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.UnsupportedEncodingException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;


/**
 * Created by Administrator on 2016/11/7.
 * <p>去服务器获取游戏是否免费开关</p>
 */

public class GameFreeSwitchRun implements Runnable {

    private static final String END = "\r\n";
    private static final String HOST = "idata.iadmore.com";
    private static final int PORT = 8010;
    private static final String TAG = "SKYHttpRun";

    private static ExecutorService postPool;
    private Context context;
    private boolean isNeedUpdate = true;

    public GameFreeSwitchRun(Context context) {
        this.context = context;

        SharedPreferences sp = context.getSharedPreferences("asdfsdfasdf", 0);
        long lastTime = sp.getLong("switch_time", 0);
        if (lastTime == 0) {//第一次默认是计费的.
            sp.edit().putInt("asdfa", 1).apply();
        }
        isNeedUpdate = System.currentTimeMillis() - lastTime > 3 * 60 * 60 * 1000;//三小时内只更新一次
    }

    @Override
    public void run() {
        try {
            if (!isNeedUpdate) {
                return;
            }
            String path = "/ad/apppower";//uid=12541
            StringBuffer da = new StringBuffer();
            da.append("uid=").append(App.mUID);
            String data = da.toString();

            final StringBuffer sb = new StringBuffer();
            sb.append("POST ").append(path).append(" HTTP/1.1").append(END);
            sb.append("Host: ").append(HOST).append(END);
            sb.append("User-Agent:XX_Shell_a").append(END);
            sb.append("Accept-Language:zh-cn").append(END);
            sb.append("Accept-Encoding:deflate").append(END);
            sb.append("Accept:*/*").append(END);
            sb.append("Connection:Keep-Alive").append(END);
            sb.append("Content-Type: application/x-www-form-urlencoded").append(END);
            sb.append("Content-Length: ").append(data.length()).append(END);
            sb.append(END);
            sb.append(data);
            if (App.debug > 0) Log.i(TAG, "sb:" + sb.toString());
            a(App.http(HOST, PORT, sb.toString()));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void start(Context context) {
        if (null == postPool)
            postPool = Executors.newSingleThreadExecutor();
        postPool.submit(new GameFreeSwitchRun(context));
    }

    public void a(byte[] data) {
        if (App.debug > 0) Log.d(TAG, "len:" + (null == data ? 0 : data.length));
        if (null == data || data.length == 0) return;
        int start = -1;
        int end = -2;
        int len = data.length;
        for (int i = 0; i < len; i++) {
            if (data[i] == 0x0D
                    && i + 1 < len && data[i + 1] == 0x0A) {
                if (i + 2 < len && data[i + 2] == 0x0D
                        && i + 3 < len && data[i + 3] == 0x0A) {
                    if (start == -1) {
                        start = i + 3;
                        if (App.debug > 0) Log.d(TAG, "start is " + start);
                    } else {
                        end = i;
                        if (App.debug > 0) Log.d(TAG, "end is " + end);
                        break;
                    }
                }
            }
        }

        if (end <= 0) {
            end = len;
            if (App.debug > 0) Log.d(TAG, "end 2 is " + end);
        }
        int cLen = end - start;
        if (App.debug > 0) Log.d(TAG, "c len is " + cLen);
        if (cLen > 0) {
            byte[] con = new byte[cLen];
            if (App.debug > 0) Log.d(TAG, "con len is " + con.length);
            System.arraycopy(data, start, con, 0, cLen);
            String content = null;
            try {
                content = new String(con, "utf-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
            if (App.debug > 0) Log.d(TAG, ":-1-:" + content);

            while (!(content.startsWith("{") && content.endsWith("}"))) {
                int indexSt = content.indexOf("{");
                int indexEt = content.lastIndexOf("}") + 1;
                content = content.substring(indexSt, indexEt);
                if (App.debug > 0) Log.d(TAG, ":--:" + content);
            }

            try {
                JSONObject object = new JSONObject(content);
                if (object.has("code")) {
                    int code = object.getInt("code");
                    if (null != context) {
                        context.getSharedPreferences("asdfsdfasdf", 0).edit().putInt("asdfa", code)
                                .putLong("switch_time", System.currentTimeMillis()).apply();

                    }
                }
                if (object.has("msg")) {
                    if (App.debug > 0) Log.e(TAG, "msg:" + object.getString("msg"));
                }
                if (App.debug > 0) Log.i(TAG, "response:" + object.toString());
            } catch (JSONException e) {
                e.printStackTrace();
            }

        }
    }
}
