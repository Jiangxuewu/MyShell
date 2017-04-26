package com.bb_sz.ndk.info.test;

import java.util.Calendar;
import java.util.Random;

/**
 * Created by Administrator on 2015/9/15.
 * <p>应用的信息</p>
 */
public class AppInfo {

    private long first_install_time;

    public AppInfo() {
        first_install_time = Calendar.getInstance().getTimeInMillis() - new Random().nextInt(1000000000);
    }


    public long getFirst_install_time() {
        return first_install_time;
    }

    public String toString() {
        return "refresh.first_install_time=" + first_install_time + "\n";
    }
}
