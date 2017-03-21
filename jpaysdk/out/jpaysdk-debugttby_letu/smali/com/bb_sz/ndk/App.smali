.class public Lcom/bb_sz/ndk/App;
.super Ljava/lang/Object;


# static fields
.field private static a:Z

.field private static b:Lcom/bb_sz/ndk/receiver/InstallReceiver;

.field public static debug:I

.field public static mContext:Landroid/content/Context;

.field public static mUID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-object v1, Lcom/bb_sz/ndk/App;->mContext:Landroid/content/Context;

    sput-object v1, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/bb_sz/ndk/App;->debug:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bb_sz/ndk/App;->a:Z

    sput-object v1, Lcom/bb_sz/ndk/App;->b:Lcom/bb_sz/ndk/receiver/InstallReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v2, 0x2

    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v0, ""

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, "unicode"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    move v1, v2

    :goto_0
    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_2

    const-string v0, "\\u"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x1

    aget-byte v0, v4, v0

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    :goto_1
    if-ge v0, v2, :cond_0

    const-string v6, "0"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    aget-byte v0, v4, v1

    and-int/lit16 v0, v0, 0xff

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v0

    :goto_2
    if-ge v0, v2, :cond_1

    const-string v7, "0"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_3
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static a([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/bb_sz/ndk/App;->a([BI)V

    return-void
.end method

.method public static a([BI)V
    .locals 4

    invoke-static {p0}, Lcom/bb_sz/ndk/App;->aa([B)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v1, Lcom/bb_sz/pay/b;

    invoke-direct {v1, v0}, Lcom/bb_sz/pay/b;-><init>(Ljava/lang/String;)V

    iget v0, v1, Lcom/bb_sz/pay/b;->a:I

    if-nez v0, :cond_0

    iget-object v0, v1, Lcom/bb_sz/pay/b;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    sget v0, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v0, :cond_2

    const-string v0, "SkyApp"

    const-string v2, "register InstallReceiver"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v0, Lcom/bb_sz/ndk/App;->b:Lcom/bb_sz/ndk/receiver/InstallReceiver;

    if-nez v0, :cond_3

    new-instance v0, Lcom/bb_sz/ndk/receiver/InstallReceiver;

    invoke-direct {v0}, Lcom/bb_sz/ndk/receiver/InstallReceiver;-><init>()V

    sput-object v0, Lcom/bb_sz/ndk/App;->b:Lcom/bb_sz/ndk/receiver/InstallReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v2, Lcom/bb_sz/ndk/App;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/bb_sz/ndk/App;->b:Lcom/bb_sz/ndk/receiver/InstallReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_3
    invoke-static {}, Lcom/bb_sz/ndk/a/b;->a()Lcom/bb_sz/ndk/a/b;

    move-result-object v0

    sget-object v2, Lcom/bb_sz/ndk/App;->mContext:Landroid/content/Context;

    iget-object v1, v1, Lcom/bb_sz/pay/b;->b:Ljava/util/List;

    invoke-virtual {v0, v2, v1}, Lcom/bb_sz/ndk/a/b;->a(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/bb_sz/ndk/c/a;->a()Lcom/bb_sz/ndk/c/a;

    move-result-object v1

    sget-object v2, Lcom/bb_sz/ndk/App;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/bb_sz/ndk/c/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static aa([B)Ljava/lang/String;
    .locals 12

    const/4 v4, 0x0

    const/16 v11, 0xd

    const/16 v10, 0xa

    const/4 v6, -0x1

    const/4 v1, 0x0

    sget v0, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v0, :cond_0

    const-string v2, "SkyApp"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "len:"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p0, :cond_3

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p0, :cond_1

    array-length v0, p0

    if-nez v0, :cond_4

    :cond_1
    move-object v0, v4

    :cond_2
    :goto_1
    return-object v0

    :cond_3
    array-length v0, p0

    goto :goto_0

    :cond_4
    const/4 v5, -0x2

    array-length v2, p0

    move v3, v1

    move v0, v6

    :goto_2
    if-ge v3, v2, :cond_10

    aget-byte v7, p0, v3

    if-ne v7, v11, :cond_5

    add-int/lit8 v7, v3, 0x1

    if-ge v7, v2, :cond_5

    add-int/lit8 v7, v3, 0x1

    aget-byte v7, p0, v7

    if-ne v7, v10, :cond_5

    add-int/lit8 v7, v3, 0x2

    if-ge v7, v2, :cond_5

    add-int/lit8 v7, v3, 0x2

    aget-byte v7, p0, v7

    if-ne v7, v11, :cond_5

    add-int/lit8 v7, v3, 0x3

    if-ge v7, v2, :cond_5

    add-int/lit8 v7, v3, 0x3

    aget-byte v7, p0, v7

    if-ne v7, v10, :cond_5

    if-ne v0, v6, :cond_6

    add-int/lit8 v0, v3, 0x3

    sget v7, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v7, :cond_5

    const-string v7, "SkyApp"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "start is "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    sget v5, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v5, :cond_7

    const-string v5, "SkyApp"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "end is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    if-gtz v3, :cond_f

    sget v3, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v3, :cond_8

    const-string v3, "SkyApp"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "end 2 is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    sub-int/2addr v2, v0

    sget v3, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v3, :cond_9

    const-string v3, "SkyApp"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "c len is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    if-lez v2, :cond_e

    new-array v3, v2, [B

    sget v5, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v5, :cond_a

    const-string v5, "SkyApp"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "con len is "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    invoke-static {p0, v0, v3, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v0, v3, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    sget v1, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v1, :cond_b

    const-string v1, "SkyApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":-1-:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    if-eqz v0, :cond_2

    :cond_c
    :goto_6
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_d
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v1, :cond_c

    const-string v1, "SkyApp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ":--:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    move-object v0, v4

    goto :goto_5

    :cond_e
    move-object v0, v4

    goto/16 :goto_1

    :cond_f
    move v2, v3

    goto/16 :goto_4

    :cond_10
    move v3, v5

    goto/16 :goto_3
.end method

.method protected static attachBaseContext(Landroid/content/Context;)V
    .locals 4

    sput-object p0, Lcom/bb_sz/ndk/App;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/bb_sz/ndk/App;->b(Landroid/content/Context;)V

    sget v0, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v0, :cond_0

    const-string v0, "SkyApp"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/bb_sz/ndk/App;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/bb_sz/ndk/receiver/CSReceiver;

    invoke-direct {v1}, Lcom/bb_sz/ndk/receiver/CSReceiver;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "cs_notify_server"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v0, "jpaysdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 4

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "jpay_uid.txt"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    new-instance v0, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sput-object v0, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_5

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&imei="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    :cond_2
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&imsi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&sdk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    sget-object v0, Lcom/bb_sz/ndk/App;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    const-string v0, ""

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&macAddress="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&ssid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bb_sz/ndk/App;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    sget-object v0, Lcom/bb_sz/ndk/App;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&android_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    sput-object v0, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    goto/16 :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&imei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public static native http(Ljava/lang/String;ILjava/lang/String;)[B
.end method

.method public static onCreate(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/bb_sz/ndk/App;->attachBaseContext(Landroid/content/Context;)V

    sget-boolean v0, Lcom/bb_sz/ndk/App;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bb_sz/ndk/App;->a:Z

    sget-object v0, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bb_sz/ndk/App;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bb_sz/ndk/b/a;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/bb_sz/ndk/App;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bb_sz/ndk/d/a;->a(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static native post(Ljava/lang/String;ILjava/lang/String;)V
.end method
