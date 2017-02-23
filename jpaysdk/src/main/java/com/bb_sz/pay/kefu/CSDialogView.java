package com.bb_sz.pay.kefu;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;

import java.io.IOException;
import java.io.InputStream;

/**
 * Created by Administrator on 2016/11/28.
 */

public class CSDialogView extends FrameLayout {

    private static final String TAG = "SkyCSDView";
    private IItemListener listener;
    public int curSelIndex = 0;//选中的问题序号
    private Handler mHandler;
    private Runnable notifySelectIssusRun;
    private CSResultView mResultView;
    private SendView et;
    private IssusView item1;
    private IssusView item2;
    private IssusView item3;

    public CSDialogView(Context context) {
        this(context, null);
    }

    public CSDialogView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public CSDialogView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context, attrs, defStyleAttr);
    }

    private void init(Context context, AttributeSet attrs, int defStyleAttr) {
        //bg
        addBg(context);
        //issus
        addIssus(context);
        //del icon
        addDelIcon(context);
        //add edit + send btn
        addEditTextSendBtn(context);

        //add telephone
        addTel(context);

        setLayoutParams(new FrameLayout.LayoutParams(dip2px(context, CusService.WD), dip2px(context, CusService.HD)));
    }

    private void addTel(final Context context) {

        ImageView tel = new ImageView(context);
        tel.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                Uri uri = Uri.parse("tel:4001661896");
                Intent intent = new Intent(Intent.ACTION_CALL, uri);
                if (null != context) {
                    context.startActivity(intent);
                    CusService.notifyServer(context, 2, "");
                }
            }
        });

        FrameLayout.LayoutParams flp = new FrameLayout.LayoutParams(CusService.dip2px(context, getTelW(context)), CusService.dip2px(context, getTelH(context)));
        flp.gravity = Gravity.BOTTOM | Gravity.CENTER_HORIZONTAL;
        flp.bottomMargin = CusService.dip2px(context, getTelBotMargin(context));
        tel.setLayoutParams(flp);


        InputStream in = null;
        try {
            in = context.getAssets().open("cs_res/cs_telephone.png");
        } catch (IOException e) {
            e.printStackTrace();
        }
        Bitmap bmp = BitmapFactory.decodeStream(in);
        if (null != bmp) {
            tel.setImageBitmap(bmp);
        }

        addView(tel);
    }


    private void addEditTextSendBtn(final Context context) {
        et = new SendView(context);
        FrameLayout.LayoutParams flp = new FrameLayout.LayoutParams(CusService.dip2px(context, CusService.WD), CusService.dip2px(context, getSendViewH(context)));
        flp.gravity = Gravity.BOTTOM;
        flp.bottomMargin = dip2px(context, getSendViewBotMargin(context));
        et.setLayoutParams(flp);
        et.setSendListener(new SendView.ISendListener() {
            @Override
            public void send(String tel) {
                if (curSelIndex == 0) {
                    notifySelectIssus();
                    return;
                }
                tel += "&index=" + curSelIndex;
                CusService.notifyServer(context, 3, tel);

                if (null != listener) {
                    listener.send(tel);
                }
            }
        });
        addView(et);
    }

    private void notifySelectIssus() {
        if (null == mHandler)
            mHandler = new Handler(Looper.getMainLooper());

        if (null == notifySelectIssusRun) {
            notifySelectIssusRun = new Runnable() {
                @Override
                public void run() {
                    Toast.makeText(getContext(), "请选择问题", Toast.LENGTH_SHORT).show();
                }
            };
        }

        mHandler.post(notifySelectIssusRun);
    }

    private float getSendViewH(Context context) {
        if (CusService.getScreenOrientation(context) == 0) {
            return 40;
        } else {
            return 45;
        }
    }

    private float getTelBotMargin(Context context) {
        if (CusService.getScreenOrientation(context) == 0) {
            return 11;
        } else {
            return 18;
        }
    }

    private float getSendViewBotMargin(Context context) {
        if (CusService.getScreenOrientation(context) == 0) {
            return 20;
        } else {
            return 37;
        }
    }

    private void addDelIcon(Context context) {
        ImageView del = new ImageView(context);
        int wh = CusService.dip2px(context, getDelWH(context));
        FrameLayout.LayoutParams flp = new FrameLayout.LayoutParams(wh, wh);
        flp.gravity = Gravity.RIGHT | Gravity.TOP;
        flp.topMargin = CusService.dip2px(context, getDelTopMargin(context));
        flp.rightMargin = CusService.dip2px(context, getDelRightMargin(context));
        del.setLayoutParams(flp);
        del.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                if (null != listener) {
                    listener.close();
                }
            }
        });

        InputStream in = null;
        try {
            in = context.getAssets().open("cs_res/cs_del_icon.png");
        } catch (IOException e) {
            e.printStackTrace();
        }
        Bitmap bmp = BitmapFactory.decodeStream(in);
        if (null != bmp) {
            del.setImageBitmap(bmp);
        }
        addView(del);
    }


    private void addIssus(Context context) {
        item1 = new IssusView(context);
        item1.setIssus(1);
        item2 = new IssusView(context);
        item2.setIssus(2);
        item3 = new IssusView(context);
        item3.setIssus(3);

        IssusView.ISelListener issusSelListener = new IssusView.ISelListener() {
            @Override
            public void selected(int index) {
                curSelIndex = index;
                item1.setSelected(index == 1);
                item2.setSelected(index == 2);
                item3.setSelected(index == 3);
            }
        };


        item1.setSelListner(issusSelListener);
        item2.setSelListner(issusSelListener);
        item3.setSelListner(issusSelListener);


        LinearLayout ll = new LinearLayout(context);
        ll.setOrientation(LinearLayout.VERTICAL);
        ll.setGravity(Gravity.CENTER);
        ll.addView(item1);

        View bank12 = new View(context);
        bank12.setLayoutParams(new LayoutParams(1, dip2px(context, getIssusBankH(context))));
        ll.addView(bank12);
        ll.addView(item2);

        View bank23 = new View(context);
        bank23.setLayoutParams(new LayoutParams(1, dip2px(context, getIssusBankH(context))));
        ll.addView(bank23);
        ll.addView(item3);

        addView(ll, new FrameLayout.LayoutParams(dip2px(context, CusService.WD), dip2px(context, CusService.HD)));
    }

    private float getIssusBankH(Context context) {
        if (CusService.getScreenOrientation(context) == 0) {
            return 2;
        } else {
            return 8;
        }
    }

    private void addBg(Context context) {
        ImageView bgView = new ImageView(context);
        InputStream in = null;
        try {
            in = context.getAssets().open("cs_res/cs_issus_bg.png");
        } catch (IOException e) {
            e.printStackTrace();
        }
        Bitmap bmp = BitmapFactory.decodeStream(in);
        if (null != bmp) {
            bgView.setImageBitmap(bmp);
        }
        addView(bgView, new FrameLayout.LayoutParams(dip2px(context, CusService.WD), dip2px(context, CusService.HD)));
    }

    private float getTelW(Context context) {
        if (CusService.getScreenOrientation(context) == 0) {
            return 157.5F;
        } else {
            return 210;
        }
    }

    private float getTelH(Context context) {
        if (CusService.getScreenOrientation(context) == 0) {
            return 15.5f;
        } else {
            return 21;
        }
    }

    private float getDelWH(Context context) {
        if (CusService.getScreenOrientation(context) == 0) {
            return 17;
        } else {
            return 22;
        }
    }

    private float getDelRightMargin(Context context) {
        if (CusService.getScreenOrientation(context) == 0) {
            return 5;
        } else {
            return 10;
        }
    }

    private float getDelTopMargin(Context context) {
        if (CusService.getScreenOrientation(context) == 0) {
            return 5;
        } else {
            return 10;
        }
    }

    private int dip2px(Context context, float dpValue) {
        final float scale = context.getResources().getDisplayMetrics().density;
        return (int) (dpValue * scale + 0.5f);
    }

    /**
     * 根据手机的分辨率从 px(像素) 的单位 转成为 dp
     */
    private int px2dip(Context context, float pxValue) {
        final float scale = context.getResources().getDisplayMetrics().density;
        return (int) (pxValue / scale + 0.5f);
    }

    public void setItemListener(IItemListener listener) {
        this.listener = listener;
    }

    public void clear() {
        if (null != mResultView) {
            mResultView.clear();
        }
        if (null != et) {
            et.clear();
        }
        curSelIndex = 0;
        if (null != item1) item1.setSelected(false);
        if (null != item2) item2.setSelected(false);
        if (null != item3) item3.setSelected(false);
    }

    public void showDialog() {
        if (null != mResultView) {
            mResultView.setVisibility(View.GONE);
        }
        showSomeView();
        invalidate();
    }

    public void showResult() {
        if (null == mResultView) {
            mResultView = new CSResultView(getContext());
            mResultView.setFocusable(true);
            mResultView.setResultListener(new CSResultView.IResultListener() {
                @Override
                public void closeResult() {
                    if (null != listener) {
                        listener.closeResult();
                    }
                }

                @Override
                public void result(boolean isSolve) {

                    CusService.notifyServer(getContext(), 4, isSolve ? "Y" : "N");

                    if (null != listener) {
                        listener.result(isSolve);
                    }
                }
            });
            addView(mResultView);
        } else {
            mResultView.setVisibility(View.VISIBLE);
        }
        //hide allView but mResultView
        hideSomeView();

        invalidate();
    }

    private void hideSomeView() {
        int count = getChildCount();
        for (int i = 0; i < count; i++) {
            View view = getChildAt(i);
            if (view != mResultView) {
                view.setVisibility(View.GONE);
            }
        }
    }

    private void showSomeView() {
        int count = getChildCount();
        for (int i = 0; i < count; i++) {
            View view = getChildAt(i);
            if (view != mResultView) {
                view.setVisibility(View.VISIBLE);
            }
        }
    }

    public interface IItemListener {
        void close();

        void closeResult();

        void send(String tel);

        void result(boolean isDone);//是否解决。true表示解决
    }

}
