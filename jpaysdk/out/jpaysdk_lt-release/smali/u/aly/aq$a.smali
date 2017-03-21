.class public Lu/aly/aq$a;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lu/aly/aq;

.field private b:Lu/aly/bz$h;

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Lu/aly/aq;)V
    .locals 2

    const/4 v1, -0x1

    iput-object p1, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lu/aly/aq$a;->c:I

    iput v1, p0, Lu/aly/aq$a;->d:I

    iput v1, p0, Lu/aly/aq$a;->e:I

    iput v1, p0, Lu/aly/aq$a;->f:I

    invoke-static {p1}, Lu/aly/aq;->a(Lu/aly/aq;)Lu/aly/af$a;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Lu/aly/af$a;->a(II)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lu/aly/aq$a;->c:I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lu/aly/aq$a;->d:I

    return-void
.end method

.method private b(II)Lu/aly/bz$h;
    .locals 4

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    instance-of v0, v0, Lu/aly/bz$d;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    :goto_0
    return-object v0

    :pswitch_1
    iget-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    instance-of v0, v0, Lu/aly/bz$d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    goto :goto_0

    :cond_0
    new-instance v0, Lu/aly/bz$d;

    invoke-direct {v0}, Lu/aly/bz$d;-><init>()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    instance-of v0, v0, Lu/aly/bz$e;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    move-object v0, v1

    check-cast v0, Lu/aly/bz$e;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Lu/aly/bz$e;->a(J)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    new-instance v0, Lu/aly/bz$e;

    iget-object v1, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v1}, Lu/aly/aq;->c(Lu/aly/aq;)Lu/aly/be;

    move-result-object v1

    int-to-long v2, p2

    invoke-direct {v0, v1, v2, v3}, Lu/aly/bz$e;-><init>(Lu/aly/be;J)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    instance-of v0, v0, Lu/aly/bz$f;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    goto :goto_0

    :cond_2
    new-instance v0, Lu/aly/bz$f;

    iget-object v1, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v1}, Lu/aly/aq;->c(Lu/aly/aq;)Lu/aly/be;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/bz$f;-><init>(Lu/aly/be;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    instance-of v0, v0, Lu/aly/bz$g;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    goto :goto_0

    :cond_3
    new-instance v0, Lu/aly/bz$g;

    invoke-direct {v0}, Lu/aly/bz$g;-><init>()V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    instance-of v0, v0, Lu/aly/bz$i;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    goto :goto_0

    :cond_4
    new-instance v0, Lu/aly/bz$i;

    invoke-static {}, Lu/aly/aq;->c()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/bz$i;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    instance-of v0, v0, Lu/aly/bz$j;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    goto :goto_0

    :cond_5
    new-instance v0, Lu/aly/bz$j;

    iget-object v1, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v1}, Lu/aly/aq;->c(Lu/aly/aq;)Lu/aly/be;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/bz$j;-><init>(Lu/aly/be;)V

    goto :goto_0

    :cond_6
    new-instance v0, Lu/aly/bz$d;

    invoke-direct {v0}, Lu/aly/bz$d;-><init>()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public a(II)V
    .locals 0

    iput p1, p0, Lu/aly/aq$a;->e:I

    iput p2, p0, Lu/aly/aq$a;->f:I

    return-void
.end method

.method public a(Lu/aly/af$a;)V
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p1, v0, v0}, Lu/aly/af$a;->a(II)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lu/aly/aq$a;->c:I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, p0, Lu/aly/aq$a;->d:I

    return-void
.end method

