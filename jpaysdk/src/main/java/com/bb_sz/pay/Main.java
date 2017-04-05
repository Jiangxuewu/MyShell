package com.bb_sz.pay;

import android.app.Activity;

import com.bb_sz.pay.badge.BadgeUtil;
import com.bb_sz.pay.kefu.CusService;
import com.bb_sz.pay.umeng.UMengUtil;

/**
 * Created by Administrator on 2017/2/23.
 */

public class Main {
    public static void onCreate(Activity activity) {
        Api.initAct(activity);
        UMengUtil.init(activity);
    }

    public static void onPause(Activity activity) {
//        CusService.getInstance(activity).onPause();
        UMengUtil.onPause(activity);
        BadgeUtil.setBadgeCount(activity, 1);
    }

    public static void onResume(Activity activity) {
//        CusService.getInstance(activity).onResume();
        UMengUtil.onResume(activity);
        BadgeUtil.setBadgeCount(activity, 0);
    }

    public static void onDestroy(Activity activity) {
//        CusService.getInstance(activity).onDestroy();
    }
}
