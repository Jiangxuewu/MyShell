.class Lcom/bb_sz/pay/kefu/SendView$1;
.super Ljava/lang/Object;
.source "SendView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bb_sz/pay/kefu/SendView;->addBtn(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bb_sz/pay/kefu/SendView;


# direct methods
.method constructor <init>(Lcom/bb_sz/pay/kefu/SendView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bb_sz/pay/kefu/SendView;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/bb_sz/pay/kefu/SendView$1;->this$0:Lcom/bb_sz/pay/kefu/SendView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v1, p0, Lcom/bb_sz/pay/kefu/SendView$1;->this$0:Lcom/bb_sz/pay/kefu/SendView;

    # getter for: Lcom/bb_sz/pay/kefu/SendView;->et:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/bb_sz/pay/kefu/SendView;->access$000(Lcom/bb_sz/pay/kefu/SendView;)Landroid/widget/EditText;

    move-result-object v1

    if-nez v1, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 91
    :cond_1
    iget-object v1, p0, Lcom/bb_sz/pay/kefu/SendView$1;->this$0:Lcom/bb_sz/pay/kefu/SendView;

    # getter for: Lcom/bb_sz/pay/kefu/SendView;->et:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/bb_sz/pay/kefu/SendView;->access$000(Lcom/bb_sz/pay/kefu/SendView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "tel":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/bb_sz/pay/kefu/SendView$1;->this$0:Lcom/bb_sz/pay/kefu/SendView;

    # invokes: Lcom/bb_sz/pay/kefu/SendView;->isPhoneNumber(Ljava/lang/String;)Z
    invoke-static {v1, v0}, Lcom/bb_sz/pay/kefu/SendView;->access$100(Lcom/bb_sz/pay/kefu/SendView;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 96
    iget-object v1, p0, Lcom/bb_sz/pay/kefu/SendView$1;->this$0:Lcom/bb_sz/pay/kefu/SendView;

    # invokes: Lcom/bb_sz/pay/kefu/SendView;->notifyPhoneError()V
    invoke-static {v1}, Lcom/bb_sz/pay/kefu/SendView;->access$200(Lcom/bb_sz/pay/kefu/SendView;)V

    goto :goto_0

    .line 99
    :cond_2
    iget-object v1, p0, Lcom/bb_sz/pay/kefu/SendView$1;->this$0:Lcom/bb_sz/pay/kefu/SendView;

    # getter for: Lcom/bb_sz/pay/kefu/SendView;->listener:Lcom/bb_sz/pay/kefu/SendView$ISendListener;
    invoke-static {v1}, Lcom/bb_sz/pay/kefu/SendView;->access$300(Lcom/bb_sz/pay/kefu/SendView;)Lcom/bb_sz/pay/kefu/SendView$ISendListener;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/bb_sz/pay/kefu/SendView$1;->this$0:Lcom/bb_sz/pay/kefu/SendView;

    # getter for: Lcom/bb_sz/pay/kefu/SendView;->listener:Lcom/bb_sz/pay/kefu/SendView$ISendListener;
    invoke-static {v1}, Lcom/bb_sz/pay/kefu/SendView;->access$300(Lcom/bb_sz/pay/kefu/SendView;)Lcom/bb_sz/pay/kefu/SendView$ISendListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/bb_sz/pay/kefu/SendView$ISendListener;->send(Ljava/lang/String;)V

    goto :goto_0
.end method