.method protected a(Z)V
    .locals 4

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-object v2, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v2}, Lu/aly/aq;->b(Lu/aly/aq;)Lu/aly/bh;

    move-result-object v2

    invoke-virtual {v2}, Lu/aly/bh;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    instance-of v2, v2, Lu/aly/bz$b;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    invoke-virtual {v2}, Lu/aly/bz$h;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    if-eqz v1, :cond_2

    iget-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    :goto_1
    iput-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v1, v0

    goto :goto_0

    :cond_2
    new-instance v0, Lu/aly/bz$b;

    iget-object v1, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v1}, Lu/aly/aq;->c(Lu/aly/aq;)Lu/aly/be;

    move-result-object v1

    iget-object v2, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v2}, Lu/aly/aq;->b(Lu/aly/aq;)Lu/aly/bh;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lu/aly/bz$b;-><init>(Lu/aly/be;Lu/aly/bh;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    instance-of v2, v2, Lu/aly/bz$c;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    invoke-virtual {v2}, Lu/aly/bz$h;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    :goto_3
    if-nez v1, :cond_0

    if-eqz p1, :cond_5

    iget-object v1, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v1}, Lu/aly/aq;->d(Lu/aly/aq;)Lu/aly/bi;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/bi;->a()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v0, Lu/aly/bz$c;

    iget-object v1, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v1}, Lu/aly/aq;->d(Lu/aly/aq;)Lu/aly/bi;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/bi;->b()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-direct {v0, v1}, Lu/aly/bz$c;-><init>(I)V

    iput-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    iget-object v0, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    iget-object v1, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v1}, Lu/aly/aq;->d(Lu/aly/aq;)Lu/aly/bi;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/bi;->b()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-static {v0, v1}, Lu/aly/aq;->a(Lu/aly/aq;I)V

    goto :goto_2

    :cond_4
    move v1, v0

    goto :goto_3

    :cond_5
    sget-boolean v1, Lu/aly/bx;->a:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v1}, Lu/aly/aq;->a(Lu/aly/aq;)Lu/aly/af$a;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/af$a;->b()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v0, Lu/aly/bz$a;

    iget-object v1, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v1}, Lu/aly/aq;->c(Lu/aly/aq;)Lu/aly/be;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/bz$a;-><init>(Lu/aly/be;)V

    iput-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v1}, Lu/aly/aq;->e(Lu/aly/aq;)Lu/aly/bg;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/bg;->a()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "RPT"

    iget-object v2, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v2}, Lu/aly/aq;->e(Lu/aly/aq;)Lu/aly/bg;

    move-result-object v2

    invoke-virtual {v2}, Lu/aly/bg;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v1}, Lu/aly/aq;->e(Lu/aly/aq;)Lu/aly/bg;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/bg;->b()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    iget-object v0, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v0}, Lu/aly/aq;->a(Lu/aly/aq;)Lu/aly/af$a;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/af$a;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v0}, Lu/aly/aq;->a(Lu/aly/aq;)Lu/aly/af$a;

    move-result-object v0

    const v1, 0x15f90

    invoke-virtual {v0, v1}, Lu/aly/af$a;->d(I)I

    move-result v0

    :cond_7
    :goto_4
    iget-object v1, p0, Lu/aly/aq$a;->a:Lu/aly/aq;

    invoke-static {v1}, Lu/aly/aq;->e(Lu/aly/aq;)Lu/aly/bg;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/bg;->b()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lu/aly/aq$a;->b(II)Lu/aly/bz$h;

    move-result-object v0

    iput-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    goto/16 :goto_2

    :cond_8
    iget v0, p0, Lu/aly/aq$a;->d:I

    if-lez v0, :cond_9

    iget v0, p0, Lu/aly/aq$a;->d:I

    goto :goto_4

    :cond_9
    iget v0, p0, Lu/aly/aq$a;->f:I

    goto :goto_4

    :cond_a
    iget v1, p0, Lu/aly/aq$a;->e:I

    iget v0, p0, Lu/aly/aq$a;->f:I

    iget v2, p0, Lu/aly/aq$a;->c:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_b

    iget v1, p0, Lu/aly/aq$a;->c:I

    iget v0, p0, Lu/aly/aq$a;->d:I

    :cond_b
    invoke-direct {p0, v1, v0}, Lu/aly/aq$a;->b(II)Lu/aly/bz$h;

    move-result-object v0

    iput-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    goto/16 :goto_2
.end method

.method public b(Z)Lu/aly/bz$h;
    .locals 1

    invoke-virtual {p0, p1}, Lu/aly/aq$a;->a(Z)V

    iget-object v0, p0, Lu/aly/aq$a;->b:Lu/aly/bz$h;

    return-object v0
.end method
