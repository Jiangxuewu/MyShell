.class Lcom/umeng/analytics/f/c$a;
.super La/a/a/c/c;
.source "IdSnapshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/f/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/a/c/c",
        "<",
        "Lcom/umeng/analytics/f/c;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0}, La/a/a/c/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/f/c$1;)V
    .locals 0

    .prologue
    .line 337
    invoke-direct {p0}, Lcom/umeng/analytics/f/c$a;-><init>()V

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
    .line 337
    check-cast p2, Lcom/umeng/analytics/f/c;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/f/c$a;->b(La/a/a/b/h;Lcom/umeng/analytics/f/c;)V

    return-void
.end method

.method public a(La/a/a/b/h;Lcom/umeng/analytics/f/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 342
    invoke-virtual {p1}, La/a/a/b/h;->j()La/a/a/b/m;

    .line 344
    :goto_0
    invoke-virtual {p1}, La/a/a/b/h;->l()La/a/a/b/c;

    move-result-object v0

    .line 345
    iget-byte v1, v0, La/a/a/b/c;->b:B

    if-nez v1, :cond_0

    .line 378
    invoke-virtual {p1}, La/a/a/b/h;->k()V

    .line 382
    invoke-virtual {p2}, Lcom/umeng/analytics/f/c;->h()Z

    move-result v0

    if-nez v0, :cond_4

    .line 383
    new-instance v0, La/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'ts\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 384
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 348
    :cond_0
    iget-short v1, v0, La/a/a/b/c;->c:S

    packed-switch v1, :pswitch_data_0

    .line 374
    iget-byte v0, v0, La/a/a/b/c;->b:B

    invoke-static {p1, v0}, La/a/a/b/k;->a(La/a/a/b/h;B)V

    .line 376
    :goto_1
    invoke-virtual {p1}, La/a/a/b/h;->m()V

    goto :goto_0

    .line 350
    :pswitch_0
    iget-byte v1, v0, La/a/a/b/c;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_1

    .line 351
    invoke-virtual {p1}, La/a/a/b/h;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/f/c;->a:Ljava/lang/String;

    .line 352
    invoke-virtual {p2, v3}, Lcom/umeng/analytics/f/c;->a(Z)V

    goto :goto_1

    .line 354
    :cond_1
    iget-byte v0, v0, La/a/a/b/c;->b:B

    invoke-static {p1, v0}, La/a/a/b/k;->a(La/a/a/b/h;B)V

    goto :goto_1

    .line 358
    :pswitch_1
    iget-byte v1, v0, La/a/a/b/c;->b:B

    const/16 v2, 0xa

    if-ne v1, v2, :cond_2

    .line 359
    invoke-virtual {p1}, La/a/a/b/h;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/umeng/analytics/f/c;->b:J

    .line 360
    invoke-virtual {p2, v3}, Lcom/umeng/analytics/f/c;->b(Z)V

    goto :goto_1

    .line 362
    :cond_2
    iget-byte v0, v0, La/a/a/b/c;->b:B

    invoke-static {p1, v0}, La/a/a/b/k;->a(La/a/a/b/h;B)V

    goto :goto_1

    .line 366
    :pswitch_2
    iget-byte v1, v0, La/a/a/b/c;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 367
    invoke-virtual {p1}, La/a/a/b/h;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/f/c;->c:I

    .line 368
    invoke-virtual {p2, v3}, Lcom/umeng/analytics/f/c;->c(Z)V

    goto :goto_1

    .line 370
    :cond_3
    iget-byte v0, v0, La/a/a/b/c;->b:B

    invoke-static {p1, v0}, La/a/a/b/k;->a(La/a/a/b/h;B)V

    goto :goto_1

    .line 386
    :cond_4
    invoke-virtual {p2}, Lcom/umeng/analytics/f/c;->k()Z

    move-result v0

    if-nez v0, :cond_5

    .line 387
    new-instance v0, La/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'version\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 388
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 390
    :cond_5
    invoke-virtual {p2}, Lcom/umeng/analytics/f/c;->l()V

    .line 391
    return-void

    .line 348
    nop

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
    .line 337
    check-cast p2, Lcom/umeng/analytics/f/c;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/f/c$a;->a(La/a/a/b/h;Lcom/umeng/analytics/f/c;)V

    return-void
.end method

.method public b(La/a/a/b/h;Lcom/umeng/analytics/f/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/j;
        }
    .end annotation

    .prologue
    .line 395
    invoke-virtual {p2}, Lcom/umeng/analytics/f/c;->l()V

    .line 397
    invoke-static {}, Lcom/umeng/analytics/f/c;->m()La/a/a/b/m;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(La/a/a/b/m;)V

    .line 398
    iget-object v0, p2, Lcom/umeng/analytics/f/c;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 399
    invoke-static {}, Lcom/umeng/analytics/f/c;->n()La/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(La/a/a/b/c;)V

    .line 400
    iget-object v0, p2, Lcom/umeng/analytics/f/c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p1}, La/a/a/b/h;->c()V

    .line 403
    :cond_0
    invoke-static {}, Lcom/umeng/analytics/f/c;->o()La/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(La/a/a/b/c;)V

    .line 404
    iget-wide v0, p2, Lcom/umeng/analytics/f/c;->b:J

    invoke-virtual {p1, v0, v1}, La/a/a/b/h;->a(J)V

    .line 405
    invoke-virtual {p1}, La/a/a/b/h;->c()V

    .line 406
    invoke-static {}, Lcom/umeng/analytics/f/c;->q()La/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(La/a/a/b/c;)V

    .line 407
    iget v0, p2, Lcom/umeng/analytics/f/c;->c:I

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(I)V

    .line 408
    invoke-virtual {p1}, La/a/a/b/h;->c()V

    .line 409
    invoke-virtual {p1}, La/a/a/b/h;->d()V

    .line 410
    invoke-virtual {p1}, La/a/a/b/h;->b()V

    .line 411
    return-void
.end method
