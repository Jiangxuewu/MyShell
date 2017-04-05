.class Lcom/jpay/sdk/JPay$1;
.super Ljava/lang/Object;
.source "JPay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jpay/sdk/JPay;->updateResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jpay/sdk/JPay;

.field private final synthetic val$cid:Ljava/lang/String;

.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic val$vcode:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/jpay/sdk/JPay;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jpay/sdk/JPay$1;->this$0:Lcom/jpay/sdk/JPay;

    iput-object p2, p0, Lcom/jpay/sdk/JPay$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/jpay/sdk/JPay$1;->val$cid:Ljava/lang/String;

    iput-object p4, p0, Lcom/jpay/sdk/JPay$1;->val$vcode:Ljava/lang/String;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 66
    iget-object v0, p0, Lcom/jpay/sdk/JPay$1;->this$0:Lcom/jpay/sdk/JPay;

    iget-object v1, p0, Lcom/jpay/sdk/JPay$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/jpay/sdk/JPay$1;->val$cid:Ljava/lang/String;

    iget-object v3, p0, Lcom/jpay/sdk/JPay$1;->val$vcode:Ljava/lang/String;

    const-string v4, "5.0"

    # invokes: Lcom/jpay/sdk/JPay;->jInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    invoke-static {v0, v1, v2, v3, v4}, Lcom/jpay/sdk/JPay;->access$0(Lcom/jpay/sdk/JPay;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method
