.class public Lcom/lyhtgh/pay/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/lyhtgh/pay/activity/SdkPayActivity;


# direct methods
.method public constructor <init>(Lcom/lyhtgh/pay/activity/SdkPayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lyhtgh/pay/a;->a:Lcom/lyhtgh/pay/activity/SdkPayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x3e8

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/lyhtgh/pay/a;->a:Lcom/lyhtgh/pay/activity/SdkPayActivity;

    invoke-static {v1}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->c(Lcom/lyhtgh/pay/activity/SdkPayActivity;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/lyhtgh/pay/SdkPayServer;->getInstance()Lcom/lyhtgh/pay/SdkPayServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/SdkPayServer;->getmResultCBHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/lyhtgh/pay/SdkPayServer;->getInstance()Lcom/lyhtgh/pay/SdkPayServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/SdkPayServer;->getmResultCBHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
