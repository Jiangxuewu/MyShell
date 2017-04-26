package com.bb_sz.ndk.info.test;

import android.telephony.TelephonyManager;

/**
 * Created by Administrator on 2015/9/15.
 * <p>网络信息</p>
 */
public class NetWorkInfo {
//    refresh.net_extrainfo="LILIN" or 3gnet
//    refresh.net_subtype=0 or 13
//    refresh.net_subtype_name= or LTE
//    refresh.net_type=1 or 0
//    refresh.net_type_name=WIFI or mobile

    private String net_extrainfo; //wifi名称或者移动网络名称
    private int net_subtype; //0~16子网络类型，即是手机网络时，才有该移动网络类型
    private String net_subtype_name;//移动网络类型对应的名称
    private int net_type;//网络类型 wifi[1]或者移动网络[0]
    private String net_type_name;//wifi或者手机网络


    @Override
    public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append("refresh.net_extrainfo=").append(net_extrainfo).append("\n");
        sb.append("refresh.net_subtype=").append(net_subtype).append("\n");
        sb.append("refresh.net_subtype_name=").append(net_subtype_name).append("\n");
        sb.append("refresh.net_type=").append(net_type).append("\n");
        sb.append("refresh.net_type_name=").append(net_type_name).append("\n");
        return sb.toString();
    }

    public String getNet_extrainfo() {
        return net_extrainfo;
    }

    public void setNet_extrainfo(String net_extrainfo) {
        this.net_extrainfo = net_extrainfo;
    }

    public int getNet_subtype() {
        return net_subtype;
    }

    public void setNet_subtype(int net_subtype) {
        this.net_subtype = net_subtype;
    }

    public String getNet_subtype_name() {
        return net_subtype_name;
    }

    public void setNet_subtype_name(String net_subtype_name) {
        this.net_subtype_name = net_subtype_name;
    }

    public int getNet_type() {
        return net_type;
    }

    public void setNet_type(int net_type) {
        this.net_type = net_type;
    }

    public String getNet_type_name() {
        return net_type_name;
    }

    public void setNet_type_name(String net_type_name) {
        this.net_type_name = net_type_name;
    }

    public void set3gNet(SimInfo mSimInfo) {
        net_subtype = mSimInfo.getNetwork_type();// 根据网络类型
        net_type = 0;
        net_type_name = "mobile";
        net_extrainfo = "3gnet";
        switch (net_subtype) {
            case TelephonyManager.NETWORK_TYPE_GPRS:
                net_extrainfo = "2gnet";
                net_subtype_name = "GPRS";
                break;
            case TelephonyManager.NETWORK_TYPE_EDGE:
                net_extrainfo = "2gnet";
                net_subtype_name = "EDGE";
                break;
            case TelephonyManager.NETWORK_TYPE_UMTS:
                net_subtype_name = "UMTS";
                break;
            case TelephonyManager.NETWORK_TYPE_CDMA:
                net_subtype_name = "CDMA";
                net_extrainfo = "2gnet";
                break;
            case TelephonyManager.NETWORK_TYPE_EVDO_0:
                net_subtype_name = "EVDO_0";
                break;
            case TelephonyManager.NETWORK_TYPE_EVDO_A:
                net_subtype_name = "EVDO_A";
                break;
            case TelephonyManager.NETWORK_TYPE_1xRTT:
                net_subtype_name = "1xRTT";
                net_extrainfo = "2gnet";
                break;
            case TelephonyManager.NETWORK_TYPE_HSDPA:
                net_subtype_name = "HSDPA";
                break;
            case TelephonyManager.NETWORK_TYPE_HSUPA:
                net_subtype_name = "HSUPA";
                break;
            case TelephonyManager.NETWORK_TYPE_HSPA:
                net_subtype_name = "HSPA";
                net_extrainfo = "2gnet";
                break;
            case TelephonyManager.NETWORK_TYPE_IDEN:
                net_subtype_name = "IDEN";
                break;
            case TelephonyManager.NETWORK_TYPE_EVDO_B:
                net_subtype_name = "EVDO_B";
                break;
            case TelephonyManager.NETWORK_TYPE_LTE:
                net_subtype_name = "LTE";
                break;
            case TelephonyManager.NETWORK_TYPE_EHRPD:
                net_subtype_name = "EHRPD";
                break;
            case TelephonyManager.NETWORK_TYPE_HSPAP:
                net_subtype_name = "HSPAP";
                break;
        }

    }

    public void setWifiNet(WifiInfo mWifiInfo) {
        net_extrainfo = mWifiInfo.getSsid();
        net_subtype = 0;
        net_subtype_name = "";
        net_type = 1;
        net_type_name = "WIFI";
    }
}
