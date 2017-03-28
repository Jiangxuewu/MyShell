.class Lcom/bb_sz/pay/kefu/CusService$9;
.super Ljava/lang/Object;
.source "CusService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bb_sz/pay/kefu/CusService;->onResume()V
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
    .line 358
    iput-object p1, p0, Lcom/bb_sz/pay/kefu/CusService$9;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 362
    :try_start_0
    sget v1, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v1, :cond_0

    const-string v1, "SkyCusService"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    iget-object v1, p0, Lcom/bb_sz/pay/kefu/CusService$9;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    iget-boolean v1, v1, Lcom/bb_sz/pay/kefu/CusService;->isShowIcon:Z

    if-eqz v1, :cond_1

    .line 364
    iget-object v1, p0, Lcom/bb_sz/pay/kefu/CusService$9;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    # getter for: Lcom/bb_sz/pay/kefu/CusService;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v1}, Lcom/bb_sz/pay/kefu/CusService;->access$1200(Lcom/bb_sz/pay/kefu/CusService;)Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/pay/kefu/CusService$9;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    # getter for: Lcom/bb_sz/pay/kefu/CusService;->mDView:Landroid/view/View;
    invoke-static {v2}, Lcom/bb_sz/pay/kefu/CusService;->access$1000(Lcom/bb_sz/pay/kefu/CusService;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/bb_sz/pay/kefu/CusService$9;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    # getter for: Lcom/bb_sz/pay/kefu/CusService;->mWindowParamIcon:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v3}, Lcom/bb_sz/pay/kefu/CusService;->access$1100(Lcom/bb_sz/pay/kefu/CusService;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    :cond_1
    :goto_0
    return-void

    .line 365
    :catch_0
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
