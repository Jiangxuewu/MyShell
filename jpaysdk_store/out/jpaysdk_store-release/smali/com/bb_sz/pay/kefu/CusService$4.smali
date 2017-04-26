.class Lcom/bb_sz/pay/kefu/CusService$4;
.super Ljava/lang/Object;
.source "CusService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bb_sz/pay/kefu/CusService;->createDialogView(Landroid/app/Activity;)Landroid/view/View;
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
    .line 244
    iput-object p1, p0, Lcom/bb_sz/pay/kefu/CusService$4;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 247
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService$4;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    # invokes: Lcom/bb_sz/pay/kefu/CusService;->hideDialog()V
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/CusService;->access$000(Lcom/bb_sz/pay/kefu/CusService;)V

    .line 248
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService$4;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    # invokes: Lcom/bb_sz/pay/kefu/CusService;->showIcon()V
    invoke-static {v0}, Lcom/bb_sz/pay/kefu/CusService;->access$100(Lcom/bb_sz/pay/kefu/CusService;)V

    .line 249
    return-void
.end method
