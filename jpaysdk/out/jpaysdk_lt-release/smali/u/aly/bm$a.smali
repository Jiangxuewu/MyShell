.class Lu/aly/bm$a;
.super Lu/aly/do;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lu/aly/do;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bm$1;)V
    .locals 0

    invoke-direct {p0}, Lu/aly/bm$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/de;Lu/aly/bm;)V
    .locals 7

    const/4 v1, 0x0

    const/4 v6, 0x1

    invoke-virtual {p1}, Lu/aly/de;->j()Lu/aly/dj;

    :goto_0
    invoke-virtual {p1}, Lu/aly/de;->l()Lu/aly/cz;

    move-result-object v0

    iget-byte v2, v0, Lu/aly/cz;->b:B

    if-eqz v2, :cond_5

    iget-short v2, v0, Lu/aly/cz;->c:S

    packed-switch v2, :pswitch_data_0

    iget-byte v0, v0, Lu/aly/cz;->b:B

    invoke-static {p1, v0}, Lu/aly/dh;->a(Lu/aly/de;B)V

    :goto_1
    invoke-virtual {p1}, Lu/aly/de;->m()V

    goto :goto_0

    :pswitch_0
    iget-byte v2, v0, Lu/aly/cz;->b:B

    const/16 v3, 0xd

    if-ne v2, v3, :cond_1

    invoke-virtual {p1}, Lu/aly/de;->n()Lu/aly/db;

    move-result-object v2

    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lu/aly/db;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lu/aly/bm;->a:Ljava/util/Map;

    move v0, v1

    :goto_2
    iget v3, v2, Lu/aly/db;->c:I

    if-ge v0, v3, :cond_0

    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lu/aly/bl;

    invoke-direct {v4}, Lu/aly/bl;-><init>()V

    invoke-virtual {v4, p1}, Lu/aly/bl;->a(Lu/aly/de;)V

    iget-object v5, p2, Lu/aly/bm;->a:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lu/aly/de;->o()V

    invoke-virtual {p2, v6}, Lu/aly/bm;->a(Z)V

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lu/aly/cz;->b:B

    invoke-static {p1, v0}, Lu/aly/dh;->a(Lu/aly/de;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v2, v0, Lu/aly/cz;->b:B

    const/16 v3, 0xf

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Lu/aly/de;->p()Lu/aly/da;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    iget v3, v2, Lu/aly/da;->b:I

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p2, Lu/aly/bm;->b:Ljava/util/List;

    move v0, v1

    :goto_3
    iget v3, v2, Lu/aly/da;->b:I

    if-ge v0, v3, :cond_2

    new-instance v3, Lu/aly/bk;

    invoke-direct {v3}, Lu/aly/bk;-><init>()V

    invoke-virtual {v3, p1}, Lu/aly/bk;->a(Lu/aly/de;)V

    iget-object v4, p2, Lu/aly/bm;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_2
    invoke-virtual {p1}, Lu/aly/de;->q()V

    invoke-virtual {p2, v6}, Lu/aly/bm;->b(Z)V

    goto :goto_1

    :cond_3
    iget-byte v0, v0, Lu/aly/cz;->b:B

    invoke-static {p1, v0}, Lu/aly/dh;->a(Lu/aly/de;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v2, v0, Lu/aly/cz;->b:B

    const/16 v3, 0xb

    if-ne v2, v3, :cond_4

    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bm;->c:Ljava/lang/String;

    invoke-virtual {p2, v6}, Lu/aly/bm;->c(Z)V

    goto/16 :goto_1

    :cond_4
    iget-byte v0, v0, Lu/aly/cz;->b:B

    invoke-static {p1, v0}, Lu/aly/dh;->a(Lu/aly/de;B)V

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p1}, Lu/aly/de;->k()V

    invoke-virtual {p2}, Lu/aly/bm;->o()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public synthetic a(Lu/aly/de;Lu/aly/cf;)V
    .locals 0

    check-cast p2, Lu/aly/bm;

    invoke-virtual {p0, p1, p2}, Lu/aly/bm$a;->b(Lu/aly/de;Lu/aly/bm;)V

    return-void
.end method

.method public b(Lu/aly/de;Lu/aly/bm;)V
    .locals 4

    const/16 v3, 0xc

    invoke-virtual {p2}, Lu/aly/bm;->o()V

    invoke-static {}, Lu/aly/bm;->q()Lu/aly/dj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/dj;)V

    iget-object v0, p2, Lu/aly/bm;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-static {}, Lu/aly/bm;->r()Lu/aly/cz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/cz;)V

    new-instance v0, Lu/aly/db;

    const/16 v1, 0xb

    iget-object v2, p2, Lu/aly/bm;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v0, v1, v3, v2}, Lu/aly/db;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/db;)V

    iget-object v0, p2, Lu/aly/bm;->a:Ljava/util/Map;

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

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu/aly/de;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bl;

    invoke-virtual {v0, p1}, Lu/aly/bl;->b(Lu/aly/de;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lu/aly/de;->e()V

    invoke-virtual {p1}, Lu/aly/de;->c()V

    :cond_1
    iget-object v0, p2, Lu/aly/bm;->b:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lu/aly/bm;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lu/aly/bm;->s()Lu/aly/cz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/cz;)V

    new-instance v0, Lu/aly/da;

    iget-object v1, p2, Lu/aly/bm;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v3, v1}, Lu/aly/da;-><init>(BI)V

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/da;)V

    iget-object v0, p2, Lu/aly/bm;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bk;

    invoke-virtual {v0, p1}, Lu/aly/bk;->b(Lu/aly/de;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lu/aly/de;->f()V

    invoke-virtual {p1}, Lu/aly/de;->c()V

    :cond_3
    iget-object v0, p2, Lu/aly/bm;->c:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lu/aly/bm;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lu/aly/bm;->t()Lu/aly/cz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/cz;)V

    iget-object v0, p2, Lu/aly/bm;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lu/aly/de;->c()V

    :cond_4
    invoke-virtual {p1}, Lu/aly/de;->d()V

    invoke-virtual {p1}, Lu/aly/de;->b()V

    return-void
.end method

.method public synthetic b(Lu/aly/de;Lu/aly/cf;)V
    .locals 0

    check-cast p2, Lu/aly/bm;

    invoke-virtual {p0, p1, p2}, Lu/aly/bm$a;->a(Lu/aly/de;Lu/aly/bm;)V

    return-void
.end method
