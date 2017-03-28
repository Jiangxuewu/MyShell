.class Lcom/bb_sz/pay/kefu/CSDialogView$5;
.super Ljava/lang/Object;
.source "CSDialogView.java"

# interfaces
.implements Lcom/bb_sz/pay/kefu/IssusView$ISelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bb_sz/pay/kefu/CSDialogView;->addIssus(Landroid/content/Context;)V
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
    .line 208
    iput-object p1, p0, Lcom/bb_sz/pay/kefu/CSDialogView$5;->this$0:Lcom/bb_sz/pay/kefu/CSDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public selected(I)V
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 211
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView$5;->this$0:Lcom/bb_sz/pay/kefu/CSDialogView;

    iput p1, v0, Lcom/bb_sz/pay/kefu/CSDialogView;->curSelIndex:I

    .line 212
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView$5;->this$0:Lcom/bb_sz/pay/kefu/CSDialogView;

    # getter for: Lcom/bb_sz/pay/kefu/CSDialogView;->item1:Lcom/bb_sz/pay/kefu/IssusView;
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/CSDialogView;->access$200(Lcom/bb_sz/pay/kefu/CSDialogView;)Lcom/bb_sz/pay/kefu/IssusView;

    move-result-object v3

    if-ne p1, v1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/bb_sz/pay/kefu/IssusView;->setSelected(Z)V

    .line 213
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView$5;->this$0:Lcom/bb_sz/pay/kefu/CSDialogView;

    # getter for: Lcom/bb_sz/pay/kefu/CSDialogView;->item2:Lcom/bb_sz/pay/kefu/IssusView;
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/CSDialogView;->access$300(Lcom/bb_sz/pay/kefu/CSDialogView;)Lcom/bb_sz/pay/kefu/IssusView;

    move-result-object v3

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/bb_sz/pay/kefu/IssusView;->setSelected(Z)V

    .line 214
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView$5;->this$0:Lcom/bb_sz/pay/kefu/CSDialogView;

    # getter for: Lcom/bb_sz/pay/kefu/CSDialogView;->item3:Lcom/bb_sz/pay/kefu/IssusView;
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/CSDialogView;->access$400(Lcom/bb_sz/pay/kefu/CSDialogView;)Lcom/bb_sz/pay/kefu/IssusView;

    move-result-object v0

    const/4 v3, 0x3

    if-ne p1, v3, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Lcom/bb_sz/pay/kefu/IssusView;->setSelected(Z)V

    .line 215
    return-void

    :cond_0
    move v0, v2

    .line 212
    goto :goto_0

    :cond_1
    move v0, v2

    .line 213
    goto :goto_1

    :cond_2
    move v1, v2

    .line 214
    goto :goto_2
.end method
