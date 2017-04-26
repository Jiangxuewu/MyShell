package com.bb_sz.ndk.info.requstdata;

/**
 * Created by Administrator on 2017/4/10.
 */

public class NetWorkInfo {


    /**
     * _id : 1
     * net_extrainfo : cmnet
     * net_subtype : 2
     * net_subtype_name : EDGE
     * net_type : 0
     * net_type_name : MOBILE
     */
    private String net_extrainfo; //wifi名称或者移动网络名称
    private int net_subtype; //0~16子网络类型，即是手机网络时，才有该移动网络类型
    private String net_subtype_name;//移动网络类型对应的名称
    private int net_type;//网络类型 wifi[1]或者移动网络[0]
    private String net_type_name;//wifi或者手机网络

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
}
