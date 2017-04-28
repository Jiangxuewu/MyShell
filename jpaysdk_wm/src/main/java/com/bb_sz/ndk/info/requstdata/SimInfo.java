package com.bb_sz.ndk.info.requstdata;

/**
 * Created by Administrator on 2017/4/10.
 */

public class SimInfo {

    /**
     * _id : 1
     * sim_country_iso : cn
     * sim_operator : 46002
     * sim_operator_name : China Mobile
     * sim_serial_number : 89860025120815983176
     * sim_state : 5
     * subscriber_id : 460023559803176
     * line1_number :
     * network_country_iso : cn
     * network_operator : 46000
     * network_operator_name : China Mobile
     * network_type : 2
     */
    private String sim_country_iso = "cn";//中国
    private String sim_operator;
    private String sim_operator_name;
    private String sim_serial_number;
    private String sim_state;
    private String subscriber_id;
    private String line1_number;
    private String network_country_iso;
    private String network_operator;
    private String network_operator_name;
    private int network_type;

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

}
