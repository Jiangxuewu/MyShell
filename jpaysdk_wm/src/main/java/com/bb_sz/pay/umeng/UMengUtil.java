package com.bb_sz.pay.umeng;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;

import com.bb_sz.ndk.App;
import com.umeng.analytics.MobclickAgent;
import com.umeng.analytics.game.UMGameAgent;

/**
 * Created by Administrator on 2016/12/15.
 */

public class UMengUtil {

    public static Context mContext;
    private static boolean isInit = false;

    public static void init(Context context) {
        mContext = context;
        if (isUpload(context)) {
            String appkey = "{$UMKEY$}";
            String channelId = "{$CID$}";
            MobclickAgent.UMAnalyticsConfig config = new MobclickAgent.UMAnalyticsConfig(context, appkey, channelId);
            MobclickAgent.startWithConfigure(config);
            MobclickAgent.setDebugMode(false);
            UMGameAgent.init(context);
            isInit = true;
            if (App.debug > 0) Log.d("SKYUM", "init");
        }
    }

    public static void onResume(Context context) {
        if (isUpload(context)) {
            UMGameAgent.onResume(context);
            if (App.debug > 0) Log.d("SKYUM", "onResume");
        }
    }

    public static void onPause(Context context) {
        if (isUpload(context)) {
            UMGameAgent.onPause(context);
            if (App.debug > 0) Log.d("SKYUM", "onPause");
        }
    }

    public static void refresh(final Context context) {
        new Handler(Looper.getMainLooper()).post(new Runnable() {
            @Override
            public void run() {
                if (!isInit) {
                    if (null == UMengUtil.mContext) {
                        UMengUtil.mContext = context;
                    }
                    init(UMengUtil.mContext);
                    onResume(UMengUtil.mContext);
                }
            }
        });
    }

    private static boolean isUpload(Context context) {
//        boolean isUpload = false;
//        try {
//            isUpload = context.getSharedPreferences("asdfsdfasdf", 0).getInt("asdfs", -1) == 0;
//        } catch (Exception ignored) {
//        }
//        if (App.debug > 0) Log.d("SKYUM", "isUpload:" + isUpload);
//        return isUpload;
        return true;
    }
}
