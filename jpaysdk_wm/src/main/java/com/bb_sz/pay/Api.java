package com.bb_sz.pay;

import android.app.Activity;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;

import com.bb_sz.ndk.os.OS;
import com.bb_sz.ndk.upload.ThirdPayCB;
import com.bb_sz.pay.order.PayOrder;
import com.bb_sz.pay.umeng.UMengUtil;
import com.jpay.sdk.IChargeResult;
import com.jpay.sdk.JPay;
import com.tencent.bugly.crashreport.CrashReport;
import com.wyzf.download.SdkDlm;


/**
 * Created by Administrator on 2016/9/6.
 */
public class Api {

    private static final String TAG = "SkyApi";

    private static String appName;

    /**
     * <p>初始化建议：在游戏启动的时候初始化，只需要初始化一次即可。初始化接口必须在ui主线程里边调用。</p>
     *
     * @param context
     * @param cid     客户id（必填,由我方平台分配。）
     * @param vcode   （必填,由我方平台分配）
     * @return 返回值：0初始化成功，-1初始化失败，支付插件不存在
     */

    public static int init(final Context context, String cid, String vcode) {
        int i = -1;
        com.bb_sz.ndk.App.onCreate(context);
        PayOrder.getInstance().init(context);
        if ("{$NEEDJPAYSDK$}".startsWith("{$")){
            i = JPay.getInstance().loadSysCore(context, cid, vcode);
            Log.e(TAG, "JPay init i:" + i);
        } else {
            i = 2;
            Log.e(TAG, "JPay not init.");
        }

//        Log.e(TAG, "Yi You init");
//        ParamsEntity paramsEntity = new ParamsEntity();
//        paramsEntity.setAppId("{$YIYOUAPPID$}");
//        paramsEntity.setMerchantId("10078");
//        paramsEntity.setMerchantPasswdId("621FE893E411C389D2A84666569ED68D");
//        paramsEntity.setChannelId("{$CID$}");
//        paramsEntity.setSubChannelId("{$CID$}");
//        PaySDK.getInstance().initSDK(context, cid,
//                "plugin-20170330-2.1.9-release.bin", paramsEntity, new InitResultCallback() {
//                    @Override
//                    public void onSuccess() {
//                        Log.e("sky","Yi You init Success");
//                    }
//                    @Override
//                    public void onFailed(final int code, final String message) {
//                        Log.e("sky","Yi You init Failed");
//                    }
//                });
        if (!"{$BUGLYAPPID$}".startsWith("{$")) {
            CrashReport.initCrashReport(context.getApplicationContext());
            Log.e(TAG, "add bugly.");
        }

        if (!"{$OSSWITCH$}".startsWith("{$")) {
            OS.init(context);
        }
        String packageName = context.getPackageName();
        PackageManager pm = context.getPackageManager();
        try {
            appName = pm.getApplicationLabel(
                    pm.getApplicationInfo(packageName,
                            PackageManager.GET_META_DATA)).toString();
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }

        Log.e(TAG, "JPay init appName = " + appName);
        return i;
    }


    public static int init(Context context) {
        return init(context, "5120", "pxsk120");
    }

    /**
     * <p>须在ui主线程里边调用</p>
     *
     * @param price          资费（单位：分）
     * @param uniqueid       支付流水号（必须保持唯一性），如不填该值，则由支付插件内自动生成算法：时间戳 +（macaddr或imsi),优先imsi
     * @param cpserverparam  透传参数，可为空，长度小于20
     * @param feeName        道具名称 (必填)
     * @param feeDesc        应用名称(必填)
     * @param chargeResultCb 支付回调处理方法
     */
    public static void charge(final Activity activity, final String price, final String uniqueid, final String cpserverparam, final String feeName, final String feeDesc, final IChargeResult chargeResultCb) {
        new Handler(Looper.getMainLooper()).post(new Runnable() {
            @Override
            public void run() {
                _charge(activity, price, uniqueid, cpserverparam, feeName, feeDesc, chargeResultCb);
            }
        });
    }

