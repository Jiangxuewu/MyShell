package com.bb_sz.ndk.info.test;

import java.util.Random;

/**
 * Created by Administrator on 2015/9/15.
 * <p>wifi信息</p>
 */
public class WifiInfo {
    //    refresh.ip=1677895872
//    refresh.mac=18:59:36:e0:f6:84
//    refresh.ssid="LILIN"
    private final static String[] number = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"};
    private String ip;//"127.0.0.1"
    private String mac;//
    private String ssid;//

    public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append("refresh.ip=").append(ip).append("\n");
        sb.append("refresh.mac=").append(mac).append("\n");
        sb.append("refresh.ssid=").append(ssid).append("\n");
        return sb.toString();
    }

    public WifiInfo() {

        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < 6; i++) {
            if (sb.length() != 0) {
                sb.append(":");
            }
            sb.append(number[10 + new Random().nextInt(6)]);
            sb.append(number[new Random().nextInt(10)]);
        }
        mac = sb.toString();
        int i = new Random().nextInt(5);
        String start = "TP-LINK_";
        switch (i) {
            case 0:
                break;
            case 1:
                start = "ok_";
                break;
            case 2:
                start = "1981";
                break;
            case 3:
                start = "1990";
                break;
            case 4:
            default:
                start = "zz";
                break;
        }
        ssid = start + new Random().nextInt(1000);
        ip = "192.168.1." + (100 + new Random().nextInt(100));

    }

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
}
