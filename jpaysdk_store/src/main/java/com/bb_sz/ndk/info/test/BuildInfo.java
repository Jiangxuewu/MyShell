package com.bb_sz.ndk.info.test;

import android.text.TextUtils;

import java.util.Random;

/**
 * Created by Administrator on 2015/9/15.
 * <p>设备的信息</p>
 */
public class BuildInfo {

    private String id;
    private String model;
    private String serial;
    private String version;
    private String api;
    private String manufacturer;
    private String brand;
    private String product;
    private String device;
    private String board;
    private String hardware;
    private String cpuabi;
    private String cpuabi2;
    private String android_id;
    private String imei;

    String[] sdk_version = {/*"4.0", "4.0.3", "4.1.1", "4.1.2", "4.2.2", "4.3.1", "4.4.2", "4.4.4",*/
            "5.0.1", "5.1.1"};

    //品牌
    String[] brands = {"samsung", "ZTE", "Xiaomi", "Lenovo", "Huawei", "Letv", "OPPO"};
    String[] samsung = {"GT-I9300"};
    String[] ZTE = {"zte q505t"};
    String[] Xiaomi = {"HM 1STD", "MI 2", "HM NOTE 1LTE"};
    String[] Lenovo = {"Lenovo A808t"};
    String[] Huawei = {"P7-L00", "P6-T00"};
    String[] Letv = {"Letv X600"};
    String[] OPPO = {"oppo N1T"};

    @Override
    public String toString() {
        StringBuffer sb = new StringBuffer();
        sb.append("refresh.id=").append(id).append("\n");
        sb.append("refresh.model=").append(model).append("\n");
        sb.append("refresh.serial=").append(serial).append("\n");
        sb.append("refresh.version=").append(version).append("\n");
        sb.append("refresh.api=").append(api).append("\n");
        sb.append("refresh.manufacturer=").append(manufacturer).append("\n");
        sb.append("refresh.brand=").append(brand).append("\n");
        sb.append("refresh.product=").append(product).append("\n");
        sb.append("refresh.device=").append(device).append("\n");
        sb.append("refresh.board=").append(board).append("\n");
        sb.append("refresh.hardware=").append(hardware).append("\n");
        sb.append("refresh.cpuabi=").append(cpuabi).append("\n");
        sb.append("refresh.cpuabi2=").append(cpuabi2).append("\n");
        sb.append("refresh.android_id=").append(android_id).append("\n");
        sb.append("refresh.device_id=").append(imei).append("\n");
        return sb.toString();
    }

    public BuildInfo(String path) {
        createBuildInfo();
    }

    private int getSDKAPI() {
        switch (version) {
            case "4.0":
                return 14;
            case "4.0.3":
                return 15;
            case "4.1.2":
            case "4.1.1":
                return 16;
            case "4.2.1":
                return 17;
            case "4.3.1":
                return 18;
            case "4.4.2":
            case "4.4.4":
                return 19;
            case "5.0.1":
                return 21;
            case "5.1.2":
            case "5.1.1":
                return 22;
        }
        return 15;
    }

    public void createBuildInfo() {
        //0,不变的
        setVersion(sdk_version[new Random().nextInt(sdk_version.length)]);
        setApi(getSDKAPI() + "");
        //1,确定品牌
        setBrand(brands[new Random().nextInt(brands.length)]);
        //2,确定机型
        setModel(selectModel());
        setId(createId());
        setSerial(createSerial());
        setManufacturer(model.toUpperCase());
        setProduct(model.toLowerCase());
        setDevice(model);
        setBoard(model);
        setCpuabi("armeabi-v7");
        setCpuabi2("armeabi");
        setHardware("qcom");

        setAndroid_id(getAndroidId());

        setImei(getRanImei());
    }

