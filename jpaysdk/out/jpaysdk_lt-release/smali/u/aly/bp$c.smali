.class Lu/aly/bp$c;
.super Lu/aly/dp;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lu/aly/dp;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bp$1;)V
    .locals 0

    invoke-direct {p0}, Lu/aly/bp$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/de;Lu/aly/bp;)V
    .locals 2

    check-cast p1, Lu/aly/dk;

    iget v0, p2, Lu/aly/bp;->a:I

    invoke-virtual {p1, v0}, Lu/aly/dk;->a(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    invoke-virtual {p2}, Lu/aly/bp;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_0
    invoke-virtual {p2}, Lu/aly/bp;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lu/aly/dk;->a(Ljava/util/BitSet;I)V

    invoke-virtual {p2}, Lu/aly/bp;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lu/aly/bp;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dk;->a(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p2}, Lu/aly/bp;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p2, Lu/aly/bp;->c:Lu/aly/bn;

    invoke-virtual {v0, p1}, Lu/aly/bn;->b(Lu/aly/de;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic a(Lu/aly/de;Lu/aly/cf;)V
    .locals 0

    check-cast p2, Lu/aly/bp;

    invoke-virtual {p0, p1, p2}, Lu/aly/bp$c;->a(Lu/aly/de;Lu/aly/bp;)V

    return-void
.end method

.method public b(Lu/aly/de;Lu/aly/bp;)V
    .locals 3

    const/4 v2, 0x1

    check-cast p1, Lu/aly/dk;

    invoke-virtual {p1}, Lu/aly/dk;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bp;->a:I

    invoke-virtual {p2, v2}, Lu/aly/bp;->a(Z)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lu/aly/dk;->b(I)Ljava/util/BitSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lu/aly/dk;->z()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lu/aly/bp;->b:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lu/aly/bp;->b(Z)V

    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lu/aly/bn;

    invoke-direct {v0}, Lu/aly/bn;-><init>()V

    iput-object v0, p2, Lu/aly/bp;->c:Lu/aly/bn;

    iget-object v0, p2, Lu/aly/bp;->c:Lu/aly/bn;

    invoke-virtual {v0, p1}, Lu/aly/bn;->a(Lu/aly/de;)V

    invoke-virtual {p2, v2}, Lu/aly/bp;->c(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic b(Lu/aly/de;Lu/aly/cf;)V
    .locals 0

    check-cast p2, Lu/aly/bp;

    invoke-virtual {p0, p1, p2}, Lu/aly/bp$c;->b(Lu/aly/de;Lu/aly/bp;)V

    return-void
.end method
