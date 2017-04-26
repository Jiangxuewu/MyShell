.class Lcom/bb_sz/pay/kefu/CusService$1;
.super Ljava/lang/Object;
.source "CusService.java"

# interfaces
.implements Lcom/bb_sz/pay/kefu/CSDialogView$IItemListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bb_sz/pay/kefu/CusService;-><init>(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bb_sz/pay/kefu/CusService;


# direct methods
.method constructor <init>(Lcom/bb_sz/pay/kefu/CusService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bb_sz/pay/kefu/CusService;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/bb_sz/pay/kefu/CusService$1;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService$1;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    # invokes: Lcom/bb_sz/pay/kefu/CusService;->hideDialog()V
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/CusService;->access$000(Lcom/bb_sz/pay/kefu/CusService;)V

    .line 89
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService$1;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    # invokes: Lcom/bb_sz/pay/kefu/CusService;->showIcon()V
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/CusService;->access$100(Lcom/bb_sz/pay/kefu/CusService;)V

    .line 90
    return-void
.end method

.method public closeResult()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService$1;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    # getter for: Lcom/bb_sz/pay/kefu/CusService;->mDialogView:Landroid/view/View;
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/CusService;->access$200(Lcom/bb_sz/pay/kefu/CusService;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bb_sz/pay/kefu/CSDialogView;

    invoke-virtual {v0}, Lcom/bb_sz/pay/kefu/CSDialogView;->showDialog()V

    .line 95
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService$1;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    # invokes: Lcom/bb_sz/pay/kefu/CusService;->hideDialog()V
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/CusService;->access$000(Lcom/bb_sz/pay/kefu/CusService;)V

    .line 96
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService$1;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    # invokes: Lcom/bb_sz/pay/kefu/CusService;->showIcon()V
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/CusService;->access$100(Lcom/bb_sz/pay/kefu/CusService;)V

    .line 97
    return-void
.end method

.method public result(Z)V
    .locals 1
    .param p1, "isDone"    # Z

    .prologue
    .line 106
    if-eqz p1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService$1;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    # getter for: Lcom/bb_sz/pay/kefu/CusService;->mDialogView:Landroid/view/View;
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/CusService;->access$200(Lcom/bb_sz/pay/kefu/CusService;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bb_sz/pay/kefu/CSDialogView;

    invoke-virtual {v0}, Lcom/bb_sz/pay/kefu/CSDialogView;->clear()V

    .line 109
    :cond_0
    return-void
.end method

.method public send(Ljava/lang/String;)V
    .locals 1
    .param p1, "tel"    # Ljava/lang/String;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService$1;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    # getter for: Lcom/bb_sz/pay/kefu/CusService;->mDialogView:Landroid/view/View;
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/CusService;->access$200(Lcom/bb_sz/pay/kefu/CusService;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bb_sz/pay/kefu/CSDialogView;

    invoke-virtual {v0}, Lcom/bb_sz/pay/kefu/CSDialogView;->showResult()V

    .line 102
    return-void
.end method
