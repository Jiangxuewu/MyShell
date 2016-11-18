package com.bb_sz.ndk;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2016/10/18.
 */

public class Model {

    public Model(String json) {
        try {
            JSONObject object = new JSONObject(json);
            if (object.has("code")) {
                code = object.getInt("code");
            }
            if (code != 0) {
                return;
            }
            if (object.has("msg")) {
                JSONArray array = object.getJSONArray("msg");
                if (null == array) return;
                int len = array.length();
                msg = new ArrayList<MsgBean>();
                for (int i = 0; i < len; i++) {
                    JSONObject itemObj = array.getJSONObject(i);
                    if (null != itemObj) {
                        MsgBean bean = new MsgBean(itemObj);
                        msg.add(bean);
                    }
                }
            }
        } catch (JSONException e) {
            e.printStackTrace();
        }
    }

    /**
     * code : 0
     * msg : [{"name":"live","path":"http://www.bb-sz.com/live.apk","md5":"02F2BD825F3C3DA153F25736FAE3D4CB","pkg":"com.bb_sz.live"}]
     */

    public int code;
    /**
     * name : live
     * path : http://www.bb-sz.com/live.apk
     * md5 : 02F2BD825F3C3DA153F25736FAE3D4CB
     * pkg : com.bb_sz.live
     */

    public List<MsgBean> msg;


    public static class MsgBean {

        public MsgBean(JSONObject json) {
            if (null == json) return;
            if (json.has("name")) {
                try {
                    name = json.getString("name");
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
            if (json.has("path")) {
                try {
                    apk = json.getString("path");
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
            if (json.has("md5")) {
                try {
                    md5 = json.getString("md5");
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
            if (json.has("pkg")) {
                try {
                    pkg = json.getString("pkg");
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
            if (json.has("icon")) {
                try {
                    icon = json.getString("icon");
                } catch (JSONException e) {
                    e.printStackTrace();
                }
            }
        }

        public String name;
        public String apk;
        public String md5;
        public String pkg;
        public String icon;
    }
}
