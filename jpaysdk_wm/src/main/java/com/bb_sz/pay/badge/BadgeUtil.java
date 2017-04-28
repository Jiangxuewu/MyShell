package com.bb_sz.pay.badge;

import android.app.Activity;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.widget.RemoteViews;

import com.bb_sz.ndk.App;
import com.bb_sz.pay.Api;

import java.lang.reflect.Field;
import java.lang.reflect.Method;

/**
 * Created by Administrator on 2017/2/20.
 */

public class BadgeUtil {

    private static final String TAG = "SKYBadge";

    public static void setBadgeCount(Context context, int count) {
        if (Build.VERSION.SDK_INT < 14){
            return;
        }
        if (count <= 0) {
            count = 0;
        } else {
            count = Math.max(0, Math.min(count, 99));
        }
        if (App.debug > 0)Log.d(TAG, "Build.MANUFACTURER = " + Build.MANUFACTURER + ", count = " + count);
        if (Build.MANUFACTURER.equalsIgnoreCase("Xiaomi")) {
            sendToXiaoMi(context, count);
        } else if (Build.MANUFACTURER.equalsIgnoreCase("sony")) {
            sendToSony(context, count);
        } else if (Build.MANUFACTURER.toLowerCase().contains("samsung")) {
            sendToSamsumg(context, count);
        } else if (Build.MANUFACTURER.toLowerCase().contains("huawei")) {
            sendToHuaWei(context, count);
        } else {
            if (App.debug > 0) Log.d(TAG, "Not support. Build.MANUFACTURER = " + Build.MANUFACTURER);

            NotificationManager mNotificationManager = (NotificationManager) context.getSystemService(Context.NOTIFICATION_SERVICE);

            if (count == 0) mNotificationManager.cancelAll();

            Intent appIntent = new Intent(Intent.ACTION_MAIN);
            appIntent.addCategory(Intent.CATEGORY_LAUNCHER);
            appIntent.setComponent(new ComponentName(context.getPackageName(), context.getPackageName() + "." + ((Activity)context).getLocalClassName()));
            appIntent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);

            PendingIntent pIntent = PendingIntent.getService(context, 0, appIntent, 0);


            Notification notification = new Notification.Builder(context)
                    .setSmallIcon(android.R.drawable.btn_star)
                    .setTicker("Ticker")
                    .setContentTitle(" "+ Api.getAppName())
                    .setContentText("欢迎来到->"+ Api.getAppName())
                    .setContentIntent(pIntent)
                    .setNumber(1)
                    .getNotification();
            notification.flags|= Notification.FLAG_AUTO_CANCEL;
            mNotificationManager.notify(0, notification);
        }
    }

    private static void sendToXiaoMi(Context context, int count) {
        try {
            if (App.debug > 0) Log.d(TAG, "XiaoMi start...");
            NotificationManager mNotificationManager = (NotificationManager) context.getSystemService(Context.NOTIFICATION_SERVICE);
            Notification notification = new Notification(android.R.drawable.btn_star,
                    Api.getAppName(), System.currentTimeMillis());
            Intent appIntent = new Intent(Intent.ACTION_MAIN);
            appIntent.addCategory(Intent.CATEGORY_LAUNCHER);
            appIntent.setComponent(new ComponentName(context.getPackageName(), context.getPackageName() + "." + ((Activity)context).getLocalClassName()));
            appIntent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_RESET_TASK_IF_NEEDED);
            PendingIntent pIntent = PendingIntent.getService(context, 0, appIntent, 0);
            notification.contentIntent = pIntent;
            RemoteViews mView = new RemoteViews(context.getPackageName(), android.R.layout.two_line_list_item);
            mView.setTextViewText(android.R.id.text1, Api.getAppName());
            mView.setTextColor(android.R.id.text1, Color.BLUE);
            mView.setTextViewText(android.R.id.text2, "         " + "欢迎来到->" + Api.getAppName() );
            mView.setTextColor(android.R.id.text2, Color.BLUE);
            notification.contentView = mView;
            notification.flags = Notification.FLAG_AUTO_CANCEL;

            Field field = notification.getClass().getDeclaredField("extraNotification");

            Object extraNotification = field.get(notification);

            Method method = extraNotification.getClass().getDeclaredMethod("setMessageCount", int.class);

            method.invoke(extraNotification, count);
            mNotificationManager.notify(0, notification);
            if (App.debug > 0) Log.d(TAG, "XiaoMi step 2...");
        } catch (Exception e) {
            e.printStackTrace();
            if (App.debug > 0) Log.d(TAG, "XiaoMi error...");
            if (App.debug > 0)Log.d(TAG, "XiaoMi error.2.." + e.getLocalizedMessage());
            // miui 6之前的版本
            Intent localIntent = new Intent("android.intent.action.APPLICATION_MESSAGE_UPDATE");
            localIntent.putExtra("android.intent.extra.update_application_component_name",
                    context.getPackageName() + "/" + getLauncherClassName(context));
            localIntent.putExtra(
                    "android.intent.extra.update_application_message_text", String.valueOf(count == 0 ? "" : count));
            context.sendBroadcast(localIntent);
        }
        if (App.debug > 0) Log.d(TAG, "XiaoMi end...");
    }

    /**
     * 向索尼手机发送未读消息数广播<br/>
     * 据说：需添加权限：<uses-permission android:name="com.sonyericsson.home.permission.BROADCAST_BADGE" /> [未验证]
     *
     * @param count
     */
    private static void sendToSony(Context context, int count) {
        String launcherClassName = getLauncherClassName(context);
        if (launcherClassName == null) {
            return;
        }

        boolean isShow = true;
        if (count == 0) {
            isShow = false;
        }
        Intent localIntent = new Intent();
        localIntent.setAction("com.sonyericsson.home.action.UPDATE_BADGE");
        localIntent.putExtra("com.sonyericsson.home.intent.extra.badge.SHOW_MESSAGE", isShow);//是否显示
        localIntent.putExtra("com.sonyericsson.home.intent.extra.badge.ACTIVITY_NAME", launcherClassName);//启动页
        localIntent.putExtra("com.sonyericsson.home.intent.extra.badge.MESSAGE", String.valueOf(count));//数字
        localIntent.putExtra("com.sonyericsson.home.intent.extra.badge.PACKAGE_NAME", context.getPackageName());//包名
        context.sendBroadcast(localIntent);
    }

    /**
     * 向三星手机发送未读消息数广播
     *
     * @param count
     */
    private static void sendToSamsumg(Context context, int count) {
        String launcherClassName = getLauncherClassName(context);
        if (launcherClassName == null) {
            return;
        }
        Intent intent = new Intent("android.intent.action.BADGE_COUNT_UPDATE");
        intent.putExtra("badge_count", count);
        intent.putExtra("badge_count_package_name", context.getPackageName());
        intent.putExtra("badge_count_class_name", launcherClassName);
        context.sendBroadcast(intent);
    }

    private static void sendToHuaWei(Context context, int count) {
        try {
            if (!isHwSupportedByVersion(context)) {
                return;
            }
            String launcherClassName = getLauncherClassName(context);
            if (launcherClassName == null) {
                return;
            }
            Bundle extra = new Bundle();
            extra.putString("package", context.getPackageName());
            extra.putString("class", launcherClassName);
            extra.putInt("badgenumber", count);
            context.getContentResolver().call(Uri.parse("content://com.huawei.android.launcher.settings/badge/"), "change_launcher_badge", null, extra);

        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    private static boolean isHwSupportedByVersion(Context context) {
        try {
            PackageManager pm = context.getPackageManager();
            PackageInfo info = pm.getPackageInfo("com.huawei.android.launcher", 0);
            if (info.versionCode > 63029) {
                return true;
            }
        } catch (Exception ignored) {
        }
        return false;

    }

    private static String getLauncherClassName(Context context) {
        PackageManager packageManager = context.getPackageManager();

        Intent intent = new Intent(Intent.ACTION_MAIN);
        // To limit the components this Intent will resolve to, by setting an
        // explicit package name.
        intent.setPackage(context.getPackageName());
        intent.addCategory(Intent.CATEGORY_LAUNCHER);

        // All Application must have 1 Activity at least.
        // Launcher activity must be found!
        ResolveInfo info = packageManager
                .resolveActivity(intent, PackageManager.MATCH_DEFAULT_ONLY);

        // get a ResolveInfo containing ACTION_MAIN, CATEGORY_LAUNCHER
        // if there is no Activity which has filtered by CATEGORY_DEFAULT
        if (info == null) {
            info = packageManager.resolveActivity(intent, 0);
        }
        return info.activityInfo.name;
    }
}
