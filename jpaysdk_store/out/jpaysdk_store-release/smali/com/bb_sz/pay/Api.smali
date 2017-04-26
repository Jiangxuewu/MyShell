.class public Lcom/bb_sz/pay/Api;
.super Ljava/lang/Object;
.source "Api.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SkyApi"

.field private static appName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _charge(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bb_sz/pay/IChargeResult;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "price"    # Ljava/lang/String;
    .param p2, "uniqueid"    # Ljava/lang/String;
    .param p3, "cpserverparam"    # Ljava/lang/String;
    .param p4, "feeName"    # Ljava/lang/String;
    .param p5, "feeDesc"    # Ljava/lang/String;
    .param p6, "chargeResultCb"    # Lcom/bb_sz/pay/IChargeResult;

    .prologue
    .line 88
    if-eqz p6, :cond_0

    .line 89
    const/4 v0, 0x0

    const-string v1, "free"

    invoke-interface {p6, v0, v1}, Lcom/bb_sz/pay/IChargeResult;->onChargeResult(ILjava/lang/String;)V

    .line 90
    :cond_0
    return-void
.end method

.method public static charge(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bb_sz/pay/IChargeResult;)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "price"    # Ljava/lang/String;
    .param p2, "uniqueid"    # Ljava/lang/String;
    .param p3, "cpserverparam"    # Ljava/lang/String;
    .param p4, "feeName"    # Ljava/lang/String;
    .param p5, "chargeResultCb"    # Lcom/bb_sz/pay/IChargeResult;

    .prologue
    .line 103
    sget-object v5, Lcom/bb_sz/pay/Api;->appName:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/bb_sz/pay/Api;->charge(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bb_sz/pay/IChargeResult;)V

    .line 104
    return-void
.end method

.method public static charge(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bb_sz/pay/IChargeResult;)V
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "price"    # Ljava/lang/String;
    .param p2, "uniqueid"    # Ljava/lang/String;
    .param p3, "cpserverparam"    # Ljava/lang/String;
    .param p4, "feeName"    # Ljava/lang/String;
    .param p5, "feeDesc"    # Ljava/lang/String;
    .param p6, "chargeResultCb"    # Lcom/bb_sz/pay/IChargeResult;

    .prologue
    .line 79
    new-instance v8, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v8, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/bb_sz/pay/Api$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bb_sz/pay/Api$1;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bb_sz/pay/IChargeResult;)V

    invoke-virtual {v8, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    return-void
.end method

.method public static charge(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bb_sz/pay/IChargeResult;)V
    .locals 7
    .param p0, "price"    # Ljava/lang/String;
    .param p1, "uniqueid"    # Ljava/lang/String;
    .param p2, "cpserverparam"    # Ljava/lang/String;
    .param p3, "feeName"    # Ljava/lang/String;
    .param p4, "appName"    # Ljava/lang/String;
    .param p5, "chargeResultCb"    # Lcom/bb_sz/pay/IChargeResult;

    .prologue
    .line 116
    sget-object v0, Lcom/bb_sz/pay/umeng/UMengUtil;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bb_sz/pay/umeng/UMengUtil;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lcom/bb_sz/pay/umeng/UMengUtil;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/bb_sz/pay/Api;->charge(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bb_sz/pay/IChargeResult;)V

    .line 119
    :cond_0
    return-void
.end method

.method public static getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    sget-object v0, Lcom/bb_sz/pay/Api;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    const-string v0, "5120"

    const-string v1, "pxsk120"

    invoke-static {p0, v0, v1}, Lcom/bb_sz/pay/Api;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cid"    # Ljava/lang/String;
    .param p2, "vcode"    # Ljava/lang/String;

    .prologue
    .line 32
    const/4 v1, -0x1

    .line 33
    .local v1, "i":I
    invoke-static {p0}, Lcom/bb_sz/ndk/App;->onCreate(Landroid/content/Context;)V

    .line 42
    const-string v4, "{$BUGLYAPPID$}"

    const-string v5, "{$"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 43
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/bugly/crashreport/CrashReport;->initCrashReport(Landroid/content/Context;)V

    .line 44
    const-string v4, "SkyApi"

    const-string v5, "add bugly."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 50
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 52
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/16 v4, 0x80

    .line 53
    :try_start_0
    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 52
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 54
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/bb_sz/pay/Api;->appName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    const-string v4, "SkyApi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Api init appName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/bb_sz/pay/Api;->appName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static initAct(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 131
    return-void
.end method

.method private static isFree(Landroid/app/Activity;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method
