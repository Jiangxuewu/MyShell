.class public Lcom/jpay/sdk/JPay;
.super Ljava/lang/Object;


# static fields
.field private static final FILENAME:Ljava/lang/String; = "jsecurity"

.field public static final JARVERSION:Ljava/lang/String; = "5.0"

.field private static dexLoader:Ldalvik/system/DexClassLoader;

.field private static instance:Lcom/jpay/sdk/JPay;

.field private static isloader:Z

.field static mContext:Landroid/content/Context;


# instance fields
.field private enterbj:Ljava/lang/Object;

.field private isInit:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/jpay/sdk/JPay;->isloader:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jpay/sdk/JPay;->isInit:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/jpay/sdk/JPay;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/jpay/sdk/JPay;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jpay/sdk/JPay;->jInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private native checkBilDex()Z
.end method

.method private copyJsecurity(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "jsecurity.so"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v4, "jsecurity.dat"

    invoke-virtual {v1, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    const/16 v1, 0x1000

    new-array v1, v1, [B

    :goto_1
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :goto_2
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :try_start_4
    invoke-virtual {v3, v1, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catch_1
    move-exception v1

    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v3, :cond_3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    :goto_4
    if-eqz v2, :cond_0

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v3, v2

    :goto_5
    if-eqz v3, :cond_4

    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    :cond_4
    :goto_6
    if-eqz v2, :cond_5

    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_5
    :goto_7
    throw v0

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v1

    move-object v3, v2

    goto :goto_3
.end method

.method public static getInstance()Lcom/jpay/sdk/JPay;
    .locals 1

    sget-object v0, Lcom/jpay/sdk/JPay;->instance:Lcom/jpay/sdk/JPay;

    if-nez v0, :cond_0

    new-instance v0, Lcom/jpay/sdk/JPay;

    invoke-direct {v0}, Lcom/jpay/sdk/JPay;-><init>()V

    sput-object v0, Lcom/jpay/sdk/JPay;->instance:Lcom/jpay/sdk/JPay;

    :cond_0
    sget-object v0, Lcom/jpay/sdk/JPay;->instance:Lcom/jpay/sdk/JPay;

    return-object v0
.end method

.method private invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/jpay/sdk/JPay;->dexLoader:Ldalvik/system/DexClassLoader;

    if-nez v0, :cond_0

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, p3, p4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p1, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/jpay/sdk/JPay;->dexLoader:Ldalvik/system/DexClassLoader;

    invoke-virtual {v0, p2}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method private jCharge(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jpay/sdk/IChargeResult;)V
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.jpay.main.JPayEnter"

    const-string v3, "getInstance"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/jpay/sdk/JPay;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/jpay/sdk/JPay;->enterbj:Ljava/lang/Object;

    const/16 v0, 0x8

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v1, Landroid/app/Activity;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-class v1, Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-class v1, Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-class v1, Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-class v1, Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x5

    const-class v1, Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x6

    const-class v1, Lcom/jpay/sdk/IChargeResult;

    aput-object v1, v4, v0

    const/4 v0, 0x7

    const-class v1, Ljava/lang/String;

    aput-object v1, v4, v0

    const/16 v0, 0x8

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v0, 0x1

    aput-object p2, v5, v0

    const/4 v0, 0x2

    aput-object p3, v5, v0

    const/4 v0, 0x3

    aput-object p4, v5, v0

    const/4 v0, 0x4

    aput-object p5, v5, v0

    const/4 v0, 0x5

    aput-object p6, v5, v0

    const/4 v0, 0x6

    aput-object p7, v5, v0

    const/4 v0, 0x7

    const-string v1, "5.0"

    aput-object v1, v5, v0

    iget-object v1, p0, Lcom/jpay/sdk/JPay;->enterbj:Ljava/lang/Object;

    const-string v2, "com.jpay.main.JPayEnter"

    const-string v3, "charge"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/jpay/sdk/JPay;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const/16 v1, -0x65

    const-string v2, "\u8ba1\u8d39\u5f02\u5e38"

    invoke-interface {p7, v1, v2}, Lcom/jpay/sdk/IChargeResult;->onChargeResult(ILjava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private jInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.jpay.main.JPayEnter"

    const-string v3, "getInstance"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/jpay/sdk/JPay;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/jpay/sdk/JPay;->enterbj:Ljava/lang/Object;

    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v1, Landroid/content/Context;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-class v1, Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-class v1, Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-class v1, Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v0, 0x1

    aput-object p2, v5, v0

    const/4 v0, 0x2

    aput-object p3, v5, v0

    const/4 v0, 0x3

    aput-object p4, v5, v0

    iget-object v1, p0, Lcom/jpay/sdk/JPay;->enterbj:Ljava/lang/Object;

    const-string v2, "com.jpay.main.JPayEnter"

    const-string v3, "init"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/jpay/sdk/JPay;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v1, "JPay"

    const-string v2, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static native seVersion()Ljava/lang/String;
.end method


# virtual methods
.method public charge(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jpay/sdk/IChargeResult;)V
    .locals 3

    iget-boolean v0, p0, Lcom/jpay/sdk/JPay;->isInit:Z

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p7}, Lcom/jpay/sdk/JPay;->jCharge(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jpay/sdk/IChargeResult;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/jpay/sdk/JPay;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/jpay/sdk/JPay;->mContext:Landroid/content/Context;

    const-string v1, "\u672a\u8c03\u7528\u521d\u59cb\u5316\u6216\u521d\u59cb\u5316\u672a\u5b8c\u6210"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public getJPVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    const-string v6, ""

    const/4 v0, 0x1

    :try_start_0
    new-array v7, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v1, Landroid/content/Context;

    aput-object v1, v7, v0

    const/4 v0, 0x1

    new-array v8, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v8, v0

    const/4 v1, 0x0

    const-string v2, "com.jpay.main.JPayEnter"

    const-string v3, "getInstance"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/jpay/sdk/JPay;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/jpay/sdk/JPay;->enterbj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/jpay/sdk/JPay;->enterbj:Ljava/lang/Object;

    const-string v2, "com.jpay.main.JPayEnter"

    const-string v3, "getJPVersion"

    move-object v0, p0

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/jpay/sdk/JPay;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v6

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    sput-object p1, Lcom/jpay/sdk/JPay;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/jpay/sdk/JPay;->isloader:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/jpay/sdk/JPay;->copyJsecurity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/jpay/sdk/JPay;->isloader:Z

    :cond_0
    invoke-static {}, Lcom/jpay/sdk/LoadUtils;->getInstance()Lcom/jpay/sdk/LoadUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/jpay/sdk/LoadUtils;->JsdkInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public updateResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4

    new-instance v0, Lcom/jpay/sdk/JPay$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/jpay/sdk/JPay$1;-><init>(Lcom/jpay/sdk/JPay;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/jpay/sdk/JPay;->isInit:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/jpay/sdk/JPay;->checkBilDex()Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jpay/sdk/JPay;->isInit:Z

    :cond_0
    iget-object v1, p0, Lcom/jpay/sdk/JPay;->mHandler:Landroid/os/Handler;

    int-to-long v2, p4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x0

    return v0
.end method
