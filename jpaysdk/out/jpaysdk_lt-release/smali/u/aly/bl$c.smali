.class Lu/aly/bl$c;
.super Lu/aly/dp;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lu/aly/dp;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bl$1;)V
    .locals 0

    invoke-direct {p0}, Lu/aly/bl$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu/aly/de;Lu/aly/bl;)V
    .locals 2

    check-cast p1, Lu/aly/dk;

    iget-object v0, p2, Lu/aly/bl;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lu/aly/dk;->a(Ljava/lang/String;)V

    iget-wide v0, p2, Lu/aly/bl;->b:J

    invoke-virtual {p1, v0, v1}, Lu/aly/dk;->a(J)V

    iget v0, p2, Lu/aly/bl;->c:I

    invoke-virtual {p1, v0}, Lu/aly/dk;->a(I)V

    return-void
.end method

.method public bridge synthetic a(Lu/aly/de;Lu/aly/cf;)V
    .locals 0

    check-cast p2, Lu/aly/bl;

    invoke-virtual {p0, p1, p2}, Lu/aly/bl$c;->a(Lu/aly/de;Lu/aly/bl;)V

    return-void
.end method

.method public b(Lu/aly/de;Lu/aly/bl;)V
    .locals 3

    const/4 v2, 0x1

    check-cast p1, Lu/aly/dk;

    invoke-virtual {p1}, Lu/aly/dk;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lu/aly/bl;->a:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lu/aly/bl;->a(Z)V

    invoke-virtual {p1}, Lu/aly/dk;->x()J

    move-result-wide v0

    iput-wide v0, p2, Lu/aly/bl;->b:J

    invoke-virtual {p2, v2}, Lu/aly/bl;->b(Z)V

    invoke-virtual {p1}, Lu/aly/dk;->w()I

    move-result v0

    iput v0, p2, Lu/aly/bl;->c:I

    invoke-virtual {p2, v2}, Lu/aly/bl;->c(Z)V

    return-void
.end method

.method public bridge synthetic b(Lu/aly/de;Lu/aly/cf;)V
    .locals 0

    check-cast p2, Lu/aly/bl;

    invoke-virtual {p0, p1, p2}, Lu/aly/bl$c;->b(Lu/aly/de;Lu/aly/bl;)V

    return-void
.end method
