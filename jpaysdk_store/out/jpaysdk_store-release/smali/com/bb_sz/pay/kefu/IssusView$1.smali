.class Lcom/bb_sz/pay/kefu/IssusView$1;
.super Ljava/lang/Object;
.source "IssusView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bb_sz/pay/kefu/IssusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bb_sz/pay/kefu/IssusView;


# direct methods
.method constructor <init>(Lcom/bb_sz/pay/kefu/IssusView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bb_sz/pay/kefu/IssusView;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/bb_sz/pay/kefu/IssusView$1;->this$0:Lcom/bb_sz/pay/kefu/IssusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/IssusView$1;->this$0:Lcom/bb_sz/pay/kefu/IssusView;

    # getter for: Lcom/bb_sz/pay/kefu/IssusView;->selected:Z
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/IssusView;->access$000(Lcom/bb_sz/pay/kefu/IssusView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/IssusView$1;->this$0:Lcom/bb_sz/pay/kefu/IssusView;

    # invokes: Lcom/bb_sz/pay/kefu/IssusView;->notifyOther()V
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/IssusView;->access$100(Lcom/bb_sz/pay/kefu/IssusView;)V

    goto :goto_0
.end method
