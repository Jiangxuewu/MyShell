.class public Lu/aly/cx$a;
.super Ljava/lang/Object;

# interfaces
.implements Lu/aly/dg;


# instance fields
.field protected a:Z

.field protected b:Z

.field protected c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lu/aly/cx$a;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lu/aly/cx$a;-><init>(ZZI)V

    return-void
.end method

.method public constructor <init>(ZZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/aly/cx$a;->a:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lu/aly/cx$a;->b:Z

    iput-boolean p1, p0, Lu/aly/cx$a;->a:Z

    iput-boolean p2, p0, Lu/aly/cx$a;->b:Z

    iput p3, p0, Lu/aly/cx$a;->c:I

    return-void
.end method


# virtual methods
.method public a(Lu/aly/ds;)Lu/aly/de;
    .locals 3

    new-instance v0, Lu/aly/cx;

    iget-boolean v1, p0, Lu/aly/cx$a;->a:Z

    iget-boolean v2, p0, Lu/aly/cx$a;->b:Z

    invoke-direct {v0, p1, v1, v2}, Lu/aly/cx;-><init>(Lu/aly/ds;ZZ)V

    iget v1, p0, Lu/aly/cx$a;->c:I

    if-eqz v1, :cond_0

    iget v1, p0, Lu/aly/cx$a;->c:I

    invoke-virtual {v0, v1}, Lu/aly/cx;->c(I)V

    :cond_0
    return-object v0
.end method
