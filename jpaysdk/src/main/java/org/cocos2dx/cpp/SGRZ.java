package org.cocos2dx.cpp;

import android.app.Activity;
import android.os.Handler;

import com.bb_sz.pay.Api;
import com.jpay.sdk.IChargeResult;

/**
 * Created by Administrator on 2017/4/26.
 */

public class SGRZ {
    public static void buy(Activity activity, final int m, int money, String desc) {
        Api.charge(activity, "" + money, null, null, desc, new IChargeResult() {
            @Override
            public void onChargeResult(int i, String s) {
                if (i == 0){
                    new Handler().post(new Runnable() {
                        @Override
                        public void run() {
                            Cocos2dxGLSurfaceView.getInstance().queueEvent(new Runnable()
                            {
                                public void run()
                                {
                                    AppActivity.giveBuy(m);
                                }
                            });
                        }
                    });
                }
            }
        });
    }
}
