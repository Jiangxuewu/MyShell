package com.bb_sz.myshell;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;


public class MainActivity extends Activity {

    TextView tickView;
    PermissionUtil mPermissionUtil;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        tickView = new TextView(this);
        tickView.setText("hello shell.");
        setContentView(tickView);
        mPermissionUtil = new PermissionUtil();
        String[] permiss = {
                "android.permission.WRITE_EXTERNAL_STORAGE",
                "android.permission.READ_PHONE_STATE"
        };
        mPermissionUtil.requestPermission(this, permiss, new PermissionUtil.OnCheckPermissionCallback() {

            @Override
            public void requestPermissionSuccess() {

            }

            @Override
            public void requestPermissionFailed() {

            }
        });

    }

    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (null != mPermissionUtil) mPermissionUtil.onRequestPermissionsResult(requestCode, permissions, grantResults);
    }
}
