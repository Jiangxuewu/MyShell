.class Lcom/umeng/analytics/f/d$a;
.super La/a/a/c/c;
.source "IdTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/a/c/c",
        "<",
        "Lcom/umeng/analytics/f/d;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0}, La/a/a/c/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/f/d$1;)V
    .locals 0

    .prologue
    .line 391
    invoke-direct {p0}, Lcom/umeng/analytics/f/d$a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(La/a/a/b/h;La/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/j;
        }
    .end annotation

    .prologue
    .line 391
    check-cast p2, Lcom/umeng/analytics/f/d;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/f/d$a;->b(La/a/a/b/h;Lcom/umeng/analytics/f/d;)V

    return-void
.end method

.method public a(La/a/a/b/h;Lcom/umeng/analytics/f/d;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 396
    invoke-virtual {p1}, La/a/a/b/h;->j()La/a/a/b/m;

    .line 398
    :goto_0
    invoke-virtual {p1}, La/a/a/b/h;->l()La/a/a/b/c;

    move-result-object v0

    .line 399
    iget-byte v2, v0, La/a/a/b/c;->b:B

    if-nez v2, :cond_0

    .line 454
    invoke-virtual {p1}, La/a/a/b/h;->k()V

    .line 458
    invoke-virtual {p2}, Lcom/umeng/analytics/f/d;->o()V

    .line 459
    return-void

    .line 402
    :cond_0
    iget-short v2, v0, La/a/a/b/c;->c:S

    packed-switch v2, :pswitch_data_0

    .line 450
    iget-byte v0, v0, La/a/a/b/c;->b:B

    invoke-static {p1, v0}, La/a/a/b/k;->a(La/a/a/b/h;B)V

    .line 452
    :goto_1
    invoke-virtual {p1}, La/a/a/b/h;->m()V

    goto :goto_0

    .line 404
    :pswitch_0
    iget-byte v2, v0, La/a/a/b/c;->b:B

    const/16 v3, 0xd

    if-ne v2, v3, :cond_2

    .line 406
    invoke-virtual {p1}, La/a/a/b/h;->n()La/a/a/b/e;

    move-result-object v2

    .line 407
    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, La/a/a/b/e;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    move v0, v1

    .line 408
    :goto_2
    iget v3, v2, La/a/a/b/e;->c:I

    if-ge v0, v3, :cond_1

    .line 411
    invoke-virtual {p1}, La/a/a/b/h;->z()Ljava/lang/String;

    move-result-object v3

    .line 412
    new-instance v4, Lcom/umeng/analytics/f/c;

    invoke-direct {v4}, Lcom/umeng/analytics/f/c;-><init>()V

    .line 413
    invoke-virtual {v4, p1}, Lcom/umeng/analytics/f/c;->a(La/a/a/b/h;)V

    .line 414
    iget-object v5, p2, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 416
    :cond_1
    invoke-virtual {p1}, La/a/a/b/h;->o()V

    .line 418
    invoke-virtual {p2, v6}, Lcom/umeng/analytics/f/d;->a(Z)V

    goto :goto_1

    .line 420
    :cond_2
    iget-byte v0, v0, La/a/a/b/c;->b:B

    invoke-static {p1, v0}, La/a/a/b/k;->a(La/a/a/b/h;B)V

    goto :goto_1

    .line 424
    :pswitch_1
    iget-byte v2, v0, La/a/a/b/c;->b:B

    const/16 v3, 0xf

    if-ne v2, v3, :cond_4

    .line 426
    invoke-virtual {p1}, La/a/a/b/h;->p()La/a/a/b/d;

    move-result-object v2

    .line 427
    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, La/a/a/b/d;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    move v0, v1

    .line 428
    :goto_3
    iget v3, v2, La/a/a/b/d;->b:I

    if-ge v0, v3, :cond_3

    .line 430
    new-instance v3, Lcom/umeng/analytics/f/b;

    invoke-direct {v3}, Lcom/umeng/analytics/f/b;-><init>()V

    .line 431
    invoke-virtual {v3, p1}, Lcom/umeng/analytics/f/b;->a(La/a/a/b/h;)V

    .line 432
    iget-object v4, p2, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 428
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 434
    :cond_3
    invoke-virtual {p1}, La/a/a/b/h;->q()V

    .line 436
    invoke-virtual {p2, v6}, Lcom/umeng/analytics/f/d;->b(Z)V

    goto :goto_1

    .line 438
    :cond_4
    iget-byte v0, v0, La/a/a/b/c;->b:B

    invoke-static {p1, v0}, La/a/a/b/k;->a(La/a/a/b/h;B)V

    goto :goto_1

    .line 442
    :pswitch_2
    iget-byte v2, v0, La/a/a/b/c;->b:B

    const/16 v3, 0xb

    if-ne v2, v3, :cond_5

    .line 443
    invoke-virtual {p1}, La/a/a/b/h;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/f/d;->c:Ljava/lang/String;

    .line 444
    invoke-virtual {p2, v6}, Lcom/umeng/analytics/f/d;->c(Z)V

    goto/16 :goto_1

    .line 446
    :cond_5
    iget-byte v0, v0, La/a/a/b/c;->b:B

    invoke-static {p1, v0}, La/a/a/b/k;->a(La/a/a/b/h;B)V

    goto/16 :goto_1

    .line 402
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public synthetic b(La/a/a/b/h;La/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/j;
        }
    .end annotation

    .prologue
    .line 391
    check-cast p2, Lcom/umeng/analytics/f/d;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/f/d$a;->a(La/a/a/b/h;Lcom/umeng/analytics/f/d;)V

    return-void
.end method

.method public b(La/a/a/b/h;Lcom/umeng/analytics/f/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/j;
        }
    .end annotation

    .prologue
    const/16 v3, 0xc

    .line 463
    invoke-virtual {p2}, Lcom/umeng/analytics/f/d;->o()V

    .line 465
    invoke-static {}, Lcom/umeng/analytics/f/d;->q()La/a/a/b/m;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(La/a/a/b/m;)V

    .line 466
    iget-object v0, p2, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 467
    invoke-static {}, Lcom/umeng/analytics/f/d;->r()La/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(La/a/a/b/c;)V

    .line 469
    new-instance v0, La/a/a/b/e;

    const/16 v1, 0xb

    iget-object v2, p2, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    .line 470
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, La/a/a/b/e;-><init>(BBI)V

    .line 469
    invoke-virtual {p1, v0}, La/a/a/b/h;->a(La/a/a/b/e;)V

    .line 471
    iget-object v0, p2, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 472
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, La/a/a/b/h;->a(Ljava/lang/String;)V

    .line 473
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/f/c;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/f/c;->b(La/a/a/b/h;)V

    goto :goto_0

    .line 475
    :cond_0
    invoke-virtual {p1}, La/a/a/b/h;->e()V

    .line 477
    invoke-virtual {p1}, La/a/a/b/h;->c()V

    .line 479
    :cond_1
    iget-object v0, p2, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 480
    invoke-virtual {p2}, Lcom/umeng/analytics/f/d;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 481
    invoke-static {}, Lcom/umeng/analytics/f/d;->s()La/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(La/a/a/b/c;)V

    .line 483
    new-instance v0, La/a/a/b/d;

    iget-object v1, p2, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    .line 484
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v3, v1}, La/a/a/b/d;-><init>(BI)V

    .line 483
    invoke-virtual {p1, v0}, La/a/a/b/h;->a(La/a/a/b/d;)V

    .line 485
    iget-object v0, p2, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/f/b;

    .line 486
    invoke-virtual {v0, p1}, Lcom/umeng/analytics/f/b;->b(La/a/a/b/h;)V

    goto :goto_1

    .line 488
    :cond_2
    invoke-virtual {p1}, La/a/a/b/h;->f()V

    .line 490
    invoke-virtual {p1}, La/a/a/b/h;->c()V

    .line 493
    :cond_3
    iget-object v0, p2, Lcom/umeng/analytics/f/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 494
    invoke-virtual {p2}, Lcom/umeng/analytics/f/d;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 495
    invoke-static {}, Lcom/umeng/analytics/f/d;->t()La/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(La/a/a/b/c;)V

    .line 496
    iget-object v0, p2, Lcom/umeng/analytics/f/d;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p1}, La/a/a/b/h;->c()V

    .line 500
    :cond_4
    invoke-virtual {p1}, La/a/a/b/h;->d()V

    .line 501
    invoke-virtual {p1}, La/a/a/b/h;->b()V

    .line 502
    return-void
.end method
