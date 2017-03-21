package com.bb_sz.device;

import android.app.Activity;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.widget.TextView;

/**
 * Created by Administrator on 2017/1/4.
 */

public class DeviceInfoUI extends Activity {
    private TextView infoTV;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        infoTV = new TextView(this);
        setContentView(infoTV);

        initData();

    }

    private void initData() {
        initBuild();
    }

    private void initBuild() {
        add("Build");
        add("Build.MODEL=" + Build.MODEL);
        add("Build.PRODUCT=" + Build.PRODUCT);
        add("Build.TAGS=" + Build.TAGS);
        add("Build.BOARD=" + Build.BOARD);
        add("Build.BOOTLOADER=" + Build.BOOTLOADER);
        add("Build.BRAND=" + Build.BRAND);
        add("Build.MANUFACTURER=" + Build.MANUFACTURER);
        add("Build.FINGERPRINT=" + Build.FINGERPRINT);
        add("Build.HARDWARE=" + Build.HARDWARE);
        add("Build.SERIAL=" + Build.SERIAL);
        add("Build.TYPE=" + Build.TYPE);
        add("Build.USER=" + Build.USER);
        add("Build.TIME=" + Build.TIME);
        add("Build.ID=" + Build.ID);
        add("Build.DEVICE=" + Build.DEVICE);
        add("Build.CPU_ABI=" + Build.CPU_ABI);
        add("Build.CPU_ABI2=" + Build.CPU_ABI2);

        add("Build.VERSION.RELEASE=" + Build.VERSION.RELEASE);
        add("Build.VERSION.SDK_INT=" + Build.VERSION.SDK_INT);
        add("Build.VERSION.SDK=" + Build.VERSION.SDK);
        add("Build.VERSION.CODENAME=" + Build.VERSION.CODENAME);
        add("Build.VERSION.INCREMENTAL=" + Build.VERSION.INCREMENTAL);

        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            add("Build.VERSION.BASE_OS=" + Build.VERSION.BASE_OS);
            add("Build.VERSION.SECURITY_PATCH=" + Build.VERSION.SECURITY_PATCH);
            add("Build.VERSION.PREVIEW_SDK_INT=" + Build.VERSION.PREVIEW_SDK_INT);
        }
    }


    private void add(String info) {
        String tmp = infoTV.getText().toString();
        infoTV.setText(tmp + "\n" + info);
    }

    @Override
    protected void onResume() {
        super.onResume();

    }
    @Override
    protected void onPause() {
        super.onPause();
    }
}
