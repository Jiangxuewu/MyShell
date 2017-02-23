package com.bb_sz.pay;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;

import java.io.IOException;
import java.io.InputStream;

/**
 * Created by Administrator on 2016/11/29.
 */

public class IssusView extends LinearLayout {

    private ImageView btnNor;
    private ImageView btnSel;
    private ImageView txt;
    private boolean selected = false;
    private int index = 0;
    private OnClickListener btnListener = new OnClickListener() {
        @Override
        public void onClick(View v) {
            if (selected) {
                return;
            }
            notifyOther();
        }
    };
    private ISelListener listener;

    private void notifyOther() {
        if (null != listener) {
            listener.selected(index);
        }
    }

    public IssusView(Context context) {
        this(context, null);
    }

    public IssusView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public IssusView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context, attrs, defStyleAttr);
    }

    private void init(Context context, AttributeSet attrs, int defStyleAttr) {
        setOrientation(LinearLayout.HORIZONTAL);
        setGravity(Gravity.CENTER_VERTICAL);
        setPadding(getCusPaddingLeft(context), 0, 0, 0);

        btnNor = new ImageView(context);
        btnSel = new ImageView(context);
        txt = new ImageView(context);
        btnNor.setOnClickListener(btnListener);
        btnSel.setOnClickListener(btnListener);

        FrameLayout fl = new FrameLayout(context);
//        fl.setGravity(Gravity.CENTER);

//        FrameLayout.LayoutParams llp = new FrameLayout.LayoutParams(-2, -2);
//        llp.gravity = ;
//        fl.setLayoutParams(llp);


        fl.addView(btnNor);
        fl.addView(btnSel);


        setBtnNor();
        setBtnSel();

        addView(fl);

        View bank = new View(context);
        bank.setLayoutParams(new LayoutParams(CusService.dip2px(context, 5), 1));

        addView(bank);
        addView(txt);

        update();
    }

    private int getCusPaddingLeft(Context context) {
        if (CusService.getScreenOrientation(context) == 0) {//竖屏
            return CusService.dip2px(context, 40);
        } else {//横屏
            return CusService.dip2px(context, 80);
        }
    }

    public void setIssus(int i) {
        index = i;
        InputStream in = null;
        Bitmap bmp;
        try {
            in = getContext().getAssets().open("cs_res/cs_issus_" + i + ".png");
        } catch (IOException e) {
            e.printStackTrace();
        }

        bmp = BitmapFactory.decodeStream(in);

        if (null == txt) return;

        txt.setLayoutParams(new LayoutParams(CusService.dip2px(getContext(), getIssusW(getContext(), i)),
                CusService.dip2px(getContext(), getIssusH(getContext(), i))));

        if (null != bmp) {
            txt.setImageBitmap(bmp);
        }
    }

    private float getIssusH(Context context, int i) {
        if (CusService.getScreenOrientation(context) == 0)
            return 12.5F;
        else
            return 14;
    }

    private float getIssusW(Context context, int i) {
        if (CusService.getScreenOrientation(context) == 0) {
            switch (i) {
                case 1:
                    return 171;
                case 2:
                    return 161;
                case 3:
                default:
                    return 191;
            }
        } else {
            switch (i) {
                case 1:
                    return 228;
                case 2:
                    return 215;
                case 3:
                default:
                    return 255;
            }
        }
    }


    public void setSelected(boolean selected) {
        this.selected = selected;
        update();
    }

    private void update() {
        updateBtn();
    }

    private void updateBtn() {
        if (null != btnSel) {
            btnSel.setVisibility(selected ? VISIBLE : GONE);
        }
    }

    private void setBtnSel() {
        InputStream in = null;
        Bitmap bmp;
        String name = "cs_res/cs_checkbox_selected.png";
        try {
            in = getContext().getAssets().open(name);
        } catch (IOException e) {
            e.printStackTrace();
        }
        bmp = BitmapFactory.decodeStream(in);
        if (null == btnSel) return;
        int wh = CusService.dip2px(getContext(), getBtnSelWH(getContext()));
        FrameLayout.LayoutParams flp = new FrameLayout.LayoutParams(wh, wh);
        flp.gravity = Gravity.CENTER;
        btnSel.setLayoutParams(flp);

        if (null != bmp) {
            btnSel.setImageBitmap(bmp);
        }
    }

    private void setBtnNor() {
        InputStream in = null;
        Bitmap bmp;
        String name = "cs_res/cs_checkbox_normal.png";
        try {
            in = getContext().getAssets().open(name);
        } catch (IOException e) {
            e.printStackTrace();
        }
        bmp = BitmapFactory.decodeStream(in);

        if (null == btnNor) return;
        int wh = CusService.dip2px(getContext(), getBtnNorWH(getContext()));
        FrameLayout.LayoutParams flp = new FrameLayout.LayoutParams(wh, wh);
        btnNor.setLayoutParams(flp);

        if (null != bmp) {
            btnNor.setImageBitmap(bmp);
        }
    }

    private float getBtnNorWH(Context context) {
        if (CusService.getScreenOrientation(context) == 0) {
            return 26;
        } else {
            return 34.6f;
        }
    }

    private float getBtnSelWH(Context context) {
        if (CusService.getScreenOrientation(context) == 0) {
            return 21;
        } else {
            return 28f;
        }
    }

    public void setSelListner(ISelListener listener) {
        this.listener = listener;
    }

    public interface ISelListener {
        void selected(int index);
    }

}
