.class Lu/aly/bq$a;
.super Lu/aly/do;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lu/aly/do;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bq$1;)V
    .locals 0

    invoke-direct {p0}, Lu/aly/bq$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/de;Lu/aly/bq;)V
    .locals 5

    const/16 v4, 0x8

    const/16 v3, 0xb

    const/4 v2, 0x1

    invoke-virtual {p1}, Lu/aly/de;->j()Lu/aly/dj;

    :goto_0
    invoke-virtual {p1}, Lu/aly/de;->l()Lu/aly/cz;

    move-result-object v0

    iget-byte v1, v0, Lu/aly/cz;->b:B

    if-eqz v1, :cond_a

    iget-short v1, v0, Lu/aly/cz;->c:S

    packed-switch v1, :pswitch_data_0

    iget-byte v0, v0, Lu/aly/cz;->b:B

    invoke-static {p1, v0}, Lu/aly/dh;->a(Lu/aly/de;B)V

    :goto_1
    invoke-virtual {p1}, Lu/aly/de;->m()V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, Lu/aly/cz;->b:B

    if-ne v1, v3, :cond_0

    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bq;->a:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lu/aly/bq;->a(Z)V

    goto :goto_1

    :cond_0
    iget-byte v0, v0, Lu/aly/cz;->b:B

    invoke-static {p1, v0}, Lu/aly/dh;->a(Lu/aly/de;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v1, v0, Lu/aly/cz;->b:B

    if-ne v1, v3, :cond_1

    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bq;->b:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lu/aly/bq;->b(Z)V

    goto :goto_1

    :cond_1
    iget-byte v0, v0, Lu/aly/cz;->b:B

    invoke-static {p1, v0}, Lu/aly/dh;->a(Lu/aly/de;B)V

    goto :goto_1

    :pswitch_2
    iget-byte v1, v0, Lu/aly/cz;->b:B

    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bq;->c:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lu/aly/bq;->c(Z)V

    goto :goto_1

    :cond_2
    iget-byte v0, v0, Lu/aly/cz;->b:B

    invoke-static {p1, v0}, Lu/aly/dh;->a(Lu/aly/de;B)V

    goto :goto_1

    :pswitch_3
    iget-byte v1, v0, Lu/aly/cz;->b:B

    if-ne v1, v4, :cond_3

    invoke-virtual {p1}, Lu/aly/de;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bq;->d:I

    invoke-virtual {p2, v2}, Lu/aly/bq;->d(Z)V

    goto :goto_1

    :cond_3
    iget-byte v0, v0, Lu/aly/cz;->b:B

    invoke-static {p1, v0}, Lu/aly/dh;->a(Lu/aly/de;B)V

    goto :goto_1

    :pswitch_4
    iget-byte v1, v0, Lu/aly/cz;->b:B

    if-ne v1, v4, :cond_4

    invoke-virtual {p1}, Lu/aly/de;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bq;->e:I

    invoke-virtual {p2, v2}, Lu/aly/bq;->e(Z)V

    goto :goto_1

    :cond_4
    iget-byte v0, v0, Lu/aly/cz;->b:B

    invoke-static {p1, v0}, Lu/aly/dh;->a(Lu/aly/de;B)V

    goto :goto_1

    :pswitch_5
    iget-byte v1, v0, Lu/aly/cz;->b:B

    if-ne v1, v4, :cond_5

    invoke-virtual {p1}, Lu/aly/de;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bq;->f:I

    invoke-virtual {p2, v2}, Lu/aly/bq;->f(Z)V

    goto :goto_1

    :cond_5
    iget-byte v0, v0, Lu/aly/cz;->b:B

    invoke-static {p1, v0}, Lu/aly/dh;->a(Lu/aly/de;B)V

    goto :goto_1

    :pswitch_6
    iget-byte v1, v0, Lu/aly/cz;->b:B

    if-ne v1, v3, :cond_6

    invoke-virtual {p1}, Lu/aly/de;->A()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bq;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v2}, Lu/aly/bq;->g(Z)V

    goto/16 :goto_1

    :cond_6
    iget-byte v0, v0, Lu/aly/cz;->b:B

    invoke-static {p1, v0}, Lu/aly/dh;->a(Lu/aly/de;B)V

    goto/16 :goto_1

    :pswitch_7
    iget-byte v1, v0, Lu/aly/cz;->b:B

    if-ne v1, v3, :cond_7

    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bq;->h:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lu/aly/bq;->h(Z)V

    goto/16 :goto_1

    :cond_7
    iget-byte v0, v0, Lu/aly/cz;->b:B

    invoke-static {p1, v0}, Lu/aly/dh;->a(Lu/aly/de;B)V

    goto/16 :goto_1

    :pswitch_8
    iget-byte v1, v0, Lu/aly/cz;->b:B

    if-ne v1, v3, :cond_8

    invoke-virtual {p1}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bq;->i:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lu/aly/bq;->i(Z)V

    goto/16 :goto_1

    :cond_8
    iget-byte v0, v0, Lu/aly/cz;->b:B

    invoke-static {p1, v0}, Lu/aly/dh;->a(Lu/aly/de;B)V

    goto/16 :goto_1

    :pswitch_9
    iget-byte v1, v0, Lu/aly/cz;->b:B

    if-ne v1, v4, :cond_9

    invoke-virtual {p1}, Lu/aly/de;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bq;->j:I

    invoke-virtual {p2, v2}, Lu/aly/bq;->j(Z)V

    goto/16 :goto_1

    :cond_9
    iget-byte v0, v0, Lu/aly/cz;->b:B

    invoke-static {p1, v0}, Lu/aly/dh;->a(Lu/aly/de;B)V

    goto/16 :goto_1

    :cond_a
    invoke-virtual {p1}, Lu/aly/de;->k()V

    invoke-virtual {p2}, Lu/aly/bq;->n()Z

    move-result v0

    if-nez v0, :cond_b

    new-instance v0, Lu/aly/df;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'serial_num\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/df;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-virtual {p2}, Lu/aly/bq;->r()Z

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lu/aly/df;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'ts_secs\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/df;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    invoke-virtual {p2}, Lu/aly/bq;->u()Z

    move-result v0

    if-nez v0, :cond_d

    new-instance v0, Lu/aly/df;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'length\' was not found in serialized data! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/df;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    invoke-virtual {p2}, Lu/aly/bq;->I()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public synthetic a(Lu/aly/de;Lu/aly/cf;)V
    .locals 0

    check-cast p2, Lu/aly/bq;

    invoke-virtual {p0, p1, p2}, Lu/aly/bq$a;->b(Lu/aly/de;Lu/aly/bq;)V

    return-void
