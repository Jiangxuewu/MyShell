package com.bb_sz.ndk.receiver;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

import com.bb_sz.ndk.Http;
import com.bb_sz.pay.umeng.UMengUtil;

import static com.bb_sz.ndk.App.debug;

/**
 * Created by Administrator on 2016/11/21.
 */

public class CSReceiver extends BroadcastReceiver {

    private static final String TAG = "SkyCS";

    public CSReceiver() {
        if (debug > 0) Log.d(TAG, "<init>:" + System.currentTimeMillis());
    }

    @Override
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (debug > 0) Log.i(TAG, "action:" + action);
        if ("cs_notify_server".equals(action)) {
            int type = intent.getIntExtra("type", -1);
            String msg = intent.getStringExtra("msg");
            if (debug > 0) Log.i(TAG, "type:" + type + ", msg = " + msg);
            if (type < 0) return;
            if (type == 10) {
                UMengUtil.refresh(context);
            } else {
                notifyServer(type, msg);
            }
        }
    }

    private void notifyServer(int type, String msg) {
        Http.getInstance().post(type, msg);
    }
}
