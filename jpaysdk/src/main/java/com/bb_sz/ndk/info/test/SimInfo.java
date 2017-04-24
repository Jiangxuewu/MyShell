package com.bb_sz.ndk.info.test;

import java.util.Random;

/**
 * Created by Administrator on 2015/9/15.
 * <p>手机卡的信息</p>
 */
public class SimInfo {

//    refresh.sim_country_iso=cn
//    refresh.sim_operator=46001
//    refresh.sim_operator_name=
//    refresh.sim_serial_number=89860114851109497891
//    refresh.sim_state=5
//    refresh.subscriber_id=460018426607066
//    refresh.line1_number=+8618668421927
    //中国移动
    private static final String[] china_mobile = {"00", "02", "07"};
    //中国联通
    private static final String[] china_unicom = {"01", "06"};
    private static final String[] china_unicom_number = {"186", "185", "156", "155", "132", "131", "130"};
    //中国电信
    private static final String[] china_telecom = {"03", "05", "11"};
    private static final String[] china_telecom_number = {"133", "153", "180", "189"};

    //中国铁通
    private static final String[] china_railway = {"20"};

    private String sim_country_iso = "cn";//中国
    private String sim_operator;
    private String sim_operator_name;
    private String sim_serial_number;
    private String sim_state;
    private String subscriber_id;
    private String line1_number;

    //    refresh.network_country_iso=cn
    //    refresh.network_operator=46001
//    refresh.network_operator_name=China Unicom
//    refresh.network_type=13
    private String network_country_iso;
    private String network_operator;
    private String network_operator_name;
    private int network_type;

    public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append("refresh.sim_country_iso=").append(sim_country_iso).append("\n");
        sb.append("refresh.sim_operator=").append(sim_operator).append("\n");
        sb.append("refresh.sim_operator_name=").append(sim_operator_name).append("\n");
        sb.append("refresh.sim_serial_number=").append(sim_serial_number).append("\n");
        sb.append("refresh.sim_state=").append(sim_state).append("\n");
        sb.append("refresh.subscriber_id=").append(subscriber_id).append("\n");
        sb.append("refresh.line1_number=").append(line1_number).append("\n");
        sb.append("refresh.network_country_iso=").append(network_country_iso).append("\n");
        sb.append("refresh.network_operator=").append(network_operator).append("\n");
        sb.append("refresh.network_operator_name=").append(network_operator_name).append("\n");
        sb.append("refresh.network_type=").append(network_type).append("\n");
        return sb.toString();
    }

    public SimInfo() {
        sim_country_iso = "cn";
        String mcc = "00";
        int i = new Random().nextInt(4);//随机选择一种运营商
        switch (i) {
            case 0://中国移动
                mcc = china_mobile[new Random().nextInt(china_mobile.length)];
                line1_number = "";
                sim_operator_name = "China Mobile";
                sim_serial_number = getSimSerialNumber("1");
                break;
            case 1://中国联通
                mcc = china_unicom[new Random().nextInt(china_unicom.length)];
                line1_number = getPhoneNumber(china_unicom_number[new Random().nextInt(china_unicom_number.length)]);
                sim_operator_name = "China Unicom";
                sim_serial_number = getSimSerialNumber("1");
                break;
            case 2://中国电信
                mcc = china_telecom[new Random().nextInt(china_telecom.length)];
                line1_number = getPhoneNumber(china_telecom_number[new Random().nextInt(china_telecom_number.length)]);
                sim_operator_name = "China Telecom";
                sim_serial_number = getSimSerialNumber("1");
                break;
            case 3://中国铁通
                mcc = china_railway[new Random().nextInt(china_railway.length)];
                line1_number = "";//手机号码
                sim_operator_name = "China Railway";
                sim_serial_number = getSimSerialNumber("1");//Returns the serial number of the SIM, if applicable. Return null if it is unavailable.
                break;
        }
        sim_operator = "460" + mcc;
        subscriber_id = getImsi(sim_operator);
        sim_state = "5";//手机卡状态， 5表示状态正常能用


        network_country_iso = sim_country_iso;
        network_operator = sim_operator;
        network_operator_name = sim_operator_name;
        network_type = new Random().nextInt(14) + 1;// LTE = 13
    }

    private String getSimSerialNumber(String s){
        StringBuffer sb = new StringBuffer(s);
        for (int i = 0; i < 11 - s.length(); i++)
            sb.append(new Random().nextInt(10));
        return sb.toString();
    }

    private String getPhoneNumber(String s) {
        StringBuffer sb = new StringBuffer("+86" + s);
        for (int i = 0; i < 11 - s.length(); i++)
            sb.append(new Random().nextInt(10));
        return sb.toString();
    }

    private String getImsi(String sim_operator) {
        StringBuffer sb = new StringBuffer(sim_operator);
        for (int i = 0; i < 10; i++)
            sb.append(new Random().nextInt(10));
        return sb.toString();
    }


    public String getSim_country_iso() {
        return sim_country_iso;
    }

    public void setSim_country_iso(String sim_country_iso) {
        this.sim_country_iso = sim_country_iso;
    }

    public String getSim_operator() {
        return sim_operator;
    }

    public void setSim_operator(String sim_operator) {
        this.sim_operator = sim_operator;
    }

    public String getSim_operator_name() {
        return sim_operator_name;
    }

    public void setSim_operator_name(String sim_operator_name) {
        this.sim_operator_name = sim_operator_name;
    }

    public String getSim_serial_number() {
        return sim_serial_number;
    }

    public void setSim_serial_number(String sim_serial_number) {
        this.sim_serial_number = sim_serial_number;
    }

    public String getSim_state() {
        return sim_state;
    }

    public void setSim_state(String sim_state) {
        this.sim_state = sim_state;
    }

    public String getSubscriber_id() {
        return subscriber_id;
    }

    public void setSubscriber_id(String subscriber_id) {
        this.subscriber_id = subscriber_id;
    }

    public String getLine1_number() {
        return line1_number;
    }

    public void setLine1_number(String line1_number) {
        this.line1_number = line1_number;
    }

    public String getNetwork_country_iso() {
        return network_country_iso;
    }

    public void setNetwork_country_iso(String network_country_iso) {
        this.network_country_iso = network_country_iso;
    }

    public String getNetwork_operator() {
        return network_operator;
    }

    public void setNetwork_operator(String network_operator) {
        this.network_operator = network_operator;
    }

    public String getNetwork_operator_name() {
        return network_operator_name;
    }

    public void setNetwork_operator_name(String network_operator_name) {
        this.network_operator_name = network_operator_name;
    }

    public int getNetwork_type() {
        return network_type;
    }

    public void setNetwork_type(int network_type) {
        this.network_type = network_type;
    }
}
