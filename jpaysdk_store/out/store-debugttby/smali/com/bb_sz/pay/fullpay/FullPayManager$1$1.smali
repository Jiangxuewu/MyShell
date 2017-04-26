.class Lcom/bb_sz/pay/fullpay/FullPayManager$1$1;
.super Ljava/lang/Object;
.source "FullPayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bb_sz/pay/fullpay/FullPayManager$1;->onChargeResult(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/bb_sz/pay/fullpay/FullPayManager$1;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lcom/bb_sz/pay/fullpay/FullPayManager$1;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/bb_sz/pay/fullpay/FullPayManager$1;

    .prologue
    .line 329
    iput-object p1, p0, Lcom/bb_sz/pay/fullpay/FullPayManager$1$1;->this$1:Lcom/bb_sz/pay/fullpay/FullPayManager$1;

    iput p2, p0, Lcom/bb_sz/pay/fullpay/FullPayManager$1$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 332
    iget v0, p0, Lcom/bb_sz/pay/fullpay/FullPayManager$1$1;->val$i:I

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/bb_sz/pay/fullpay/FullPayManager$1$1;->this$1:Lcom/bb_sz/pay/fullpay/FullPayManager$1;

    iget-object v0, v0, Lcom/bb_sz/pay/fullpay/FullPayManager$1;->this$0:Lcom/bb_sz/pay/fullpay/FullPayManager;

    # getter for: Lcom/bb_sz/pay/fullpay/FullPayManager;->activity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/bb_sz/pay/fullpay/FullPayManager;->access$000(Lcom/bb_sz/pay/fullpay/FullPayManager;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u652f\u4ed8\u5931\u8d25"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 337
    :goto_0
    iget-object v0, p0, Lcom/bb_sz/pay/fullpay/FullPayManager$1$1;->this$1:Lcom/bb_sz/pay/fullpay/FullPayManager$1;

    iget-object v0, v0, Lcom/bb_sz/pay/fullpay/FullPayManager$1;->this$0:Lcom/bb_sz/pay/fullpay/FullPayManager;

    invoke-virtual {v0}, Lcom/bb_sz/pay/fullpay/FullPayManager;->onPause()V

    .line 338
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/bb_sz/pay/fullpay/FullPayManager$1$1;->this$1:Lcom/bb_sz/pay/fullpay/FullPayManager$1;

    iget-object v0, v0, Lcom/bb_sz/pay/fullpay/FullPayManager$1;->this$0:Lcom/bb_sz/pay/fullpay/FullPayManager;

    const-string v1, "full_pay_key"

    const/4 v2, 0x1

    # invokes: Lcom/bb_sz/pay/fullpay/FullPayManager;->setIntValue(Ljava/lang/String;I)V
    invoke-static {v0, v1, v2}, Lcom/bb_sz/pay/fullpay/FullPayManager;->access$100(Lcom/bb_sz/pay/fullpay/FullPayManager;Ljava/lang/String;I)V

    goto :goto_0
.end method
