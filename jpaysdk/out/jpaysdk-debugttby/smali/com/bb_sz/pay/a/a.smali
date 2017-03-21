.class public final Lcom/bb_sz/pay/a/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Landroid/content/Context;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/bb_sz/pay/a/a;->b:Z

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 3

    sput-object p0, Lcom/bb_sz/pay/a/a;->a:Landroid/content/Context;

    invoke-static {p0}, Lcom/bb_sz/pay/a/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "{$UMKEY$}"

    const-string v1, "{$CID$}"

    new-instance v2, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;

    invoke-direct {v2, p0, v0, v1}, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/umeng/analytics/MobclickAgent;->startWithConfigure(Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->setDebugMode(Z)V

    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->init(Landroid/content/Context;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bb_sz/pay/a/a;->b:Z

    sget v0, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v0, :cond_0

    const-string v0, "SKYUM"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic a()Z
    .locals 1

    sget-boolean v0, Lcom/bb_sz/pay/a/a;->b:Z

    return v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/bb_sz/pay/a/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->onResume(Landroid/content/Context;)V

    sget v0, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v0, :cond_0

    const-string v0, "SKYUM"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static c(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/bb_sz/pay/a/a;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->onPause(Landroid/content/Context;)V

    sget v0, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v0, :cond_0

    const-string v0, "SKYUM"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static d(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/bb_sz/pay/a/b;

    invoke-direct {v1, p0}, Lcom/bb_sz/pay/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static e(Landroid/content/Context;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "asdfsdfasdf"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "asdfs"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    sget v1, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v1, :cond_1

    const-string v1, "SKYUM"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "isUpload:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
