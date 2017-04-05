.class public Lcom/lyhtgh/pay/d;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/lyhtgh/pay/activity/SdkPayActivity;


# direct methods
.method private constructor <init>(Lcom/lyhtgh/pay/activity/SdkPayActivity;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/lyhtgh/pay/d;->a:Lcom/lyhtgh/pay/activity/SdkPayActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/lyhtgh/pay/activity/SdkPayActivity;Lcom/lyhtgh/pay/d;)V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/lyhtgh/pay/d;-><init>(Lcom/lyhtgh/pay/activity/SdkPayActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 398
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 401
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 402
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_0

    .line 403
    iget-object v0, p0, Lcom/lyhtgh/pay/d;->a:Lcom/lyhtgh/pay/activity/SdkPayActivity;

    invoke-static {v0}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a(Lcom/lyhtgh/pay/activity/SdkPayActivity;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/lyhtgh/pay/l;->a(Landroid/content/Context;)Lcom/lyhtgh/pay/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/l;->b()V

    .line 409
    :goto_0
    return-void

    .line 406
    :cond_0
    iget-object v1, p0, Lcom/lyhtgh/pay/d;->a:Lcom/lyhtgh/pay/activity/SdkPayActivity;

    invoke-static {v1}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a(Lcom/lyhtgh/pay/activity/SdkPayActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/lyhtgh/pay/l;->a(Landroid/content/Context;)Lcom/lyhtgh/pay/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/l;->a()V

    .line 407
    iget-object v1, p0, Lcom/lyhtgh/pay/d;->a:Lcom/lyhtgh/pay/activity/SdkPayActivity;

    iget-object v2, p0, Lcom/lyhtgh/pay/d;->a:Lcom/lyhtgh/pay/activity/SdkPayActivity;

    invoke-static {v2}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->b(Lcom/lyhtgh/pay/activity/SdkPayActivity;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/lyhtgh/pay/d;->a:Lcom/lyhtgh/pay/activity/SdkPayActivity;

    invoke-static {v3}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a(Lcom/lyhtgh/pay/activity/SdkPayActivity;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a(Lcom/lyhtgh/pay/activity/SdkPayActivity;Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
