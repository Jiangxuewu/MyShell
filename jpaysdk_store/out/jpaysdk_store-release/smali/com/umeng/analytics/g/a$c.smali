.class Lcom/umeng/analytics/g/a$c;
.super La/a/a/c/d;
.source "UMEnvelope.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "La/a/a/c/d",
        "<",
        "Lcom/umeng/analytics/g/a;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 895
    invoke-direct {p0}, La/a/a/c/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/g/a$1;)V
    .locals 0

    .prologue
    .line 895
    invoke-direct {p0}, Lcom/umeng/analytics/g/a$c;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(La/a/a/b/h;La/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/j;
        }
    .end annotation

    .prologue
    .line 895
    check-cast p2, Lcom/umeng/analytics/g/a;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/g/a$c;->a(La/a/a/b/h;Lcom/umeng/analytics/g/a;)V

    return-void
.end method

.method public a(La/a/a/b/h;Lcom/umeng/analytics/g/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/j;
        }
    .end annotation

    .prologue
    .line 900
    check-cast p1, La/a/a/b/n;

    .line 901
    iget-object v0, p2, Lcom/umeng/analytics/g/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/a/b/n;->a(Ljava/lang/String;)V

    .line 902
    iget-object v0, p2, Lcom/umeng/analytics/g/a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/a/b/n;->a(Ljava/lang/String;)V

    .line 903
    iget-object v0, p2, Lcom/umeng/analytics/g/a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/a/b/n;->a(Ljava/lang/String;)V

    .line 904
    iget v0, p2, Lcom/umeng/analytics/g/a;->d:I

    invoke-virtual {p1, v0}, La/a/a/b/n;->a(I)V

    .line 905
    iget v0, p2, Lcom/umeng/analytics/g/a;->e:I

    invoke-virtual {p1, v0}, La/a/a/b/n;->a(I)V

    .line 906
    iget v0, p2, Lcom/umeng/analytics/g/a;->f:I

    invoke-virtual {p1, v0}, La/a/a/b/n;->a(I)V

    .line 907
    iget-object v0, p2, Lcom/umeng/analytics/g/a;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, v0}, La/a/a/b/n;->a(Ljava/nio/ByteBuffer;)V

    .line 908
    iget-object v0, p2, Lcom/umeng/analytics/g/a;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/a/b/n;->a(Ljava/lang/String;)V

    .line 909
    iget-object v0, p2, Lcom/umeng/analytics/g/a;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/a/a/b/n;->a(Ljava/lang/String;)V

    .line 910
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 911
    invoke-virtual {p2}, Lcom/umeng/analytics/g/a;->H()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 912
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 914
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, La/a/a/b/n;->a(Ljava/util/BitSet;I)V

    .line 915
    invoke-virtual {p2}, Lcom/umeng/analytics/g/a;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 916
    iget v0, p2, Lcom/umeng/analytics/g/a;->j:I

    invoke-virtual {p1, v0}, La/a/a/b/n;->a(I)V

    .line 918
    :cond_1
    return-void
.end method

.method public bridge synthetic b(La/a/a/b/h;La/a/a/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/j;
        }
    .end annotation

    .prologue
    .line 895
    check-cast p2, Lcom/umeng/analytics/g/a;

    invoke-virtual {p0, p1, p2}, Lcom/umeng/analytics/g/a$c;->b(La/a/a/b/h;Lcom/umeng/analytics/g/a;)V

    return-void
.end method

.method public b(La/a/a/b/h;Lcom/umeng/analytics/g/a;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/j;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 923
    check-cast p1, La/a/a/b/n;

    .line 924
    invoke-virtual {p1}, La/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/g/a;->a:Ljava/lang/String;

    .line 925
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/g/a;->a(Z)V

    .line 926
    invoke-virtual {p1}, La/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/g/a;->b:Ljava/lang/String;

    .line 927
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/g/a;->b(Z)V

    .line 928
    invoke-virtual {p1}, La/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/g/a;->c:Ljava/lang/String;

    .line 929
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/g/a;->c(Z)V

    .line 930
    invoke-virtual {p1}, La/a/a/b/n;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/g/a;->d:I

    .line 931
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/g/a;->d(Z)V

    .line 932
    invoke-virtual {p1}, La/a/a/b/n;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/g/a;->e:I

    .line 933
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/g/a;->e(Z)V

    .line 934
    invoke-virtual {p1}, La/a/a/b/n;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/g/a;->f:I

    .line 935
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/g/a;->f(Z)V

    .line 936
    invoke-virtual {p1}, La/a/a/b/n;->A()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/g/a;->g:Ljava/nio/ByteBuffer;

    .line 937
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/g/a;->g(Z)V

    .line 938
    invoke-virtual {p1}, La/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/g/a;->h:Ljava/lang/String;

    .line 939
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/g/a;->h(Z)V

    .line 940
    invoke-virtual {p1}, La/a/a/b/n;->z()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/umeng/analytics/g/a;->i:Ljava/lang/String;

    .line 941
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/g/a;->i(Z)V

    .line 942
    invoke-virtual {p1, v2}, La/a/a/b/n;->b(I)Ljava/util/BitSet;

    move-result-object v0

    .line 943
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 944
    invoke-virtual {p1}, La/a/a/b/n;->w()I

    move-result v0

    iput v0, p2, Lcom/umeng/analytics/g/a;->j:I

    .line 945
    invoke-virtual {p2, v2}, Lcom/umeng/analytics/g/a;->j(Z)V

    .line 947
    :cond_0
    return-void
.end method
