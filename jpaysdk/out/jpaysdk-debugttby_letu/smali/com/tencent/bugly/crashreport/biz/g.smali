.class final Lcom/tencent/bugly/crashreport/biz/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/tencent/bugly/crashreport/biz/a;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/crashreport/biz/a;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/bugly/crashreport/biz/g;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/tencent/bugly/crashreport/biz/g;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-static {v2}, Lcom/tencent/bugly/crashreport/biz/a;->b(Lcom/tencent/bugly/crashreport/biz/a;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    invoke-static {}, Lcom/tencent/bugly/proguard/v;->a()Lcom/tencent/bugly/proguard/v;

    move-result-object v2

    new-instance v3, Lcom/tencent/bugly/crashreport/biz/g;

    iget-object v4, p0, Lcom/tencent/bugly/crashreport/biz/g;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-direct {v3, v4}, Lcom/tencent/bugly/crashreport/biz/g;-><init>(Lcom/tencent/bugly/crashreport/biz/a;)V

    iget-object v4, p0, Lcom/tencent/bugly/crashreport/biz/g;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-static {v4}, Lcom/tencent/bugly/crashreport/biz/a;->b(Lcom/tencent/bugly/crashreport/biz/a;)J

    move-result-wide v4

    sub-long v0, v4, v0

    const-wide/16 v4, 0x1388

    add-long/2addr v0, v4

    invoke-virtual {v2, v3, v0, v1}, Lcom/tencent/bugly/proguard/v;->a(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/g;->a:Lcom/tencent/bugly/crashreport/biz/a;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/tencent/bugly/crashreport/biz/a;->a(IZJ)V

    iget-object v0, p0, Lcom/tencent/bugly/crashreport/biz/g;->a:Lcom/tencent/bugly/crashreport/biz/a;

    invoke-virtual {v0}, Lcom/tencent/bugly/crashreport/biz/a;->a()V

    goto :goto_0
.end method
