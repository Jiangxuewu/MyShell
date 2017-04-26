.class Lcom/bb_sz/pay/kefu/CSDialogView$6;
.super Ljava/lang/Object;
.source "CSDialogView.java"

# interfaces
.implements Lcom/bb_sz/pay/kefu/CSResultView$IResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bb_sz/pay/kefu/CSDialogView;->showResult()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bb_sz/pay/kefu/CSDialogView;


# direct methods
.method constructor <init>(Lcom/bb_sz/pay/kefu/CSDialogView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bb_sz/pay/kefu/CSDialogView;

    .prologue
    .line 347
    iput-object p1, p0, Lcom/bb_sz/pay/kefu/CSDialogView$6;->this$0:Lcom/bb_sz/pay/kefu/CSDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public closeResult()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView$6;->this$0:Lcom/bb_sz/pay/kefu/CSDialogView;

    # getter for: Lcom/bb_sz/pay/kefu/CSDialogView;->listener:Lcom/bb_sz/pay/kefu/CSDialogView$IItemListener;
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/CSDialogView;->access$100(Lcom/bb_sz/pay/kefu/CSDialogView;)Lcom/bb_sz/pay/kefu/CSDialogView$IItemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView$6;->this$0:Lcom/bb_sz/pay/kefu/CSDialogView;

    # getter for: Lcom/bb_sz/pay/kefu/CSDialogView;->listener:Lcom/bb_sz/pay/kefu/CSDialogView$IItemListener;
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/CSDialogView;->access$100(Lcom/bb_sz/pay/kefu/CSDialogView;)Lcom/bb_sz/pay/kefu/CSDialogView$IItemListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bb_sz/pay/kefu/CSDialogView$IItemListener;->closeResult()V

    .line 353
    :cond_0
    return-void
.end method

.method public result(Z)V
    .locals 3
    .param p1, "isSolve"    # Z

    .prologue
    .line 358
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView$6;->this$0:Lcom/bb_sz/pay/kefu/CSDialogView;

    invoke-virtual {v0}, Lcom/bb_sz/pay/kefu/CSDialogView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    if-eqz p1, :cond_1

    const-string v0, "Y"

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/bb_sz/pay/kefu/CusService;->notifyServer(Landroid/content/Context;ILjava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView$6;->this$0:Lcom/bb_sz/pay/kefu/CSDialogView;

    # getter for: Lcom/bb_sz/pay/kefu/CSDialogView;->listener:Lcom/bb_sz/pay/kefu/CSDialogView$IItemListener;
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/CSDialogView;->access$100(Lcom/bb_sz/pay/kefu/CSDialogView;)Lcom/bb_sz/pay/kefu/CSDialogView$IItemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView$6;->this$0:Lcom/bb_sz/pay/kefu/CSDialogView;

    # getter for: Lcom/bb_sz/pay/kefu/CSDialogView;->listener:Lcom/bb_sz/pay/kefu/CSDialogView$IItemListener;
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/CSDialogView;->access$100(Lcom/bb_sz/pay/kefu/CSDialogView;)Lcom/bb_sz/pay/kefu/CSDialogView$IItemListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bb_sz/pay/kefu/CSDialogView$IItemListener;->result(Z)V

    .line 363
    :cond_0
    return-void

    .line 358
    :cond_1
    const-string v0, "N"

    goto :goto_0
.end method
