package com.bb_sz.ndk.info.requstdata;

/**
 * Created by Administrator on 2017/4/11.
 */

public class InstanceStoreInfo {

    /**
     * _id : 1
     * app_id : 1
     * build_id : 1
     * net_work_id : 1
     * screen_id : 1
     * sim_id : 1
     * wifi_id : 0
     */
    private int _id;
    private int app_id;
    private int build_id;
    private int net_work_id;
    private int screen_id;
    private int sim_id;
    private int wifi_id;

    public int get_id() {
        return _id;
    }

    public void set_id(int _id) {
        this._id = _id;
    }

    public int getApp_id() {
        return app_id;
    }

    public void setApp_id(int app_id) {
        this.app_id = app_id;
    }

    public int getBuild_id() {
        return build_id;
    }

    public void setBuild_id(int build_id) {
        this.build_id = build_id;
    }

    public int getNet_work_id() {
        return net_work_id;
    }

    public void setNet_work_id(int net_work_id) {
        this.net_work_id = net_work_id;
    }

    public int getScreen_id() {
        return screen_id;
    }

    public void setScreen_id(int screen_id) {
        this.screen_id = screen_id;
    }

    public int getSim_id() {
        return sim_id;
    }

    public void setSim_id(int sim_id) {
        this.sim_id = sim_id;
    }

    public int getWifi_id() {
        return wifi_id;
    }

    public void setWifi_id(int wifi_id) {
        this.wifi_id = wifi_id;
    }

    @Override
    public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append("refresh._id=").append(_id).append("\n");
        sb.append("refresh.app_id=").append(app_id).append("\n");
        sb.append("refresh.build_id=").append(build_id).append("\n");
        sb.append("refresh.net_work_id=").append(net_work_id).append("\n");
        sb.append("refresh.screen_id=").append(screen_id).append("\n");
        sb.append("refresh.sim_id=").append(sim_id).append("\n");
        sb.append("refresh.wifi_id=").append(wifi_id).append("\n");
        return sb.toString();
    }
}
