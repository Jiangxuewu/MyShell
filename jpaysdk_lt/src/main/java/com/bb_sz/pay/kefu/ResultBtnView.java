package com.bb_sz.pay.kefu;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;

import java.io.IOException;
import java.io.InputStream;

/**
 * Created by Administrator on 2016/11/30.
 */

public class ResultBtnView extends LinearLayout {

    private ImageView btnNor;
    private ImageView btnSel;
    private ImageView txt;
    private boolean selected = false;
    private int type = 0;
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
            listener.selected(type);
        }
    }


    public ResultBtnView(Context context) {
        this(context, null);
    }

    public ResultBtnView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public ResultBtnView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context, attrs, defStyleAttr);
    }

    private void init(Context context, AttributeSet attrs, int defStyleAttr) {
        setOrientation(LinearLayout.HORIZONTAL);
        setGravity(Gravity.CENTER_VERTICAL);

        btnNor = new ImageView(context);
        btnSel = new ImageView(context);
        txt = new ImageView(context);
        btnNor.setOnClickListener(btnListener);
        btnSel.setOnClickListener(btnListener);

        FrameLayout fl = new FrameLayout(context);

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

        btnNor.setLayoutParams(new FrameLayout.LayoutParams(wh, wh));

        if (null != bmp) {
            btnNor.setImageBitmap(bmp);
        }
    }

    /**
     * @param type 0 ->已解决;   1 -> 未解决
     */
    public void setType(int type) {
        this.type = type;
        String name;
        if (type == 0) {//已解决
            name = "cs_res/cs_resolved.png";
        } else if (type == 1) {//未解决
            name = "cs_res/cs_not_resolved.png";
        } else {
            return;
        }
        InputStream in = null;
        Bitmap bmp;
        try {
            in = getContext().getAssets().open(name);
        } catch (IOException e) {
            e.printStackTrace();
        }

        bmp = BitmapFactory.decodeStream(in);

        if (null == txt) return;

        txt.setLayoutParams(new LayoutParams(CusService.dip2px(getContext(), getSolveW(getContext(), type)),
                CusService.dip2px(getContext(), getSolveH(getContext(), type))));

        if (null != bmp) {
            txt.setImageBitmap(bmp);
        }
    }

    private float getSolveW(Context context, int type) {
        if (type == 0) {//已解决
            if (CusService.getScreenOrientation(context) == 0) {
                return 42.5F;
            } else {
                return 56.6f;
            }
        } else if (type == 1) {//未解决
            if (CusService.getScreenOrientation(context) == 0) {
                return 44F;
            } else {
                return 58.6f;
            }
        } else {
            return 0f;
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

    private float getSolveH(Context context, int type) {
        if (type == 0) {
            if (CusService.getScreenOrientation(context) == 0) {
                return 18;
            } else {
                return 24;
            }
        } else if (type == 1) {
            if (CusService.getScreenOrientation(context) == 0) {
                return 18;
            } else {
                return 24;
            }
        } else {
            return 0;
        }
    }

    public void setSelListener(ISelListener listener) {
        this.listener = listener;
    }

    public interface ISelListener {
        void selected(int type);
    }
}
