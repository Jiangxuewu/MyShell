package com.bb_sz.pay.kefu;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;

import java.io.IOException;
import java.io.InputStream;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by Administrator on 2016/11/29.
 */

public class SendView extends LinearLayout {
    private EditText et;
    private ISendListener listener;
    private Handler mHandler;
    private Runnable phoneErrorRun;

    Pattern p = Pattern.compile("^((13\\d{9}$)|(15[0,1,2,3,5,6,7,8,9]\\d{8}$)|(18[0,2,5,6,7,8,9]\\d{8}$)|(147\\d{8})$|(17\\d{9})$)");

    public SendView(Context context) {
        this(context, null);
    }

    public SendView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SendView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        init(context, attrs, defStyleAttr);
    }

    private void init(Context context, AttributeSet attrs, int defStyleAttr) {
        setOrientation(HORIZONTAL);
        setGravity(Gravity.CENTER);
        //edit
        addEdit(context);

        View bank = new View(context);
        bank.setLayoutParams(new LayoutParams(CusService.dip2px(context, getBankW(context)), 1));
        addView(bank);

        //send
        addBtn(context);
    }

    private float getBankW(Context context) {
        if (CusService.getScreenOrientation(context) == 0)
            return 10;
        else
            return 20;
    }

    private void addBtn(final Context context) {
        ImageView btn = new ImageView(context);
        InputStream in = null;
        try {
            in = getContext().getAssets().open("cs_res/cs_send_btn.png");
        } catch (IOException e) {
            e.printStackTrace();
        }
        Bitmap bmp = BitmapFactory.decodeStream(in);
        if (null != bmp)
            btn.setImageBitmap(bmp);

        btn.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                if (null == et) return;
                String tel = et.getText().toString();
                if (TextUtils.isEmpty(tel)) {
                    return;
                }
                if (!isPhoneNumber(tel)) {
                    notifyPhoneError();
                    return;
                }
                if (null != listener) {
                    listener.send(tel);
                }
            }
        });

        btn.setLayoutParams(new LayoutParams(CusService.dip2px(context, getSendBtnW(context)), CusService.dip2px(context, getSendBtnH(context))));

        addView(btn);
    }

    private boolean isPhoneNumber(String tel) {
        if (TextUtils.isEmpty(tel)) return false;
        if (tel.contains("-")) {
            tel = tel.replaceAll("-", "");
        }
        Matcher m = p.matcher(tel);
        return m.matches();
    }

    private void notifyPhoneError() {
        if (null == mHandler) {
            mHandler = new Handler(Looper.getMainLooper());
        }

        if (null == phoneErrorRun) {
            phoneErrorRun = new Runnable() {

                @Override
                public void run() {
                    Toast.makeText(getContext(), "无效的手机号码,请输入正确的手机号码!", Toast.LENGTH_SHORT).show();
                }
            };
        }

        mHandler.post(phoneErrorRun);
    }


    private void addEdit(Context context) {
        FrameLayout fl = new FrameLayout(context);
        ImageView etbg = new ImageView(context);
        InputStream in = null;
        try {
            in = getContext().getAssets().open("cs_res/cs_edit_bg.png");
        } catch (IOException e) {
            e.printStackTrace();
        }
        Bitmap bmp = BitmapFactory.decodeStream(in);
        if (null != bmp)
            etbg.setImageBitmap(bmp);


        et = new EditText(context);
        et.setBackgroundColor(Color.TRANSPARENT);
        et.setTextColor(Color.WHITE);
        et.setTextSize(TypedValue.COMPLEX_UNIT_DIP, getTextSize(context));
        et.setSingleLine();
        et.setHint("冒险者把您的联系方式给我们吧");
        et.setHintTextColor(Color.WHITE);
        et.setFilters(new InputFilter[]{new InputFilter.LengthFilter(11 + 2)});
        et.setInputType(EditorInfo.TYPE_CLASS_PHONE);
        et.addTextChangedListener(new TextWatcher() {
            @Override
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
            }

            @Override
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                if (count == 1) {//add
                    if ((start == 2 || start == 7) && null != s) {
                        String cur = s.toString() + "-";
                        et.setText(cur);
                        et.setSelection(start + 2);
                    }
                } else if (count == 0 && start > 0) {
                    String cur = s.toString();
                    if (cur.endsWith("-")) {
                        et.setText(cur.substring(0, cur.length() - 1));
                        et.setSelection(start - 1);
                    }
                }
            }

            @Override
            public void afterTextChanged(Editable s) {

            }
        });

        fl.addView(etbg);
        fl.addView(et);

        fl.setLayoutParams(new LayoutParams(CusService.dip2px(context, getEditW(context)), -1));

        addView(fl);
    }

    private float getSendBtnH(Context context) {
        if (CusService.getScreenOrientation(context) == 0)
            return 20;
        else
            return 27;
    }

    private float getSendBtnW(Context context) {
        if (CusService.getScreenOrientation(context) == 0)
            return 54;
        else
            return 72;
    }

    private float getTextSize(Context context) {
        if (CusService.getScreenOrientation(context) == 0)
            return 10;
        else
            return 14;
    }

    private float getEditW(Context context) {
        if (CusService.getScreenOrientation(context) == 0)
            return 196;
        else
            return 262;
    }

    public void setSendListener(ISendListener listener) {
        this.listener = listener;
    }

    public void clear() {
        if (null != et) {
            et.setText("");
        }
    }

    public interface ISendListener {
        void send(String tel);
    }
}
