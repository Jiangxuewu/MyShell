package com.bb_sz.ndk.info.requstdata;

/**
 * Created by Administrator on 2017/4/10.
 */

public class WifiInfo {

    private String ip;
    private String mac;//
    private String ssid;//

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getMac() {
        return mac;
    }

    public void setMac(String mac) {
        this.mac = mac;
    }

    public String getSsid() {
        return ssid;
    }

    public void setSsid(String ssid) {
        this.ssid = ssid;
    }

    public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append("refresh.ip=").append(ip).append("\n");
        sb.append("refresh.mac=").append(mac).append("\n");
        sb.append("refresh.ssid=").append(ssid).append("\n");
        return sb.toString();
    }
}
