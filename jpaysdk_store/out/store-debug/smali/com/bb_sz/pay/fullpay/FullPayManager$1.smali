.class Lcom/bb_sz/pay/fullpay/FullPayManager$1;
.super Ljava/lang/Object;
.source "FullPayManager.java"

# interfaces
.implements Lcom/bb_sz/pay/IChargeResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bb_sz/pay/fullpay/FullPayManager;->charge()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bb_sz/pay/fullpay/FullPayManager;


# direct methods
.method constructor <init>(Lcom/bb_sz/pay/fullpay/FullPayManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bb_sz/pay/fullpay/FullPayManager;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/bb_sz/pay/fullpay/FullPayManager$1;->this$0:Lcom/bb_sz/pay/fullpay/FullPayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChargeResult(ILjava/lang/String;)V
    .locals 3
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 328
    const-string v0, "SkyFullPay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jpay result i = "

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

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/bb_sz/pay/fullpay/FullPayManager$1$1;

    invoke-direct {v1, p0, p1}, Lcom/bb_sz/pay/fullpay/FullPayManager$1$1;-><init>(Lcom/bb_sz/pay/fullpay/FullPayManager$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 340
    return-void
.end method
