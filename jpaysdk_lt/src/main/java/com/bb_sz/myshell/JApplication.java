package com.bb_sz.myshell;

import android.app.Application;

import com.bb_sz.pay.Api;


/**
 * Created by Administrator on 2016/11/24.
 */

public class JApplication extends Application {

    @Override
    public void onCreate() {
        super.onCreate();
//        Api.init(this);
    }
}
