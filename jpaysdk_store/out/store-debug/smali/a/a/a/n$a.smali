.class La/a/a/n$a;
.super La/a/a/c/c;
.source "TUnion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/a/c/c",
        "<",
        "La/a/a/n;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, La/a/a/c/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(La/a/a/n$1;)V
    .locals 0

    .prologue
    .line 216
    invoke-direct {p0}, La/a/a/n$a;-><init>()V

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
    .line 216
    check-cast p2, La/a/a/n;

    invoke-virtual {p0, p1, p2}, La/a/a/n$a;->b(La/a/a/b/h;La/a/a/n;)V

    return-void
.end method

.method public a(La/a/a/b/h;La/a/a/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 220
    iput-object v0, p2, La/a/a/n;->b:La/a/a/k;

    .line 221
    iput-object v0, p2, La/a/a/n;->a:Ljava/lang/Object;

    .line 223
    invoke-virtual {p1}, La/a/a/b/h;->j()La/a/a/b/m;

    .line 225
    invoke-virtual {p1}, La/a/a/b/h;->l()La/a/a/b/c;

    move-result-object v0

    .line 227
    invoke-virtual {p2, p1, v0}, La/a/a/n;->a(La/a/a/b/h;La/a/a/b/c;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p2, La/a/a/n;->a:Ljava/lang/Object;

    .line 228
    iget-object v1, p2, La/a/a/n;->a:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 229
    iget-short v0, v0, La/a/a/b/c;->c:S

    invoke-virtual {p2, v0}, La/a/a/n;->a(S)La/a/a/k;

    move-result-object v0

    iput-object v0, p2, La/a/a/n;->b:La/a/a/k;

    .line 232
    :cond_0
    invoke-virtual {p1}, La/a/a/b/h;->m()V

    .line 236
    invoke-virtual {p1}, La/a/a/b/h;->l()La/a/a/b/c;

    .line 237
    invoke-virtual {p1}, La/a/a/b/h;->k()V

    .line 238
    return-void
.end method

.method public synthetic b(La/a/a/b/h;La/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/j;
        }
    .end annotation

    .prologue
    .line 216
    check-cast p2, La/a/a/n;

    invoke-virtual {p0, p1, p2}, La/a/a/n$a;->a(La/a/a/b/h;La/a/a/n;)V

    return-void
.end method

.method public b(La/a/a/b/h;La/a/a/n;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/j;
        }
    .end annotation

    .prologue
    .line 242
    invoke-virtual {p2}, La/a/a/n;->a()La/a/a/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, La/a/a/n;->c()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 243
    :cond_0
    new-instance v0, La/a/a/b/i;

    const-string v1, "Cannot write a TUnion with no set value!"

    invoke-direct {v0, v1}, La/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 245
    :cond_1
    invoke-virtual {p2}, La/a/a/n;->e()La/a/a/b/m;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(La/a/a/b/m;)V

    .line 246
    iget-object v0, p2, La/a/a/n;->b:La/a/a/k;

    invoke-virtual {p2, v0}, La/a/a/n;->c(La/a/a/k;)La/a/a/b/c;

    move-result-object v0

    invoke-virtual {p1, v0}, La/a/a/b/h;->a(La/a/a/b/c;)V

    .line 247
    invoke-virtual {p2, p1}, La/a/a/n;->c(La/a/a/b/h;)V

    .line 248
    invoke-virtual {p1}, La/a/a/b/h;->c()V

    .line 249
    invoke-virtual {p1}, La/a/a/b/h;->d()V

    .line 250
    invoke-virtual {p1}, La/a/a/b/h;->b()V

    .line 251
    return-void
.end method
