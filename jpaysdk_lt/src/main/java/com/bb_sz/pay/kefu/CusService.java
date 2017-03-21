package com.bb_sz.pay.kefu;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.PixelFormat;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

import com.bb_sz.ndk.App;

import java.io.IOException;
import java.io.InputStream;

/**
 * Created by Administrator on 2016/11/14.
 * <p>应用内悬浮窗实现客服按钮功能</p>
 * <p>需要拨打电话权限android.permission.CALL_PHONE</p>
 */

public class CusService {
    private static final String TAG = "SkyCusService";
    private static final float W = 65.f;
    private static final float H = 65.f;
    public static float WD;//弹框的宽高
    public static float HD;
    private static final float WBtn = 98f;
    private static final float HBtn = 32f;
    private static final float BANK = 32f;
    private static CusService mInstance = null;
    private View mDialogView;
    private WindowManager mWindowManager;
    private WindowManager.LayoutParams mWindowParamIcon;
    private WindowManager.LayoutParams mWindowParamDialog;
    private View mDView;
    private float mTouchStartX;
    private float mTouchStartY;
    private long st = 0;
    private long lastUpdateTime = 0;
    private Handler mHandler;
    private Runnable resumeRun;
    boolean isShowIcon = true;
    private boolean isMoved;
    private String pkg;

    public static CusService getInstance(Activity activity) {
        synchronized (TAG) {
            if (null == mInstance) {
                mInstance = new CusService(activity);
            }
            return mInstance;
        }
    }


    private CusService(Activity activity) {
        if (null != pkg) {
            if (App.debug > 0) Log.d(TAG, "CusService..error");
            return;
        }
        if (App.debug > 0) Log.d(TAG, "CusService");

        initWH(activity);

        pkg = activity.getPackageName();

        initViewIcon(activity);
        initViewDialog(activity);
        mDView = createView(activity);
//        mDialogView = createDialogView(activity);
        mDialogView = new CSDialogView(activity);

        ((CSDialogView) mDialogView).setItemListener(new CSDialogView.IItemListener() {
            @Override
            public void close() {
                hideDialog();
                showIcon();
            }

            @Override
            public void closeResult() {
                ((CSDialogView) mDialogView).showDialog();
                hideDialog();
                showIcon();
            }

            @Override
            public void send(String tel) {
                ((CSDialogView) mDialogView).showResult();
            }

            @Override
            public void result(boolean isDone) {
                if (isDone) {
                    ((CSDialogView) mDialogView).clear();
                }
            }
        });
    }

    private void initWH(Activity activity) {
        if (getScreenOrientation(activity) == 0) {
            WD = 347.5f;//竖屏时的宽高
            HD = 214.5f;
            if (App.debug > 0) Log.d(TAG, "initWH, screen is Vertical screen");
        } else {
            WD = 463f;//横屏时的宽高
            HD = 286f;
            if (App.debug > 0) Log.d(TAG, "initWH, screen is Horizontal screen");
        }
    }