.end method

.method public b(Lu/aly/de;Lu/aly/bq;)V
    .locals 1

    invoke-virtual {p2}, Lu/aly/bq;->I()V

    invoke-static {}, Lu/aly/bq;->J()Lu/aly/dj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/dj;)V

    iget-object v0, p2, Lu/aly/bq;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lu/aly/bq;->K()Lu/aly/cz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/cz;)V

    iget-object v0, p2, Lu/aly/bq;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lu/aly/de;->c()V

    :cond_0
    iget-object v0, p2, Lu/aly/bq;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {}, Lu/aly/bq;->L()Lu/aly/cz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/cz;)V

    iget-object v0, p2, Lu/aly/bq;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lu/aly/de;->c()V

    :cond_1
    iget-object v0, p2, Lu/aly/bq;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {}, Lu/aly/bq;->M()Lu/aly/cz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/cz;)V

    iget-object v0, p2, Lu/aly/bq;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lu/aly/de;->c()V

    :cond_2
    invoke-static {}, Lu/aly/bq;->N()Lu/aly/cz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/cz;)V

    iget v0, p2, Lu/aly/bq;->d:I

    invoke-virtual {p1, v0}, Lu/aly/de;->a(I)V

    invoke-virtual {p1}, Lu/aly/de;->c()V

    invoke-static {}, Lu/aly/bq;->O()Lu/aly/cz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/cz;)V

    iget v0, p2, Lu/aly/bq;->e:I

    invoke-virtual {p1, v0}, Lu/aly/de;->a(I)V

    invoke-virtual {p1}, Lu/aly/de;->c()V

    invoke-static {}, Lu/aly/bq;->P()Lu/aly/cz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/cz;)V

    iget v0, p2, Lu/aly/bq;->f:I

    invoke-virtual {p1, v0}, Lu/aly/de;->a(I)V

    invoke-virtual {p1}, Lu/aly/de;->c()V

    iget-object v0, p2, Lu/aly/bq;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_3

    invoke-static {}, Lu/aly/bq;->Q()Lu/aly/cz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/cz;)V

    iget-object v0, p2, Lu/aly/bq;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Lu/aly/de;->c()V

    :cond_3
    iget-object v0, p2, Lu/aly/bq;->h:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-static {}, Lu/aly/bq;->R()Lu/aly/cz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/cz;)V

    iget-object v0, p2, Lu/aly/bq;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lu/aly/de;->c()V

    :cond_4
    iget-object v0, p2, Lu/aly/bq;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-static {}, Lu/aly/bq;->S()Lu/aly/cz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/cz;)V

    iget-object v0, p2, Lu/aly/bq;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lu/aly/de;->c()V

    :cond_5
    invoke-virtual {p2}, Lu/aly/bq;->H()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lu/aly/bq;->T()Lu/aly/cz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/cz;)V

    iget v0, p2, Lu/aly/bq;->j:I

    invoke-virtual {p1, v0}, Lu/aly/de;->a(I)V

    invoke-virtual {p1}, Lu/aly/de;->c()V

    :cond_6
    invoke-virtual {p1}, Lu/aly/de;->d()V

    invoke-virtual {p1}, Lu/aly/de;->b()V

    return-void
.end method

.method public synthetic b(Lu/aly/de;Lu/aly/cf;)V
    .locals 0

    check-cast p2, Lu/aly/bq;

    invoke-virtual {p0, p1, p2}, Lu/aly/bq$a;->a(Lu/aly/de;Lu/aly/bq;)V

    return-void
.end method
