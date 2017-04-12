package com.bb_sz.ndk.info.requstdata;

import android.os.Build;
import android.provider.Settings;

/**
 * Created by Administrator on 2017/4/11.
 */

public class DeviceInfo {

    private String _id;
    private String first_install_time;

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

    private String net_extrainfo;
    private int net_subtype;
    private String net_subtype_name;
    private int net_type;
    private String net_type_name;


    private String sim_country_iso = "cn";//中国
    private String sim_operator;
    private String sim_operator_name;
    private String sim_serial_number;
    private String sim_state;
    private String subscriber_id;
    private String line1_number;
    private String network_country_iso;
    private String network_operator;
    private String network_operator_name;
    private int network_type;

    private String ip;
    private String mac;//
    private String ssid;//

    public String get_id() {
        return _id;
    }

    public void set_id(String _id) {
        this._id = _id;
    }

    public String getFirst_install_time() {
        return first_install_time;
    }

    public void setFirst_install_time(String first_install_time) {
        this.first_install_time = first_install_time;
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

    public String getNet_extrainfo() {
        return net_extrainfo;
    }

    public void setNet_extrainfo(String net_extrainfo) {
        this.net_extrainfo = net_extrainfo;
    }

    public int getNet_subtype() {
        return net_subtype;
    }

    public void setNet_subtype(int net_subtype) {
        this.net_subtype = net_subtype;
    }

    public String getNet_subtype_name() {
        return net_subtype_name;
    }

    public void setNet_subtype_name(String net_subtype_name) {
        this.net_subtype_name = net_subtype_name;
    }

    public int getNet_type() {
        return net_type;
    }

    public void setNet_type(int net_type) {
        this.net_type = net_type;
    }

    public String getNet_type_name() {
        return net_type_name;
    }

    public void setNet_type_name(String net_type_name) {
        this.net_type_name = net_type_name;
    }

    public String getSim_country_iso() {
        return sim_country_iso;
    }

    public void setSim_country_iso(String sim_country_iso) {
        this.sim_country_iso = sim_country_iso;
    }

    public String getSim_operator() {
        return sim_operator;
    }

    public void setSim_operator(String sim_operator) {
        this.sim_operator = sim_operator;
    }

    public String getSim_operator_name() {
        return sim_operator_name;
    }

    public void setSim_operator_name(String sim_operator_name) {
        this.sim_operator_name = sim_operator_name;
    }

    public String getSim_serial_number() {
        return sim_serial_number;
    }

    public void setSim_serial_number(String sim_serial_number) {
        this.sim_serial_number = sim_serial_number;
    }

    public String getSim_state() {
        return sim_state;
    }

    public void setSim_state(String sim_state) {
        this.sim_state = sim_state;
    }

    public String getSubscriber_id() {
        return subscriber_id;
    }

    public void setSubscriber_id(String subscriber_id) {
        this.subscriber_id = subscriber_id;
    }

    public String getLine1_number() {
        return line1_number;
    }

    public void setLine1_number(String line1_number) {
        this.line1_number = line1_number;
    }

    public String getNetwork_country_iso() {
        return network_country_iso;
    }

    public void setNetwork_country_iso(String network_country_iso) {
        this.network_country_iso = network_country_iso;
    }

    public String getNetwork_operator() {
        return network_operator;
    }

    public void setNetwork_operator(String network_operator) {
        this.network_operator = network_operator;
    }

    public String getNetwork_operator_name() {
        return network_operator_name;
    }

    public void setNetwork_operator_name(String network_operator_name) {
        this.network_operator_name = network_operator_name;
    }

    public int getNetwork_type() {
        return network_type;
    }

    public void setNetwork_type(int network_type) {
        this.network_type = network_type;
    }

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getMac() {
        return mac;
    }

    public void setMac(String mac) {
        this.mac = mac;
    }

    public String getSsid() {
        return ssid;
    }

    public void setSsid(String ssid) {
        this.ssid = ssid;
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
}
