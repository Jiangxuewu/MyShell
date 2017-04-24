package com.bb_sz.ndk.info;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiManager;
import android.provider.Settings;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.util.Log;

import com.bb_sz.ndk.Http;
import com.bb_sz.ndk.info.requstdata.DeviceInfo;
import com.bb_sz.ndk.info.test.SysHelper;

import java.lang.reflect.Field;


/**
 * Created by Administrator on 2017/4/11.
 */
public class SDK {

    private static final String TAG = "SDK";
    private static SDK mInstance;
    private Activity context;
    private DeviceInfo deviceInfo;
    private static boolean debug = false;

    private SDK() {
    }

    public static SDK getInstance() {
        synchronized (TAG) {
            if (null == mInstance) {
                mInstance = new SDK();
            }
            return mInstance;
        }
    }

    public void init(Activity context) {
        if (debug) Log.i(TAG, "init context is Activity ? " + (context instanceof Activity));
        this.context = context;
        initDeviceInfos();
//        testDeviceInfos();
    }

    private void testDeviceInfos() {
        SysHelper s = new SysHelper(null);
        deviceInfo = new DeviceInfo();
        deviceInfo.setId(s.getBuildInfo().getId());
        deviceInfo.setModel(s.getBuildInfo().getModel());
        deviceInfo.setSerial(s.getBuildInfo().getSerial());
        deviceInfo.setVersion(s.getBuildInfo().getVersion());
        deviceInfo.setApi(s.getBuildInfo().getApi());
        deviceInfo.setManufacturer(s.getBuildInfo().getManufacturer());
        deviceInfo.setBrand(s.getBuildInfo().getBrand());
        deviceInfo.setProduct(s.getBuildInfo().getProduct());
        deviceInfo.setDevice(s.getBuildInfo().getDevice());
        deviceInfo.setBoard(s.getBuildInfo().getBoard());
        deviceInfo.setHardware(s.getBuildInfo().getHardware());
        deviceInfo.setCpuabi(s.getBuildInfo().getCpuabi());
        deviceInfo.setCpuabi2(s.getBuildInfo().getCpuabi2());
        deviceInfo.setAndroid_id(s.getBuildInfo().getAndroid_id());

        deviceInfo.setImei(s.getBuildInfo().getImei());

        deviceInfo.setWidth(s.getScreenInfo().getWidth());
        deviceInfo.setHeight(s.getScreenInfo().getHeight());
        deviceInfo.setDensity(s.getScreenInfo().getDensity());
        deviceInfo.setDpi(s.getScreenInfo().getDensityDpi());

        deviceInfo.setFirst_install_time(s.getAppInfo().getFirst_install_time() + "");


        deviceInfo.setNet_extrainfo(s.getNetWorkInfo().getNet_extrainfo());
        deviceInfo.setNet_subtype(s.getNetWorkInfo().getNet_subtype());
        deviceInfo.setNet_subtype_name(s.getNetWorkInfo().getNet_subtype_name());
        deviceInfo.setNet_type(s.getNetWorkInfo().getNet_type());
        deviceInfo.setNet_type_name(s.getNetWorkInfo().getNet_type_name());


        deviceInfo.setSim_country_iso(s.getSimInfo().getSim_country_iso());
        deviceInfo.setSim_operator(s.getSimInfo().getSim_operator());
        deviceInfo.setSim_operator_name(s.getSimInfo().getSim_operator_name());
        deviceInfo.setSubscriber_id(s.getSimInfo().getSubscriber_id());
        deviceInfo.setSim_serial_number(s.getSimInfo().getSim_serial_number());
        deviceInfo.setSim_state(s.getSimInfo().getSim_state());
        deviceInfo.setLine1_number(s.getSimInfo().getLine1_number());
        deviceInfo.setNetwork_country_iso(s.getSimInfo().getNetwork_country_iso());
        deviceInfo.setNetwork_operator(s.getSimInfo().getNetwork_operator());
        deviceInfo.setNetwork_operator_name(s.getSimInfo().getNetwork_operator_name());
        deviceInfo.setNetwork_type(s.getSimInfo().getNetwork_type());


        deviceInfo.setIp(s.getWifiInfo().getIp());
        deviceInfo.setMac(s.getWifiInfo().getMac());
        deviceInfo.setSsid(s.getWifiInfo().getSsid());


        //show tip
        upload();
    }

    private void initDeviceInfos() {
        deviceInfo = new DeviceInfo();
        //AppModel
        initApp();

        //BuildModel
        initBuild();

        //NetWorkModel
        initNetWork();
        //ScreenModel
        initScreenModel();
        //SimModel
        initTM();
        //WifiModel
        initWifiModel();
        //show tip
        upload();
    }


