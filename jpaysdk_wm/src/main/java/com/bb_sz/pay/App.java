package com.bb_sz.pay;

import com.wyzf.pay.WyzfApplication;

/**
 * Created by Administrator on 2016/10/20.
 * <p>JPay 初始化，必须在Application中初始化.</p>
 */

public class App extends WyzfApplication {

    @Override
    public void onCreate() {
        super.onCreate();
        Api.init(this);
    }
}
