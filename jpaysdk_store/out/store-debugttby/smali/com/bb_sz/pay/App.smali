.class public Lcom/bb_sz/pay/App;
.super Landroid/app/Application;
.source "App.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 14
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 15
    invoke-static {p0}, Lcom/bb_sz/pay/Api;->init(Landroid/content/Context;)I

    .line 16
    return-void
.end method
