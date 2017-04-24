.class public Lcom/bb_sz/pay/Main;
.super Ljava/lang/Object;
.source "Main.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 17
    const-string v0, "SDK"

    const-string v1, "onCreate "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-static {}, Lcom/bb_sz/ndk/info/SDK;->getInstance()Lcom/bb_sz/ndk/info/SDK;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bb_sz/ndk/info/SDK;->init(Landroid/app/Activity;)V

    .line 19
    invoke-static {p0}, Lcom/bb_sz/pay/Api;->initAct(Landroid/app/Activity;)V

    .line 20
    invoke-static {p0}, Lcom/bb_sz/pay/umeng/UMengUtil;->init(Landroid/content/Context;)V

    .line 21
    const-string v0, "{$FULLPAY$}"

    const-string v1, "{$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 22
    invoke-static {}, Lcom/bb_sz/pay/fullpay/FullPayManager;->getInstance()Lcom/bb_sz/pay/fullpay/FullPayManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bb_sz/pay/fullpay/FullPayManager;->init(Landroid/app/Activity;)V

    .line 23
    :cond_0
    return-void
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 43
    const-string v0, "{$FULLPAY$}"

    const-string v1, "{$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lcom/bb_sz/pay/fullpay/FullPayManager;->getInstance()Lcom/bb_sz/pay/fullpay/FullPayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bb_sz/pay/fullpay/FullPayManager;->onDestroy()V

    .line 45
    :cond_0
    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 27
    const-string v0, "{$FULLPAY$}"

    const-string v1, "{$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 28
    invoke-static {}, Lcom/bb_sz/pay/fullpay/FullPayManager;->getInstance()Lcom/bb_sz/pay/fullpay/FullPayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bb_sz/pay/fullpay/FullPayManager;->onPause()V

    .line 29
    :cond_0
    invoke-static {p0}, Lcom/bb_sz/pay/umeng/UMengUtil;->onPause(Landroid/content/Context;)V

    .line 30
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/bb_sz/pay/badge/BadgeUtil;->setBadgeCount(Landroid/content/Context;I)V

    .line 31
    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 35
    const-string v0, "{$FULLPAY$}"

    const-string v1, "{$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    invoke-static {}, Lcom/bb_sz/pay/fullpay/FullPayManager;->getInstance()Lcom/bb_sz/pay/fullpay/FullPayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bb_sz/pay/fullpay/FullPayManager;->onResume()V

    .line 37
    :cond_0
    invoke-static {p0}, Lcom/bb_sz/pay/umeng/UMengUtil;->onResume(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/bb_sz/pay/badge/BadgeUtil;->setBadgeCount(Landroid/content/Context;I)V

    .line 39
    return-void
.end method
