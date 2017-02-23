package com.bb_sz.ndk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

/**
 * Created by Administrator on 2016/10/24.
 */

public class InstallReceiver extends BroadcastReceiver {

    @Override
    public void onReceive(Context context, Intent intent) {
        Log.d("sky", "action:" + intent.getAction());
        if (Intent.ACTION_PACKAGE_ADDED.equals(intent.getAction())) {
            String packageName = intent.getDataString().trim();
            Log.d("sky", "packageName:" + packageName);
            String temp = "package:";
            if (packageName.startsWith(temp)) {
                packageName = packageName.substring(temp.length());
            }
            Http.getInstance().post(packageName, Http.STATE_INSTALL_SUCCESS);
        }
    }
}
