.class Lu/aly/bn$a;
.super Lu/aly/do;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lu/aly/do;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bn$1;)V
    .locals 0

    invoke-direct {p0}, Lu/aly/bn$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/de;Lu/aly/bn;)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p1}, Lu/aly/de;->j()Lu/aly/dj;

    :goto_0
    invoke-virtual {p1}, Lu/aly/de;->l()Lu/aly/cz;

    move-result-object v0

    iget-byte v1, v0, Lu/aly/cz;->b:B

    if-eqz v1, :cond_4

    iget-short v1, v0, Lu/aly/cz;->c:S

    packed-switch v1, :pswitch_data_0

    iget-byte v0, v0, Lu/aly/cz;->b:B

    invoke-static {p1, v0}, Lu/aly/dh;->a(Lu/aly/de;B)V

    :goto_1
    invoke-virtual {p1}, Lu/aly/de;->m()V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, Lu/aly/cz;->b:B

    const/16 v2, 0xd

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lu/aly/de;->n()Lu/aly/db;

    move-result-object v1

    new-instance v0, Ljava/util/HashMap;

    iget v2, v1, Lu/aly/db;->c:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p2, Lu/aly/bn;->a:Ljava/util/Map;

    const/4 v0, 0x0

    :goto_2
    iget v2, v1, Lu/aly/db;->c:I

    if-ge v0, v2, :cond_0

    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lu/aly/bo;

    invoke-direct {v3}, Lu/aly/bo;-><init>()V

    invoke-virtual {v3, p1}, Lu/aly/bo;->a(Lu/aly/de;)V

    iget-object v4, p2, Lu/aly/bn;->a:Ljava/util/Map;

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lu/aly/de;->o()V

    invoke-virtual {p2, v5}, Lu/aly/bn;->a(Z)V

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lu/aly/cz;->b:B

    invoke-static {p1, v0}, Lu/aly/dh;->a(Lu/aly/de;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v1, v0, Lu/aly/cz;->b:B

    const/16 v2, 0x8

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Lu/aly/de;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bn;->b:I

    invoke-virtual {p2, v5}, Lu/aly/bn;->b(Z)V

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lu/aly/cz;->b:B

    invoke-static {p1, v0}, Lu/aly/dh;->a(Lu/aly/de;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v1, v0, Lu/aly/cz;->b:B

    const/16 v2, 0xb

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bn;->c:Ljava/lang/String;

    invoke-virtual {p2, v5}, Lu/aly/bn;->c(Z)V

    goto :goto_1

    :cond_3
    iget-byte v0, v0, Lu/aly/cz;->b:B

    invoke-static {p1, v0}, Lu/aly/dh;->a(Lu/aly/de;B)V

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lu/aly/de;->k()V

    invoke-virtual {p2}, Lu/aly/bn;->i()Z

    move-result v0

    if-nez v0, :cond_5

    new-instance v0, Lu/aly/df;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'version\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/df;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-virtual {p2}, Lu/aly/bn;->m()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public synthetic a(Lu/aly/de;Lu/aly/cf;)V
    .locals 0

    check-cast p2, Lu/aly/bn;

    invoke-virtual {p0, p1, p2}, Lu/aly/bn$a;->b(Lu/aly/de;Lu/aly/bn;)V

    return-void
.end method

.method public b(Lu/aly/de;Lu/aly/bn;)V
    .locals 4

    invoke-virtual {p2}, Lu/aly/bn;->m()V

    invoke-static {}, Lu/aly/bn;->n()Lu/aly/dj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/dj;)V

    iget-object v0, p2, Lu/aly/bn;->a:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-static {}, Lu/aly/bn;->o()Lu/aly/cz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/cz;)V

    new-instance v0, Lu/aly/db;

    const/16 v1, 0xb

    const/16 v2, 0xc

    iget-object v3, p2, Lu/aly/bn;->a:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lu/aly/db;-><init>(BBI)V

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/db;)V

    iget-object v0, p2, Lu/aly/bn;->a:Ljava/util/Map;

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

    check-cast v0, Lu/aly/bo;

    invoke-virtual {v0, p1}, Lu/aly/bo;->b(Lu/aly/de;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lu/aly/de;->e()V

    invoke-virtual {p1}, Lu/aly/de;->c()V

    :cond_1
    invoke-static {}, Lu/aly/bn;->q()Lu/aly/cz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/cz;)V

    iget v0, p2, Lu/aly/bn;->b:I

    invoke-virtual {p1, v0}, Lu/aly/de;->a(I)V

    invoke-virtual {p1}, Lu/aly/de;->c()V

    iget-object v0, p2, Lu/aly/bn;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {}, Lu/aly/bn;->r()Lu/aly/cz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/cz;)V

    iget-object v0, p2, Lu/aly/bn;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lu/aly/de;->c()V

    :cond_2
    invoke-virtual {p1}, Lu/aly/de;->d()V

    invoke-virtual {p1}, Lu/aly/de;->b()V

    return-void
.end method

.method public synthetic b(Lu/aly/de;Lu/aly/cf;)V
    .locals 0

    check-cast p2, Lu/aly/bn;

    invoke-virtual {p0, p1, p2}, Lu/aly/bn$a;->a(Lu/aly/de;Lu/aly/bn;)V

    return-void
.end method
