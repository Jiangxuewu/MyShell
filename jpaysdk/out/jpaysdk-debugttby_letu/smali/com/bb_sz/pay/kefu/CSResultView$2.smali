.class Lcom/bb_sz/pay/kefu/CSResultView$2;
.super Ljava/lang/Object;
.source "CSResultView.java"

# interfaces
.implements Lcom/bb_sz/pay/kefu/ResultBtnView$ISelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bb_sz/pay/kefu/CSResultView;->addResultBtn(Landroid/content/Context;)V
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
    .line 105
    iput-object p1, p0, Lcom/bb_sz/pay/kefu/CSResultView$2;->this$0:Lcom/bb_sz/pay/kefu/CSResultView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selected(I)V
    .locals 4
    .param p1, "type"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 108
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSResultView$2;->this$0:Lcom/bb_sz/pay/kefu/CSResultView;

    # setter for: Lcom/bb_sz/pay/kefu/CSResultView;->curSelType:I
    invoke-static {v0, p1}, Lcom/bb_sz/pay/kefu/CSResultView;->access$002(Lcom/bb_sz/pay/kefu/CSResultView;I)I

    .line 109
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSResultView$2;->this$0:Lcom/bb_sz/pay/kefu/CSResultView;

    # getter for: Lcom/bb_sz/pay/kefu/CSResultView;->solve:Lcom/bb_sz/pay/kefu/ResultBtnView;
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/CSResultView;->access$100(Lcom/bb_sz/pay/kefu/CSResultView;)Lcom/bb_sz/pay/kefu/ResultBtnView;

    move-result-object v3

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/bb_sz/pay/kefu/ResultBtnView;->setSelected(Z)V

    .line 110
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSResultView$2;->this$0:Lcom/bb_sz/pay/kefu/CSResultView;

    # getter for: Lcom/bb_sz/pay/kefu/CSResultView;->solve1:Lcom/bb_sz/pay/kefu/ResultBtnView;
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/CSResultView;->access$200(Lcom/bb_sz/pay/kefu/CSResultView;)Lcom/bb_sz/pay/kefu/ResultBtnView;

    move-result-object v0

    if-ne p1, v1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/bb_sz/pay/kefu/ResultBtnView;->setSelected(Z)V

    .line 111
    return-void

    :cond_0
    move v0, v2

    .line 109
    goto :goto_0

    :cond_1
    move v1, v2

    .line 110
    goto :goto_1
.end method
