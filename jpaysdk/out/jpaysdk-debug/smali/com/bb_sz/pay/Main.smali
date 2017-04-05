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
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 15
    invoke-static {p0}, Lcom/bb_sz/pay/umeng/UMengUtil;->init(Landroid/content/Context;)V

    .line 16
    return-void
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 32
    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 20
    invoke-static {p0}, Lcom/bb_sz/pay/umeng/UMengUtil;->onPause(Landroid/content/Context;)V

    .line 21
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/bb_sz/pay/badge/BadgeUtil;->setBadgeCount(Landroid/content/Context;I)V

    .line 22
    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 26
    invoke-static {p0}, Lcom/bb_sz/pay/umeng/UMengUtil;->onResume(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/bb_sz/pay/badge/BadgeUtil;->setBadgeCount(Landroid/content/Context;I)V

    .line 28
    return-void
.end method
