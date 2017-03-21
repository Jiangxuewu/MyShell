.class final Lcom/bb_sz/pay/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/jpay/sdk/IChargeResult;


# instance fields
.field private synthetic a:Lcom/jpay/sdk/IChargeResult;

.field private synthetic b:Landroid/app/Activity;

.field private synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jpay/sdk/IChargeResult;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bb_sz/pay/d;->a:Lcom/jpay/sdk/IChargeResult;

    iput-object p2, p0, Lcom/bb_sz/pay/d;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/bb_sz/pay/d;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChargeResult(ILjava/lang/String;)V
    .locals 3

    const-string v0, "SKYLT"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Jpay First pay, result i = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/bb_sz/pay/d;->a:Lcom/jpay/sdk/IChargeResult;

    invoke-interface {v0, p1, p2}, Lcom/jpay/sdk/IChargeResult;->onChargeResult(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/bb_sz/pay/d;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bb_sz/pay/d;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/bb_sz/pay/d;->a:Lcom/jpay/sdk/IChargeResult;

    invoke-static {v0, v1, v2}, Lcom/bb_sz/pay/b;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/jpay/sdk/IChargeResult;)I

    goto :goto_0
.end method
