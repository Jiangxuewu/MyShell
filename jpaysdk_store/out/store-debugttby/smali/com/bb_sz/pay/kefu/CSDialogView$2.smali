.class Lcom/bb_sz/pay/kefu/CSDialogView$2;
.super Ljava/lang/Object;
.source "CSDialogView.java"

# interfaces
.implements Lcom/bb_sz/pay/kefu/SendView$ISendListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bb_sz/pay/kefu/CSDialogView;->addEditTextSendBtn(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bb_sz/pay/kefu/CSDialogView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/bb_sz/pay/kefu/CSDialogView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bb_sz/pay/kefu/CSDialogView;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/bb_sz/pay/kefu/CSDialogView$2;->this$0:Lcom/bb_sz/pay/kefu/CSDialogView;

    iput-object p2, p0, Lcom/bb_sz/pay/kefu/CSDialogView$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public send(Ljava/lang/String;)V
    .locals 2
    .param p1, "tel"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView$2;->this$0:Lcom/bb_sz/pay/kefu/CSDialogView;

    iget v0, v0, Lcom/bb_sz/pay/kefu/CSDialogView;->curSelIndex:I

    if-nez v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView$2;->this$0:Lcom/bb_sz/pay/kefu/CSDialogView;

    # invokes: Lcom/bb_sz/pay/kefu/CSDialogView;->notifySelectIssus()V
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/CSDialogView;->access$000(Lcom/bb_sz/pay/kefu/CSDialogView;)V

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bb_sz/pay/kefu/CSDialogView$2;->this$0:Lcom/bb_sz/pay/kefu/CSDialogView;

    iget v1, v1, Lcom/bb_sz/pay/kefu/CSDialogView;->curSelIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 119
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView$2;->val$context:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-static {v0, v1, p1}, Lcom/bb_sz/pay/kefu/CusService;->notifyServer(Landroid/content/Context;ILjava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView$2;->this$0:Lcom/bb_sz/pay/kefu/CSDialogView;

    # getter for: Lcom/bb_sz/pay/kefu/CSDialogView;->listener:Lcom/bb_sz/pay/kefu/CSDialogView$IItemListener;
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/CSDialogView;->access$100(Lcom/bb_sz/pay/kefu/CSDialogView;)Lcom/bb_sz/pay/kefu/CSDialogView$IItemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView$2;->this$0:Lcom/bb_sz/pay/kefu/CSDialogView;

    # getter for: Lcom/bb_sz/pay/kefu/CSDialogView;->listener:Lcom/bb_sz/pay/kefu/CSDialogView$IItemListener;
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/CSDialogView;->access$100(Lcom/bb_sz/pay/kefu/CSDialogView;)Lcom/bb_sz/pay/kefu/CSDialogView$IItemListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bb_sz/pay/kefu/CSDialogView$IItemListener;->send(Ljava/lang/String;)V

    goto :goto_0
.end method
