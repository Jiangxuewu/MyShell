.class final Lcom/bb_sz/pay/c;
.super Landroid/os/Handler;


# instance fields
.field private synthetic a:Lcom/jpay/sdk/IChargeResult;

.field private synthetic b:Landroid/app/Activity;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Ljava/lang/String;

.field private synthetic f:Ljava/lang/String;

.field private synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jpay/sdk/IChargeResult;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bb_sz/pay/c;->a:Lcom/jpay/sdk/IChargeResult;

    iput-object p2, p0, Lcom/bb_sz/pay/c;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/bb_sz/pay/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/bb_sz/pay/c;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/bb_sz/pay/c;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/bb_sz/pay/c;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/bb_sz/pay/c;->g:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    const-string v0, "SKYLT"

    const-string v1, "LeTu First Pay, handleMessage 1"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v0, "SKYLT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "LeTu First Pay, obj = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "result_status"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    aget-object v0, v4, v6

    const-string v1, "result_status="

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v3, "failed_code"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    aget-object v0, v4, v0

    const-string v3, "failed_code="

    const-string v5, ""

    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    :goto_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v5, "pay_price"

    invoke-virtual {v0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    array-length v0, v4

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v4, v0

    const-string v2, "pay_price="

    const-string v4, ""

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string v0, "SKYLT"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "LeTu First Pay, status = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", code = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cprice = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bb_sz/pay/c;->a:Lcom/jpay/sdk/IChargeResult;

    const-string v1, "LT Pay Success"

    invoke-interface {v0, v6, v1}, Lcom/jpay/sdk/IChargeResult;->onChargeResult(ILjava/lang/String;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    invoke-static {}, Lcom/jpay/sdk/JPay;->getInstance()Lcom/jpay/sdk/JPay;

    move-result-object v0

    iget-object v1, p0, Lcom/bb_sz/pay/c;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/bb_sz/pay/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/bb_sz/pay/c;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/bb_sz/pay/c;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/bb_sz/pay/c;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/bb_sz/pay/c;->g:Ljava/lang/String;

    iget-object v7, p0, Lcom/bb_sz/pay/c;->a:Lcom/jpay/sdk/IChargeResult;

    invoke-virtual/range {v0 .. v7}, Lcom/jpay/sdk/JPay;->charge(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jpay/sdk/IChargeResult;)V

    goto :goto_2

    :cond_3
    move-object v3, v2

    goto :goto_1

    :cond_4
    move-object v1, v2

    goto/16 :goto_0
.end method
