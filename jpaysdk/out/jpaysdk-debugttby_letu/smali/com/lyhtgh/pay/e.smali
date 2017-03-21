.class public Lcom/lyhtgh/pay/e;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/lyhtgh/pay/activity/SdkShowActivity;


# direct methods
.method private constructor <init>(Lcom/lyhtgh/pay/activity/SdkShowActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lyhtgh/pay/e;->a:Lcom/lyhtgh/pay/activity/SdkShowActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/lyhtgh/pay/activity/SdkShowActivity;Lcom/lyhtgh/pay/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lyhtgh/pay/e;-><init>(Lcom/lyhtgh/pay/activity/SdkShowActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/lyhtgh/pay/e;->a:Lcom/lyhtgh/pay/activity/SdkShowActivity;

    invoke-virtual {v0}, Lcom/lyhtgh/pay/activity/SdkShowActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/lyhtgh/pay/e;->a:Lcom/lyhtgh/pay/activity/SdkShowActivity;

    invoke-virtual {v0}, Lcom/lyhtgh/pay/activity/SdkShowActivity;->finish()V

    :cond_0
    return-void
.end method
