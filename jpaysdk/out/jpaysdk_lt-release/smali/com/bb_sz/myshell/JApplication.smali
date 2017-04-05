.class public Lcom/bb_sz/myshell/JApplication;
.super Landroid/app/Application;
.source "JApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 16
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 17
    invoke-static {p0}, Lcom/bb_sz/pay/Api;->init(Landroid/content/Context;)I

    .line 18
    return-void
.end method
