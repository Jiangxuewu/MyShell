package com.bb_sz.pay;

import android.app.Application;

/**
 * Created by Administrator on 2016/10/20.
 * <p>JPay 初始化，必须在Application中初始化.</p>
 */

public class App extends Application {

    @Override
    public void onCreate() {
        super.onCreate();
        Api.init(this);
    }
}
