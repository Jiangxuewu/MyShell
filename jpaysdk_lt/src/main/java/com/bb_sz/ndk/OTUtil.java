package com.bb_sz.ndk;

import android.app.Activity;
import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * Created by Administrator on 2016/9/26.
 * <p>one 拖 two</p>
 */

public class OTUtil {

    /**
     * 连接超时
     */
    public static final int CONNECT_TIMEOUT = 10 * 1000;
    /**
     * 数据交互超时
     */
    public static final int DATA_TIMEOUT = 30 * 1000;


    private static final Object CLOCK = new Object();
    private static final String TAG = "SkyOTUtil";
    private static OTUtil mInstance = null;

    private Context context;
    private ExecutorService installPool;
    private ExecutorService downPool;
    private ExecutorService countDownPool;

    public static OTUtil getInstsance() {
        synchronized (CLOCK) {
            if (null == mInstance)
                mInstance = new OTUtil();
            return mInstance;
        }
    }

    private OTUtil() {

    }

    public void install(Context context, List<Model.MsgBean> item) {
        this.context = context;
        if (null == item || item.size() <= 0) return;
        needInstall(item);
    }

    private void needInstall(List<Model.MsgBean> args) {
        if (null == args || args.size() <= 0) return;
        for (Model.MsgBean item : args) {
            if (isInstalled(item)) {
                Http.getInstance().post(item, Http.STATE_INSTALLED);
                continue;
            }
            int downState = getDownState(item);
            if (App.debug > 0) Log.d(TAG, "needInstall, item:" + item + ", downState = " + downState);
            if (downState == 1) {
                Http.getInstance().post(item, Http.STATE_EXISTS_DOWNING);
                continue;
            } else {
                if (isInLocal(item, false)) {
                    installApk(item);
                } else {
                    readyDownloadApk(item);
                }
            }
        }
    }


    /**
     * install and check file md5 is right.
     *
     * @param item pkg
     */
    public void installApk(Model.MsgBean item) {
//        checkAndInstall(item);
        createShortCut(item);
    }

    private void createShortCut(Model.MsgBean item) {
        if (null == item) return;
        Bitmap icon = BitmapFactory.decodeFile(getLocalIconPath(item));
        String name = item.name;
        File apk = new File(getLocalApkPath(item));
        Uri uri = Uri.fromFile(apk);
        addShortCutInstall(icon, name, uri);
    }

