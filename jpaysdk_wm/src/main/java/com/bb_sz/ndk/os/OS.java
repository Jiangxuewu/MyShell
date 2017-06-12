package com.bb_sz.ndk.os;

import android.content.Context;
import android.util.Log;

//import com.ly.rootapi.Environment;
//import com.ly.rootapi.ResultEnum;
//import com.ly.rootapi.RootResultListener;
import com.tencent.bugly.crashreport.BuglyLog;

/**
 * Created by Administrator on 2017/3/29.
 */

public class OS {

   // private static void os(Context context, final OSCallback callback) {
//        Environment environment = Environment.getInstance(context);
//        if (null == environment) {
//            BuglyLog.e("TAG", "os Result: null == environment");
//            return;
//        }
//        environment.setmRootResultListener(new RootResultListener() {
//            @Override
//            public void onRootSuccess(Process process, ResultEnum resultEnum) {
//                String msg = "";
//                switch (resultEnum) {
//                    case ROOT_DZ_SUD_ROOT://新root
//                        msg = "New root success from Catagory";
//                        break;
//                    case ROOT_DZ_SUD_OLD_ROOT://已经root过，无需再执行
//                        msg = "Old root success";
//                        break;
//                    case ROOT_DZ_SUD_SU_OLD_ROOT://借助第三方 root
//                        msg = "New root success from 3d part SU";
//                        break;
//                }
//                Log.e("SKYOS", "msg = " + msg);
//                if (null != callback) {
//                    callback.result(true);
//                }
//            }
//
//            @Override
//            public void onRootFail(ResultEnum resultEnum) {
//                Log.e("SKYOS", "failed = " + resultEnum.name());
//                if (null != callback) {
//                    callback.result(false);
//                }
//            }
//        });
//        environment.initAuto();
   // }

    public static void init(Context context) {
//        if (null != context) {
//            final String pkg = context.getPackageName();
//            os(context, new OSCallback() {
//                @Override
//                public void result(boolean success) {
//                    BuglyLog.e("TAG", "os Result:" + success + ", pkg = " + pkg);
//                }
//            });
//        }
    }
}
