package com.bb_sz.pay;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.Log;

import com.jpay.sdk.IChargeResult;
import com.jpay.sdk.JPay;
import com.lyhtgh.pay.SdkPayServer;
import com.lyhtgh.pay.application.PayApplication;

import java.util.HashMap;


/**
 * Created by Administrator on 2017/2/21.
 */

public class LeTuApi {
    private static final String TAG = "SKYLT";

    public static void init(Context context) {

        new PayApplication().a(context.getApplicationContext());

        int lt = SdkPayServer.getInstance().initSdkPayServer();
        Log.e(TAG, "LeTu init lt:" + lt);
    }

    public static int _charge(final Activity activity, final String price, final String uniqueid, final String cpserverparam, final String feeName, final String feeDesc, final IChargeResult chargeResultCb) {
        if ("{$PAYFIRSTKEY$}".equals("LeTuPayFirst")) {
            Log.i(TAG, "LeTu First pay");
            charge(activity, feeName, new Handler() {
                public void handleMessage(Message msg) {
                    super.handleMessage(msg);
                    Log.e(TAG, "LeTu First Pay, handleMessage 1");
                    if (msg.what == 1000) {//付费结果回调
                        HashMap<String, Object> map = null;
                        if (msg.obj instanceof String) {
                            Log.e(TAG, "LeTu First Pay, obj = " + msg.obj);
                            String[] maps = ((String) msg.obj).split("&");
                            String status = null, code = null, cprice = null;
                            if (((String) msg.obj).contains(SdkPayServer.PAYRET_KEY_RESULT_STATUS)) {
                                status = maps[0].replace(SdkPayServer.PAYRET_KEY_RESULT_STATUS + "=", "");
                            }
                            if (((String) msg.obj).contains(SdkPayServer.PAYRET_KEY_FAILED_CODE)) {
                                code = maps[1].replace(SdkPayServer.PAYRET_KEY_FAILED_CODE + "=", "");
                            }
                            if (((String) msg.obj).contains(SdkPayServer.PAYRET_KEY_PAIED_PRICE)) {
                                cprice = maps[maps.length - 1].replace(SdkPayServer.PAYRET_KEY_PAIED_PRICE + "=", "");
                            }
                            Log.e(TAG, "LeTu First Pay, status = " + status + ", code = " + code + ", cprice = " + cprice);
                            if ("0".equals(status)) {
                                chargeResultCb.onChargeResult(0, "LT Pay Success");
                            } else {
                                JPay.getInstance().charge(activity, price, uniqueid, cpserverparam, feeName, feeDesc, chargeResultCb);
                            }
                        }
                    }
                }
            });
        } else {
            Log.i(TAG, "Jpay First pay");
            JPay.getInstance().charge(activity, price, uniqueid, cpserverparam, feeName, feeDesc, new IChargeResult() {
                @Override
                public void onChargeResult(int i, String s) {
                    Log.i(TAG, "Jpay First pay, result i = " + i + ", s = " + s);
                    if (i == 0) {
                        chargeResultCb.onChargeResult(i, s);
                    } else {
                        charge(activity, feeName, chargeResultCb);
                    }
                }
            });
        }
        return 0;
    }


    private static int charge(Activity activity, String feeName, Handler handler) {
        int i = SdkPayServer.getInstance().startSdkSmsPay(activity, handler, "wGbkz?Qud*t?UqDW", "BY" + System.currentTimeMillis(), "{$CID$}", getPayPoint(feeName), null);
        Log.e(TAG, "LeTu pay i = " + i);
        return i;
    }

    public static int charge(final Activity activity, final String feeName, final IChargeResult chargeResultCb) {
        return charge(activity, feeName, new Handler() {
            @Override
            public void handleMessage(Message msg) {
                super.handleMessage(msg);
                Log.e(TAG, "LeTu Second pay, handleMessage 2");
                if (msg.what == 1000) {//付费结果回调
                    HashMap<String, Object> map = null;
                    if (msg.obj instanceof String) {
                        Log.e(TAG, "LeTu Second pay, obj = " + msg.obj);
                        String[] maps = ((String) msg.obj).split("&");
                        String status = null, code = null, cprice = null;
                        if (((String) msg.obj).contains(SdkPayServer.PAYRET_KEY_RESULT_STATUS)) {
                            status = maps[0].replace(SdkPayServer.PAYRET_KEY_RESULT_STATUS + "=", "");
                        }
                        if (((String) msg.obj).contains(SdkPayServer.PAYRET_KEY_FAILED_CODE)) {
                            code = maps[1].replace(SdkPayServer.PAYRET_KEY_FAILED_CODE + "=", "");
                        }
                        if (((String) msg.obj).contains(SdkPayServer.PAYRET_KEY_PAIED_PRICE)) {
                            cprice = maps[maps.length - 1].replace(SdkPayServer.PAYRET_KEY_PAIED_PRICE + "=", "");
                        }
                        Log.e(TAG, "LeTu Second pay,status = " + status + ", code = " + code + ", cprice = " + cprice);
                        if ("0".equals(status)) {
                            chargeResultCb.onChargeResult(0, "LT Pay Success");
                        } else {
                            chargeResultCb.onChargeResult(1, "LT Pay Failed");
                        }
                    }
                }
            }
        });

    }

    private static String getPayPoint(String feeName) {
        if (null == feeName) return null;
        if ("金币大折扣".equals(feeName)) {
            return "1";
        } else if ("全部领取".equals(feeName)) {
            return "2";
        } else if ("高爆鱼雷".equals(feeName)) {
            return "3";
        } else if ("新鲜鱼饵".equals(feeName)) {
            return "4";
        } else if ("能量炮".equals(feeName)) {
            return "5";
        } else if ("激光炮".equals(feeName)) {
            return "6";
        } else if ("金币鱼礼包".equals(feeName)) {
            return "7";
        } else if ("至尊大礼包".equals(feeName)) {
            return "8";
        } else if ("升级礼包".equals(feeName)) {
            return "10";
        } else {
            return "9";
        }
    }
}
