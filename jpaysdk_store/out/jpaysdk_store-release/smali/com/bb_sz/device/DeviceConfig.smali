.class public Lcom/bb_sz/device/DeviceConfig;
.super Ljava/lang/Object;
.source "DeviceConfig.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "paramContext"    # Landroid/content/Context;
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

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

.method public static getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 152
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 155
    :goto_0
    return-object v0

    .line 153
    :catch_0
    move-exception v0

    .line 155
    const-string v0, "Unknown"

    goto :goto_0
.end method

.method public static getAppVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 144
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :goto_0
    return-object v0

    .line 145
    :catch_0
    move-exception v0

    .line 147
    const-string v0, "Unknown"

    goto :goto_0
.end method

.method public static getCPU()Ljava/lang/String;
    .locals 7

    .prologue
    .line 80
    const/4 v4, 0x0

    .line 82
    .local v4, "str1":Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/FileReader;

    const-string v5, "/proc/cpuinfo"

    invoke-direct {v2, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    .local v2, "localFileReader":Ljava/io/FileReader;
    :try_start_1
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v5, 0x400

    invoke-direct {v0, v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 85
    .local v0, "localBufferedReader":Ljava/io/BufferedReader;
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 86
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 87
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V

    .line 88
    if-eqz v4, :cond_0

    .line 89
    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 90
    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .line 99
    .end local v0    # "localBufferedReader":Ljava/io/BufferedReader;
    .local v3, "localIOException":Ljava/io/IOException;
    :goto_0
    return-object v4

    .line 91
    .end local v3    # "localIOException":Ljava/io/IOException;
    :catch_0
    move-exception v3

    .line 92
    .restart local v3    # "localIOException":Ljava/io/IOException;
    :try_start_2
    const-string v5, ""

    const-string v6, "Could not read from file /proc/cpuinfo"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    const-string v4, ""
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 95
    .end local v2    # "localFileReader":Ljava/io/FileReader;
    .end local v3    # "localIOException":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 96
    .local v1, "localFileNotFoundException":Ljava/io/FileNotFoundException;
    const-string v5, ""

    const-string v6, "Could not open file /proc/cpuinfo"

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    const-string v4, ""

    goto :goto_0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 54
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 55
    .local v1, "localTelephonyManager":Landroid/telephony/TelephonyManager;
    if-nez v1, :cond_1

    .line 56
    const-string v3, ""

    const-string v4, "No IMEI."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string v2, ""

    .line 76
    :cond_0
    :goto_0
    return-object v2

    .line 60
    :cond_1
    :try_start_0
    const-string v3, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v3}, Lcom/bb_sz/device/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 61
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "str1":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    const-string v3, ""

    const-string v4, "No IMEI."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-static {p0}, Lcom/bb_sz/device/DeviceConfig;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 65
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    const-string v3, ""

    const-string v4, "Failed to take mac as IMEI. Try to use Secure.ANDROID_ID instead."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    const-string v3, ""

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDeviceId: Secure.ANDROID_ID: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 73
    .end local v2    # "str1":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "localException":Ljava/lang/Exception;
    const-string v3, ""

    const-string v4, "No IMEI."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    .end local v0    # "localException":Ljava/lang/Exception;
    :cond_2
    const-string v2, ""

    goto :goto_0
.end method

.method public static getDeviceIdMD5(Landroid/content/Context;)Ljava/lang/String;
    .locals 7
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 244
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 245
    .local v2, "localMessageDigest":Ljava/security/MessageDigest;
    invoke-static {p0}, Lcom/bb_sz/device/DeviceConfig;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 246
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    .line 247
    .local v0, "arrayOfByte":[B
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 248
    .local v4, "localStringBuffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .line 249
    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-lt v1, v5, :cond_0

    .line 250
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    .line 256
    .end local v0    # "arrayOfByte":[B
    .end local v1    # "i":I
    .end local v2    # "localMessageDigest":Ljava/security/MessageDigest;
    .end local v4    # "localStringBuffer":Ljava/lang/StringBuffer;
    :goto_1
    return-object v5

    .line 251
    .restart local v0    # "arrayOfByte":[B
    .restart local v1    # "i":I
    .restart local v2    # "localMessageDigest":Ljava/security/MessageDigest;
    .restart local v4    # "localStringBuffer":Ljava/lang/StringBuffer;
    :cond_0
    aget-byte v5, v0, v1

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    .end local v0    # "arrayOfByte":[B
    .end local v1    # "i":I
    .end local v2    # "localMessageDigest":Ljava/security/MessageDigest;
    .end local v4    # "localStringBuffer":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v3

    .line 254
    .local v3, "localNoSuchAlgorithmException":Ljava/security/NoSuchAlgorithmException;
    const-string v5, ""

    const-string v6, "getMD5 error"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 256
    const-string v5, ""

    goto :goto_1
.end method

.method private static getLocale(Landroid/content/Context;)Ljava/util/Locale;
    .locals 5
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 172
    const/4 v2, 0x0

    .line 174
    .local v2, "localLocale":Ljava/util/Locale;
    :try_start_0
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 175
    .local v0, "localConfiguration":Landroid/content/res/Configuration;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    .line 176
    if-eqz v0, :cond_0

    .line 177
    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 178
    :cond_0
    if-nez v2, :cond_1

    .line 179
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 183
    .end local v0    # "localConfiguration":Landroid/content/res/Configuration;
    :cond_1
    :goto_0
    return-object v2

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "localException":Ljava/lang/Exception;
    const-string v3, ""

    const-string v4, "fail to read user config locale"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getLocaleInfo(Landroid/content/Context;)[Ljava/lang/String;
    .locals 5
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 187
    const/4 v3, 0x2

    new-array v0, v3, [Ljava/lang/String;

    .line 189
    .local v0, "arrayOfString":[Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/bb_sz/device/DeviceConfig;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    .line 190
    .local v2, "localLocale":Ljava/util/Locale;
    if-eqz v2, :cond_0

    .line 191
    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 192
    const/4 v3, 0x1

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 194
    :cond_0
    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 195
    const/4 v3, 0x0

    const-string v4, "Unknown"

    aput-object v4, v0, v3

    .line 196
    :cond_1
    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 197
    const/4 v3, 0x1

    const-string v4, "Unknown"

    aput-object v4, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .end local v2    # "localLocale":Ljava/util/Locale;
    :cond_2
    :goto_0
    return-object v0

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "localException":Ljava/lang/Exception;
    const-string v3, ""

    const-string v4, "error in getLocaleInfo"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 40
    :try_start_0
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 41
    .local v1, "localWifiManager":Landroid/net/wifi/WifiManager;
    const-string v2, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {p0, v2}, Lcom/bb_sz/device/DeviceConfig;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v2

    .line 50
    .end local v1    # "localWifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return-object v2

    .line 44
    .restart local v1    # "localWifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    const-string v2, ""

    const-string v3, "Could not get mac address.[no permission android.permission.ACCESS_WIFI_STATE"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v1    # "localWifiManager":Landroid/net/wifi/WifiManager;
    :goto_1
    const-string v2, ""

    goto :goto_0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "localException":Ljava/lang/Exception;
    const-string v2, ""

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

.method public static getNetworkAccessMode(Landroid/content/Context;)[Ljava/lang/String;
    .locals 7
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 206
    const/4 v4, 0x2

    new-array v0, v4, [Ljava/lang/String;

    const-string v4, "Unknown"

    aput-object v4, v0, v5

    const-string v4, "Unknown"

    aput-object v4, v0, v6

    .line 208
    .local v0, "arrayOfString":[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 209
    const/4 v4, 0x0

    const-string v5, "Unknown"

    aput-object v5, v0, v4

    .line 230
    :cond_0
    :goto_0
    return-object v0

    .line 212
    :cond_1
    const-string v4, "connectivity"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 213
    .local v1, "localConnectivityManager":Landroid/net/ConnectivityManager;
    if-nez v1, :cond_2

    .line 214
    const/4 v4, 0x0

    const-string v5, "Unknown"

    aput-object v5, v0, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    .end local v1    # "localConnectivityManager":Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v2

    .line 228
    .local v2, "localException":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 217
    .end local v2    # "localException":Ljava/lang/Exception;
    .restart local v1    # "localConnectivityManager":Landroid/net/ConnectivityManager;
    :cond_2
    const/4 v4, 0x1

    :try_start_1
    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_3

    .line 218
    const/4 v4, 0x0

    const-string v5, "Wi-Fi"

    aput-object v5, v0, v4

    goto :goto_0

    .line 221
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 222
    .local v3, "localNetworkInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v4, v5, :cond_0

    .line 223
    const/4 v4, 0x0

    const-string v5, "2G/3G"

    aput-object v5, v0, v4

    .line 224
    const/4 v4, 0x1

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static getOperator(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 235
    :try_start_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 239
    :goto_0
    return-object v1

    .line 236
    :catch_0
    move-exception v0

    .line 237
    .local v0, "localException":Ljava/lang/Exception;
    const-string v1, ""

    const-string v2, "read carrier fail"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 239
    const-string v1, "Unknown"

    goto :goto_0
.end method

.method public static getResolution(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    const/4 v7, -0x1

    .line 117
    const/4 v0, -0x1

    .line 118
    .local v0, "i":I
    const/4 v1, -0x1

    .line 119
    .local v1, "j":I
    :try_start_0
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 120
    .local v2, "localDisplayMetrics":Landroid/util/DisplayMetrics;
    const-string v6, "window"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v6, v6, 0x2000

    if-nez v6, :cond_2

    .line 122
    const-string v6, "noncompatWidthPixels"

    invoke-static {v2, v6}, Lcom/bb_sz/device/DeviceConfig;->reflectMetrics(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v1

    .line 123
    const-string v6, "noncompatHeightPixels"

    invoke-static {v2, v6}, Lcom/bb_sz/device/DeviceConfig;->reflectMetrics(Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .line 124
    if-eq v0, v7, :cond_0

    if-ne v1, v7, :cond_1

    .line 125
    :cond_0
    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 126
    iget v0, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 128
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 129
    .local v4, "localStringBuffer":Ljava/lang/StringBuffer;
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 130
    const-string v6, "*"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 132
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 138
    .end local v2    # "localDisplayMetrics":Landroid/util/DisplayMetrics;
    .end local v4    # "localStringBuffer":Ljava/lang/StringBuffer;
    :goto_0
    return-object v5

    .line 135
    :catch_0
    move-exception v3

    .line 136
    .local v3, "localException":Ljava/lang/Exception;
    const-string v6, ""

    const-string v7, "read resolution fail"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    .end local v3    # "localException":Ljava/lang/Exception;
    :cond_2
    const-string v5, "Unknown"

    goto :goto_0
.end method

.method public static getTimeZone(Landroid/content/Context;)I
    .locals 4
    .param p0, "paramContext"    # Landroid/content/Context;

    .prologue
    .line 161
    :try_start_0
    invoke-static {p0}, Lcom/bb_sz/device/DeviceConfig;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    .line 162
    .local v0, "localCalendar":Ljava/util/Calendar;
    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    const v3, 0x36ee80

    div-int/2addr v2, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    .end local v0    # "localCalendar":Ljava/util/Calendar;
    :goto_0
    return v2

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, "localException":Ljava/lang/Exception;
    const-string v2, ""

    const-string v3, "error in getTimeZone"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    .end local v1    # "localException":Ljava/lang/Exception;
    :cond_0
    const/16 v2, 0x8

    goto :goto_0
.end method

.method private static reflectMetrics(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 4
    .param p0, "paramObject"    # Ljava/lang/Object;
    .param p1, "paramString"    # Ljava/lang/String;

    .prologue
    .line 104
    :try_start_0
    const-class v3, Landroid/util/DisplayMetrics;

    invoke-virtual {v3, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 105
    .local v2, "localField":Ljava/lang/reflect/Field;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 106
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 111
    .end local v2    # "localField":Ljava/lang/reflect/Field;
    :goto_0
    return v0

    .line 108
    :catch_0
    move-exception v1

    .line 109
    .local v1, "localException":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 111
    const/4 v0, -0x1

    goto :goto_0
.end method
