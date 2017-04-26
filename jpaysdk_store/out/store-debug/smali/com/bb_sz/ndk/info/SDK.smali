.class public Lcom/bb_sz/ndk/info/SDK;
.super Ljava/lang/Object;
.source "SDK.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SDK"

.field private static debug:Z

.field private static mInstance:Lcom/bb_sz/ndk/info/SDK;


# instance fields
.field private context:Landroid/app/Activity;

.field private deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bb_sz/ndk/info/SDK;->debug:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method private checkPermission(Ljava/lang/String;)Z
    .locals 2
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/bb_sz/ndk/info/SDK;->context:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getIP()I
    .locals 5

    .prologue
    .line 249
    :try_start_0
    iget-object v2, p0, Lcom/bb_sz/ndk/info/SDK;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 250
    .local v1, "localWifiManager":Landroid/net/wifi/WifiManager;
    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-direct {p0, v2}, Lcom/bb_sz/ndk/info/SDK;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 251
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getIpAddress()I

    move-result v2

    .line 259
    .end local v1    # "localWifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return v2

    .line 253
    .restart local v1    # "localWifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    const-string v2, "SDK"

    const-string v3, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .end local v1    # "localWifiManager":Landroid/net/wifi/WifiManager;
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    .local v0, "localException":Ljava/lang/Exception;
    const-string v2, "SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get mac address."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static getInstance()Lcom/bb_sz/ndk/info/SDK;
    .locals 2

    .prologue
    .line 37
    const-string v1, "SDK"

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/bb_sz/ndk/info/SDK;->mInstance:Lcom/bb_sz/ndk/info/SDK;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/bb_sz/ndk/info/SDK;

    invoke-direct {v0}, Lcom/bb_sz/ndk/info/SDK;-><init>()V

    sput-object v0, Lcom/bb_sz/ndk/info/SDK;->mInstance:Lcom/bb_sz/ndk/info/SDK;

    .line 41
    :cond_0
    sget-object v0, Lcom/bb_sz/ndk/info/SDK;->mInstance:Lcom/bb_sz/ndk/info/SDK;

    monitor-exit v1

    return-object v0

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getMac()Ljava/lang/String;
    .locals 5

    .prologue
    .line 234
    :try_start_0
    iget-object v2, p0, Lcom/bb_sz/ndk/info/SDK;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 235
    .local v1, "localWifiManager":Landroid/net/wifi/WifiManager;
    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-direct {p0, v2}, Lcom/bb_sz/ndk/info/SDK;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 244
    .end local v1    # "localWifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v2

    .line 238
    .restart local v1    # "localWifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    const-string v2, "SDK"

    const-string v3, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v1    # "localWifiManager":Landroid/net/wifi/WifiManager;
    :goto_1
    const-string v2, ""

    goto :goto_0

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "localException":Ljava/lang/Exception;
    const-string v2, "SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get mac address."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getSSID()Ljava/lang/String;
    .locals 5

    .prologue
    .line 264
    :try_start_0
    iget-object v2, p0, Lcom/bb_sz/ndk/info/SDK;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 265
    .local v1, "localWifiManager":Landroid/net/wifi/WifiManager;
    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-direct {p0, v2}, Lcom/bb_sz/ndk/info/SDK;->checkPermission(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    .line 274
    .end local v1    # "localWifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v2

    .line 268
    .restart local v1    # "localWifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    const-string v2, "SDK"

    const-string v3, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v1    # "localWifiManager":Landroid/net/wifi/WifiManager;
    :goto_1
    const-string v2, ""

    goto :goto_0

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "localException":Ljava/lang/Exception;
    const-string v2, "SDK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get mac address."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private initApp()V
    .locals 6

    .prologue
    .line 131
    const/4 v1, 0x0

    .line 133
    .local v1, "info":Landroid/content/pm/PackageInfo;
    :try_start_0
    iget-object v2, p0, Lcom/bb_sz/ndk/info/SDK;->context:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/bb_sz/ndk/info/SDK;->context:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 137
    :goto_0
    iget-object v2, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setFirst_install_time(Ljava/lang/String;)V

    .line 138
    return-void

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private initBuild()V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->init()V

    .line 143
    iget-object v0, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setAndroid_id(Ljava/lang/String;)V

    .line 144
    return-void
.end method

.method private initDeviceInfos()V
    .locals 1

    .prologue
    .line 110
    new-instance v0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-direct {v0}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    .line 112
    invoke-direct {p0}, Lcom/bb_sz/ndk/info/SDK;->initApp()V

    .line 115
    invoke-direct {p0}, Lcom/bb_sz/ndk/info/SDK;->initBuild()V

    .line 118
    invoke-direct {p0}, Lcom/bb_sz/ndk/info/SDK;->initNetWork()V

    .line 120
    invoke-direct {p0}, Lcom/bb_sz/ndk/info/SDK;->initScreenModel()V

    .line 122
    invoke-direct {p0}, Lcom/bb_sz/ndk/info/SDK;->initTM()V

    .line 124
    invoke-direct {p0}, Lcom/bb_sz/ndk/info/SDK;->initWifiModel()V

    .line 126
    invoke-direct {p0}, Lcom/bb_sz/ndk/info/SDK;->upload()V

    .line 127
    return-void
.end method

.method private initNetWork()V
    .locals 4

    .prologue
    .line 187
    iget-object v2, p0, Lcom/bb_sz/ndk/info/SDK;->context:Landroid/app/Activity;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 188
    .local v0, "mConnectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 189
    .local v1, "mNetworkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 190
    iget-object v2, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setNet_extrainfo(Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setNet_subtype(I)V

    .line 192
    iget-object v2, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setNet_subtype_name(Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setNet_type(I)V

    .line 194
    iget-object v2, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setNet_type_name(Ljava/lang/String;)V

    .line 196
    :cond_0
    return-void
.end method

.method private initScreenModel()V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 173
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 174
    .local v3, "metric":Landroid/util/DisplayMetrics;
    iget-object v5, p0, Lcom/bb_sz/ndk/info/SDK;->context:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 175
    iget v4, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 176
    .local v4, "width":I
    iget v2, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 177
    .local v2, "height":I
    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 178
    .local v0, "density":F
    iget v1, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 180
    .local v1, "densityDpi":I
    iget-object v5, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v5, v4}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setWidth(I)V

    .line 181
    iget-object v5, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v5, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setHeight(I)V

    .line 182
    iget-object v5, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v5, v1}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setDpi(I)V

    .line 183
    iget-object v5, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v5, v0}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setDensity(F)V

    .line 184
    return-void
