.class public Lu/aly/bm;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/cf;


# static fields
.field public static final d:Ljava/util/Map;

.field private static final e:J = -0x4ffe4305ce3009afL

.field private static final f:Lu/aly/dj;

.field private static final g:Lu/aly/cz;

.field private static final h:Lu/aly/cz;

.field private static final i:Lu/aly/cz;

.field private static final j:Ljava/util/Map;


# instance fields
.field public a:Ljava/util/Map;

.field public b:Ljava/util/List;

.field public c:Ljava/lang/String;

.field private k:[Lu/aly/bm$e;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/16 v12, 0xd

    const/16 v11, 0xc

    const/4 v10, 0x1

    const/16 v9, 0xb

    const/4 v8, 0x2

    new-instance v0, Lu/aly/dj;

    const-string v1, "IdTracking"

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bm;->f:Lu/aly/dj;

    new-instance v0, Lu/aly/cz;

    const-string v1, "snapshots"

    invoke-direct {v0, v1, v12, v10}, Lu/aly/cz;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bm;->g:Lu/aly/cz;

    new-instance v0, Lu/aly/cz;

    const-string v1, "journals"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v8}, Lu/aly/cz;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bm;->h:Lu/aly/cz;

    new-instance v0, Lu/aly/cz;

    const-string v1, "checksum"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v9, v2}, Lu/aly/cz;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bm;->i:Lu/aly/cz;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bm;->j:Ljava/util/Map;

    const-class v1, Lu/aly/do;

    new-instance v2, Lu/aly/bm$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lu/aly/bm$b;-><init>(Lu/aly/bm$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lu/aly/bm;->j:Ljava/util/Map;

    const-class v1, Lu/aly/dp;

    new-instance v2, Lu/aly/bm$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lu/aly/bm$d;-><init>(Lu/aly/bm$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bm$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lu/aly/bm$e;->a:Lu/aly/bm$e;

    new-instance v2, Lu/aly/cr;

    const-string v3, "snapshots"

    new-instance v4, Lu/aly/cu;

    new-instance v5, Lu/aly/cs;

    invoke-direct {v5, v9}, Lu/aly/cs;-><init>(B)V

    new-instance v6, Lu/aly/cw;

    const-class v7, Lu/aly/bl;

    invoke-direct {v6, v11, v7}, Lu/aly/cw;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v12, v5, v6}, Lu/aly/cu;-><init>(BLu/aly/cs;Lu/aly/cs;)V

    invoke-direct {v2, v3, v10, v4}, Lu/aly/cr;-><init>(Ljava/lang/String;BLu/aly/cs;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lu/aly/bm$e;->b:Lu/aly/bm$e;

    new-instance v2, Lu/aly/cr;

    const-string v3, "journals"

    new-instance v4, Lu/aly/ct;

    const/16 v5, 0xf

    new-instance v6, Lu/aly/cw;

    const-class v7, Lu/aly/bk;

    invoke-direct {v6, v11, v7}, Lu/aly/cw;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v5, v6}, Lu/aly/ct;-><init>(BLu/aly/cs;)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cr;-><init>(Ljava/lang/String;BLu/aly/cs;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lu/aly/bm$e;->c:Lu/aly/bm$e;

    new-instance v2, Lu/aly/cr;

    const-string v3, "checksum"

    new-instance v4, Lu/aly/cs;

    invoke-direct {v4, v9}, Lu/aly/cs;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, Lu/aly/cr;-><init>(Ljava/lang/String;BLu/aly/cs;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bm;->d:Ljava/util/Map;

    const-class v0, Lu/aly/bm;

    sget-object v1, Lu/aly/bm;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cr;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lu/aly/bm$e;

    const/4 v1, 0x0

    sget-object v2, Lu/aly/bm$e;->b:Lu/aly/bm$e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lu/aly/bm$e;->c:Lu/aly/bm$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/bm;->k:[Lu/aly/bm$e;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Lu/aly/bm;-><init>()V

    iput-object p1, p0, Lu/aly/bm;->a:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lu/aly/bm;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lu/aly/bm$e;

    const/4 v1, 0x0

    sget-object v2, Lu/aly/bm$e;->b:Lu/aly/bm$e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lu/aly/bm$e;->c:Lu/aly/bm$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lu/aly/bm;->k:[Lu/aly/bm$e;

    invoke-virtual {p1}, Lu/aly/bm;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p1, Lu/aly/bm;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bl;

    new-instance v4, Lu/aly/bl;

    invoke-direct {v4, v0}, Lu/aly/bl;-><init>(Lu/aly/bl;)V

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lu/aly/bm;->a:Ljava/util/Map;

    :cond_1
    invoke-virtual {p1}, Lu/aly/bm;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p1, Lu/aly/bm;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/bk;

    new-instance v3, Lu/aly/bk;

    invoke-direct {v3, v0}, Lu/aly/bk;-><init>(Lu/aly/bk;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lu/aly/bm;->b:Ljava/util/List;

    :cond_3
    invoke-virtual {p1}, Lu/aly/bm;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lu/aly/bm;->c:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bm;->c:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2

    :try_start_0
    new-instance v0, Lu/aly/cy;

    new-instance v1, Lu/aly/dq;

    invoke-direct {v1, p1}, Lu/aly/dq;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cy;-><init>(Lu/aly/ds;)V

    invoke-virtual {p0, v0}, Lu/aly/bm;->a(Lu/aly/de;)V
    :try_end_0
    .catch Lu/aly/cl; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/cl;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 2

    :try_start_0
    new-instance v0, Lu/aly/cy;

    new-instance v1, Lu/aly/dq;

    invoke-direct {v1, p1}, Lu/aly/dq;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cy;-><init>(Lu/aly/ds;)V

    invoke-virtual {p0, v0}, Lu/aly/bm;->b(Lu/aly/de;)V
    :try_end_0
    .catch Lu/aly/cl; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Lu/aly/cl;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic q()Lu/aly/dj;
    .locals 1

    sget-object v0, Lu/aly/bm;->f:Lu/aly/dj;

    return-object v0
.end method

.method static synthetic r()Lu/aly/cz;
    .locals 1

    sget-object v0, Lu/aly/bm;->g:Lu/aly/cz;

    return-object v0
.end method

.method static synthetic s()Lu/aly/cz;
    .locals 1

    sget-object v0, Lu/aly/bm;->h:Lu/aly/cz;

    return-object v0
.end method

.method static synthetic t()Lu/aly/cz;
    .locals 1

    sget-object v0, Lu/aly/bm;->i:Lu/aly/cz;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/bm$e;
    .locals 1

    invoke-static {p1}, Lu/aly/bm$e;->a(I)Lu/aly/bm$e;

    move-result-object v0

    return-object v0
.end method

.method public a()Lu/aly/bm;
    .locals 1

    new-instance v0, Lu/aly/bm;

    invoke-direct {v0, p0}, Lu/aly/bm;-><init>(Lu/aly/bm;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lu/aly/bm;
    .locals 0

    iput-object p1, p0, Lu/aly/bm;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lu/aly/bm;
    .locals 0

    iput-object p1, p0, Lu/aly/bm;->b:Ljava/util/List;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lu/aly/bm;
    .locals 0

    iput-object p1, p0, Lu/aly/bm;->a:Ljava/util/Map;

    return-object p0
.end method

.method public a(Ljava/lang/String;Lu/aly/bl;)V
    .locals 1

    iget-object v0, p0, Lu/aly/bm;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu/aly/bm;->a:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lu/aly/bm;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lu/aly/bk;)V
    .locals 1

    iget-object v0, p0, Lu/aly/bm;->b:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/bm;->b:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lu/aly/bm;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Lu/aly/de;)V
    .locals 2

    sget-object v0, Lu/aly/bm;->j:Ljava/util/Map;

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

.method public a(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bm;->a:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public synthetic b(I)Lu/aly/cm;
    .locals 1

    invoke-virtual {p0, p1}, Lu/aly/bm;->a(I)Lu/aly/bm$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bm;->a:Ljava/util/Map;

    iput-object v0, p0, Lu/aly/bm;->b:Ljava/util/List;

    iput-object v0, p0, Lu/aly/bm;->c:Ljava/lang/String;

    return-void
.end method

.method public b(Lu/aly/de;)V
    .locals 2

    sget-object v0, Lu/aly/bm;->j:Ljava/util/Map;

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

.method public b(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bm;->b:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lu/aly/bm;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lu/aly/bm;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0
.end method

.method public c(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bm;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public d()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lu/aly/bm;->a:Ljava/util/Map;

    return-object v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bm;->a:Ljava/util/Map;

    return-void
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lu/aly/bm;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()I
    .locals 1

    iget-object v0, p0, Lu/aly/bm;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lu/aly/bm;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public h()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lu/aly/bm;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lu/aly/bm;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public i()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lu/aly/bm;->b:Ljava/util/List;

    return-object v0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bm;->b:Ljava/util/List;

    return-void
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lu/aly/bm;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu/aly/bm;->c:Ljava/lang/String;

    return-object v0
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bm;->c:Ljava/lang/String;

    return-void
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lu/aly/bm;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()V
    .locals 3

    iget-object v0, p0, Lu/aly/bm;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Lu/aly/df;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'snapshots\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lu/aly/bm;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/df;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public synthetic p()Lu/aly/cf;
    .locals 1

    invoke-virtual {p0}, Lu/aly/bm;->a()Lu/aly/bm;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdTracking("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "snapshots:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu/aly/bm;->a:Ljava/util/Map;

    if-nez v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Lu/aly/bm;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "journals:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu/aly/bm;->b:Ljava/util/List;

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    :goto_1
    invoke-virtual {p0}, Lu/aly/bm;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu/aly/bm;->c:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    :goto_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v1, p0, Lu/aly/bm;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lu/aly/bm;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lu/aly/bm;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
