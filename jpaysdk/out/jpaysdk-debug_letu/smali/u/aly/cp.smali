.class public abstract Lu/aly/cp;
.super Ljava/lang/Object;

# interfaces
.implements Lu/aly/cf;


# static fields
.field private static final c:Ljava/util/Map;


# instance fields
.field protected a:Ljava/lang/Object;

.field protected b:Lu/aly/cm;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/cp;->c:Ljava/util/Map;

    const-class v1, Lu/aly/do;

    new-instance v2, Lu/aly/cp$b;

    invoke-direct {v2, v3}, Lu/aly/cp$b;-><init>(Lu/aly/cp$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lu/aly/cp;->c:Ljava/util/Map;

    const-class v1, Lu/aly/dp;

    new-instance v2, Lu/aly/cp$d;

    invoke-direct {v2, v3}, Lu/aly/cp$d;-><init>(Lu/aly/cp$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lu/aly/cp;->b:Lu/aly/cm;

    iput-object v0, p0, Lu/aly/cp;->a:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lu/aly/cm;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lu/aly/cp;->a(Lu/aly/cm;Ljava/lang/Object;)V

    return-void
.end method

.method protected constructor <init>(Lu/aly/cp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p1, Lu/aly/cp;->b:Lu/aly/cm;

    iput-object v0, p0, Lu/aly/cp;->b:Lu/aly/cm;

    iget-object v0, p1, Lu/aly/cp;->a:Ljava/lang/Object;

    invoke-static {v0}, Lu/aly/cp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lu/aly/cp;->a:Ljava/lang/Object;

    return-void
.end method

.method private static a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    instance-of v0, p0, Lu/aly/cf;

    if-eqz v0, :cond_1

    check-cast p0, Lu/aly/cf;

    invoke-interface {p0}, Lu/aly/cf;->p()Lu/aly/cf;

    move-result-object p0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-static {p0}, Lu/aly/cg;->d(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    move-result-object p0

    goto :goto_0

    :cond_2
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_3

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Lu/aly/cp;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_3
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/util/Set;

    invoke-static {p0}, Lu/aly/cp;->a(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    :cond_4
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lu/aly/cp;->a(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0
.end method

.method private static a(Ljava/util/List;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lu/aly/cp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static a(Ljava/util/Map;)Ljava/util/Map;
    .locals 4

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

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

    move-result-object v3

    invoke-static {v3}, Lu/aly/cp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lu/aly/cp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private static a(Ljava/util/Set;)Ljava/util/Set;
    .locals 3

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lu/aly/cp;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 1

    int-to-short v0, p1

    invoke-virtual {p0, v0}, Lu/aly/cp;->a(S)Lu/aly/cm;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/aly/cp;->a(Lu/aly/cm;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public a(Lu/aly/cm;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lu/aly/cp;->b:Lu/aly/cm;

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot get the value of field "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because union\'s set field is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lu/aly/cp;->b:Lu/aly/cm;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Lu/aly/cp;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract a(Lu/aly/de;Lu/aly/cz;)Ljava/lang/Object;
.end method

.method protected abstract a(Lu/aly/de;S)Ljava/lang/Object;
.end method

.method public a()Lu/aly/cm;
    .locals 1

    iget-object v0, p0, Lu/aly/cp;->b:Lu/aly/cm;

    return-object v0
.end method

.method protected abstract a(S)Lu/aly/cm;
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1

    int-to-short v0, p1

    invoke-virtual {p0, v0}, Lu/aly/cp;->a(S)Lu/aly/cm;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lu/aly/cp;->a(Lu/aly/cm;Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lu/aly/cm;Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lu/aly/cp;->b(Lu/aly/cm;Ljava/lang/Object;)V

    iput-object p1, p0, Lu/aly/cp;->b:Lu/aly/cm;

    iput-object p2, p0, Lu/aly/cp;->a:Ljava/lang/Object;

    return-void
.end method

.method public a(Lu/aly/de;)V
    .locals 2

    sget-object v0, Lu/aly/cp;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/de;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dn;

    invoke-interface {v0}, Lu/aly/dn;->b()Lu/aly/dm;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dm;->b(Lu/aly/de;Lu/aly/cf;)V

    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/cp;->b:Lu/aly/cm;

    iput-object v0, p0, Lu/aly/cp;->a:Ljava/lang/Object;

    return-void
.end method

.method protected abstract b(Lu/aly/cm;Ljava/lang/Object;)V
.end method

.method public b(Lu/aly/de;)V
    .locals 2

    sget-object v0, Lu/aly/cp;->c:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/de;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/dn;

    invoke-interface {v0}, Lu/aly/dn;->b()Lu/aly/dm;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lu/aly/dm;->a(Lu/aly/de;Lu/aly/cf;)V

    return-void
.end method

.method public b(Lu/aly/cm;)Z
    .locals 1

    iget-object v0, p0, Lu/aly/cp;->b:Lu/aly/cm;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lu/aly/cp;->a:Ljava/lang/Object;

    return-object v0
.end method

.method protected abstract c(Lu/aly/cm;)Lu/aly/cz;
.end method

.method protected abstract c(Lu/aly/de;)V
.end method

.method public c(I)Z
    .locals 1

    int-to-short v0, p1

    invoke-virtual {p0, v0}, Lu/aly/cp;->a(S)Lu/aly/cm;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/aly/cp;->b(Lu/aly/cm;)Z

    move-result v0

    return v0
.end method

.method protected abstract d(Lu/aly/de;)V
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lu/aly/cp;->b:Lu/aly/cm;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract e()Lu/aly/dj;
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lu/aly/cp;->a()Lu/aly/cm;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lu/aly/cp;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lu/aly/cp;->a()Lu/aly/cm;

    move-result-object v2

    invoke-virtual {p0, v2}, Lu/aly/cp;->c(Lu/aly/cm;)Lu/aly/cz;

    move-result-object v2

    iget-object v2, v2, Lu/aly/cz;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    instance-of v2, v0, Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_1

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0, v1}, Lu/aly/cg;->a(Ljava/nio/ByteBuffer;Ljava/lang/StringBuilder;)V

    :cond_0
    :goto_0
    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
