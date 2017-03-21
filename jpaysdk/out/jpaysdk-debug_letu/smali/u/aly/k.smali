.class public Lu/aly/k;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lu/aly/k;->b:Ljava/lang/String;

    iput-wide v2, p0, Lu/aly/k;->c:J

    iput-wide v2, p0, Lu/aly/k;->d:J

    iput-object v0, p0, Lu/aly/k;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 8

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v6}, Lu/aly/k;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJLjava/lang/String;)V
    .locals 4

    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lu/aly/k;->b:Ljava/lang/String;

    iput-wide v2, p0, Lu/aly/k;->c:J

    iput-wide v2, p0, Lu/aly/k;->d:J

    iput-object v0, p0, Lu/aly/k;->e:Ljava/lang/String;

    iput-object p1, p0, Lu/aly/k;->b:Ljava/lang/String;

    iput-wide p2, p0, Lu/aly/k;->c:J

    iput-wide p4, p0, Lu/aly/k;->d:J

    iput-object p6, p0, Lu/aly/k;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lu/aly/k;
    .locals 4

    iget-wide v0, p0, Lu/aly/k;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lu/aly/k;->d:J

    return-object p0
.end method

.method public a(Lu/aly/k;)Lu/aly/k;
    .locals 4

    invoke-virtual {p1}, Lu/aly/k;->e()J

    move-result-wide v0

    iget-wide v2, p0, Lu/aly/k;->d:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lu/aly/k;->d:J

    invoke-virtual {p1}, Lu/aly/k;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/k;->c:J

    return-object p0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lu/aly/k;->e:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu/aly/k;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lu/aly/k;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu/aly/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lu/aly/k;->c:J

    return-wide v0
.end method

.method public e()J
    .locals 2

    iget-wide v0, p0, Lu/aly/k;->d:J

    return-wide v0
.end method
