package com.bb_sz.device;

import android.content.Context;
import android.os.Build;

/**
 * Created by Administrator on 2016/12/16.
 */

public class DeviceHelper {
    public String test;
    private static String Access;
    private static String AppVersion;
    private static String Board;
    private static String Brand;
    private static String Carrier;
    private static String Country;
    private static String Cpu;
    private static String DeviceId;
    private static String GpuRender;
    private static String GpuVender;
    private static String IdMd5;
    private static String Language;
    private static String Mac;
    private static String Manufacturer;
    private static String Manuid;
    private static long Manutime;
    private static String Model;
    private static String Name;
    private static String OsVersion;
    private static String Package;
    private static String Resolution;
    private static String SubAccess;
    private static int Timezone;
    private static String VersionCode;

    public static String getManuid() {
        return Manuid;
    }

    public static String getAccess() {
        return Access;
    }

    public static String getAppVersion() {
        return AppVersion;
    }

    public static String getBoard() {
        return Board;
    }

    public static String getBrand() {
        return Brand;
    }

    public static String getCarrier() {
        return Carrier;
    }

    public static String getCountry() {
        return Country;
    }

    public static String getCpu() {
        return Cpu;
    }

    public static String getDeviceId() {
        return DeviceId;
    }

    public static String getGpuRender() {
        return GpuRender;
    }

    public static String getGpuVender() {
        return GpuVender;
    }

    public static String getIdMd5() {
        return IdMd5;
    }

    public static String getLanguage() {
        return Language;
    }

    public static String getMac() {
        return Mac;
    }

    public static String getManufacturer() {
        return Manufacturer;
    }

    public static long getManutime() {
        return Manutime;
    }

    public static String getModel() {
        return Model;
    }

    public static String getName() {
        return Name;
    }

    public static String getOsVersion() {
        return OsVersion;
    }

    public static String getPackage() {
        return Package;
    }

    public static String getResolution() {
        return Resolution;
    }

    public static String getSubAccess() {
        return SubAccess;
    }

    public static String getTimezone() {
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Integer.valueOf(Timezone);
        return String.format("%d", arrayOfObject);
    }

    public static String getVersionCode() {
        return VersionCode;
    }

    public DeviceHelper(Context context) {
        DeviceId = DeviceConfig.getDeviceId(context);
        IdMd5 = DeviceConfig.getDeviceIdMD5(context);
        Mac = DeviceConfig.getMac(context);
        Model = Build.MODEL;
        OsVersion = Build.VERSION.RELEASE;
        Resolution = DeviceConfig.getResolution(context);
        Cpu = DeviceConfig.getCPU();
        Board = Build.BOARD;
        Brand = Build.BRAND;
        Manutime = Build.TIME;
        Manufacturer = Build.MANUFACTURER;
        Manuid = Build.ID;
        Name = Build.DEVICE;
        AppVersion = DeviceConfig.getAppVersionName(context);
        VersionCode = DeviceConfig.getAppVersionCode(context);
        Package = context.getPackageName();
        Timezone = DeviceConfig.getTimeZone(context);
        String[] arrayOfString1 = DeviceConfig.getLocaleInfo(context);
        Country = arrayOfString1[0];
        Language = arrayOfString1[1];
        String[] arrayOfString2 = DeviceConfig.getNetworkAccessMode(context);
        Access = arrayOfString2[0];
        SubAccess = arrayOfString2[1];
        Carrier = DeviceConfig.getOperator(context);

    }

}
