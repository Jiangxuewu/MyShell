.class public Lu/aly/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:Ljava/util/List;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:J

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/List;JLjava/lang/String;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/l;->b:Ljava/util/List;

    iput-object p1, p0, Lu/aly/l;->b:Ljava/util/List;

    iput-wide p2, p0, Lu/aly/l;->d:J

    iput-object p4, p0, Lu/aly/l;->c:Ljava/lang/String;

    iput-wide p5, p0, Lu/aly/l;->e:J

    invoke-direct {p0}, Lu/aly/l;->f()V

    return-void
.end method

.method private f()V
    .locals 2

    iget-wide v0, p0, Lu/aly/l;->e:J

    invoke-static {v0, v1}, Lu/aly/q;->a(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/aly/l;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lu/aly/l;->b:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu/aly/l;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lu/aly/l;->d:J

    return-wide v0
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lu/aly/l;->e:J

    return-wide v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu/aly/l;->f:Ljava/lang/String;

    return-object v0
.end method
