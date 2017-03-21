.class public Lu/aly/bo;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/cf;


# static fields
.field public static final d:Ljava/util/Map;

.field private static final e:J = 0x681b59944df50d21L

.field private static final f:Lu/aly/dj;

.field private static final g:Lu/aly/cz;

.field private static final h:Lu/aly/cz;

.field private static final i:Lu/aly/cz;

.field private static final j:Ljava/util/Map;

.field private static final k:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/lang/String;

.field private l:B

.field private m:[Lu/aly/bo$e;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v3, 0x0

    const/16 v8, 0xa

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/16 v5, 0xb

    new-instance v0, Lu/aly/dj;

    const-string v1, "ImprintValue"

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bo;->f:Lu/aly/dj;

    new-instance v0, Lu/aly/cz;

    const-string v1, "value"

    invoke-direct {v0, v1, v5, v6}, Lu/aly/cz;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bo;->g:Lu/aly/cz;

    new-instance v0, Lu/aly/cz;

    const-string v1, "ts"

    invoke-direct {v0, v1, v8, v7}, Lu/aly/cz;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bo;->h:Lu/aly/cz;

    new-instance v0, Lu/aly/cz;

    const-string v1, "guid"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v5, v2}, Lu/aly/cz;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bo;->i:Lu/aly/cz;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bo;->j:Ljava/util/Map;

    const-class v1, Lu/aly/do;

    new-instance v2, Lu/aly/bo$b;

    invoke-direct {v2, v3}, Lu/aly/bo$b;-><init>(Lu/aly/bo$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lu/aly/bo;->j:Ljava/util/Map;

    const-class v1, Lu/aly/dp;

    new-instance v2, Lu/aly/bo$d;

    invoke-direct {v2, v3}, Lu/aly/bo$d;-><init>(Lu/aly/bo$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bo$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lu/aly/bo$e;->a:Lu/aly/bo$e;

    new-instance v2, Lu/aly/cr;

    const-string v3, "value"

    new-instance v4, Lu/aly/cs;

    invoke-direct {v4, v5}, Lu/aly/cs;-><init>(B)V

    invoke-direct {v2, v3, v7, v4}, Lu/aly/cr;-><init>(Ljava/lang/String;BLu/aly/cs;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lu/aly/bo$e;->b:Lu/aly/bo$e;

    new-instance v2, Lu/aly/cr;

    const-string v3, "ts"

    new-instance v4, Lu/aly/cs;

    invoke-direct {v4, v8}, Lu/aly/cs;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cr;-><init>(Ljava/lang/String;BLu/aly/cs;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lu/aly/bo$e;->c:Lu/aly/bo$e;

    new-instance v2, Lu/aly/cr;

    const-string v3, "guid"

    new-instance v4, Lu/aly/cs;

    invoke-direct {v4, v5}, Lu/aly/cs;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, Lu/aly/cr;-><init>(Ljava/lang/String;BLu/aly/cs;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bo;->d:Ljava/util/Map;

    const-class v0, Lu/aly/bo;

    sget-object v1, Lu/aly/bo;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cr;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, Lu/aly/bo;->l:B

    const/4 v0, 0x1

    new-array v0, v0, [Lu/aly/bo$e;

    sget-object v1, Lu/aly/bo$e;->a:Lu/aly/bo$e;

    aput-object v1, v0, v2

    iput-object v0, p0, Lu/aly/bo;->m:[Lu/aly/bo$e;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Lu/aly/bo;-><init>()V

    iput-wide p1, p0, Lu/aly/bo;->b:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bo;->b(Z)V

    iput-object p3, p0, Lu/aly/bo;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lu/aly/bo;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, Lu/aly/bo;->l:B

    const/4 v0, 0x1

    new-array v0, v0, [Lu/aly/bo$e;

    sget-object v1, Lu/aly/bo$e;->a:Lu/aly/bo$e;

    aput-object v1, v0, v2

    iput-object v0, p0, Lu/aly/bo;->m:[Lu/aly/bo$e;

    iget-byte v0, p1, Lu/aly/bo;->l:B

    iput-byte v0, p0, Lu/aly/bo;->l:B

    invoke-virtual {p1}, Lu/aly/bo;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lu/aly/bo;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bo;->a:Ljava/lang/String;

    :cond_0
    iget-wide v0, p1, Lu/aly/bo;->b:J

    iput-wide v0, p0, Lu/aly/bo;->b:J

    invoke-virtual {p1}, Lu/aly/bo;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lu/aly/bo;->c:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bo;->c:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lu/aly/bo;->l:B

    new-instance v0, Lu/aly/cy;

    new-instance v1, Lu/aly/dq;

    invoke-direct {v1, p1}, Lu/aly/dq;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cy;-><init>(Lu/aly/ds;)V

    invoke-virtual {p0, v0}, Lu/aly/bo;->a(Lu/aly/de;)V
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

    invoke-virtual {p0, v0}, Lu/aly/bo;->b(Lu/aly/de;)V
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

.method static synthetic m()Lu/aly/dj;
    .locals 1

    sget-object v0, Lu/aly/bo;->f:Lu/aly/dj;

    return-object v0
.end method

.method static synthetic n()Lu/aly/cz;
    .locals 1

    sget-object v0, Lu/aly/bo;->g:Lu/aly/cz;

    return-object v0
.end method

.method static synthetic o()Lu/aly/cz;
    .locals 1

    sget-object v0, Lu/aly/bo;->h:Lu/aly/cz;

    return-object v0
.end method

.method static synthetic q()Lu/aly/cz;
    .locals 1

    sget-object v0, Lu/aly/bo;->i:Lu/aly/cz;

    return-object v0
.end method


# virtual methods
.method public a(I)Lu/aly/bo$e;
    .locals 1

    invoke-static {p1}, Lu/aly/bo$e;->a(I)Lu/aly/bo$e;

    move-result-object v0

    return-object v0
.end method

.method public a()Lu/aly/bo;
    .locals 1

    new-instance v0, Lu/aly/bo;

    invoke-direct {v0, p0}, Lu/aly/bo;-><init>(Lu/aly/bo;)V

    return-object v0
.end method

.method public a(J)Lu/aly/bo;
    .locals 1

    iput-wide p1, p0, Lu/aly/bo;->b:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bo;->b(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/bo;
    .locals 0

    iput-object p1, p0, Lu/aly/bo;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lu/aly/de;)V
    .locals 2

    sget-object v0, Lu/aly/bo;->j:Ljava/util/Map;

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

    iput-object v0, p0, Lu/aly/bo;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lu/aly/bo;
    .locals 0

    iput-object p1, p0, Lu/aly/bo;->c:Ljava/lang/String;

    return-object p0
.end method

.method public synthetic b(I)Lu/aly/cm;
    .locals 1

    invoke-virtual {p0, p1}, Lu/aly/bo;->a(I)Lu/aly/bo$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lu/aly/bo;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lu/aly/bo;->b(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lu/aly/bo;->b:J

    iput-object v2, p0, Lu/aly/bo;->c:Ljava/lang/String;

    return-void
.end method

.method public b(Lu/aly/de;)V
    .locals 2

    sget-object v0, Lu/aly/bo;->j:Ljava/util/Map;

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

    iget-byte v0, p0, Lu/aly/bo;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/cc;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bo;->l:B

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu/aly/bo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bo;->c:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bo;->a:Ljava/lang/String;

    return-void
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lu/aly/bo;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lu/aly/bo;->b:J

    return-wide v0
.end method

.method public g()V
    .locals 2

    iget-byte v0, p0, Lu/aly/bo;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/cc;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bo;->l:B

    return-void
.end method

.method public h()Z
    .locals 2

    iget-byte v0, p0, Lu/aly/bo;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/cc;->a(BI)Z

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu/aly/bo;->c:Ljava/lang/String;

    return-object v0
.end method

.method public j()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bo;->c:Ljava/lang/String;

    return-void
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lu/aly/bo;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()V
    .locals 3

    iget-object v0, p0, Lu/aly/bo;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lu/aly/df;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'guid\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lu/aly/bo;->toString()Ljava/lang/String;

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

    invoke-virtual {p0}, Lu/aly/bo;->a()Lu/aly/bo;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "ImprintValue("

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0}, Lu/aly/bo;->e()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "value:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lu/aly/bo;->a:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v0, 0x0

    :cond_0
    if-nez v0, :cond_1

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v0, "ts:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lu/aly/bo;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "guid:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lu/aly/bo;->c:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "null"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lu/aly/bo;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lu/aly/bo;->c:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
