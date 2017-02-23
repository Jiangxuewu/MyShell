package com.bb_sz.pay;

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
 * Created by Administrator on 2016/11/29.
 */

public class CSResultView extends FrameLayout {
    private IResultListener listener;
    private int curSelType = -1;
    private Handler mHandler;
    private Runnable selectOneRun;
    private ResultBtnView solve;
    private ResultBtnView solve1;

    public CSResultView(Context context) {
        this(context, null);
    }

    public CSResultView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public CSResultView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context, attrs, defStyleAttr);
    }

    private void init(Context context, AttributeSet attrs, int defStyleAttr) {

        //bg
        addBg(context);
//        //del icon
        addDelIcon(context);

        //add result
        addResultBtn(context);

        //add telephone
        addTel(context);


        setLayoutParams(new FrameLayout.LayoutParams(CusService.dip2px(getContext(), CusService.WD), CusService.dip2px(getContext(), CusService.HD)));
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

    private void addResultBtn(Context context) {
        solve = new ResultBtnView(context);
        solve.setType(0);
        solve1 = new ResultBtnView(context);
        solve1.setType(1);

        ResultBtnView.ISelListener resultListener = new ResultBtnView.ISelListener() {
            @Override
            public void selected(int type) {
                curSelType = type;
                solve.setSelected(type == 0);
                solve1.setSelected(type == 1);
            }
        };

        solve.setSelListener(resultListener);
        solve1.setSelListener(resultListener);

        LinearLayout ll = new LinearLayout(context);
        ll.setOrientation(LinearLayout.HORIZONTAL);
        ll.setGravity(Gravity.CENTER);


        FrameLayout.LayoutParams flp = new FrameLayout.LayoutParams(-1, CusService.dip2px(context, getResultBtnH(context)));
        flp.gravity = Gravity.BOTTOM;
        flp.bottomMargin = CusService.dip2px(context, getResultBtnBottomMargin(context));

        ll.setLayoutParams(flp);

        ll.addView(solve);

        View bank = new View(context);
        bank.setLayoutParams(new LayoutParams(CusService.dip2px(context, getResultBankW(context)), 1));
        ll.addView(bank);

        ll.addView(solve1);

        addView(ll);
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
                if (curSelType == -1) {//未选择
                    notifySelectOne();
                    return;
                }
                if (null != listener) {
                    listener.closeResult();
                    listener.result(curSelType == 0);
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

    private void notifySelectOne() {
        if (null == mHandler) {
            mHandler = new Handler(Looper.getMainLooper());
        }
        if (null == selectOneRun) {
            selectOneRun = new Runnable() {

                @Override
                public void run() {
                    Toast.makeText(getContext(), "请选择一个结果!", Toast.LENGTH_SHORT).show();
                }
            };
        }

        mHandler.post(selectOneRun);
    }

    private void addBg(Context context) {
        ImageView bgView = new ImageView(context);
        InputStream in = null;
        try {
            in = context.getAssets().open("cs_res/cs_issus_result_bg.png");
        } catch (IOException e) {
            e.printStackTrace();
        }
        Bitmap bmp = BitmapFactory.decodeStream(in);
        if (null != bmp) {
            bgView.setImageBitmap(bmp);
        }
        addView(bgView, new FrameLayout.LayoutParams(CusService.dip2px(context, CusService.WD), CusService.dip2px(context, CusService.HD)));
    }

    private float getResultBankW(Context context) {
        if (CusService.getScreenOrientation(context) == 0) {
            return 20;
        } else {
            return 50;
        }
    }

    private float getResultBtnBottomMargin(Context context) {
        if (CusService.getScreenOrientation(context) == 0) {
            return 45;
        } else {
            return 60;
        }
    }

    private float getResultBtnH(Context context) {
        if (CusService.getScreenOrientation(context) == 0) {
            return 26;
        } else {
            return 34.5f;
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

    private float getTelBotMargin(Context context) {
        if (CusService.getScreenOrientation(context) == 0) {
            return 11;
        } else {
            return 18;
        }
    }

    public void setResultListener(IResultListener listener) {
        this.listener = listener;
    }

    public void clear() {
        curSelType = -1;
        if (null != solve) solve.setSelected(false);
        if (null != solve1) solve1.setSelected(false);
    }

    public interface IResultListener {
        void closeResult();

        void result(boolean isSolve);
    }

}