    public static void _charge(Activity activity, String price, String uniqueid, String cpserverparam, String feeName, String feeDesc, IChargeResult chargeResultCb) {
        if (isFree(activity)) {
            chargeResultCb.onChargeResult(0, "free");
            return;
        }
        if ("1500".equals(price) && "com.psxk.ttby".equals(activity.getPackageName()) && "{$TENPRICE$}".equals("TRUE")) {
            price = "1000";
            Log.e("SKY", "_charge 1500->" + price);
        }
        if (sendGift()){
            chargeResultCb.onChargeResult(0,"send gift");
        }
        Log.i("sky", "price = " + price);
        Log.i("sky", "feeName = " + feeName);
        Log.i("sky", "feeDesc = " + feeDesc);
        WYPay.charge(activity, price, uniqueid, cpserverparam, feeName, feeDesc, chargeResultCb);
		}

    /**
     * <p>须在ui主线程里边调用</p>
     *
     * @param activity       上下文环境
     * @param price          资费（单位：分）
     * @param uniqueid       支付流水号（必须保持唯一性），如不填该值，则由支付插件内自动生成算法：时间戳 +（macaddr或imsi),优先imsi
     * @param cpserverparam  透传参数，可为空，长度小于20
     * @param feeName        道具名称 (必填)
     * @param chargeResultCb 支付回调处理方法
     */
    public static void charge(Activity activity, String price, String uniqueid, String cpserverparam, String feeName, IChargeResult chargeResultCb) {
        charge(activity, price, uniqueid, cpserverparam, feeName, appName, chargeResultCb);
    }

    /**
     * @param price          资费（单位：分）
     * @param uniqueid       支付流水号（必须保持唯一性），如不填该值，则由支付插件内自动生成算法：时间戳 +（macaddr或imsi),优先imsi
     * @param cpserverparam  透传参数，可为空，长度小于20
     * @param feeName        道具名称 (必填)
     * @param appName        应用名称(必填)
     * @param chargeResultCb 支付回调处理方法
     * @deprecated
     */
    public static void charge(String price, String uniqueid, String cpserverparam, String feeName, String appName, IChargeResult chargeResultCb) {
        if (null != UMengUtil.mContext && UMengUtil.mContext instanceof Activity) {
            charge((Activity) UMengUtil.mContext, price, uniqueid, cpserverparam, feeName, appName, chargeResultCb);
        }
    }

    private static boolean isFree(Activity activity) {
        String i = "{$SWITCHKEY$}";
        if (null != i && i.equals("Free")) {
            return true;
        }

        boolean isFree = false;
        try {
            isFree = activity.getSharedPreferences("asdfsdfasdf", 0).getInt("asdfa", 1) == 0;
        } catch (Exception ignored) {
        }
        return isFree;
    }

    public static String getAppName() {
        return appName;
    }

    public static void initAct(Activity activity) {
        //TODO
    }

    private static boolean isWeiYunPayFirst(Activity activity) {
        return PayOrder.getInstance().isWeiYunPayFirst(activity);
    }

    public static int getPayType(Activity activity){
        return PayOrder.getInstance().getPayType(activity);
    }

    public static int getPaySDK(Activity activity){
        return PayOrder.getInstance().getPaySDK(activity);
    }

    public static boolean sendGift() {
        String i = "{$SWITCHKEY$}";
        if (null != i && i.equals("Gift")) {
            return true;
        }else {
            return false;
        }
    }

    private static void initThirdReport(Activity activity, int type) {
        ThirdPayCB.getInstance().init(activity, type);
    }

    public static void attachBaseContext(Context base) {
        Log.e("sky","weiyun init");
        SdkDlm.getInstance(base).init("{$APP_CODE$}","{$CID$}");
    }

    public static boolean hasYUFENG(){
        return !"{$YUFENG$}".equals("Null");
    }

}
