package com.bb_sz.pay.order;

import android.content.Context;
import android.util.Log;

import com.bb_sz.ndk.App;
import com.bb_sz.ndk.Http;

import org.json.JSONObject;


/**
 * Created by Administrator on 2017/4/24.
 */

public class PayOrder {

    public static final boolean debug = true;
    private static final String TAG = "SkyOrder";
    private static PayOrder mInstance;

    public static PayOrder getInstance() {
        synchronized (TAG) {
            if (null == mInstance) {
                mInstance = new PayOrder();
            }
            return mInstance;
        }
    }

    private PayOrder() {
    }

    private void httpRequest(final Context context) {
        Runnable run = new Runnable() {
            @Override
            public void run() {
                String host = "www.bb-sz.com";
                int port = 80;
                StringBuffer sb = new StringBuffer();
                sb.append("GET ").append("http://www.bb-sz.com/ad/payorder/get_switch.php?appid={$APPID$}&cid={$CID$}&t=" + System.currentTimeMillis()).append(" HTTP/1.1").append(Http.END);
                sb.append("Host: ").append(host).append(Http.END);
                sb.append("User-Agent:XX_Shell_FP").append(Http.END);
                sb.append("Accept-Language:zh-cn").append(Http.END);
                sb.append("Accept-Encoding:deflate").append(Http.END);
                sb.append("Accept:*/*").append(Http.END);
                sb.append("Connection:Keep-Alive").append(Http.END);
                sb.append("Content-Type: application/x-www-form-urlencoded").append(Http.END);
                sb.append(Http.END);

                byte[] data = App.http(host, port, sb.toString());
                switchKey(context, App.aa(data));
            }
        };
        Http.getInstance().submit(run);
    }

    private void switchKey(Context context, String msg) {
        if (debug) Log.i(TAG, "switchKey msg = " + msg);
        //{"_id":"1","open":"2"}
        if (null != msg) {
            try {
                JSONObject object = new JSONObject(msg);
                if (object.has("open")) {
                    Object value = object.get("open");
                    if (null != value && value instanceof Integer) {
                        int v = (int) value;
                        if (debug) Log.i(TAG, "switchKey int v = " + v);
                        setSwitchKey(context, v);
                    } else if (null != value && value instanceof String) {
                        int v = Integer.valueOf((String) value);
                        if (debug) Log.i(TAG, "switchKey str v = " + v);
                        setSwitchKey(context, v);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public boolean isWeiYunPayFirst(Context context) {
        boolean isOpen = false;
        try {
            isOpen = context.getSharedPreferences("asdfsdfasdf", 0).getInt("third_pay_order", -1) == 2;
        } catch (Exception ignored) {
        }
        if (debug) Log.d(TAG, "isOpen:" + isOpen);
        return isOpen;
    }

    private void setSwitchKey(Context context, int value) {
        if (debug) Log.d(TAG, "setSwitchKey, value:" + value);
        context.getSharedPreferences("asdfsdfasdf", 0).edit().putInt("third_pay_order", value)
                .apply();
    }
}
