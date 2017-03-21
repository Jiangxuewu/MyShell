.class public Lu/aly/bz$e;
.super Lu/aly/bz$h;


# static fields
.field private static a:J

.field private static b:J


# instance fields
.field private c:J

.field private d:Lu/aly/be;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x15f90

    sput-wide v0, Lu/aly/bz$e;->a:J

    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lu/aly/bz$e;->b:J

    return-void
.end method

.method public constructor <init>(Lu/aly/be;J)V
    .locals 0

    invoke-direct {p0}, Lu/aly/bz$h;-><init>()V

    iput-object p1, p0, Lu/aly/bz$e;->d:Lu/aly/be;

    invoke-virtual {p0, p2, p3}, Lu/aly/bz$e;->a(J)V

    return-void
.end method

.method public static a(I)Z
    .locals 4

    int-to-long v0, p0

    sget-wide v2, Lu/aly/bz$e;->a:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a(J)V
    .locals 3

    sget-wide v0, Lu/aly/bz$e;->a:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    sget-wide v0, Lu/aly/bz$e;->b:J

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    iput-wide p1, p0, Lu/aly/bz$e;->c:J

    :goto_0
    return-void

    :cond_0
    sget-wide v0, Lu/aly/bz$e;->a:J

    iput-wide v0, p0, Lu/aly/bz$e;->c:J

    goto :goto_0
.end method

.method public a(Z)Z
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lu/aly/bz$e;->d:Lu/aly/be;

    iget-wide v2, v2, Lu/aly/be;->c:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lu/aly/bz$e;->c:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lu/aly/bz$e;->c:J

    return-wide v0
.end method
