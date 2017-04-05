.class public Lcom/lyhtgh/pay/c;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/lyhtgh/pay/activity/SdkPayActivity;


# direct methods
.method private constructor <init>(Lcom/lyhtgh/pay/activity/SdkPayActivity;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/lyhtgh/pay/c;->a:Lcom/lyhtgh/pay/activity/SdkPayActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/lyhtgh/pay/activity/SdkPayActivity;Lcom/lyhtgh/pay/c;)V
    .locals 0

    .prologue
    .line 425
    invoke-direct {p0, p1}, Lcom/lyhtgh/pay/c;-><init>(Lcom/lyhtgh/pay/activity/SdkPayActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 428
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 431
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 433
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_0

    .line 434
    iget-object v1, p0, Lcom/lyhtgh/pay/c;->a:Lcom/lyhtgh/pay/activity/SdkPayActivity;

    invoke-static {v1, v0}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a(Lcom/lyhtgh/pay/activity/SdkPayActivity;Ljava/lang/String;)V

    .line 439
    :goto_0
    return-void

    .line 437
    :cond_0
    iget-object v1, p0, Lcom/lyhtgh/pay/c;->a:Lcom/lyhtgh/pay/activity/SdkPayActivity;

    invoke-static {v1, v0}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->b(Lcom/lyhtgh/pay/activity/SdkPayActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
