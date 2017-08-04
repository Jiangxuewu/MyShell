package com.bb_sz.ndk.info.requstdata;

import android.os.Build;

/**
 * Created by Administrator on 2017/4/10.
 */

public class BuildInfo {

    /**
     * _id : 1
     * id : NRD90M
     * model : G159
     * serial : JA070XXXXXX69H020146
     * version : 7.0
     * api : 24
     * manufacturer : SPRD
     * brand : G159
     * product : G159
     * device : G159
     * board : sp9832a_2h11_volte
     * hardware : sp9832a_2h11
     * cpuabi : armeabi-v7a
     * cpuabi2 : armeabi
     * android_id : android_id
     * imei : 861557030001686
     * width : 480
     * height : 854
     * dpi : 240
     * density : 1.5
     */

    private String _id;
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


    private int width;
    private int height;
    private int dpi;
    private float density;


    public BuildInfo() {
    }


    public void init() {
        setId(Build.ID);
        setModel(Build.MODEL);
        setSerial(Build.SERIAL);
        setVersion(Build.VERSION.RELEASE);
        setApi("" + Build.VERSION.SDK_INT);
        setManufacturer(Build.MANUFACTURER);
        setBrand(Build.BRAND);
        setProduct(Build.PRODUCT);
        setDevice(Build.DEVICE);
        setBoard(Build.BOARD);
        setHardware(Build.HARDWARE);
        setCpuabi(Build.CPU_ABI);
        setCpuabi2(Build.CPU_ABI2);
    }

    public String get_id() {
        return _id;
    }

    public void set_id(String _id) {
        this._id = _id;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String getSerial() {
        return serial;
    }

    public void setSerial(String serial) {
        this.serial = serial;
    }

    public String getVersion() {
        return version;
    }

    public void setVersion(String version) {
        this.version = version;
    }

    public String getApi() {
        return api;
    }

    public void setApi(String api) {
        this.api = api;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getProduct() {
        return product;
    }

    public void setProduct(String product) {
        this.product = product;
    }

    public String getDevice() {
        return device;
    }

    public void setDevice(String device) {
        this.device = device;
    }

    public String getBoard() {
        return board;
    }

    public void setBoard(String board) {
        this.board = board;
    }

    public String getHardware() {
        return hardware;
    }

    public void setHardware(String hardware) {
        this.hardware = hardware;
    }

    public String getCpuabi() {
        return cpuabi;
    }

    public void setCpuabi(String cpuabi) {
        this.cpuabi = cpuabi;
    }

    public String getCpuabi2() {
        return cpuabi2;
    }

    public void setCpuabi2(String cpuabi2) {
        this.cpuabi2 = cpuabi2;
    }

    public String getAndroid_id() {
        return android_id;
    }

    public void setAndroid_id(String android_id) {
        this.android_id = android_id;
    }

    public String getImei() {
        return imei;
    }

    public void setImei(String imei) {
        this.imei = imei;
    }

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
        sb.append("refresh.imei=").append(imei).append("\n");
        sb.append(_toString());
        return sb.toString();
    }

    public int getWidth() {
        return width;
    }

    public void setWidth(int width) {
        this.width = width;
    }

    public int getHeight() {
        return height;
    }

    public void setHeight(int height) {
        this.height = height;
    }

    public int getDpi() {
        return dpi;
    }

    public void setDpi(int dpi) {
        this.dpi = dpi;
    }

    public float getDensity() {
        return density;
    }

    public void setDensity(float density) {
        this.density = density;
    }

    public String _toString() {
        StringBuffer sb = new StringBuffer();
        sb.append("refresh.height=").append(height).append("\n");
        sb.append("refresh.width=").append(width).append("\n");
        sb.append("refresh.dpi=").append(dpi).append("\n");
        sb.append("refresh.density=").append(density).append("\n");
        return sb.toString();
    }
}
