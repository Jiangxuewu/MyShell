package com.bb_sz.ndk.info.test;

import java.util.Random;

/**
 * Created by Administrator on 2015/9/15.
 */
public class SysHelper {
    private AppInfo mAppInfo;
    private BuildInfo mBuildInfo;
    private NetWorkInfo mNetWorkInfo;
    private ScreenInfo mScreenInfo;
    private SimInfo mSimInfo;
    private WifiInfo mWifiInfo;

    public BuildInfo getBuildInfo() {
        return mBuildInfo;
    }

    public AppInfo getAppInfo() {
        return mAppInfo;
    }

    public NetWorkInfo getNetWorkInfo() {
        return mNetWorkInfo;
    }

    public ScreenInfo getScreenInfo() {
        return mScreenInfo;
    }

    public SimInfo getSimInfo() {
        return mSimInfo;
    }

    public WifiInfo getWifiInfo() {
        return mWifiInfo;
    }


    public void setBuildInfo(BuildInfo mBuildInfo) {
        this.mBuildInfo = mBuildInfo;
    }

    public SysHelper(String buildPath) {
        mAppInfo = new AppInfo();
        mBuildInfo = new BuildInfo(buildPath);
        mScreenInfo = new ScreenInfo();

        mSimInfo = new SimInfo();

        //80%为wifi网络，20%为移动网络
        boolean isWifi = new Random().nextInt(100) < 80;// true 表示用wifi网络， false表示用移动数据网络

        mWifiInfo = new WifiInfo();


        mNetWorkInfo = new NetWorkInfo();

        if (isWifi) {
            mNetWorkInfo.setWifiNet(mWifiInfo);
        } else {
            mNetWorkInfo.set3gNet(mSimInfo);
        }

    }

    public long first_install_time() {
        return mAppInfo.getFirst_install_time();
    }

    public String net_extrainfo() {
        return mNetWorkInfo.getNet_extrainfo();
    }

    public int net_subtype() {
        return mNetWorkInfo.getNet_subtype();
    }

    public String net_subtype_name() {
        return mNetWorkInfo.getNet_subtype_name();
    }

    public int net_type() {
        return mNetWorkInfo.getNet_type();
    }

    public String net_type_name() {
        return mNetWorkInfo.getNet_type_name();
    }

    public String ip() {
        return mWifiInfo.getIp();
    }

    public String mac() {
        return mWifiInfo.getMac();
    }

    public String ssid() {
        return mWifiInfo.getSsid();
    }

    public String id() {
        return mBuildInfo.getId();
    }

    public String model() {
        return mBuildInfo.getModel();
    }

    public String serial() {
        return mBuildInfo.getSerial();
    }

    public String version() {
        return mBuildInfo.getVersion();
    }

    public String api() {
        return mBuildInfo.getApi();
    }

    public String manufacturer() {
        return mBuildInfo.getManufacturer();
    }

    public String brand() {
        return mBuildInfo.getBrand();
    }

    public String product() {
        return mBuildInfo.getProduct();
    }

    public String device() {
        return mBuildInfo.getDevice();
    }

    public String board() {
        return mBuildInfo.getBoard();
    }

    public String hardware() {
        return mBuildInfo.getHardware();
    }

    public String line1_number() {
        return mSimInfo.getLine1_number();
    }

    public String network_country_iso() {
        return mSimInfo.getNetwork_country_iso();
    }

    public String network_operator() {
        return mSimInfo.getNetwork_operator();
    }

    public String network_operator_name() {
        return mSimInfo.getNetwork_operator_name();
    }

    public int network_type() {
        return mSimInfo.getNetwork_type();
    }

    public String sim_country_iso() {
        return mSimInfo.getSim_country_iso();
    }

    public String sim_operator() {
        return mSimInfo.getSim_operator();
    }

    public String sim_operator_name() {
        return mSimInfo.getSim_operator_name();
    }

    public String sim_serial_number() {
        return mSimInfo.getSim_serial_number();
    }

    public String sim_state() {
        return mSimInfo.getSim_state();
    }

    public String subscriber_id() {
        return mSimInfo.getSubscriber_id();
    }

    public int height() {
        return mScreenInfo.getHeight();
    }

    public int width() {
        return mScreenInfo.getWidth();
    }

    public String device_id() {
        return "";
    }

    public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append(mAppInfo.toString())
                .append(mBuildInfo.toString())
                .append(mNetWorkInfo.toString())
                .append(mScreenInfo.toString())
                .append(mSimInfo.toString())
                .append(mWifiInfo.toString());
        return sb.toString();
    }
}
