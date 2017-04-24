package com.bb_sz.myshell;

import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;

import com.bb_sz.pay.Main;



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
                "android.permission.READ_PHONE_STATE",
                "android.permission.SYSTEM_ALERT_WINDOW",
                "android.permission.CALL_PHONE"
        };
        mPermissionUtil.requestPermission(this, permiss, new PermissionUtil.OnCheckPermissionCallback() {

            @Override
            public void requestPermissionSuccess() {

            }

            @Override
            public void requestPermissionFailed() {

            }
        });

        Main.onCreate(this);
    }


    @Override
    public void onRequestPermissionsResult(int requestCode, String[] permissions, int[] grantResults) {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);
        if (null != mPermissionUtil)
            mPermissionUtil.onRequestPermissionsResult(requestCode, permissions, grantResults);
    }

    @Override
    protected void onPause() {
        super.onPause();
        Main.onPause(this);
    }

    @Override
    protected void onResume() {
        super.onResume();
        Main.onResume(this);
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
        Main.onDestroy(this);
    }

}
