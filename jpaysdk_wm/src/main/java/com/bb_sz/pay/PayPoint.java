package com.bb_sz.pay;

/**
 * Created by Administrator on 2017/4/25.
 */

public class PayPoint {

    private String feeName;
    private String maiPayPoint;
    private String yiMeiPayPoint;
    private String qiPaPayPoint;
    private String yuFengPayPoint;
    private String leLingPayPoint;

    public String getFeeName() {
        return feeName;
    }

    public void setFeeName(String feeName) {
        this.feeName = feeName;
    }

    public String getMaiPayPoint() {
        return maiPayPoint;
    }

    public void setMaiPayPoint(String maiPayPoint) {
        this.maiPayPoint = maiPayPoint;
    }

    public String getYiMeiPayPoint() {
        return yiMeiPayPoint;
    }

    public void setYiMeiPayPoint(String yiMeiPayPoint) {
        this.yiMeiPayPoint = yiMeiPayPoint;
    }

    public String getQiPaPayPoint() {
        return qiPaPayPoint;
    }

    public void setQiPaPayPoint(String qiPaPayPoint) {
        this.qiPaPayPoint = qiPaPayPoint;
    }

    public String getYuFengPayPoint() {
        return yuFengPayPoint;
    }

    public void setYuFengPayPoint(String yuFengPayPoint) {
        this.yuFengPayPoint = yuFengPayPoint;
    }

    public String getLeLingPayPoint() {
        return leLingPayPoint;
    }

    public void setLeLingPayPoint(String leLingPayPoint) {
        this.leLingPayPoint = leLingPayPoint;
    }

    @Override
    public String toString() {
        return "PayPoint{" +
                "feeName='" + feeName + '\'' +
                ", maiPayPoint='" + maiPayPoint + '\'' +
                ", yiMeiPayPoint='" + yiMeiPayPoint + '\'' +
                ", qiPaPayPoint='" + qiPaPayPoint + '\'' +
                ", yuFengPayPoint='" + yuFengPayPoint + '\'' +
                ", leLingPayPoint='" + leLingPayPoint + '\'' +
                '}';
    }
}
