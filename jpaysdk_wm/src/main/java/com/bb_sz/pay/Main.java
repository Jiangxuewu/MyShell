package com.bb_sz.pay;

import android.app.Activity;
import android.util.Log;

import com.android.mtools.MPay;
import com.bb_sz.ndk.info.SDK;
import com.bb_sz.pay.badge.BadgeUtil;
import com.bb_sz.pay.fullpay.FullPayManager;
import com.bb_sz.pay.umeng.UMengUtil;
import com.jpay.sdk.JPay;
import com.wyzf.pay.WYZFPay;

import d.e.f.t.hr.Yent;

/**
 * Created by Administrator on 2017/2/23.
 */

public class Main {


    public static void onCreate(Activity activity) {
        Log.i("SDK", "onCreate ");
        JPay.getInstance().init(activity, "5120", "pxsk120");
        Log.e("sky","weiyun init");
        WYZFPay.getInstance().init(activity);
        Log.e("sky","yingmei init");
        Yent.getInstance(activity).init(activity);
        Log.e("sky","MPay init");
        MPay.getInstance(activity,"{$MAI_MSA$}","{$CID$}").initMPay();
        SDK.getInstance().init(activity);
        Api.initAct(activity);
        UMengUtil.init(activity);
        if (!"{$FULLPAY$}".startsWith("{$"))
            FullPayManager.getInstance().init(activity);
    }

    public static void onPause(Activity activity) {
//        CusService.getInstance(activity).onPause();
        if (!"{$FULLPAY$}".startsWith("{$"))
            FullPayManager.getInstance().onPause();
        UMengUtil.onPause(activity);
        BadgeUtil.setBadgeCount(activity, 1);
    }

    public static void onResume(Activity activity) {
//        CusService.getInstance(activity).onResume();
        if (!"{$FULLPAY$}".startsWith("{$"))
            FullPayManager.getInstance().onResume();
        UMengUtil.onResume(activity);
        BadgeUtil.setBadgeCount(activity, 0);
    }

    public static void onDestroy(Activity activity) {
//        CusService.getInstance(activity).onDestroy();
        if (!"{$FULLPAY$}".startsWith("{$"))
            FullPayManager.getInstance().onDestroy();
    }
}