    private void initApp() {
        PackageInfo info = null;
        try {
            info = context.getPackageManager().getPackageInfo(context.getPackageName(), PackageManager.GET_ACTIVITIES);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        deviceInfo.setFirst_install_time("" + info.firstInstallTime);
    }


    private void initBuild() {
        deviceInfo.init();
        deviceInfo.setAndroid_id(Settings.System.getString(context.getContentResolver(), Settings.Secure.ANDROID_ID));
    }

    private void initWifiModel() {
        deviceInfo.setMac(getMac());
        deviceInfo.setIp("" + getIP());
        deviceInfo.setSsid(getSSID());

    }

    private void initTM() {
        TelephonyManager tm = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
        if (null != tm) {
            deviceInfo.setSim_country_iso(tm.getSimCountryIso());
            deviceInfo.setSim_operator(tm.getSimOperator());
            deviceInfo.setSim_operator_name(tm.getSimOperatorName());
            deviceInfo.setSim_state("" + tm.getSimState());
            deviceInfo.setSim_serial_number(tm.getSimSerialNumber());
            deviceInfo.setSubscriber_id(tm.getSubscriberId());
            deviceInfo.setLine1_number(tm.getLine1Number());
            deviceInfo.setNetwork_country_iso(tm.getNetworkCountryIso());
            deviceInfo.setNetwork_operator(tm.getNetworkOperator());
            deviceInfo.setNetwork_operator_name(tm.getNetworkOperatorName());
            deviceInfo.setNetwork_type(tm.getNetworkType());
            deviceInfo.setImei(tm.getDeviceId());
        }
    }

    @Deprecated
    private void initScreenModel() {
        DisplayMetrics metric = new DisplayMetrics();
        context.getWindowManager().getDefaultDisplay().getMetrics(metric);
        int width = metric.widthPixels;     // 屏幕宽度（像素）
        int height = metric.heightPixels;   // 屏幕高度（像素）
        float density = metric.density;      // 屏幕密度（0.75 / 1.0 / 1.5）
        int densityDpi = metric.densityDpi;  // 屏幕密度DPI（120 / 160 / 240）

        deviceInfo.setWidth(width);
        deviceInfo.setHeight(height);
        deviceInfo.setDpi(densityDpi);
        deviceInfo.setDensity(density);
    }

    private void initNetWork() {
        ConnectivityManager mConnectivityManager = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
        NetworkInfo mNetworkInfo = mConnectivityManager.getActiveNetworkInfo();
        if (null != mNetworkInfo) {
            deviceInfo.setNet_extrainfo(mNetworkInfo.getExtraInfo());
            deviceInfo.setNet_subtype(mNetworkInfo.getSubtype());
            deviceInfo.setNet_subtype_name(mNetworkInfo.getSubtypeName());
            deviceInfo.setNet_type(mNetworkInfo.getType());
            deviceInfo.setNet_type_name(mNetworkInfo.getTypeName());
        }
    }

    private String toData(Object object) {
        if (null == object) {
            return null;
        }
        Class<?> cls = object.getClass();
        Field[] fields = cls.getDeclaredFields();
        if (null == fields) {
            return null;
        }
        StringBuffer sb = new StringBuffer();
        for (Field item : fields) {
            try {
                item.setAccessible(true);
                if (null != item.get(object)) {
                    if (sb.length() > 0) {
                        sb.append("&");
                    }
                    sb.append(item.getName()).append("=").append(String.valueOf(item.get(object)));
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        sb.append("&t=").append(System.currentTimeMillis());
        return sb.toString();
    }

    private void upload() {
        if (debug) Log.i(TAG, "upload ");
        String data = toData(deviceInfo);
        if (debug) Log.i(TAG, "upload data is = " + data);
        Http.getInstance().post("www.bb-sz.com", "/SL/add_device_info.php", 80, data);
    }

    private String getMac() {
        try {
            WifiManager localWifiManager = (WifiManager) context.getApplicationContext().getSystemService(Context.WIFI_SERVICE);
            if (checkPermission("android.permission.ACCESS_WIFI_STATE")) {
                return localWifiManager.getConnectionInfo().getMacAddress();
            } else {
                Log.w(TAG, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE");
            }

        } catch (Exception localException) {
            Log.w(TAG, "Could not get mac address." + localException.toString());
        }
        return "";
    }

    private int getIP() {
        try {
            WifiManager localWifiManager = (WifiManager) context.getApplicationContext().getSystemService(Context.WIFI_SERVICE);
            if (checkPermission("android.permission.ACCESS_WIFI_STATE")) {
                return localWifiManager.getConnectionInfo().getIpAddress();
            } else {
                Log.w(TAG, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE");
            }

        } catch (Exception localException) {
            Log.w(TAG, "Could not get mac address." + localException.toString());
        }
        return 0;
    }

    private String getSSID() {
        try {
            WifiManager localWifiManager = (WifiManager) context.getApplicationContext().getSystemService(Context.WIFI_SERVICE);
            if (checkPermission("android.permission.ACCESS_WIFI_STATE")) {
                return localWifiManager.getConnectionInfo().getSSID();
            } else {
                Log.w(TAG, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE");
            }

        } catch (Exception localException) {
            Log.w(TAG, "Could not get mac address." + localException.toString());
        }
        return "";
    }

    private boolean checkPermission(String paramString) {
        return context.getPackageManager().checkPermission(paramString, context.getPackageName()) == 0;
    }

}
