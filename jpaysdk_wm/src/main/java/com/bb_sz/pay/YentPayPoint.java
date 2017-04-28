package com.bb_sz.pay;

/**
 * Created by Administrator on 2017/4/25.
 */

public enum YentPayPoint {

    TTBY_GBGM(4410,"金币大折扣","天天捕鱼"),
    TTBY_QBLQ(4411,"全部领取","天天捕鱼"),
    TTBY_GBYL(4412,"高爆鱼雷","天天捕鱼"),
    TTBY_XXYE(4413,"新鲜鱼饵","天天捕鱼"),
    TTBY_NLP(4414,"能量炮","天天捕鱼"),
    TTBY_JGP(4415,"激光炮","天天捕鱼"),
    TTBY_JBYLB(4416,"金币鱼礼包","天天捕鱼"),
    TTBY_JMLB(4417,"精美礼包","天天捕鱼"),
    TTBY_ZZDLB(4418,"至尊大礼包","天天捕鱼"),
    TTBY_SJLB(4419,"升级礼包","天天捕鱼"),
    HJZJ_SCLB(4423,"首冲礼包","合金战姬"),
    HJZJ_AHQTZ(4424,"安魂曲套装","合金战姬"),
    HJZJ_SRWXDY(4425,"3日无限弹药","合金战姬"),
    HJZJ_CZDLB(4426,"超值大礼包","合金战姬"),
    HJZJ_HHDLB(4427,"豪华大礼包","合金战姬"),
    HJZJ_XYDLB(4428,"幸运大礼包","合金战姬"),
    HJZJ_CWDLB(4429,"畅玩大礼包","合金战姬"),
    HJZJ_ZSLB(4423,"钻石礼包","合金战姬"),
    HJZJ_VIPCWLB(4431,"VIP畅玩礼包","合金战姬"),
    HJZJ_ZS100(4432,"钻石100","合金战姬"),
    HJZJ_ZS350(4433,"钻石350","合金战姬"),
    HJZJ_ZS800(4434,"钻石800","合金战姬"),
    HJZJ_ZS1500(4435,"钻石1500","合金战姬"),
    HJZJ_SZGJ(4436,"十字光剑","合金战姬"),
    HJZJ_GTL(4437,"M134加特林","合金战姬"),
    HJZJ_RYPSQ(4438,"熔岩喷射器","合金战姬"),
    HJZJ_LYBJZY(4439,"蓝焰冰晶之翼","合金战姬"),
    HJZJ_STSZY(4440,"圣天使之翼","合金战姬"),
    HJZJ_TNLFZ(4441,"兔女郎服装","合金战姬"),
    HJZJ_GZZ(4442,"公主装","合金战姬"),
    HJZJ_XZKLDY(4443,"血之克劳迪娅","合金战姬"),
    FCNLM_100(4449,"100金币","复仇鸟联盟2"),
    FCNLM_250(4450,"250金币","复仇鸟联盟2"),
    FCNLM_500(4451,"500金币","复仇鸟联盟2"),
    FCNLM_700(4451,"700金币","复仇鸟联盟2"),
    FCNLM_1000(4452,"1000金币","复仇鸟联盟2"),
    FCNLM_1100(4453,"1100金币","复仇鸟联盟2"),
    FCNLM_1600(4466,"1600金币","复仇鸟联盟2");


    public int payPoint;
    public String name;
    public String appName;
    YentPayPoint(int payPoint, String name, String appName){
        this.payPoint = payPoint;
        this.name = name;
        this.appName = appName;
    }


}
