.class Lcom/umeng/analytics/f/c$c;
.super La/a/a/c/d;
.source "IdSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/a/c/d",
        "<",
        "Lcom/umeng/analytics/f/c;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, La/a/a/c/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/f/c$1;)V
    .locals 0

    .prologue
    .line 422
    invoke-direct {p0}, Lcom/umeng/analytics/f/c$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(La/a/a/b/h;La/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/j;
        }
    .end annotation

    .prologue
    .line 422
    check-cast p2, Lcom/umeng/analytics/f/c;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/f/c$c;->a(La/a/a/b/h;Lcom/umeng/analytics/f/c;)V

    return-void
.end method

.method public a(La/a/a/b/h;Lcom/umeng/analytics/f/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/j;
        }
    .end annotation

    .prologue
    .line 427
    check-cast p1, La/a/a/b/n;

    .line 428
    iget-object v0, p2, Lcom/umeng/analytics/f/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/a/b/n;->a(Ljava/lang/String;)V

    .line 429
    iget-wide v0, p2, Lcom/umeng/analytics/f/c;->b:J

    invoke-virtual {p1, v0, v1}, La/a/a/b/n;->a(J)V

    .line 430
    iget v0, p2, Lcom/umeng/analytics/f/c;->c:I

    invoke-virtual {p1, v0}, La/a/a/b/n;->a(I)V

    .line 431
    return-void
.end method

.method public bridge synthetic b(La/a/a/b/h;La/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/j;
        }
    .end annotation

    .prologue
    .line 422
    check-cast p2, Lcom/umeng/analytics/f/c;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/f/c$c;->b(La/a/a/b/h;Lcom/umeng/analytics/f/c;)V

    return-void
.end method

.method public b(La/a/a/b/h;Lcom/umeng/analytics/f/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 436
    check-cast p1, La/a/a/b/n;

    .line 437
    invoke-virtual {p1}, La/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/f/c;->a:Ljava/lang/String;

    .line 438
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/f/c;->a(Z)V

    .line 439
    invoke-virtual {p1}, La/a/a/b/n;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/umeng/analytics/f/c;->b:J

    .line 440
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/f/c;->b(Z)V

    .line 441
    invoke-virtual {p1}, La/a/a/b/n;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/f/c;->c:I

    .line 442
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/f/c;->c(Z)V

    .line 443
    return-void
.end method
