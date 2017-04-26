.class Lcom/umeng/analytics/f/b$c;
.super La/a/a/c/d;
.source "IdJournal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/a/c/d",
        "<",
        "Lcom/umeng/analytics/f/b;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 495
    invoke-direct {p0}, La/a/a/c/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/f/b$1;)V
    .locals 0

    .prologue
    .line 495
    invoke-direct {p0}, Lcom/umeng/analytics/f/b$c;-><init>()V

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
    .line 495
    check-cast p2, Lcom/umeng/analytics/f/b;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/f/b$c;->a(La/a/a/b/h;Lcom/umeng/analytics/f/b;)V

    return-void
.end method

.method public a(La/a/a/b/h;Lcom/umeng/analytics/f/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/j;
        }
    .end annotation

    .prologue
    .line 500
    check-cast p1, La/a/a/b/n;

    .line 501
    iget-object v0, p2, Lcom/umeng/analytics/f/b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/a/b/n;->a(Ljava/lang/String;)V

    .line 502
    iget-object v0, p2, Lcom/umeng/analytics/f/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/a/b/n;->a(Ljava/lang/String;)V

    .line 503
    iget-wide v0, p2, Lcom/umeng/analytics/f/b;->d:J

    invoke-virtual {p1, v0, v1}, La/a/a/b/n;->a(J)V

    .line 504
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 505
    invoke-virtual {p2}, Lcom/umeng/analytics/f/b;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 508
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, La/a/a/b/n;->a(Ljava/util/BitSet;I)V

    .line 509
    invoke-virtual {p2}, Lcom/umeng/analytics/f/b;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p2, Lcom/umeng/analytics/f/b;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/a/b/n;->a(Ljava/lang/String;)V

    .line 512
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
    .line 495
    check-cast p2, Lcom/umeng/analytics/f/b;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/f/b$c;->b(La/a/a/b/h;Lcom/umeng/analytics/f/b;)V

    return-void
.end method

.method public b(La/a/a/b/h;Lcom/umeng/analytics/f/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 517
    check-cast p1, La/a/a/b/n;

    .line 518
    invoke-virtual {p1}, La/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/f/b;->a:Ljava/lang/String;

    .line 519
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/f/b;->a(Z)V

    .line 520
    invoke-virtual {p1}, La/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/f/b;->c:Ljava/lang/String;

    .line 521
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/f/b;->c(Z)V

    .line 522
    invoke-virtual {p1}, La/a/a/b/n;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/umeng/analytics/f/b;->d:J

    .line 523
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/f/b;->d(Z)V

    .line 524
    invoke-virtual {p1, v2}, La/a/a/b/n;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 525
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 526
    invoke-virtual {p1}, La/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/f/b;->b:Ljava/lang/String;

    .line 527
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/f/b;->b(Z)V

    .line 529
    :cond_0
    return-void
.end method
