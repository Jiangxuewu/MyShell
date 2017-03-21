.class Lu/aly/cp$a;
.super Lu/aly/do;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lu/aly/do;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/cp$1;)V
    .locals 0

    invoke-direct {p0}, Lu/aly/cp$a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Lu/aly/de;Lu/aly/cf;)V
    .locals 0

    check-cast p2, Lu/aly/cp;

    invoke-virtual {p0, p1, p2}, Lu/aly/cp$a;->b(Lu/aly/de;Lu/aly/cp;)V

    return-void
.end method

.method public a(Lu/aly/de;Lu/aly/cp;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p2, Lu/aly/cp;->b:Lu/aly/cm;

    iput-object v0, p2, Lu/aly/cp;->a:Ljava/lang/Object;

    invoke-virtual {p1}, Lu/aly/de;->j()Lu/aly/dj;

    invoke-virtual {p1}, Lu/aly/de;->l()Lu/aly/cz;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lu/aly/cp;->a(Lu/aly/de;Lu/aly/cz;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, Lu/aly/cp;->a:Ljava/lang/Object;

    iget-object v1, p2, Lu/aly/cp;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-short v0, v0, Lu/aly/cz;->c:S

    invoke-virtual {p2, v0}, Lu/aly/cp;->a(S)Lu/aly/cm;

    move-result-object v0

    iput-object v0, p2, Lu/aly/cp;->b:Lu/aly/cm;

    :cond_0
    invoke-virtual {p1}, Lu/aly/de;->m()V

    invoke-virtual {p1}, Lu/aly/de;->l()Lu/aly/cz;

    invoke-virtual {p1}, Lu/aly/de;->k()V

    return-void
.end method

.method public synthetic b(Lu/aly/de;Lu/aly/cf;)V
    .locals 0

    check-cast p2, Lu/aly/cp;

    invoke-virtual {p0, p1, p2}, Lu/aly/cp$a;->a(Lu/aly/de;Lu/aly/cp;)V

    return-void
.end method

.method public b(Lu/aly/de;Lu/aly/cp;)V
    .locals 2

    invoke-virtual {p2}, Lu/aly/cp;->a()Lu/aly/cm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lu/aly/cp;->c()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lu/aly/df;

    const-string v1, "Cannot write a TUnion with no set value!"

    invoke-direct {v0, v1}, Lu/aly/df;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p2}, Lu/aly/cp;->e()Lu/aly/dj;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/dj;)V

    iget-object v0, p2, Lu/aly/cp;->b:Lu/aly/cm;

    invoke-virtual {p2, v0}, Lu/aly/cp;->c(Lu/aly/cm;)Lu/aly/cz;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/cz;)V

    invoke-virtual {p2, p1}, Lu/aly/cp;->c(Lu/aly/de;)V

    invoke-virtual {p1}, Lu/aly/de;->c()V

    invoke-virtual {p1}, Lu/aly/de;->d()V

    invoke-virtual {p1}, Lu/aly/de;->b()V

    return-void
.end method
