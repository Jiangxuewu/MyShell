.class public Lcom/bb_sz/pay/umeng/UMengUtil;
.super Ljava/lang/Object;
.source "UMengUtil.java"


# static fields
.field private static isInit:Z

.field public static mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bb_sz/pay/umeng/UMengUtil;->isInit:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 16
    sget-boolean v0, Lcom/bb_sz/pay/umeng/UMengUtil;->isInit:Z

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    sput-object p0, Lcom/bb_sz/pay/umeng/UMengUtil;->mContext:Landroid/content/Context;

    .line 23
    invoke-static {p0}, Lcom/bb_sz/pay/umeng/UMengUtil;->isUpload(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 24
    const-string v0, "{$UMKEY$}"

    .line 25
    .local v0, "appkey":Ljava/lang/String;
    const-string v1, "{$CID$}"

    .line 26
    .local v1, "channelId":Ljava/lang/String;
    new-instance v2, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;

    invoke-direct {v2, p0, v0, v1}, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .local v2, "config":Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;
    invoke-static {v2}, Lcom/umeng/analytics/MobclickAgent;->startWithConfigure(Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;)V

    .line 28
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/umeng/analytics/MobclickAgent;->setDebugMode(Z)V

    .line 29
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->init(Landroid/content/Context;)V

    .line 30
    const/4 v3, 0x1

    sput-boolean v3, Lcom/bb_sz/pay/umeng/UMengUtil;->isInit:Z

    .line 31
    sget v3, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v3, :cond_0

    const-string v3, "SKYUM"

    const-string v4, "init"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .end local v0    # "appkey":Ljava/lang/String;
    .end local v1    # "channelId":Ljava/lang/String;
    .end local v2    # "config":Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;
    :cond_0
    return-void
.end method

.method private static isUpload(Landroid/content/Context;)Z
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 65
    const/4 v0, 0x0

    .line 67
    .local v0, "isUpload":Z
    :try_start_0
    const-string v2, "asdfsdfasdf"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "asdfs"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 70
    :goto_0
    sget v1, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v1, :cond_0

    const-string v1, "SKYUM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isUpload:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    return v0

    :cond_1
    move v0, v1

    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static onPause(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/bb_sz/pay/umeng/UMengUtil;->isUpload(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->onPause(Landroid/content/Context;)V

    .line 45
    sget v0, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v0, :cond_0

    const-string v0, "SKYUM"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    :cond_0
    return-void
.end method

.method public static onResume(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-static {p0}, Lcom/bb_sz/pay/umeng/UMengUtil;->isUpload(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->onResume(Landroid/content/Context;)V

    .line 38
    sget v0, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v0, :cond_0

    const-string v0, "SKYUM"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :cond_0
    return-void
.end method

.method public static refresh(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/bb_sz/pay/umeng/UMengUtil$1;

    invoke-direct {v1, p0}, Lcom/bb_sz/pay/umeng/UMengUtil$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 62
    return-void
.end method
