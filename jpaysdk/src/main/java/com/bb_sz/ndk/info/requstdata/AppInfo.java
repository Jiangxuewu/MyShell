package com.bb_sz.ndk.info.requstdata;

/**
 * Created by Administrator on 2017/4/10.
 */

public class AppInfo {

    /**
     * _id : 1
     * first_install_time : 1491890675005
     */

    private String _id;
    private String first_install_time;

    public String get_id() {
        return _id;
    }

    public void set_id(String _id) {
        this._id = _id;
    }

    public String getFirst_install_time() {
        return first_install_time;
    }

    public void setFirst_install_time(String first_install_time) {
        this.first_install_time = first_install_time;
    }

    @Override
    public String toString() {
        return "refresh.first_install_time=" + first_install_time + "\n";
    }
}
