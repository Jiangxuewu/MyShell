.class Lcom/bb_sz/pay/kefu/CSResultView$3;
.super Ljava/lang/Object;
.source "CSResultView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bb_sz/pay/kefu/CSResultView;->addDelIcon(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bb_sz/pay/kefu/CSResultView;


# direct methods
.method constructor <init>(Lcom/bb_sz/pay/kefu/CSResultView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bb_sz/pay/kefu/CSResultView;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/bb_sz/pay/kefu/CSResultView$3;->this$0:Lcom/bb_sz/pay/kefu/CSResultView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSResultView$3;->this$0:Lcom/bb_sz/pay/kefu/CSResultView;

    # getter for: Lcom/bb_sz/pay/kefu/CSResultView;->curSelType:I
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/CSResultView;->access$000(Lcom/bb_sz/pay/kefu/CSResultView;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 151
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSResultView$3;->this$0:Lcom/bb_sz/pay/kefu/CSResultView;

    # invokes: Lcom/bb_sz/pay/kefu/CSResultView;->notifySelectOne()V
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/CSResultView;->access$300(Lcom/bb_sz/pay/kefu/CSResultView;)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSResultView$3;->this$0:Lcom/bb_sz/pay/kefu/CSResultView;

    # getter for: Lcom/bb_sz/pay/kefu/CSResultView;->listener:Lcom/bb_sz/pay/kefu/CSResultView$IResultListener;
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/CSResultView;->access$400(Lcom/bb_sz/pay/kefu/CSResultView;)Lcom/bb_sz/pay/kefu/CSResultView$IResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSResultView$3;->this$0:Lcom/bb_sz/pay/kefu/CSResultView;

    # getter for: Lcom/bb_sz/pay/kefu/CSResultView;->listener:Lcom/bb_sz/pay/kefu/CSResultView$IResultListener;
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/CSResultView;->access$400(Lcom/bb_sz/pay/kefu/CSResultView;)Lcom/bb_sz/pay/kefu/CSResultView$IResultListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bb_sz/pay/kefu/CSResultView$IResultListener;->closeResult()V

    .line 156
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSResultView$3;->this$0:Lcom/bb_sz/pay/kefu/CSResultView;

    # getter for: Lcom/bb_sz/pay/kefu/CSResultView;->listener:Lcom/bb_sz/pay/kefu/CSResultView$IResultListener;
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/CSResultView;->access$400(Lcom/bb_sz/pay/kefu/CSResultView;)Lcom/bb_sz/pay/kefu/CSResultView$IResultListener;

    move-result-object v1

    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSResultView$3;->this$0:Lcom/bb_sz/pay/kefu/CSResultView;

    # getter for: Lcom/bb_sz/pay/kefu/CSResultView;->curSelType:I
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/CSResultView;->access$000(Lcom/bb_sz/pay/kefu/CSResultView;)I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-interface {v1, v0}, Lcom/bb_sz/pay/kefu/CSResultView$IResultListener;->result(Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
