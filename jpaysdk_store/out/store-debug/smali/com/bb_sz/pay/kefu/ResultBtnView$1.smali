.class Lcom/bb_sz/pay/kefu/ResultBtnView$1;
.super Ljava/lang/Object;
.source "ResultBtnView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bb_sz/pay/kefu/ResultBtnView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bb_sz/pay/kefu/ResultBtnView;


# direct methods
.method constructor <init>(Lcom/bb_sz/pay/kefu/ResultBtnView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bb_sz/pay/kefu/ResultBtnView;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/bb_sz/pay/kefu/ResultBtnView$1;->this$0:Lcom/bb_sz/pay/kefu/ResultBtnView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/ResultBtnView$1;->this$0:Lcom/bb_sz/pay/kefu/ResultBtnView;

    # getter for: Lcom/bb_sz/pay/kefu/ResultBtnView;->selected:Z
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/ResultBtnView;->access$000(Lcom/bb_sz/pay/kefu/ResultBtnView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/ResultBtnView$1;->this$0:Lcom/bb_sz/pay/kefu/ResultBtnView;

    # invokes: Lcom/bb_sz/pay/kefu/ResultBtnView;->notifyOther()V
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/ResultBtnView;->access$100(Lcom/bb_sz/pay/kefu/ResultBtnView;)V

    goto :goto_0
.end method
