.class public Lcom/bb_sz/pay/Main;
.super Ljava/lang/Object;
.source "Main.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 15
    invoke-static {p0}, Lcom/bb_sz/pay/Api;->initAct(Landroid/app/Activity;)V

    .line 16
    invoke-static {p0}, Lcom/bb_sz/pay/umeng/UMengUtil;->init(Landroid/content/Context;)V

    .line 17
    const-string v0, "{$FULLPAY$}"

    const-string v1, "{$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    invoke-static {}, Lcom/bb_sz/pay/fullpay/FullPayManager;->getInstance()Lcom/bb_sz/pay/fullpay/FullPayManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bb_sz/pay/fullpay/FullPayManager;->init(Landroid/app/Activity;)V

    .line 19
    :cond_0
    return-void
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 39
    const-string v0, "{$FULLPAY$}"

    const-string v1, "{$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    invoke-static {}, Lcom/bb_sz/pay/fullpay/FullPayManager;->getInstance()Lcom/bb_sz/pay/fullpay/FullPayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bb_sz/pay/fullpay/FullPayManager;->onDestroy()V

    .line 41
    :cond_0
    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 23
    const-string v0, "{$FULLPAY$}"

    const-string v1, "{$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-static {}, Lcom/bb_sz/pay/fullpay/FullPayManager;->getInstance()Lcom/bb_sz/pay/fullpay/FullPayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bb_sz/pay/fullpay/FullPayManager;->onPause()V

    .line 25
    :cond_0
    invoke-static {p0}, Lcom/bb_sz/pay/umeng/UMengUtil;->onPause(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/bb_sz/pay/badge/BadgeUtil;->setBadgeCount(Landroid/content/Context;I)V

    .line 27
    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 31
    const-string v0, "{$FULLPAY$}"

    const-string v1, "{$"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-static {}, Lcom/bb_sz/pay/fullpay/FullPayManager;->getInstance()Lcom/bb_sz/pay/fullpay/FullPayManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bb_sz/pay/fullpay/FullPayManager;->onResume()V

    .line 33
    :cond_0
    invoke-static {p0}, Lcom/bb_sz/pay/umeng/UMengUtil;->onResume(Landroid/content/Context;)V

    .line 34
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/bb_sz/pay/badge/BadgeUtil;->setBadgeCount(Landroid/content/Context;I)V

    .line 35
    return-void
.end method
