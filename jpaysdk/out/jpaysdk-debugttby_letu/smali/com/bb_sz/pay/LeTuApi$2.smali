.class final Lcom/bb_sz/pay/LeTuApi$2;
.super Ljava/lang/Object;
.source "LeTuApi.java"

# interfaces
.implements Lcom/jpay/sdk/IChargeResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bb_sz/pay/LeTuApi;->_charge(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jpay/sdk/IChargeResult;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$chargeResultCb:Lcom/jpay/sdk/IChargeResult;

.field final synthetic val$feeName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jpay/sdk/IChargeResult;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/bb_sz/pay/LeTuApi$2;->val$chargeResultCb:Lcom/jpay/sdk/IChargeResult;

    iput-object p2, p0, Lcom/bb_sz/pay/LeTuApi$2;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/bb_sz/pay/LeTuApi$2;->val$feeName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChargeResult(ILjava/lang/String;)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 69
    const-string v0, "SKYLT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Jpay First pay, result i = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", s = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    if-nez p1, :cond_0

    .line 71
    iget-object v0, p0, Lcom/bb_sz/pay/LeTuApi$2;->val$chargeResultCb:Lcom/jpay/sdk/IChargeResult;

    invoke-interface {v0, p1, p2}, Lcom/jpay/sdk/IChargeResult;->onChargeResult(ILjava/lang/String;)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/bb_sz/pay/LeTuApi$2;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bb_sz/pay/LeTuApi$2;->val$feeName:Ljava/lang/String;

    iget-object v2, p0, Lcom/bb_sz/pay/LeTuApi$2;->val$chargeResultCb:Lcom/jpay/sdk/IChargeResult;

    invoke-static {v0, v1, v2}, Lcom/bb_sz/pay/LeTuApi;->charge(Landroid/app/Activity;Ljava/lang/String;Lcom/jpay/sdk/IChargeResult;)I

    goto :goto_0
.end method
