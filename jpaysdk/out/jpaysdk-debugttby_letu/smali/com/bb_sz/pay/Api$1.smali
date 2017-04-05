.class final Lcom/bb_sz/pay/Api$1;
.super Ljava/lang/Object;
.source "Api.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bb_sz/pay/Api;->charge(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jpay/sdk/IChargeResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$chargeResultCb:Lcom/jpay/sdk/IChargeResult;

.field final synthetic val$cpserverparam:Ljava/lang/String;

.field final synthetic val$feeDesc:Ljava/lang/String;

.field final synthetic val$feeName:Ljava/lang/String;

.field final synthetic val$price:Ljava/lang/String;

.field final synthetic val$uniqueid:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jpay/sdk/IChargeResult;)V
    .locals 0

    .prologue
    .line 88
    iput-object p1, p0, Lcom/bb_sz/pay/Api$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bb_sz/pay/Api$1;->val$price:Ljava/lang/String;

    iput-object p3, p0, Lcom/bb_sz/pay/Api$1;->val$uniqueid:Ljava/lang/String;

    iput-object p4, p0, Lcom/bb_sz/pay/Api$1;->val$cpserverparam:Ljava/lang/String;

    iput-object p5, p0, Lcom/bb_sz/pay/Api$1;->val$feeName:Ljava/lang/String;

    iput-object p6, p0, Lcom/bb_sz/pay/Api$1;->val$feeDesc:Ljava/lang/String;

    iput-object p7, p0, Lcom/bb_sz/pay/Api$1;->val$chargeResultCb:Lcom/jpay/sdk/IChargeResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 91
    iget-object v0, p0, Lcom/bb_sz/pay/Api$1;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bb_sz/pay/Api$1;->val$price:Ljava/lang/String;

    iget-object v2, p0, Lcom/bb_sz/pay/Api$1;->val$uniqueid:Ljava/lang/String;

    iget-object v3, p0, Lcom/bb_sz/pay/Api$1;->val$cpserverparam:Ljava/lang/String;

    iget-object v4, p0, Lcom/bb_sz/pay/Api$1;->val$feeName:Ljava/lang/String;

    iget-object v5, p0, Lcom/bb_sz/pay/Api$1;->val$feeDesc:Ljava/lang/String;

    iget-object v6, p0, Lcom/bb_sz/pay/Api$1;->val$chargeResultCb:Lcom/jpay/sdk/IChargeResult;

    invoke-static/range {v0 .. v6}, Lcom/bb_sz/pay/Api;->_charge(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jpay/sdk/IChargeResult;)V

    .line 92
    return-void
.end method
