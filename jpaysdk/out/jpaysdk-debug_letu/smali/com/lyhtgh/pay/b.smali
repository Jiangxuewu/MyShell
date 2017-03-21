.class public Lcom/lyhtgh/pay/b;
.super Landroid/os/Handler;


# instance fields
.field final synthetic a:Lcom/lyhtgh/pay/activity/SdkPayActivity;


# direct methods
.method private constructor <init>(Lcom/lyhtgh/pay/activity/SdkPayActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/lyhtgh/pay/b;->a:Lcom/lyhtgh/pay/activity/SdkPayActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/lyhtgh/pay/activity/SdkPayActivity;Lcom/lyhtgh/pay/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/lyhtgh/pay/b;-><init>(Lcom/lyhtgh/pay/activity/SdkPayActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    return-void
.end method
