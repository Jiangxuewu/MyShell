.class Lcom/bb_sz/pay/kefu/CSDialogView$3;
.super Ljava/lang/Object;
.source "CSDialogView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bb_sz/pay/kefu/CSDialogView;->notifySelectIssus()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bb_sz/pay/kefu/CSDialogView;


# direct methods
.method constructor <init>(Lcom/bb_sz/pay/kefu/CSDialogView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bb_sz/pay/kefu/CSDialogView;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/bb_sz/pay/kefu/CSDialogView$3;->this$0:Lcom/bb_sz/pay/kefu/CSDialogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 137
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView$3;->this$0:Lcom/bb_sz/pay/kefu/CSDialogView;

    invoke-virtual {v0}, Lcom/bb_sz/pay/kefu/CSDialogView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u8bf7\u9009\u62e9\u95ee\u9898"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 138
    return-void
.end method
