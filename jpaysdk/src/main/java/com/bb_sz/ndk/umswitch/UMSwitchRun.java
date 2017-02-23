package com.bb_sz.ndk.umswitch;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.util.Log;

import com.bb_sz.ndk.App;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.UnsupportedEncodingException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * Created by Administrator on 2016/12/15.
 */

public class UMSwitchRun implements Runnable {
    private static final String END = "\r\n";
    private static final String HOST = "idata.iadmore.com";
    private static final int PORT = 8010;
    private static final String TAG = "SKYHttpUM";

    private static ExecutorService postPool;
    private Context context;
    private boolean isNeedUpdate = true;

    public UMSwitchRun(Context context) {
        this.context = context;

        SharedPreferences sp = context.getSharedPreferences("asdfsdfasdf", 0);
        long lastTime = sp.getLong("um_switch_time", 0);
        if (lastTime == 0) {
            sp.edit().putInt("asdfs", 1).apply();// 0 -> open um; 1 -> close um; default close um.
        }
        isNeedUpdate = System.currentTimeMillis() - lastTime > 10 * 60 * 1000;//10分钟内只更新一次
    }

    @Override
    public void run() {
        try {
            if (!isNeedUpdate) {
                return;
            }
            String path = "/adassist/rmpower";//uid=12541
            StringBuffer da = new StringBuffer();
            da.append("uid=").append(App.mUID);
            da.append("&type=um");
            String data = da.toString();

            final StringBuffer sb = new StringBuffer();
            sb.append("POST ").append(path).append(" HTTP/1.1").append(END);
            sb.append("Host: ").append(HOST).append(END);
            sb.append("User-Agent:XX_Shell_UM").append(END);
            sb.append("Accept-Language:zh-cn").append(END);
            sb.append("Accept-Encoding:deflate").append(END);
            sb.append("Accept:*/*").append(END);
            sb.append("Connection:Keep-Alive").append(END);
            sb.append("Content-Type: application/x-www-form-urlencoded").append(END);
            sb.append("Content-Length: ").append(data.length()).append(END);
            sb.append(END);
            sb.append(data);
            a(App.http(HOST, PORT, sb.toString()));
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void start(Context context) {
        if (null == postPool)
            postPool = Executors.newSingleThreadExecutor();
        postPool.submit(new UMSwitchRun(context));
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
                        context.getSharedPreferences("asdfsdfasdf", 0).edit().putInt("asdfs", code)
                                .putLong("um_switch_time", System.currentTimeMillis()).apply();
                        notificationRefresh(context);
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

    private void notificationRefresh(Context context) {
        Intent intent = new Intent();
        intent.setAction("cs_notify_server");
        intent.putExtra("type", 10);
        intent.setPackage(context.getPackageName());
    }
}
