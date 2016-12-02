package com.bb_sz.ndk;

import android.app.Application;
import android.content.Context;

/**
 * Created by Administrator on 2016/9/22.
 * <p>1,apk加壳</p>
 */
public class App extends Application {
    public static Context mContext = null;//for jni need

    public native static void jniCreate();

    @Override
    protected void attachBaseContext(Context base) {
        mContext = this;
        super.attachBaseContext(base);
        System.loadLibrary("sz_shell_a");
    }


    @Override
    public void onCreate() {
        super.onCreate();
        jniCreate();
    }
}
