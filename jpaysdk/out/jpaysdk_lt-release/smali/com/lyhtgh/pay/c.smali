.class public Lcom/lyhtgh/pay/c;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/lyhtgh/pay/activity/SdkPayActivity;


# direct methods
.method private constructor <init>(Lcom/lyhtgh/pay/activity/SdkPayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lyhtgh/pay/c;->a:Lcom/lyhtgh/pay/activity/SdkPayActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/lyhtgh/pay/activity/SdkPayActivity;Lcom/lyhtgh/pay/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lyhtgh/pay/c;-><init>(Lcom/lyhtgh/pay/activity/SdkPayActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x7d0

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/lyhtgh/pay/c;->a:Lcom/lyhtgh/pay/activity/SdkPayActivity;

    invoke-static {v1, v0}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a(Lcom/lyhtgh/pay/activity/SdkPayActivity;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/lyhtgh/pay/c;->a:Lcom/lyhtgh/pay/activity/SdkPayActivity;

    invoke-static {v1, v0}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->b(Lcom/lyhtgh/pay/activity/SdkPayActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