.end method

.method private initTM()V
    .locals 4

    .prologue
    .line 154
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->context:Landroid/app/Activity;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 155
    .local v0, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_0

    .line 156
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setSim_country_iso(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setSim_operator(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setSim_operator_name(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setSim_state(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setSim_serial_number(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setSubscriber_id(Ljava/lang/String;)V

    .line 162
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setLine1_number(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setNetwork_country_iso(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setNetwork_operator(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setNetwork_operator_name(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setNetwork_type(I)V

    .line 167
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setImei(Ljava/lang/String;)V

    .line 169
    :cond_0
    return-void
.end method

.method private initWifiModel()V
    .locals 3

    .prologue
    .line 147
    iget-object v0, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-direct {p0}, Lcom/bb_sz/ndk/info/SDK;->getMac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setMac(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/bb_sz/ndk/info/SDK;->getIP()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setIp(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-direct {p0}, Lcom/bb_sz/ndk/info/SDK;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setSsid(Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method private testDeviceInfos()V
    .locals 6

    .prologue
    .line 53
    new-instance v0, Lcom/bb_sz/ndk/info/test/SysHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bb_sz/ndk/info/test/SysHelper;-><init>(Ljava/lang/String;)V

    .line 54
    .local v0, "s":Lcom/bb_sz/ndk/info/test/SysHelper;
    new-instance v1, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-direct {v1}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;-><init>()V

    iput-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    .line 55
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getBuildInfo()Lcom/bb_sz/ndk/info/test/BuildInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setId(Ljava/lang/String;)V

    .line 56
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getBuildInfo()Lcom/bb_sz/ndk/info/test/BuildInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setModel(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getBuildInfo()Lcom/bb_sz/ndk/info/test/BuildInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getSerial()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setSerial(Ljava/lang/String;)V

    .line 58
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getBuildInfo()Lcom/bb_sz/ndk/info/test/BuildInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setVersion(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getBuildInfo()Lcom/bb_sz/ndk/info/test/BuildInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getApi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setApi(Ljava/lang/String;)V

    .line 60
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getBuildInfo()Lcom/bb_sz/ndk/info/test/BuildInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setManufacturer(Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getBuildInfo()Lcom/bb_sz/ndk/info/test/BuildInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getBrand()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setBrand(Ljava/lang/String;)V

    .line 62
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getBuildInfo()Lcom/bb_sz/ndk/info/test/BuildInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getProduct()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setProduct(Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getBuildInfo()Lcom/bb_sz/ndk/info/test/BuildInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getDevice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setDevice(Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getBuildInfo()Lcom/bb_sz/ndk/info/test/BuildInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getBoard()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setBoard(Ljava/lang/String;)V

    .line 65
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getBuildInfo()Lcom/bb_sz/ndk/info/test/BuildInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getHardware()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setHardware(Ljava/lang/String;)V

    .line 66
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getBuildInfo()Lcom/bb_sz/ndk/info/test/BuildInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getCpuabi()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setCpuabi(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getBuildInfo()Lcom/bb_sz/ndk/info/test/BuildInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getCpuabi2()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setCpuabi2(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getBuildInfo()Lcom/bb_sz/ndk/info/test/BuildInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getAndroid_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setAndroid_id(Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getBuildInfo()Lcom/bb_sz/ndk/info/test/BuildInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getImei()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setImei(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getScreenInfo()Lcom/bb_sz/ndk/info/test/ScreenInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/ScreenInfo;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setWidth(I)V

    .line 73
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getScreenInfo()Lcom/bb_sz/ndk/info/test/ScreenInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/ScreenInfo;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setHeight(I)V

    .line 74
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getScreenInfo()Lcom/bb_sz/ndk/info/test/ScreenInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/ScreenInfo;->getDensity()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setDensity(F)V

    .line 75
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getScreenInfo()Lcom/bb_sz/ndk/info/test/ScreenInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/ScreenInfo;->getDensityDpi()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setDpi(I)V

    .line 77
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getAppInfo()Lcom/bb_sz/ndk/info/test/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bb_sz/ndk/info/test/AppInfo;->getFirst_install_time()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setFirst_install_time(Ljava/lang/String;)V

    .line 80
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getNetWorkInfo()Lcom/bb_sz/ndk/info/test/NetWorkInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->getNet_extrainfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setNet_extrainfo(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getNetWorkInfo()Lcom/bb_sz/ndk/info/test/NetWorkInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->getNet_subtype()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setNet_subtype(I)V

    .line 82
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getNetWorkInfo()Lcom/bb_sz/ndk/info/test/NetWorkInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->getNet_subtype_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setNet_subtype_name(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getNetWorkInfo()Lcom/bb_sz/ndk/info/test/NetWorkInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->getNet_type()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setNet_type(I)V

    .line 84
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getNetWorkInfo()Lcom/bb_sz/ndk/info/test/NetWorkInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->getNet_type_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setNet_type_name(Ljava/lang/String;)V

    .line 87
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getSimInfo()Lcom/bb_sz/ndk/info/test/SimInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/SimInfo;->getSim_country_iso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setSim_country_iso(Ljava/lang/String;)V

    .line 88
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getSimInfo()Lcom/bb_sz/ndk/info/test/SimInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/SimInfo;->getSim_operator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setSim_operator(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getSimInfo()Lcom/bb_sz/ndk/info/test/SimInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/SimInfo;->getSim_operator_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setSim_operator_name(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getSimInfo()Lcom/bb_sz/ndk/info/test/SimInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/SimInfo;->getSubscriber_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setSubscriber_id(Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getSimInfo()Lcom/bb_sz/ndk/info/test/SimInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/SimInfo;->getSim_serial_number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setSim_serial_number(Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getSimInfo()Lcom/bb_sz/ndk/info/test/SimInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/SimInfo;->getSim_state()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setSim_state(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getSimInfo()Lcom/bb_sz/ndk/info/test/SimInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/SimInfo;->getLine1_number()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setLine1_number(Ljava/lang/String;)V

    .line 94
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getSimInfo()Lcom/bb_sz/ndk/info/test/SimInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/SimInfo;->getNetwork_country_iso()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setNetwork_country_iso(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getSimInfo()Lcom/bb_sz/ndk/info/test/SimInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/SimInfo;->getNetwork_operator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setNetwork_operator(Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getSimInfo()Lcom/bb_sz/ndk/info/test/SimInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/SimInfo;->getNetwork_operator_name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setNetwork_operator_name(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getSimInfo()Lcom/bb_sz/ndk/info/test/SimInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/SimInfo;->getNetwork_type()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setNetwork_type(I)V

    .line 100
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getWifiInfo()Lcom/bb_sz/ndk/info/test/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/WifiInfo;->getIp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setIp(Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getWifiInfo()Lcom/bb_sz/ndk/info/test/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/WifiInfo;->getMac()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setMac(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SysHelper;->getWifiInfo()Lcom/bb_sz/ndk/info/test/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/WifiInfo;->getSsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setSsid(Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/bb_sz/ndk/info/SDK;->upload()V

    .line 107
    return-void
.end method

.method private toData(Ljava/lang/Object;)Ljava/lang/String;
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 199
    if-nez p1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-object v5

    .line 202
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 203
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 204
    .local v2, "fields":[Ljava/lang/reflect/Field;
    if-eqz v2, :cond_0

    .line 207
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 208
    .local v4, "sb":Ljava/lang/StringBuffer;
    array-length v6, v2

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v3, v2, v5

    .line 210
    .local v3, "item":Ljava/lang/reflect/Field;
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {v3, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 211
    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 212
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v7

    if-lez v7, :cond_2

    .line 213
    const-string v7, "&"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    :cond_2
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v3, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 221
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "item":Ljava/lang/reflect/Field;
    :cond_4
    const-string v5, "&t="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 222
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private upload()V
    .locals 5

    .prologue
    .line 226
    sget-boolean v1, Lcom/bb_sz/ndk/info/SDK;->debug:Z

    if-eqz v1, :cond_0

    const-string v1, "SDK"

    const-string v2, "upload "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/bb_sz/ndk/info/SDK;->deviceInfo:Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;

    invoke-direct {p0, v1}, Lcom/bb_sz/ndk/info/SDK;->toData(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "data":Ljava/lang/String;
    sget-boolean v1, Lcom/bb_sz/ndk/info/SDK;->debug:Z

    if-eqz v1, :cond_1

    const-string v1, "SDK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upload data is = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_1
    invoke-static {}, Lcom/bb_sz/ndk/Http;->getInstance()Lcom/bb_sz/ndk/Http;

    move-result-object v1

    const-string v2, "www.bb-sz.com"

    const-string v3, "/SL/add_device_info.php"

    const/16 v4, 0x50

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/bb_sz/ndk/Http;->post(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 230
    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;)V
    .locals 3
    .param p1, "context"    # Landroid/app/Activity;

    .prologue
    .line 46
    sget-boolean v0, Lcom/bb_sz/ndk/info/SDK;->debug:Z

    if-eqz v0, :cond_0

    const-string v0, "SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init context is Activity ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    instance-of v2, p1, Landroid/app/Activity;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/bb_sz/ndk/info/SDK;->context:Landroid/app/Activity;

    .line 48
    invoke-direct {p0}, Lcom/bb_sz/ndk/info/SDK;->initDeviceInfos()V

    .line 50
    return-void
.end method