    private View createView(Activity activity) {
        if (App.debug > 0) Log.d(TAG, "createView");
        FrameLayout frameLayout = new FrameLayout(activity);

        ImageView icon = new ImageView(activity);
        icon.setLayoutParams(new FrameLayout.LayoutParams(dip2px(activity, W), dip2px(activity, W)));
        InputStream in = null;
        try {
            in = activity.getAssets().open("cus_service/px_btn_customer_service.png");
        } catch (IOException e) {
            e.printStackTrace();
        }
        Bitmap bmp = BitmapFactory.decodeStream(in);
        if (null != bmp) {
            icon.setImageBitmap(bmp);
        } else
            icon.setImageResource(android.R.drawable.ic_menu_call);
        icon.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public boolean onTouch(View v, MotionEvent event) {
                float x = event.getRawX();
                float y = event.getRawY();
                switch (event.getAction()) {
                    case MotionEvent.ACTION_DOWN:
                        isMoved = false;
                        mTouchStartX = event.getRawX();
                        mTouchStartY = event.getRawY();
                        if (App.debug > 0)
                            Log.i(TAG, "x0:" + mTouchStartX + ", y0:" + mTouchStartY);
                        st = System.currentTimeMillis();
                        break;
                    case MotionEvent.ACTION_MOVE:
                        updateViewPosition(x, y);
                        mTouchStartX = event.getRawX();
                        mTouchStartY = event.getRawY();
                        break;
                    case MotionEvent.ACTION_UP:
                        if (App.debug > 0) Log.e(TAG, "time:" + (System.currentTimeMillis() - st));
                        if (System.currentTimeMillis() - st < 500 && !isMoved) {
                            click();
                        } else {
                            updateViewPosition(x, y);
                        }
                        break;

                }
                return true;
            }
        });

        frameLayout.addView(icon);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(dip2px(activity, W), dip2px(activity, H)));
        return frameLayout;
    }

    private void click() {
        if (App.debug > 0) Log.e(TAG, "click");
        hideIcon();
        showDialog();
        // notification server
        notifyServer(1, null);
    }

    private View createDialogView(final Activity activity) {
        RelativeLayout rl = new RelativeLayout(activity);
        ImageView bg = new ImageView(activity);
        bg.setLayoutParams(new FrameLayout.LayoutParams(dip2px(activity, WD), dip2px(activity, HD)));
        InputStream in = null;
        try {
            in = activity.getAssets().open("cus_service/px_cus_page.png");
        } catch (IOException e) {
            e.printStackTrace();
        }
        Bitmap bmp = BitmapFactory.decodeStream(in);
        if (null != bmp) {
            bg.setImageBitmap(bmp);
        }
        rl.addView(bg);

        LinearLayout ll = new LinearLayout(activity);
        ll.setOrientation(LinearLayout.HORIZONTAL);
        RelativeLayout.LayoutParams llP = new RelativeLayout.LayoutParams(-1, dip2px(activity, HBtn));

        llP.bottomMargin = dip2px(activity, 10);
        llP.topMargin = dip2px(activity, HD - HBtn - llP.bottomMargin);

        ll.setLayoutParams(llP);
        ll.setGravity(Gravity.CENTER_HORIZONTAL);
        ImageView call = new ImageView(activity);
        call.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                hideDialog();
                showIcon();
                if ("{$OPENCALL$}".equals("open")) {
                    Uri uri = Uri.parse("tel:4001661896");
                    Intent intent = new Intent(Intent.ACTION_CALL, uri);
                    if (null != activity) activity.startActivity(intent);
                }
                // notification server
                notifyServer(2, null);
            }
        });
        InputStream callIn = null;
        try {
            callIn = activity.getAssets().open("cus_service/px_btn_call.png");
        } catch (IOException e) {
            e.printStackTrace();
        }
        Bitmap callBmp = BitmapFactory.decodeStream(callIn);
        if (null != callBmp) {
            call.setImageBitmap(callBmp);
        }
        ll.addView(call, new LinearLayout.LayoutParams(dip2px(activity, WBtn), dip2px(activity, HBtn)));
        View bank = new View(activity);
        bank.setVisibility(View.INVISIBLE);
        ll.addView(bank, new LinearLayout.LayoutParams(dip2px(activity, BANK), dip2px(activity, 1)));

        ImageView cancel = new ImageView(activity);
        cancel.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                hideDialog();
                showIcon();
            }
        });
        InputStream cancelIn = null;
        try {
            cancelIn = activity.getAssets().open("cus_service/px_btn_cancel.png");
        } catch (IOException e) {
            e.printStackTrace();
        }
        Bitmap cancelBmp = BitmapFactory.decodeStream(cancelIn);
        if (null != cancelBmp) {
            cancel.setImageBitmap(cancelBmp);
        }
        ll.addView(cancel, new LinearLayout.LayoutParams(dip2px(activity, WBtn), dip2px(activity, HBtn)));


        rl.addView(ll);
        return rl;
    }

    /**
     * @param type 0->show, 1->click, 2->call.
     */
    private void notifyServer(int type, String msg) {
        if (null != mDView) {
            notifyServer(mDView.getContext(), type, msg);
        }
    }

    public static void notifyServer(Context context, int type, String msg) {
        if (null != context) {
            Intent intent = new Intent();
            intent.setAction("cs_notify_server");
            intent.putExtra("type", type);
            intent.setPackage(context.getPackageName());
            if (!TextUtils.isEmpty(msg))
                intent.putExtra("msg", msg);
            context.sendBroadcast(intent);
            if (App.debug > 0) Log.d(TAG, "notifyServer, type = " + type + ", msg = " + msg);
        }
    }

    private void showIcon() {
        try {
            isShowIcon = true;
            if (App.debug > 0) Log.d(TAG, "showIcon");

            mHandler.post(new Runnable() {
                @Override
                public void run() {
                    mWindowManager.addView(mDView, mWindowParamIcon);
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void hideIcon() {
        try {
            isShowIcon = false;
            if (App.debug > 0) Log.d(TAG, "hideIcon");
            mHandler.post(new Runnable() {
                @Override
                public void run() {
                    mWindowManager.removeView(mDView);
                }
            });

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void showDialog() {
        try {
            if (App.debug > 0) Log.d(TAG, "showDialog");
            mHandler.post(new Runnable() {
                @Override
                public void run() {
                    mWindowManager.addView(mDialogView, mWindowParamDialog);
                }
            });

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void hideDialog() {
        try {
            if (App.debug > 0) Log.d(TAG, "hideDialog");

            mHandler.post(new Runnable() {
                @Override
                public void run() {
                    mWindowManager.removeView(mDialogView);
                }
            });
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public void onResume() {
        if (null == mHandler) {
            mHandler = new Handler();
        }
        if (null == resumeRun) {
            resumeRun = new Runnable() {
                @Override
                public void run() {
                    try {
                        if (App.debug > 0) Log.d(TAG, "onResume");
                        if (isShowIcon)
                            mWindowManager.addView(mDView, mWindowParamIcon);
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            };
            mHandler.postDelayed(resumeRun, 1000 * 1);
        } else {
            mHandler.postDelayed(resumeRun, 1000);
        }
    }

    public void onDestroy() {
        mInstance = null;
        if (App.debug > 0) Log.d(TAG, "onDestroy");
    }

    public void onPause() {
        try {
            if (App.debug > 0) Log.d(TAG, "onPause");
            if (isShowIcon)
                mWindowManager.removeView(mDView);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void initViewDialog(Activity mContext) {
        if (App.debug > 0) Log.d(TAG, "initViewDialog");
        if (mWindowManager == null) {
            mWindowManager = (WindowManager) mContext
                    .getSystemService(Context.WINDOW_SERVICE);
        }

        mWindowParamDialog = new WindowManager.LayoutParams();
//        mWindowParamDialog.type = WindowManager.LayoutParams.TYPE_SYSTEM_ALERT;
        mWindowParamDialog.format = PixelFormat.TRANSLUCENT;//| WindowManager.LayoutParams.FIRST_SYSTEM_WINDOW;
        mWindowParamDialog.flags = WindowManager.LayoutParams.FLAG_FULLSCREEN;
//        mWindowParamDialog.flags = mWindowParamIcon.flags | WindowManager.LayoutParams.FLAG_TURN_SCREEN_ON;

        mWindowParamDialog.width = dip2px(mContext, WD);
        mWindowParamDialog.height = dip2px(mContext, HD);

        mWindowParamDialog.gravity = Gravity.CENTER;
        mWindowParamDialog.x = 0;
        mWindowParamDialog.y = 0;

    }

    private void initViewIcon(Activity mContext) {
        if (App.debug > 0) Log.d(TAG, "initViewIcon");
        if (mWindowManager == null) {
            mWindowManager = (WindowManager) mContext
                    .getSystemService(Context.WINDOW_SERVICE);
        }
        mWindowParamIcon = new WindowManager.LayoutParams();

//        mWindowParamIcon.type = WindowManager.LayoutParams.TYPE_SYSTEM_ALERT; //
//        mWindowParamIcon.windowAnimations = 0;
        mWindowParamIcon.format = PixelFormat.TRANSLUCENT;//| WindowManager.LayoutParams.FIRST_SYSTEM_WINDOW;
        mWindowParamIcon.flags = WindowManager.LayoutParams.FLAG_NOT_FOCUSABLE; // 不能抢占聚焦�?
        mWindowParamIcon.flags = mWindowParamIcon.flags | WindowManager.LayoutParams.FLAG_WATCH_OUTSIDE_TOUCH;
//        mWindowParamIcon.flags = mWindowParamIcon.flags | WindowManager.LayoutParams.FLAG_LAYOUT_NO_LIMITS; // 排版不受限制

        // 设置悬浮窗口长宽数据
        mWindowParamIcon.width = dip2px(mContext, W);
        mWindowParamIcon.height = dip2px(mContext, H);

        mWindowParamIcon.gravity = Gravity.LEFT | Gravity.TOP;
        // 以屏幕左上角为原点，设置x、y初始�?
        mWindowParamIcon.x = 0;
        mWindowParamIcon.y = 50;
    }

    private void updateViewPosition(float x, float y) {
        int xx = (int) (mWindowParamIcon.x + x - mTouchStartX);
        int yy = (int) (mWindowParamIcon.y + y - mTouchStartY);
//        if (App.debug > 0) Log.v(TAG, "x:" + x + ", y:" + y + "....xx:" + xx + ", yy:" + yy);

        if (Math.abs(mWindowParamIcon.x - xx) <= 0 && Math.abs(mWindowParamIcon.y - yy) <= 0) {
            return;
        }
        if (yy < 50) {
            return;
        }
        if (System.currentTimeMillis() - lastUpdateTime < 1) {
            lastUpdateTime = System.currentTimeMillis();
            return;
        }

        lastUpdateTime = System.currentTimeMillis();
        mWindowParamIcon.x = xx;
        mWindowParamIcon.y = yy;
        mWindowManager.updateViewLayout(mDView, mWindowParamIcon);  //刷新显示
        isMoved = true;
    }

    /**
     * 判断是横屏还是竖屏
     *
     * @return 0：竖屏，1：横屏
     */
    public static int getScreenOrientation(Context context) {
        if (context != null) {
            WindowManager wm = (WindowManager) context
                    .getSystemService(Context.WINDOW_SERVICE);
            int width = wm.getDefaultDisplay().getWidth();
            int height = wm.getDefaultDisplay().getHeight();
            if (width > height) {
                return 1;
            }
        }
        return 0;
    }

    public static int dip2px(Context context, float dpValue) {
        final float scale = context.getResources().getDisplayMetrics().density;
        return (int) (dpValue * scale + 0.5f);
    }

    /**
     * 根据手机的分辨率从 px(像素) 的单位 转成为 dp
     */
    public static int px2dip(Context context, float pxValue) {
        final float scale = context.getResources().getDisplayMetrics().density;
        return (int) (pxValue / scale + 0.5f);
    }
}
