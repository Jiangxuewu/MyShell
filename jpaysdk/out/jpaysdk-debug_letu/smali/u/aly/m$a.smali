.class Lu/aly/m$a;
.super Landroid/os/Handler;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lu/aly/m;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lu/aly/m$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lu/aly/m$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const/16 v0, 0x30

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lu/aly/q;->c(J)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lu/aly/m$a;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {}, Lu/aly/m;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lu/aly/m;->a(Landroid/content/Context;)Lu/aly/m;

    move-result-object v0

    invoke-static {v0}, Lu/aly/m;->c(Lu/aly/m;)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x31

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lu/aly/q;->d(J)J

    move-result-wide v2

    invoke-virtual {p0, v0, v2, v3}, Lu/aly/m$a;->sendEmptyMessageDelayed(IJ)Z

    invoke-static {}, Lu/aly/m;->g()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lu/aly/m;->a(Landroid/content/Context;)Lu/aly/m;

    move-result-object v0

    invoke-static {v0}, Lu/aly/m;->d(Lu/aly/m;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
