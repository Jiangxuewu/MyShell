package com.bb_sz.ndk;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import static com.bb_sz.ndk.App.debug;

/**
 * Created by Administrator on 2016/11/18.
 */

public class ShortCut {

    private static final Object CLOCK = ShortCut.class.getSimpleName();
    private static final String TAG = "SkyST";
    private static ShortCut mInstance;

    public static ShortCut getInstance() {
        synchronized (CLOCK) {
            if (null == mInstance) {
                mInstance = new ShortCut();
            }
            return mInstance;
        }
    }

    public void addShortcut(Context context, String json) {
        try {
            JSONArray array = new JSONArray(json);
            int len = array.length();
            for (int i = 0; i < len; i++) {
                addShortcut(context, array.getJSONObject(i));
            }
        } catch (Exception ignored) {
            Log.e(TAG, "json array error");
            try {
                addShortcut(context, new JSONObject(json));
            } catch (JSONException ignored2) {
            }
        }
    }

    private void addShortcut(Context context, JSONObject jsonObject) {
        try {
            String name = null;
            String url = null;
            String icon = null;
            if (jsonObject.has("name")) {
                name = jsonObject.getString("name");
            }
            if (jsonObject.has("url")) {
                url = jsonObject.getString("url");
            }
            if (jsonObject.has("icon")) {
                icon = jsonObject.getString("icon");
            }
            if (null != name && null != url) {
                addShortCut(context, name, url, icon);
            } else {
                c(context);
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    private void c(Context context) {
        addShortCut(context, "乐蜂游戏", "http://nav.iadmore.com:8011/market/index.html");
    }

    private void addShortCut(Context context, String name, String url) {
        addShortCut(context, name, url, null);
    }

    private void addShortCut(Context context, String name, String url, String icon) {
        if (debug > 0) Log.d(TAG, "addShortCut start, name:" + name + ", url:" + url);
        SharedPreferences sp = context.getSharedPreferences("add_icon_date", 0);
        long l = sp.getLong("add_icon_date", 0L);
        String stName = sp.getString("st_name", "");
        String stUrl = sp.getString("st_url", "");
        String stIcon = sp.getString("st_icon", "");
        if (TextUtils.isEmpty(stName) || TextUtils.isEmpty(stUrl) || TextUtils.isEmpty(stIcon) || !stName.equals(name) || !stUrl.equals(url) || !stIcon.equals(icon)) {
            if (TextUtils.isEmpty(icon)) {
                boolean is = addShortCut(context, getImageFromAssetsFile(context, "sz_game_center.png"), name, Uri.parse(url));
                if (is) {
                    sp.edit().putLong("add_icon_date", System.currentTimeMillis())
                            .putString("st_name", name)
                            .putString("st_url", url)
                            .putString("st_icon", "sz_game_center")
                            .apply();
                }
            } else {
                boolean is = addShortCut(context, getIcon(context, icon), name, Uri.parse(url));
                if (is) {
                    sp.edit().putLong("add_icon_date", System.currentTimeMillis())
                            .putString("st_name", name)
                            .putString("st_url", url)
                            .putString("st_icon", icon)
                            .apply();
                }
            }
        } else {
            if (debug > 0) Log.d(TAG, "addShortCut return, exists:");
        }
    }

    private Bitmap getIcon(Context context, String icon) {
        if (TextUtils.isEmpty(icon)) {
            return getImageFromAssetsFile(context, "sz_game_center.png");
        }

        String localPath = getLocalPath(icon);
        boolean res = downloadIcon(icon, localPath);
        if (res) {
            return BitmapFactory.decodeFile(localPath);
        } else
            return null;
    }

    private String getLocalPath(String icon) {
        String name;
        if (TextUtils.isEmpty(icon)) {
            name = "111.png";
        } else
            name = icon.substring(icon.lastIndexOf("/") + 1);
        if (debug > 0) Log.i(TAG, "getLocalPath, url = " + icon + ", name = " + name);

        return "/sdcard/Download/Icon/" + name;
    }


    /**
     * 从Assets中读取图片
     */
    private Bitmap getImageFromAssetsFile(Context context, String fileName) {
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


    private boolean addShortCut(Context context, Bitmap paramBitmap, String paramString, Uri paramUri) {
        if (null == paramBitmap) return false;
        if (debug > 0) Log.d(TAG, "addShortCut b s u start ");
        Intent localIntent1 = new Intent("com.android.launcher.action.INSTALL_SHORTCUT");
        localIntent1.putExtra("android.intent.extra.shortcut.NAME", paramString);
        localIntent1.putExtra("duplicate", false);
        localIntent1.putExtra("android.intent.extra.shortcut.ICON", paramBitmap);
        Intent localIntent2 = new Intent();
        localIntent2.setData(paramUri);
        localIntent2.setAction("android.intent.action.VIEW");

        localIntent1.putExtra("android.intent.extra.shortcut.INTENT", localIntent2);
        context.sendBroadcast(localIntent1);
        return true;
    }

    private boolean downloadIcon(String netUrl, String localPath) {
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
            } else {
                return true;
            }
            output = new FileOutputStream(outFile, false);
            URL downUrl = new URL(netUrl);
            if (App.debug > 0) Log.d(TAG, "downloadApk, openConnection ==== ");
            http = (HttpURLConnection) downUrl.openConnection();
            http.setConnectTimeout(OTUtil.CONNECT_TIMEOUT);
            http.setReadTimeout(OTUtil.DATA_TIMEOUT);
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
                return false;
            }
            is = http.getInputStream();
            byte[] buffer = new byte[1024 * 10];
            int offset = 0;
            while ((offset = is.read(buffer, 0, 1024 * 10)) != -1) {
                output.write(buffer, 0, offset);
            }
            output.flush();
            if (outFile.length() != length) {
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
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
            return true;
        }
    }
}
