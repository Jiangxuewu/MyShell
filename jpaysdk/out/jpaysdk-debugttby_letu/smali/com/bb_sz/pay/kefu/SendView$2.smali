.class Lcom/bb_sz/pay/kefu/SendView$2;
.super Ljava/lang/Object;
.source "SendView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bb_sz/pay/kefu/SendView;->notifyPhoneError()V
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
    .line 125
    iput-object p1, p0, Lcom/bb_sz/pay/kefu/SendView$2;->this$0:Lcom/bb_sz/pay/kefu/SendView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/SendView$2;->this$0:Lcom/bb_sz/pay/kefu/SendView;

    invoke-virtual {v0}, Lcom/bb_sz/pay/kefu/SendView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u65e0\u6548\u7684\u624b\u673a\u53f7\u7801,\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 130
    return-void
.end method
