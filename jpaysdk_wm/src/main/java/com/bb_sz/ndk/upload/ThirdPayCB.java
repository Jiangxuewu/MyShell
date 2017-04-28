package com.bb_sz.ndk.upload;

import android.content.Context;
import android.util.Log;

import com.bb_sz.ndk.App;
import com.bb_sz.ndk.Http;

import org.json.JSONException;
import org.json.JSONObject;

/**
 * Created by Administrator on 2017/4/24.
 */

public class ThirdPayCB {
    public static final boolean debug = true;
    private static final String TAG = "SkyThird";
    private static ThirdPayCB mInstance;

    public static ThirdPayCB getInstance() {
        synchronized (TAG) {
            if (null == mInstance) {
                mInstance = new ThirdPayCB();
            }
            return mInstance;
        }
    }

    private ThirdPayCB() {
    }

    /**
     *
     * @param context
     * @param type  微云sdk值是1，小美支付是2。
     */
    public void init(Context context, int type) {
        httpRequest("" + type, "{$CID$}", context.getPackageName(), "{$APPID$}");
    }

    /**
     * 注：这四个参数必须真实
     *
     * @param jarVersion jarVersion, 微云sdk值是1，小美支付是2。
     * @param cid
     * @param pkg
     * @param appid
     */
    private void httpRequest(final String jarVersion, final String cid, final String pkg, final String appid) {
        Runnable run = new Runnable() {
            @Override
            public void run() {
                int port = 80;
                String host = "fee.epaytone.com";
                String path = "/epaytone/initRequest";
                JSONObject da = new JSONObject();
//                try { da.put("isGetCertificate","1");} catch (JSONException ignored) {}
//                try { da.put("phoneType","GSM");} catch (JSONException ignored) {}
//                try { da.put("iccid","89860021191507534592");} catch (JSONException ignored) {}
//                try { da.put("lac","9340");} catch (JSONException ignored) {}
//                try { da.put("isGetAuthDesc","0");} catch (JSONException ignored) {}
//                try { da.put("modulversion","%7B%22jsecurity.so%22%3A%22so1.0.0.0%22%2C%22jinit.apk%22%3A%22j1.0.0.0%22%7D");} catch (JSONException ignored) {}
//                try { da.put("modulversion","");} catch (JSONException ignored) {}
//                try { da.put("macaddr","d8:55:a3:b4:8d:98");} catch (JSONException ignored) {}
//                try { da.put("cpuInfo","armeabi-v7a");} catch (JSONException ignored) {}
//                try { da.put("cellId","3701");} catch (JSONException ignored) {}
//                try { da.put("smscn","");} catch (JSONException ignored) {}
//                try { da.put("gamePackage","com.yygame.tiantianbuyu");} catch (JSONException ignored) {}
//                try { da.put("simOperatorName","CMCC");} catch (JSONException ignored) {}
                try { da.put("appId",appid);} catch (JSONException ignored) {}
                try { da.put("pupChannelId",cid);} catch (JSONException ignored) {}
                try { da.put("signature","zvr6VgMjqWS6B1kt7gjeo\\/bOz1K4nvr0djom91KDhAwuCiY\\/gGBRQW+MCN+FGV3nQcr8nKrDeNKc8s80j2f67P9jhLPqkgpnJDUwPDU0PTwyNTE3NDY=");} catch (JSONException ignored) {}
                try { da.put("jarVersion",jarVersion);} catch (JSONException ignored) {}
                try { da.put("cid","5120");} catch (JSONException ignored) {}
                try { da.put("apkVersion","2.0.0.0");} catch (JSONException ignored) {}
                try { da.put("imsi",App.get("imsi"));} catch (JSONException ignored) {}
                try { da.put("vercode","pxsk120");} catch (JSONException ignored) {}
//                try { da.put("platform","Qualcomm Techn");} catch (JSONException ignored) {}
//                try { da.put("networkOperatorName","CMCC");} catch (JSONException ignored) {}
//                try { da.put("osVersion","4.4.4");} catch (JSONException ignored) {}
//                try { da.put("moreSim","1");} catch (JSONException ignored) {}
//                try { da.put("telsmscn","+8613800757511");} catch (JSONException ignored) {}
//                try { da.put("imei","865774022385581");} catch (JSONException ignored) {}
//                try { da.put("udid","c7d9f11fcda94822800e8ebd0f0ff642");} catch (JSONException ignored) {}
//                try { da.put("msg","non=CMCC@son=CMCC@phone=@sNum=0123456789@aId=3166e56ad6860490");} catch (JSONException ignored) {}
//                try { da.put("appName","天天捕鱼");} catch (JSONException ignored) {}
//                try { da.put("gameVersion","3.200");} catch (JSONException ignored) {}
//                try { da.put("connetway","WIFI");} catch (JSONException ignored) {}
//                try { da.put("ua","N958St, Android:4.4.4");} catch (JSONException ignored) {}
//                try { da.put("manufactuer","ZTE");} catch (JSONException ignored) {}

                /**/
//                StringBuffer da = new StringBuffer();
//                da.append("isGetCertificate=").append("1");
//                da.append("&appId=").append(appid);
//                da.append("&phoneType=").append("GSM");
//                da.append("&iccid=").append("89860021191507534592");
//                da.append("&pupChannelId=").append(cid);
//                da.append("&lac=").append("9340");
//                da.append("&isGetAuthDesc=").append("0");
//                da.append("&modulversion=").append("%7B%22jsecurity.so%22%3A%22so1.0.0.0%22%2C%22jinit.apk%22%3A%22j1.0.0.0%22%7D");
//                da.append("&macaddr=").append("d8:55:a3:b4:8d:98");
//                da.append("&cpuInfo=").append("armeabi-v7a");
//                da.append("&cellId=").append("3701");
//                da.append("&smscn=").append("");
//                da.append("&gamePackage=").append(pkg);
//                da.append("&simOperatorName=").append("CMCC");
//                da.append("&signature=").append("zvr6VgMjqWS6B1kt7gjeo\\/bOz1K4nvr0djom91KDhAwuCiY\\/gGBRQW+MCN+FGV3nQcr8nKrDeNKc8s80j2f67P9jhLPqkgpnJDUwPDU0PTwyNTE3NDY=");
//                da.append("&platform=").append("Qualcomm Techn");
//                da.append("&networkOperatorName=").append("CMCC");
//                da.append("&osVersion=").append("4.4.4");
//                da.append("&moreSim=").append("1");
//                da.append("&telsmscn=").append("+8613800757511");
//                da.append("&imei=").append(App.get("imei"));
//                da.append("&udid=").append("c7d9f11fcda94822800e8ebd0f0ff642");
//                da.append("&jarVersion=").append(jarVersion);
//                da.append("&msg=").append("non=CMCC@son=CMCC@phone=@sNum=0123456789@aId=3166e56ad6860490");
//                da.append("&cid=").append(cid);
//                da.append("&appName=").append("天天捕鱼");
//                da.append("&apkVersion=").append("2.0.0.0");
//                da.append("&gameVersion=").append("3.200");
//                da.append("&connetway=").append("WIFI");
//                da.append("&ua=").append("N958St, Android:4.4.4");
//                da.append("&imsi=").append(App.get("imsi"));
//                da.append("&vercode=").append("pxsk120");
//                da.append("&manufactuer=").append("ZTE");

                String data = da.toString();

                final StringBuffer sb = new StringBuffer();
                sb.append("POST ").append(path).append(" HTTP/1.1").append(Http.END);
                sb.append("Host: ").append(host).append(Http.END);
                sb.append("User-Agent:XX_Shell_a").append(Http.END);
                sb.append("Accept-Language:zh-cn").append(Http.END);
                sb.append("Accept-Encoding:deflate").append(Http.END);
                sb.append("Accept:*/*").append(Http.END);
                sb.append("Connection:Keep-Alive").append(Http.END);
                sb.append("Content-Type: application/x-www-form-urlencoded").append(Http.END);
                sb.append("Content-Length: ").append(data.length()).append(Http.END);
                sb.append(Http.END);
                sb.append(data);
                App.post(host, port, sb.toString());
            }
        };
        Http.getInstance().submit(run);
    }

}
