.class Lcom/bb_sz/pay/kefu/CusService$3;
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

.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/bb_sz/pay/kefu/CusService;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bb_sz/pay/kefu/CusService;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/bb_sz/pay/kefu/CusService$3;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    iput-object p2, p0, Lcom/bb_sz/pay/kefu/CusService$3;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 217
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/CusService$3;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    # invokes: Lcom/bb_sz/pay/kefu/CusService;->hideDialog()V
    invoke-static {v2}, Lcom/bb_sz/pay/kefu/CusService;->access$000(Lcom/bb_sz/pay/kefu/CusService;)V

    .line 218
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/CusService$3;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    # invokes: Lcom/bb_sz/pay/kefu/CusService;->showIcon()V
    invoke-static {v2}, Lcom/bb_sz/pay/kefu/CusService;->access$100(Lcom/bb_sz/pay/kefu/CusService;)V

    .line 219
    const-string v2, "{$OPENCALL$}"

    const-string v3, "open"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    const-string v2, "tel:4001661896"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 221
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 222
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/CusService$3;->val$activity:Landroid/app/Activity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bb_sz/pay/kefu/CusService$3;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 225
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/CusService$3;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    const/4 v3, 0x2

    const/4 v4, 0x0

    # invokes: Lcom/bb_sz/pay/kefu/CusService;->notifyServer(ILjava/lang/String;)V
    invoke-static {v2, v3, v4}, Lcom/bb_sz/pay/kefu/CusService;->access$900(Lcom/bb_sz/pay/kefu/CusService;ILjava/lang/String;)V

    .line 226
    return-void
.end method
