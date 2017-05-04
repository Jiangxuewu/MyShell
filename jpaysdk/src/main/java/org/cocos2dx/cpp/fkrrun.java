package org.cocos2dx.cpp;

import android.app.Activity;
import android.util.Log;
import android.widget.Toast;

import com.bb_sz.pay.Api;
import com.jpay.sdk.IChargeResult;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2017/4/27.
 */

public class fkrrun extends Activity {
    public static String PayCode;
    public static Map payType;
    public static fkrrun instance = null;
    public static Map payType_name = null;
    static final int[] moneys = null;

    private native void BuySccess(String paramString);

    public static void pay(String paycode) {

        PayCode = paycode;
        int index = Integer.valueOf(paycode);
        String price = String.valueOf(100 * moneys[index]);
        String desc = (String) payType_name.get(index);
        Log.e("SKY", "pay(), payCode = " + PayCode);
        Log.e("SKY", "pay(), price = " + price);
        Log.e("SKY", "pay(), desc= " + PayCode);
        Api.charge(instance, price, null, null, desc, new IChargeResult() {
            @Override
            public void onChargeResult(final int i, final String s) {
                instance.runOnUiThread(new Runnable() {
                    public void run() {
                        Log.e("SKY", "pay(), i = " + i + ", s = " + s);
                        if (i == 0) {
                            fkrrun.instance.BuySccess(PayCode);
                        } else {
                            Toast.makeText(instance, "支付失败", Toast.LENGTH_SHORT).show();
                        }
                    }
                });
            }
        });
    }

    public static void gameExit() {
        instance.runOnUiThread(new Runnable() {
            public void run() {
                fkrrun.instance.finish();
            }
        });
    }
}
