.class Lcom/umeng/analytics/f/f$c;
.super La/a/a/c/d;
.source "ImprintValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/f/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/a/c/d",
        "<",
        "Lcom/umeng/analytics/f/f;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, La/a/a/c/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/f/f$1;)V
    .locals 0

    .prologue
    .line 426
    invoke-direct {p0}, Lcom/umeng/analytics/f/f$c;-><init>()V

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
    .line 426
    check-cast p2, Lcom/umeng/analytics/f/f;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/f/f$c;->a(La/a/a/b/h;Lcom/umeng/analytics/f/f;)V

    return-void
.end method

.method public a(La/a/a/b/h;Lcom/umeng/analytics/f/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/j;
        }
    .end annotation

    .prologue
    .line 431
    check-cast p1, La/a/a/b/n;

    .line 432
    iget-wide v0, p2, Lcom/umeng/analytics/f/f;->b:J

    invoke-virtual {p1, v0, v1}, La/a/a/b/n;->a(J)V

    .line 433
    iget-object v0, p2, Lcom/umeng/analytics/f/f;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/a/b/n;->a(Ljava/lang/String;)V

    .line 434
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 435
    invoke-virtual {p2}, Lcom/umeng/analytics/f/f;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 436
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 438
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, La/a/a/b/n;->a(Ljava/util/BitSet;I)V

    .line 439
    invoke-virtual {p2}, Lcom/umeng/analytics/f/f;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 440
    iget-object v0, p2, Lcom/umeng/analytics/f/f;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/a/b/n;->a(Ljava/lang/String;)V

    .line 442
    :cond_1
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
    .line 426
    check-cast p2, Lcom/umeng/analytics/f/f;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/f/f$c;->b(La/a/a/b/h;Lcom/umeng/analytics/f/f;)V

    return-void
.end method

.method public b(La/a/a/b/h;Lcom/umeng/analytics/f/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 447
    check-cast p1, La/a/a/b/n;

    .line 448
    invoke-virtual {p1}, La/a/a/b/n;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/umeng/analytics/f/f;->b:J

    .line 449
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/f/f;->b(Z)V

    .line 450
    invoke-virtual {p1}, La/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/f/f;->c:Ljava/lang/String;

    .line 451
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/f/f;->c(Z)V

    .line 452
    invoke-virtual {p1, v2}, La/a/a/b/n;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 453
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {p1}, La/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/f/f;->a:Ljava/lang/String;

    .line 455
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/f/f;->a(Z)V

    .line 457
    :cond_0
    return-void
.end method
