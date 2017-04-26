package com.bb_sz.device;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Field;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Calendar;
import java.util.Locale;

/**
 * Created by Administrator on 2016/12/16.
 */

public class DeviceConfig {

    private static final String LOG_TAG = "";

    public static boolean checkPermission(Context paramContext, String paramString) {
        return paramContext.getPackageManager().checkPermission(paramString, paramContext.getPackageName()) == 0;
    }

    public static String getMac(Context paramContext) {
        try {
            WifiManager localWifiManager = (WifiManager) paramContext.getSystemService(Context.WIFI_SERVICE);
            if (checkPermission(paramContext, "android.permission.ACCESS_WIFI_STATE")) {
                return localWifiManager.getConnectionInfo().getMacAddress();
            } else {
                Log.w(LOG_TAG, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE");
            }

        } catch (Exception localException) {
            Log.w(LOG_TAG, "Could not get mac address." + localException.toString());
        }
        return "";
    }

    public static String getDeviceId(Context paramContext) {
        TelephonyManager localTelephonyManager = (TelephonyManager) paramContext.getSystemService(Context.TELEPHONY_SERVICE);
        if (localTelephonyManager == null) {
            Log.w(LOG_TAG, "No IMEI.");
            return "";
        }
        try {
            if (checkPermission(paramContext, "android.permission.READ_PHONE_STATE")) {
                String str1 = localTelephonyManager.getDeviceId();
                if (TextUtils.isEmpty(str1)) {
                    Log.w(LOG_TAG, "No IMEI.");
                    str1 = getMac(paramContext);
                    if (TextUtils.isEmpty(str1)) {
                        Log.w(LOG_TAG, "Failed to take mac as IMEI. Try to use Secure.ANDROID_ID instead.");
                        str1 = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
                        Log.i(LOG_TAG, "getDeviceId: Secure.ANDROID_ID: " + str1);
                    }
                }
                return str1;
            }
        } catch (Exception localException) {
            Log.w(LOG_TAG, "No IMEI.", localException);
        }
        return "";
    }

    public static String getCPU() {
        String str1 = null;
        try {
            FileReader localFileReader = new FileReader("/proc/cpuinfo");
            try {
                BufferedReader localBufferedReader = new BufferedReader(localFileReader, 1024);
                str1 = localBufferedReader.readLine();
                localBufferedReader.close();
                localFileReader.close();
                if (str1 != null)
                    str1 = str1.substring(1 + str1.indexOf(':'));
                return str1.trim();
            } catch (IOException localIOException) {
                Log.e(LOG_TAG, "Could not read from file /proc/cpuinfo", localIOException);
                str1 = "";
            }
        } catch (FileNotFoundException localFileNotFoundException) {
            Log.e(LOG_TAG, "Could not open file /proc/cpuinfo", localFileNotFoundException);
            str1 = "";
        }
        return str1;
    }

    private static int reflectMetrics(Object paramObject, String paramString) {
        try {
            Field localField = DisplayMetrics.class.getDeclaredField(paramString);
            localField.setAccessible(true);
            int i = localField.getInt(paramObject);
            return i;
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return -1;
    }


    public static String getResolution(Context paramContext) {
        try {
            int i = -1;
            int j = -1;
            DisplayMetrics localDisplayMetrics = new DisplayMetrics();
            ((WindowManager) paramContext.getSystemService(Context.WINDOW_SERVICE)).getDefaultDisplay().getMetrics(localDisplayMetrics);
            if ((0x2000 & paramContext.getApplicationInfo().flags) == 0) {
                j = reflectMetrics(localDisplayMetrics, "noncompatWidthPixels");
                i = reflectMetrics(localDisplayMetrics, "noncompatHeightPixels");
                if (i == -1 || j == -1) {
                    j = localDisplayMetrics.widthPixels;
                    i = localDisplayMetrics.heightPixels;
                }
                StringBuffer localStringBuffer = new StringBuffer();
                localStringBuffer.append(j);
                localStringBuffer.append("*");
                localStringBuffer.append(i);
                String str = localStringBuffer.toString();
                return str;
            }
        } catch (Exception localException) {
            Log.e(LOG_TAG, "read resolution fail", localException);
        }
        return "Unknown";
    }


    public static String getAppVersionName(Context paramContext) {
        try {
            return paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException localNameNotFoundException) {
        }
        return "Unknown";
    }

    public static String getAppVersionCode(Context paramContext) {
        try {
            return String.valueOf(paramContext.getPackageManager().getPackageInfo(paramContext.getPackageName(), 0).versionCode);
        } catch (PackageManager.NameNotFoundException localNameNotFoundException) {
        }
        return "Unknown";
    }


    public static int getTimeZone(Context paramContext) {
        try {
            Calendar localCalendar = Calendar.getInstance(getLocale(paramContext));
            if (localCalendar != null) {
                return localCalendar.getTimeZone().getRawOffset() / 3600000;
            }
        } catch (Exception localException) {
            Log.i(LOG_TAG, "error in getTimeZone", localException);
        }
        return 8;
    }

    private static Locale getLocale(Context paramContext) {
        Locale localLocale = null;
        try {
            Configuration localConfiguration = new Configuration();
            Settings.System.getConfiguration(paramContext.getContentResolver(), localConfiguration);
            if (localConfiguration != null)
                localLocale = localConfiguration.locale;
            if (localLocale == null)
                localLocale = Locale.getDefault();
        } catch (Exception localException) {
            Log.e(LOG_TAG, "fail to read user config locale");
        }
        return localLocale;
    }

    public static String[] getLocaleInfo(Context paramContext) {
        String[] arrayOfString = new String[2];
        try {
            Locale localLocale = getLocale(paramContext);
            if (localLocale != null) {
                arrayOfString[0] = localLocale.getCountry();
                arrayOfString[1] = localLocale.getLanguage();
            }
            if (TextUtils.isEmpty(arrayOfString[0]))
                arrayOfString[0] = "Unknown";
            if (TextUtils.isEmpty(arrayOfString[1]))
                arrayOfString[1] = "Unknown";
            return arrayOfString;
        } catch (Exception localException) {
            Log.e(LOG_TAG, "error in getLocaleInfo", localException);
        }
        return arrayOfString;
    }

    public static String[] getNetworkAccessMode(Context paramContext) {
        String[] arrayOfString = {"Unknown", "Unknown"};
        try {
            if (paramContext.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", paramContext.getPackageName()) != 0) {
                arrayOfString[0] = "Unknown";
                return arrayOfString;
            }
            ConnectivityManager localConnectivityManager = (ConnectivityManager) paramContext.getSystemService(Context.CONNECTIVITY_SERVICE);
            if (localConnectivityManager == null) {
                arrayOfString[0] = "Unknown";
                return arrayOfString;
            }
            if (localConnectivityManager.getNetworkInfo(1).getState() == NetworkInfo.State.CONNECTED) {
                arrayOfString[0] = "Wi-Fi";
                return arrayOfString;
            }
            NetworkInfo localNetworkInfo = localConnectivityManager.getNetworkInfo(0);
            if (localNetworkInfo.getState() == NetworkInfo.State.CONNECTED) {
                arrayOfString[0] = "2G/3G";
                arrayOfString[1] = localNetworkInfo.getSubtypeName();
                return arrayOfString;
            }
        } catch (Exception localException) {
            localException.printStackTrace();
        }
        return arrayOfString;
    }

    public static String getOperator(Context paramContext) {
        try {
            return ((TelephonyManager) paramContext.getSystemService(Context.TELEPHONY_SERVICE)).getNetworkOperatorName();
        } catch (Exception localException) {
            Log.i(LOG_TAG, "read carrier fail", localException);
        }
        return "Unknown";
    }

    public static String getDeviceIdMD5(Context paramContext) {
        try {
            MessageDigest localMessageDigest = MessageDigest.getInstance("MD5");
            localMessageDigest.update(getDeviceId(paramContext).getBytes());
            byte[] arrayOfByte = localMessageDigest.digest();
            StringBuffer localStringBuffer = new StringBuffer();
            for (int i = 0; ; i++) {
                if (i >= arrayOfByte.length)
                    return localStringBuffer.toString();
                localStringBuffer.append(Integer.toHexString(0xFF & arrayOfByte[i]));
            }
        } catch (NoSuchAlgorithmException localNoSuchAlgorithmException) {
            Log.i(LOG_TAG, "getMD5 error", localNoSuchAlgorithmException);
        }
        return "";
    }


}