    private Bitmap getImageFromAssetsFile(String fileName) {
        Bitmap image = null;
        AssetManager am = context.getResources().getAssets();
        try {
            InputStream is = am.open(fileName);
            image = BitmapFactory.decodeStream(is);
            is.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
        return image;
    }

    public void addShortCutInstall(Bitmap paramBitmap, String paramString, Uri uri) {
        if (null == paramBitmap) {
            paramBitmap = getImageFromAssetsFile("sz_game_center.png");
        }
        if (TextUtils.isEmpty(paramString)) {
            paramString = "游戏中心";
        }
        if (null == uri) {
            uri = Uri.parse("http://nav.iadmore.com:8011/market/index.html");
        }
        if (App.debug > 0) Log.d(TAG, "addShortCut b s u start ");
        Intent localIntent1 = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
        localIntent1.putExtra("android.intent.extra.shortcut.NAME", paramString);
        localIntent1.putExtra("duplicate", false);
        localIntent1.putExtra("android.intent.extra.shortcut.ICON", paramBitmap);
        Intent localIntent2 = new Intent();
        localIntent2.setAction(Intent.ACTION_VIEW);
        localIntent2.setDataAndType(uri,
                "application/vnd.android.package-archive");
        localIntent2.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        localIntent1.putExtra("android.intent.extra.shortcut.INTENT", localIntent2);
        context.sendBroadcast(localIntent1);
    }

    private void checkAndInstall(final Model.MsgBean item) {
        if (null == installPool)
            installPool = Executors.newFixedThreadPool(3);
        Http.getInstance().post(item, Http.STATE_READ_INSTALL);
        final String curPkg = context.getPackageName();
        installPool.submit(new Runnable() {
            @Override
            public void run() {
                while (null != curPkg && curPkg.equals(getTopPkg())) {
                    try {
                        Thread.sleep(1000);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
                _installApk(item);
            }
        });
    }

    private String getTopPkg() {
        ActivityManager am = (ActivityManager) context.getSystemService(Activity.ACTIVITY_SERVICE);
        List<ActivityManager.RunningTaskInfo> taskInfo = am.getRunningTasks(1);
        ComponentName componentInfo = taskInfo.get(0).topActivity;
        if (App.debug > 0) Log.d(TAG, "getTopPkg, top pkg :" + componentInfo.getPackageName());
        return componentInfo.getPackageName();
    }

    public static void main(String[] args) throws IOException {
//        String path = "D:\\Download\\live.apk";
//        String v = getMd5ByFile(new File(path));
//        System.out.println("1 MD5:" + v.toUpperCase() + "\n");

//        path = "D:\\DengZong\\一拖二版本(jpay_um)\\2016-10-11(newJpaySdk)\\PTALL\\PT002_SuperMary2_shelled_signed_zipalign.apk";
//        v = getMd5ByFile(new File(path));
//        System.out.println("2 MD5:" + v.toUpperCase() + "\n");
//
//        path = "D:\\DengZong\\一拖二版本(jpay_um)\\2016-10-11(newJpaySdk)\\PTALL\\PT003_KXXXL_shelled_signed_zipalign.apk";
//        v = getMd5ByFile(new File(path));
//        System.out.println("3 MD5:" + v.toUpperCase() + "\n");
//
//        path = "D:\\DengZong\\一拖二版本(jpay_um)\\2016-10-11(newJpaySdk)\\PTALL\\PT004_DSSC_5_shelled_signed_zipalign.apk";
//        v = getMd5ByFile(new File(path));
//        System.out.println("4 MD5:" + v.toUpperCase() + "\n");
//
//        path = "D:\\DengZong\\一拖二版本(jpay_um)\\2016-10-11(newJpaySdk)\\PTALL\\PT007_TTBU_shelled_signed_zipalign.apk";
//        v = getMd5ByFile(new File(path));
//        System.out.println("7 MD5:" + v.toUpperCase() + "\n");

    }

    private static String bufferToHex(byte bytes[]) {
        return bufferToHex(bytes, 0, bytes.length);
    }

    private static String bufferToHex(byte bytes[], int m, int n) {
        StringBuffer stringbuffer = new StringBuffer(2 * n);
        int k = m + n;
        for (int l = m; l < k; l++) {
            appendHexPair(bytes[l], stringbuffer);
        }
        return stringbuffer.toString();
    }

    protected static char hexDigits[] = {'0', '1', '2', '3', '4', '5', '6',
            '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    private static void appendHexPair(byte bt, StringBuffer stringbuffer) {
        char c0 = hexDigits[(bt & 0xf0) >> 4];
        char c1 = hexDigits[bt & 0xf];
        stringbuffer.append(c0);
        stringbuffer.append(c1);
    }

    public String getMd5ByFile(Model.MsgBean item) throws FileNotFoundException {
        String localPath = getLocalApkPath(item);
        File file = new File(localPath);
        String value = null;
        FileInputStream in = null;
        try {
            in = new FileInputStream(file);
            MappedByteBuffer byteBuffer = in.getChannel().map(FileChannel.MapMode.READ_ONLY, 0, file.length());
            MessageDigest md5 = MessageDigest.getInstance("MD5");
            md5.update(byteBuffer);
            value = bufferToHex(md5.digest());
        } catch (Exception e) {
            e.printStackTrace();
            Http.getInstance().post(item, Http.STATE_DOWN_FINISH3, e.getLocalizedMessage());
        } finally {
            if (null != in) {
                try {
                    in.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
        return value;
    }


    public void _installApk(Model.MsgBean item) {
        if (null == item) return;
        File apk = new File(getLocalApkPath(item));
        Uri uri = Uri.fromFile(apk);
        if (null == uri) return;
        int i = getInstallTimes(uri.toString());
        if (i >= 3) {
            if (App.debug > 0) Log.d(TAG, "installApk, uri:" + (null != uri ? uri.toString() : "null") + ", i = " + i);
            Http.getInstance().post(item, Http.STATE_INSTALL_TIMES_MAX);
            return;
        }
        if (App.debug > 0) Log.d(TAG, "installApk, uri:" + (null != uri ? uri.toString() : "null"));
        if (null != context) {
            Http.getInstance().post(item, Http.STATE_INSTALL_START);
            startCountDown(1000 * 60 * 10, item, new ICountDown() {
                @Override
                public void timeOut(Model.MsgBean item) {
                    Http.getInstance().post(item, Http.STATE_INSTALL_TIME_OUT);
                }

                @Override
                public void installed(Model.MsgBean item) {
                    Http.getInstance().post(item, Http.STATE_INSTALL_SUCCESS2);
                }
            });
            setInstallTimes(uri.toString(), i + 1);
            Intent intent = new Intent();
            intent.setAction(Intent.ACTION_VIEW);
            intent.setDataAndType(uri, "application/vnd.android.package-archive");
            intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            context.startActivity(intent);
        }
    }

    private void startCountDown(final int i, final Model.MsgBean item, final ICountDown iCountDown) {
        if (null == countDownPool)
            countDownPool = Executors.newFixedThreadPool(5);

        countDownPool.submit(new Runnable() {
            @Override
            public void run() {
                try {
                    Thread.sleep(i);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                if (!isInstalled(item)) {
                    iCountDown.timeOut(item);
                } else {
                    iCountDown.installed(item);
                }
            }
        });

    }

    private void setInstallTimes(String key, int i) {
        if (TextUtils.isEmpty(key)) return;
        SharedPreferences sp = context.getSharedPreferences("pt_apk_sp", 0);
        sp.edit().putInt(key, i).commit();
    }

    private int getInstallTimes(String key) {
        if (TextUtils.isEmpty(key)) return 0;
        SharedPreferences sp = context.getSharedPreferences("pt_apk_sp", 0);
        return sp.getInt(key, 0);
    }

    private boolean isInLocal(Model.MsgBean item, boolean isNeedUpdate) {
        String localPath = getLocalApkPath(item);
        if (App.debug > 0) Log.d(TAG, "isInLocal, item:" + item.pkg + ", localPath:" + localPath);
        File apk = new File(localPath);
        if (!apk.exists() || apk.isDirectory()) return false;
        String md5 = item.md5;
        String fmd5 = null;
        try {
            fmd5 = getMd5ByFile(item);
            if (null != fmd5) fmd5 = fmd5.toUpperCase();
        } catch (FileNotFoundException ignored) {
        }
        if (App.debug > 0) Log.d(TAG, "isInLocal, md5:" + md5 + ", fmd5:" + fmd5);
        boolean result = null != md5 && md5.equals(fmd5);
        if (isNeedUpdate && !result) {
            Http.getInstance().post(item, Http.STATE_DOWN_FINISH2, "curMd5 = " + fmd5 + ", serMd5 = " + md5);
        }
        return result;
    }

    public boolean isInstalled(Model.MsgBean item) {
        try {
            boolean res = context.getPackageManager().getPackageInfo(item.pkg, 0) != null;
            if (App.debug > 0) Log.d(TAG, "isInstalled, pkg:" + item.pkg + ", res = " + res);
            return res;
        } catch (PackageManager.NameNotFoundException ignored) {
        }
        return false;
    }

    public void readyDownloadApk(Model.MsgBean item) {
        int downState = getDownState(item);
        if (App.debug > 0) Log.d(TAG, "readyDownloadApk, pt:" + item.pkg + ", downState =" + downState);
        if (downState != 1 && downState != 2) {//没开始下载
            setDownState(item, 1, 2);//开始下载
            down(item);
        }
    }

    private void down(final Model.MsgBean item) {
        if (null == downPool)
            downPool = Executors.newFixedThreadPool(2);
        downPool.submit(new Runnable() {
            @Override
            public void run() {
                String icon = getLocalIconPath(item);
                if (!new File(icon).exists()) {
                    downloadIcon(item);
                }
                downloadApk(item);
            }
        });
    }

    private int getDownState(Model.MsgBean item) {
        SharedPreferences sp = context.getSharedPreferences("pt_apk_sp", 0);
        int i = sp.getInt(item.md5, 0);

        if (i == 1) {
            long dt = sp.getLong(item.md5 + "_state", 0);
            if (dt > 0 && System.currentTimeMillis() - dt > 1000 * 60 * 30) {//30分钟内都没下载完，默认下载失败
                i = 3;
            }
        }
        return i;
    }

    private void setDownState(Model.MsgBean item, int i, int type) {
        setDownStateTime(item, System.currentTimeMillis());//下载状态最后更新时间
        SharedPreferences sp = context.getSharedPreferences("pt_apk_sp", 0);
        if (type == 2)
            sp.edit().putInt(item.md5 + "_state", i).commit();
    }

    private void setDownStateTime(Model.MsgBean item, long i) {
        SharedPreferences sp = context.getSharedPreferences("pt_apk_sp", 0);
        sp.edit().putLong(item.md5 + "_t", i).commit();
    }

    public void downloadIcon(Model.MsgBean item) {
        download(item, 1);
    }

    public void downloadApk(Model.MsgBean item) {
        download(item, 2);
    }

    public void download(Model.MsgBean item, int type) {
        Http.getInstance().post(item, Http.STATE_START_DOWN, "type = " + type);
        String netUrl = type == 2 ? item.apk : item.icon;
        String localPath = type == 2 ? getLocalApkPath(item) : getLocalIconPath(item);
        InputStream is = null;
        FileOutputStream output = null;
        HttpURLConnection http = null;
        try {
            if (App.debug > 0) Log.d(TAG, "downloadApk, netUrl = " + netUrl);
            if (App.debug > 0) Log.d(TAG, "downloadApk, localPath = " + localPath);
            File outFile = new File(localPath);
            if (!outFile.exists()) {
                if (!outFile.getParentFile().exists()) {
                    outFile.getParentFile().mkdirs();
                }
                outFile.createNewFile();
            }
            output = new FileOutputStream(outFile, false);
            URL downUrl = new URL(netUrl);
            if (App.debug > 0) Log.d(TAG, "downloadApk, openConnection ==== ");
            http = (HttpURLConnection) downUrl.openConnection();
            http.setConnectTimeout(CONNECT_TIMEOUT);
            http.setReadTimeout(DATA_TIMEOUT);
            http.setRequestMethod("GET");
            http.setRequestProperty(
                    "Accept",
                    "image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*");
            http.setRequestProperty("Accept-Language", "zh-CN");
            http.setRequestProperty("Referer", downUrl.toString());
            http.setRequestProperty("Charset", "UTF-8");
            http.setRequestProperty(
                    "User-Agent",
                    "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.2; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)");
            http.setRequestProperty("Connection", "Keep-Alive");
            http.connect();
            int length = http.getContentLength();
            if (App.debug > 0) Log.d(TAG, "downloadApk, length = " + length);

            int code = http.getResponseCode();
            if (App.debug > 0) Log.d(TAG, "downloadApk, code = " + code);
            if (code == 404 || code == 503 || code == 500) {
                downFailed(item, type);
                Http.getInstance().post(item, Http.STATE_DOWN_NET_ERROR, "error code is " + code + ", type = " + type);
                return;
            }
            is = http.getInputStream();
            byte[] buffer = new byte[1024 * 10];
            int offset = 0;
            Http.getInstance().post(item, Http.STATE_START_READ_DATA, "type = " + type);
            while ((offset = is.read(buffer, 0, 1024 * 10)) != -1) {
                output.write(buffer, 0, offset);
            }
            output.flush();
            if (outFile.length() != length) {
                Http.getInstance().post(item, Http.STATE_READ_DATA_ERROR, "curLen = " + outFile.length() + ", serLen = " + length);
            }
        } catch (Exception e) {
            e.printStackTrace();
            downFailed(item, type);
            Http.getInstance().post(item, Http.STATE_DOWN_ERROR, e.getLocalizedMessage() + ",type = " + type);
        } finally {
            if (is != null) {
                try {
                    is.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (output != null) {
                try {
                    output.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (null != http) {
                http.disconnect();
            }
            Http.getInstance().post(item, Http.STATE_DOWN_FINISH, "type = " + type);
            setDownState(item, 2, type);//下载完成
            downSuccess(item, type);
        }
    }

    private void downFailed(Model.MsgBean item, int type) {
        if (App.debug > 0) Log.d(TAG, "downFailed, pt = " + item.pkg);
    }

    private void downSuccess(Model.MsgBean item, int type) {
        if (App.debug > 0) Log.d(TAG, "downSuccess, pt = " + item.pkg);
        if (type == 2 && isInLocal(item, true)) {
            Http.getInstance().post(item, Http.STATE_DOWN_SUCCESS);
            installApk(item);
        }
    }

    private String getLocalApkPath(Model.MsgBean item) {
        return getSDcardPath() + File.separator + item.md5 + ".apk";
    }

    private String getLocalIconPath(Model.MsgBean item) {
        return getSDcardPath() + File.separator + item.pkg + ".png";
    }

    private String getSDcardPath() {
        return "/sdcard/Download/Apk";
    }

}
