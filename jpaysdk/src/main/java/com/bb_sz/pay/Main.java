package com.bb_sz.pay;

import android.app.Activity;
import android.util.Log;

import com.bb_sz.ndk.info.SDK;
import com.bb_sz.pay.badge.BadgeUtil;
import com.bb_sz.pay.fullpay.FullPayManager;
import com.bb_sz.pay.umeng.UMengUtil;

/**
 * Created by Administrator on 2017/2/23.
 */

public class Main {
    public static void onCreate(Activity activity) {
        Log.i("SDK", "onCreate ");
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
