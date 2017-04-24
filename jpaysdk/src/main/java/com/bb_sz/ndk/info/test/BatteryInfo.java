package com.bb_sz.ndk.info.test;

/**
 * Created by Administrator on 2016/8/8.
 */
public class BatteryInfo {

    public boolean m_bPresent = false;
    public int m_iHealth = -1;
    public int m_iLevel = -1;
    public int m_iPlugged = -1;
    public int m_iScale = -1;
    public int m_iStatus = -1;
    public int m_iTemperature = -1;
    public int m_iVoltage = -1;
    public String m_szTechnology = "";


    public BatteryInfo() {
    }

    public int iGetLevel() {
        return 100 * this.m_iLevel / this.m_iScale;
    }

    public int iReadCurrent() {
//        try {
//            int var2 = CPUID.sysUtils.readSystemFileAsInt("/sys/class/power_supply/battery/current_now");
//            return var2;
//        } catch (Exception var3) {
//            var3.printStackTrace();
            return -1;
//        }
    }

    public String szGetChargeStatus() {
        switch(this.m_iStatus) {
            case 2:
                return "正在充电";
            case 3:
                return "正在放电";
            case 4:
                return "没有充电";
            case 5:
                return "已经充满";
            default:
                return "未知状态";
        }
    }

    public String szGetHealthStatus() {
        switch(this.m_iHealth) {
            case 2:
                return "良好";
            case 3:
                return "过热";
            case 4:
                return "报废";
            case 5:
                return "电压过高";
            case 6:
                return "不详的错误";
            case 7:
                return "过冷";
            default:
                return "未知状态";
        }
    }

    public String szGetPowerSource() {
        switch(this.m_iPlugged) {
            case 0:
                return "电池";
            case 1:
                return "直流充电器";
            case 2:
                return "USB端口";
            case 3:
            default:
                return "未知";
            case 4:
                return "无线充电";
        }
    }
}
