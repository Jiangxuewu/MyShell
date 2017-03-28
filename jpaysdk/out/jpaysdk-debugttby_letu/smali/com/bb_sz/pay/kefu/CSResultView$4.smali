.class Lcom/bb_sz/pay/kefu/CSResultView$4;
.super Ljava/lang/Object;
.source "CSResultView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bb_sz/pay/kefu/CSResultView;->notifySelectOne()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bb_sz/pay/kefu/CSResultView;


# direct methods
.method constructor <init>(Lcom/bb_sz/pay/kefu/CSResultView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bb_sz/pay/kefu/CSResultView;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/bb_sz/pay/kefu/CSResultView$4;->this$0:Lcom/bb_sz/pay/kefu/CSResultView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 183
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSResultView$4;->this$0:Lcom/bb_sz/pay/kefu/CSResultView;

    invoke-virtual {v0}, Lcom/bb_sz/pay/kefu/CSResultView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u9009\u62e9\u4e00\u4e2a\u7ed3\u679c!"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 184
    return-void
.end method
