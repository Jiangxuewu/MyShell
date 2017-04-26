.class Lcom/bb_sz/pay/kefu/CSDialogView$1;
.super Ljava/lang/Object;
.source "CSDialogView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bb_sz/pay/kefu/CSDialogView;->addTel(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bb_sz/pay/kefu/CSDialogView;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/bb_sz/pay/kefu/CSDialogView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bb_sz/pay/kefu/CSDialogView;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/bb_sz/pay/kefu/CSDialogView$1;->this$0:Lcom/bb_sz/pay/kefu/CSDialogView;

    iput-object p2, p0, Lcom/bb_sz/pay/kefu/CSDialogView$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 73
    const-string v2, "{$OPENCALL$}"

    const-string v3, "open"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    const-string v2, "tel:4001661896"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 75
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 76
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/CSDialogView$1;->val$context:Landroid/content/Context;

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/CSDialogView$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 78
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/CSDialogView$1;->val$context:Landroid/content/Context;

    const/4 v3, 0x2

    const-string v4, ""

    invoke-static {v2, v3, v4}, Lcom/bb_sz/pay/kefu/CusService;->notifyServer(Landroid/content/Context;ILjava/lang/String;)V

    .line 81
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    return-void
.end method
