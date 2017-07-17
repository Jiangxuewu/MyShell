package com.bb_sz.pay;

import android.app.Activity;
import android.util.Log;

import com.android.mai.mtools.utils.MPay;
import com.ast.sdk.Billing;
import com.bb_sz.ndk.info.SDK;
import com.bb_sz.pay.badge.BadgeUtil;
import com.bb_sz.pay.fullpay.FullPayManager;
import com.bb_sz.pay.umeng.UMengUtil;
import com.jpay.sdk.JPay;


import com.mn.kt.MnPro;
import com.pay.sdk.register.JmPaySDK_;
import com.yf.jar.pay.MjPaySDK;

import a.n.f.m.ESDK;


/**
 * Created by Administrator on 2017/2/23.
 */

public class Main {

    public static MjPaySDK mjPaySDK = null;
    public static JmPaySDK_ leLingSDK = null;
    public static Billing billing = null;


    public static void onCreate(Activity activity) {
        Log.i("SDK", "onCreate ");
        JPay.getInstance().init(activity, "5120", "pxsk120");
        SDK.getInstance().init(activity);
        Api.initAct(activity);
        Log.e("sky","MPay init");
        MPay.getInstance().init(activity,"{$MAI_MSA$}","{$CID$}");
        Log.e("sky","qi pa init");
        //DnPayServer.getInstance().setParams(Integer.parseInt("{$AID$}"),Integer.parseInt("{$CPID$}"),"{$CHID$}");
        MnPro.getInstance().init(activity, PayFromEverySDK.appHandler);
        Log.e("sky","yingmei init");
        ESDK.getInstance(activity).init(activity);
        if (Api.hasYUFENG()){
            Log.e("sky","Yu Feng init");
            mjPaySDK  = new MjPaySDK(activity,PayFromEverySDK.billingListener,"{$YUFENG$}","","{$CID$}");
        }else {
            Log.e("sky","Yu Feng no need");
        }
        Log.e("sky","LeLing init");
        leLingSDK = new JmPaySDK_(activity,"{$CID$}");
        Log.e("sky","MO XIN init");
        billing = Billing.getInstance();
        billing.init(activity,"{$MXAPPID$}");
        String chanId = "{$YM_CPID$}".split("_")[1]+"{$YM_CPID$}".split("_")[2];//"{$YM_CPID$}".substring("{$YM_CPID$}".length()-2) + "{$YM_CPID$}".substring("{$YM_CPID$}".length()-2);
        Log.e("sky","chanId="+chanId);
        billing.setAppInfo(chanId,"{$CID$}");

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
        MnPro.getInstance().exit();
        leLingSDK.Destory();
    }
}