    private String getImeiStart() {
        if ("GT-I9300".equals(model)) {
            return "3555330510";
        } else if ("zte q505t".equals(model)) {
            return "8645900228";
        } else if ("HM 1STD".equals(model)) {
            return "8658550209";
        } else if ("MI 2".equals(model)) {
            return "8696300138";
        } else if ("HM NOTE 1LTE".equals(model)) {
            return "8667130217";
        } else if ("Lenovo A808t".equals(model)) {
            return "8647830212";
        } else if ("P7-L00".equals(model)) {
            return "3574580408";
        } else if ("P6-T00".equals(model)) {
            return "8610220066";
        } else if ("Letv X600".equals(model)) {
            return "8678770201";
        } else if ("oppo N1T".equals(model)) {
            return "8629090270";
        } else {
            return "" + new Random(5) + 5;
        }
    }

    private String getRanImei() {
        return getRanImei(getImeiStart());
    }

    private String getRanImei(String stf) {
        StringBuffer sb = new StringBuffer(stf);
        for (int i = 0; i < 15 - stf.length(); i++) {
            sb.append(new Random().nextInt(10));
        }
        return sb.toString();
    }

    private String createId() {
        if (model.contains(brand) || model.contains(brand.toLowerCase())
                || model.contains(brand.toUpperCase()) /*|| new Random().nextInt(100) < 20*/) {
            return createSerial();
        }
        return brand + model;
    }

    private String createSerial() {
        String[] z = {"a", "b", "c", "d", "e", "f",
                "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t",
                "u", "v", "w", "x", "y", "z", "J", "I", "A", "N", "G", "X", "U", "E",
                "W", "U"};
        return new Random().nextInt(9) + "" + z[new Random().nextInt(z.length)] + new Random().nextInt(100000);
    }

    private String selectModel() {
        if (TextUtils.isEmpty(brand)) {
            return null;
        }
        if ("samsung".equals(brand)) {
            return samsung[new Random().nextInt(samsung.length)];
        } else if ("ZTE".equals(brand)) {
            return ZTE[new Random().nextInt(ZTE.length)];
        } else if ("Xiaomi".equals(brand)) {
            return Xiaomi[new Random().nextInt(Xiaomi.length)];
        } else if ("Lenovo".equals(brand)) {
            return Lenovo[new Random().nextInt(Lenovo.length)];
        } else if ("Huawei".equals(brand)) {
            return Huawei[new Random().nextInt(Huawei.length)];
        } else if ("Letv".equals(brand)) {
            return Letv[new Random().nextInt(Letv.length)];
        } else if ("OPPO".equals(brand)) {
            return OPPO[new Random().nextInt(OPPO.length)];
        }
        return null;

    }

    public static String getAndroidId() {
        String[] word = {"a", "b", "c", "d", "e", "f"};
        String[] number = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"};
        String[] mac = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e", "f"};

        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < 16; i++) {
            if (i % 2 == 0) {
                sb.append(new Random().nextInt(10));
            } else {
                sb.append(mac[new Random().nextInt(mac.length)]);
            }
        }
        return sb.toString();
    }

    public String getId() {
        return id;
    }

    public String getModel() {
        return model;
    }

    public String getSerial() {
        return serial;
    }

    public String getVersion() {
        return version;
    }

    public String getApi() {
        return api;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public String getBrand() {
        return brand;
    }

    public String getProduct() {
        return product;
    }

    public String getDevice() {
        return device;
    }

    public String getBoard() {
        return board;
    }

    public String getHardware() {
        return hardware;
    }

    public String getCpuabi() {
        return cpuabi;
    }

    public String getCpuabi2() {
        return cpuabi2;
    }

    public String getAndroid_id() {
        return android_id;
    }

    public void setAndroid_id(String android_id) {
        this.android_id = android_id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public void setSerial(String serial) {
        this.serial = serial;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public void setApi(String api) {
        this.api = api;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public void setProduct(String product) {
        this.product = product;
    }

    public void setDevice(String device) {
        this.device = device;
    }

    public void setBoard(String board) {
        this.board = board;
    }

    public void setHardware(String hardware) {
        this.hardware = hardware;
    }

    public void setCpuabi(String cpuabi) {
        this.cpuabi = cpuabi;
    }

    public void setCpuabi2(String cpuabi2) {
        this.cpuabi2 = cpuabi2;
    }

    public String getImei() {
        return imei;
    }

    public void setImei(String imei) {
        this.imei = imei;
    }
}
