.class public Lu/aly/bn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/cf;


# static fields
.field public static final d:Ljava/util/Map;

.field private static final e:J = 0x2780a889f75f91feL

.field private static final f:Lu/aly/dj;

.field private static final g:Lu/aly/cz;

.field private static final h:Lu/aly/cz;

.field private static final i:Lu/aly/cz;

.field private static final j:Ljava/util/Map;

.field private static final k:I


# instance fields
.field public a:Ljava/util/Map;

.field public b:I

.field public c:Ljava/lang/String;

.field private l:B


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v3, 0x0

    const/16 v12, 0xd

    const/16 v11, 0x8

    const/16 v10, 0xb

    const/4 v9, 0x1

    new-instance v0, Lu/aly/dj;

    const-string v1, "Imprint"

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bn;->f:Lu/aly/dj;

    new-instance v0, Lu/aly/cz;

    const-string v1, "property"

    invoke-direct {v0, v1, v12, v9}, Lu/aly/cz;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->g:Lu/aly/cz;

    new-instance v0, Lu/aly/cz;

    const-string v1, "version"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v11, v2}, Lu/aly/cz;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->h:Lu/aly/cz;

    new-instance v0, Lu/aly/cz;

    const-string v1, "checksum"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v10, v2}, Lu/aly/cz;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bn;->i:Lu/aly/cz;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bn;->j:Ljava/util/Map;

    const-class v1, Lu/aly/do;

    new-instance v2, Lu/aly/bn$b;

    invoke-direct {v2, v3}, Lu/aly/bn$b;-><init>(Lu/aly/bn$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lu/aly/bn;->j:Ljava/util/Map;

    const-class v1, Lu/aly/dp;

    new-instance v2, Lu/aly/bn$d;

    invoke-direct {v2, v3}, Lu/aly/bn$d;-><init>(Lu/aly/bn$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bn$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lu/aly/bn$e;->a:Lu/aly/bn$e;

    new-instance v2, Lu/aly/cr;

    const-string v3, "property"

    new-instance v4, Lu/aly/cu;

    new-instance v5, Lu/aly/cs;

    invoke-direct {v5, v10}, Lu/aly/cs;-><init>(B)V

    new-instance v6, Lu/aly/cw;

    const/16 v7, 0xc

    const-class v8, Lu/aly/bo;

    invoke-direct {v6, v7, v8}, Lu/aly/cw;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v12, v5, v6}, Lu/aly/cu;-><init>(BLu/aly/cs;Lu/aly/cs;)V

    invoke-direct {v2, v3, v9, v4}, Lu/aly/cr;-><init>(Ljava/lang/String;BLu/aly/cs;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lu/aly/bn$e;->b:Lu/aly/bn$e;

    new-instance v2, Lu/aly/cr;

    const-string v3, "version"

    new-instance v4, Lu/aly/cs;

    invoke-direct {v4, v11}, Lu/aly/cs;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lu/aly/cr;-><init>(Ljava/lang/String;BLu/aly/cs;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lu/aly/bn$e;->c:Lu/aly/bn$e;

    new-instance v2, Lu/aly/cr;

    const-string v3, "checksum"

    new-instance v4, Lu/aly/cs;

    invoke-direct {v4, v10}, Lu/aly/cs;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, Lu/aly/cr;-><init>(Ljava/lang/String;BLu/aly/cs;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bn;->d:Ljava/util/Map;

    const-class v0, Lu/aly/bn;

    sget-object v1, Lu/aly/bn;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cr;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/bn;->l:B

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lu/aly/bn;-><init>()V

    iput-object p1, p0, Lu/aly/bn;->a:Ljava/util/Map;

    iput p2, p0, Lu/aly/bn;->b:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bn;->b(Z)V

    iput-object p3, p0, Lu/aly/bn;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lu/aly/bn;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/bn;->l:B

    iget-byte v0, p1, Lu/aly/bn;->l:B

    iput-byte v0, p0, Lu/aly/bn;->l:B

    invoke-virtual {p1}, Lu/aly/bn;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p1, Lu/aly/bn;->a:Ljava/util/Map;

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

    check-cast v0, Lu/aly/bo;

    new-instance v4, Lu/aly/bo;

    invoke-direct {v4, v0}, Lu/aly/bo;-><init>(Lu/aly/bo;)V

    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lu/aly/bn;->a:Ljava/util/Map;

    :cond_1
    iget v0, p1, Lu/aly/bn;->b:I

    iput v0, p0, Lu/aly/bn;->b:I

    invoke-virtual {p1}, Lu/aly/bn;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lu/aly/bn;->c:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bn;->c:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lu/aly/bn;->l:B

    new-instance v0, Lu/aly/cy;

    new-instance v1, Lu/aly/dq;

    invoke-direct {v1, p1}, Lu/aly/dq;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cy;-><init>(Lu/aly/ds;)V

    invoke-virtual {p0, v0}, Lu/aly/bn;->a(Lu/aly/de;)V
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

    invoke-virtual {p0, v0}, Lu/aly/bn;->b(Lu/aly/de;)V
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

.method static synthetic n()Lu/aly/dj;
    .locals 1

    sget-object v0, Lu/aly/bn;->f:Lu/aly/dj;

    return-object v0
.end method

.method static synthetic o()Lu/aly/cz;
    .locals 1

    sget-object v0, Lu/aly/bn;->g:Lu/aly/cz;

    return-object v0
.end method

.method static synthetic q()Lu/aly/cz;
    .locals 1

    sget-object v0, Lu/aly/bn;->h:Lu/aly/cz;

    return-object v0
.end method

.method static synthetic r()Lu/aly/cz;
    .locals 1

    sget-object v0, Lu/aly/bn;->i:Lu/aly/cz;

    return-object v0
.end method


# virtual methods
.method public a()Lu/aly/bn;
    .locals 1

    new-instance v0, Lu/aly/bn;

    invoke-direct {v0, p0}, Lu/aly/bn;-><init>(Lu/aly/bn;)V

    return-object v0
.end method

.method public a(I)Lu/aly/bn;
    .locals 1

    iput p1, p0, Lu/aly/bn;->b:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bn;->b(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/bn;
    .locals 0

    iput-object p1, p0, Lu/aly/bn;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lu/aly/bn;
    .locals 0

    iput-object p1, p0, Lu/aly/bn;->a:Ljava/util/Map;

    return-object p0
.end method

.method public a(Ljava/lang/String;Lu/aly/bo;)V
    .locals 1

    iget-object v0, p0, Lu/aly/bn;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu/aly/bn;->a:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lu/aly/bn;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Lu/aly/de;)V
    .locals 2

    sget-object v0, Lu/aly/bn;->j:Ljava/util/Map;

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

    iput-object v0, p0, Lu/aly/bn;->a:Ljava/util/Map;

    :cond_0
    return-void
.end method

.method public synthetic b(I)Lu/aly/cm;
    .locals 1

    invoke-virtual {p0, p1}, Lu/aly/bn;->c(I)Lu/aly/bn$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v1, p0, Lu/aly/bn;->a:Ljava/util/Map;

    invoke-virtual {p0, v0}, Lu/aly/bn;->b(Z)V

    iput v0, p0, Lu/aly/bn;->b:I

    iput-object v1, p0, Lu/aly/bn;->c:Ljava/lang/String;

    return-void
.end method

.method public b(Lu/aly/de;)V
    .locals 2

    sget-object v0, Lu/aly/bn;->j:Ljava/util/Map;

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
    .locals 2

    iget-byte v0, p0, Lu/aly/bn;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/cc;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bn;->l:B

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lu/aly/bn;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lu/aly/bn;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0
.end method

.method public c(I)Lu/aly/bn$e;
    .locals 1

    invoke-static {p1}, Lu/aly/bn$e;->a(I)Lu/aly/bn$e;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public d()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lu/aly/bn;->a:Ljava/util/Map;

    return-object v0
.end method

.method public e()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->a:Ljava/util/Map;

    return-void
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lu/aly/bn;->a:Ljava/util/Map;

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

    iget v0, p0, Lu/aly/bn;->b:I

    return v0
.end method

.method public h()V
    .locals 2

    iget-byte v0, p0, Lu/aly/bn;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/cc;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bn;->l:B

    return-void
.end method

.method public i()Z
    .locals 2

    iget-byte v0, p0, Lu/aly/bn;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/cc;->a(BI)Z

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu/aly/bn;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bn;->c:Ljava/lang/String;

    return-void
.end method

.method public l()Z
    .locals 1

    iget-object v0, p0, Lu/aly/bn;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()V
    .locals 3

    iget-object v0, p0, Lu/aly/bn;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Lu/aly/df;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'property\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lu/aly/bn;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/df;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lu/aly/bn;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    new-instance v0, Lu/aly/df;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'checksum\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lu/aly/bn;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/df;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method public synthetic p()Lu/aly/cf;
    .locals 1

    invoke-virtual {p0}, Lu/aly/bn;->a()Lu/aly/bn;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Imprint("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "property:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu/aly/bn;->a:Ljava/util/Map;

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lu/aly/bn;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu/aly/bn;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lu/aly/bn;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lu/aly/bn;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
