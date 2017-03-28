.class final Lcom/bb_sz/pay/LeTuApi$1;
.super Landroid/os/Handler;
.source "LeTuApi.java"


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

.field final synthetic val$cpserverparam:Ljava/lang/String;

.field final synthetic val$feeDesc:Ljava/lang/String;

.field final synthetic val$feeName:Ljava/lang/String;

.field final synthetic val$price:Ljava/lang/String;

.field final synthetic val$uniqueid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jpay/sdk/IChargeResult;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/bb_sz/pay/LeTuApi$1;->val$chargeResultCb:Lcom/jpay/sdk/IChargeResult;

    iput-object p2, p0, Lcom/bb_sz/pay/LeTuApi$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/bb_sz/pay/LeTuApi$1;->val$price:Ljava/lang/String;

    iput-object p4, p0, Lcom/bb_sz/pay/LeTuApi$1;->val$uniqueid:Ljava/lang/String;

    iput-object p5, p0, Lcom/bb_sz/pay/LeTuApi$1;->val$cpserverparam:Ljava/lang/String;

    iput-object p6, p0, Lcom/bb_sz/pay/LeTuApi$1;->val$feeName:Ljava/lang/String;

    iput-object p7, p0, Lcom/bb_sz/pay/LeTuApi$1;->val$feeDesc:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    .line 37
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 38
    const-string v0, "SKYLT"

    const-string v1, "LeTu First Pay, handleMessage 1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_3

    .line 40
    const/4 v10, 0x0

    .line 41
    .local v10, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 42
    const-string v0, "SKYLT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LeTu First Pay, obj = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 44
    .local v11, "maps":[Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, "status":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "code":Ljava/lang/String;
    const/4 v9, 0x0

    .line 45
    .local v9, "cprice":Ljava/lang/String;
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "result_status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    aget-object v0, v11, v3

    const-string v1, "result_status="

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 48
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "failed_code"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    const/4 v0, 0x1

    aget-object v0, v11, v0

    const-string v1, "failed_code="

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 51
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "pay_price"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 52
    array-length v0, v11

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v11, v0

    const-string v1, "pay_price="

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v9

    .line 54
    :cond_2
    const-string v0, "SKYLT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LeTu First Pay, status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cprice = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v0, "0"

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 56
    iget-object v0, p0, Lcom/bb_sz/pay/LeTuApi$1;->val$chargeResultCb:Lcom/jpay/sdk/IChargeResult;

    const-string v1, "LT Pay Success"

    invoke-interface {v0, v3, v1}, Lcom/jpay/sdk/IChargeResult;->onChargeResult(ILjava/lang/String;)V

    .line 62
    .end local v8    # "code":Ljava/lang/String;
    .end local v9    # "cprice":Ljava/lang/String;
    .end local v10    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "maps":[Ljava/lang/String;
    .end local v12    # "status":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 58
    .restart local v8    # "code":Ljava/lang/String;
    .restart local v9    # "cprice":Ljava/lang/String;
    .restart local v10    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v11    # "maps":[Ljava/lang/String;
    .restart local v12    # "status":Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/jpay/sdk/JPay;->getInstance()Lcom/jpay/sdk/JPay;

    move-result-object v0

    iget-object v1, p0, Lcom/bb_sz/pay/LeTuApi$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bb_sz/pay/LeTuApi$1;->val$price:Ljava/lang/String;

    iget-object v3, p0, Lcom/bb_sz/pay/LeTuApi$1;->val$uniqueid:Ljava/lang/String;

    iget-object v4, p0, Lcom/bb_sz/pay/LeTuApi$1;->val$cpserverparam:Ljava/lang/String;

    iget-object v5, p0, Lcom/bb_sz/pay/LeTuApi$1;->val$feeName:Ljava/lang/String;

    iget-object v6, p0, Lcom/bb_sz/pay/LeTuApi$1;->val$feeDesc:Ljava/lang/String;

    iget-object v7, p0, Lcom/bb_sz/pay/LeTuApi$1;->val$chargeResultCb:Lcom/jpay/sdk/IChargeResult;

    invoke-virtual/range {v0 .. v7}, Lcom/jpay/sdk/JPay;->charge(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jpay/sdk/IChargeResult;)V

    goto :goto_0
.end method
