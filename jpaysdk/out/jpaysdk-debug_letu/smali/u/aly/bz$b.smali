.class public Lu/aly/bz$b;
.super Lu/aly/bz$h;


# instance fields
.field private a:Lu/aly/bh;

.field private b:Lu/aly/be;


# direct methods
.method public constructor <init>(Lu/aly/be;Lu/aly/bh;)V
    .locals 0

    invoke-direct {p0}, Lu/aly/bz$h;-><init>()V

    iput-object p1, p0, Lu/aly/bz$b;->b:Lu/aly/be;

    iput-object p2, p0, Lu/aly/bz$b;->a:Lu/aly/bh;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lu/aly/bz$b;->a:Lu/aly/bh;

    invoke-virtual {v0}, Lu/aly/bh;->d()Z

    move-result v0

    return v0
.end method

.method public a(Z)Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lu/aly/bz$b;->a:Lu/aly/bh;

    invoke-virtual {v2}, Lu/aly/bh;->b()J

    move-result-wide v2

    iget-object v4, p0, Lu/aly/bz$b;->b:Lu/aly/be;

    iget-wide v4, v4, Lu/aly/be;->c:J

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
