.class Lcom/bb_sz/pay/kefu/CSDialogView$4;
.super Ljava/lang/Object;
.source "CSDialogView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bb_sz/pay/kefu/CSDialogView;->addDelIcon(Landroid/content/Context;)V
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
    .line 177
    iput-object p1, p0, Lcom/bb_sz/pay/kefu/CSDialogView$4;->this$0:Lcom/bb_sz/pay/kefu/CSDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView$4;->this$0:Lcom/bb_sz/pay/kefu/CSDialogView;

    # getter for: Lcom/bb_sz/pay/kefu/CSDialogView;->listener:Lcom/bb_sz/pay/kefu/CSDialogView$IItemListener;
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/CSDialogView;->access$100(Lcom/bb_sz/pay/kefu/CSDialogView;)Lcom/bb_sz/pay/kefu/CSDialogView$IItemListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView$4;->this$0:Lcom/bb_sz/pay/kefu/CSDialogView;

    # getter for: Lcom/bb_sz/pay/kefu/CSDialogView;->listener:Lcom/bb_sz/pay/kefu/CSDialogView$IItemListener;
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/CSDialogView;->access$100(Lcom/bb_sz/pay/kefu/CSDialogView;)Lcom/bb_sz/pay/kefu/CSDialogView$IItemListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bb_sz/pay/kefu/CSDialogView$IItemListener;->close()V

    .line 183
    :cond_0
    return-void
.end method
