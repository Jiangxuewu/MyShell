.class Lcom/bb_sz/pay/kefu/CusService$8;
.super Ljava/lang/Object;
.source "CusService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bb_sz/pay/kefu/CusService;->hideDialog()V
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
    .line 341
    iput-object p1, p0, Lcom/bb_sz/pay/kefu/CusService$8;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService$8;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    # getter for: Lcom/bb_sz/pay/kefu/CusService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/CusService;->access$1200(Lcom/bb_sz/pay/kefu/CusService;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/bb_sz/pay/kefu/CusService$8;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    # getter for: Lcom/bb_sz/pay/kefu/CusService;->mDialogView:Landroid/view/View;
    invoke-static {v1}, Lcom/bb_sz/pay/kefu/CusService;->access$200(Lcom/bb_sz/pay/kefu/CusService;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 345
    return-void
.end method
