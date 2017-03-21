.class public Lu/aly/bl;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;
.implements Lu/aly/cf;


# static fields
.field public static final d:Ljava/util/Map;

.field private static final e:J = -0x5a285711b2a57f6bL

.field private static final f:Lu/aly/dj;

.field private static final g:Lu/aly/cz;

.field private static final h:Lu/aly/cz;

.field private static final i:Lu/aly/cz;

.field private static final j:Ljava/util/Map;

.field private static final k:I = 0x0

.field private static final l:I = 0x1


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:I

.field private m:B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v3, 0x0

    const/16 v8, 0xb

    const/16 v7, 0xa

    const/16 v6, 0x8

    const/4 v5, 0x1

    new-instance v0, Lu/aly/dj;

    const-string v1, "IdSnapshot"

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/bl;->f:Lu/aly/dj;

    new-instance v0, Lu/aly/cz;

    const-string v1, "identity"

    invoke-direct {v0, v1, v8, v5}, Lu/aly/cz;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bl;->g:Lu/aly/cz;

    new-instance v0, Lu/aly/cz;

    const-string v1, "ts"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v7, v2}, Lu/aly/cz;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bl;->h:Lu/aly/cz;

    new-instance v0, Lu/aly/cz;

    const-string v1, "version"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v6, v2}, Lu/aly/cz;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/bl;->i:Lu/aly/cz;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lu/aly/bl;->j:Ljava/util/Map;

    const-class v1, Lu/aly/do;

    new-instance v2, Lu/aly/bl$b;

    invoke-direct {v2, v3}, Lu/aly/bl$b;-><init>(Lu/aly/bl$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lu/aly/bl;->j:Ljava/util/Map;

    const-class v1, Lu/aly/dp;

    new-instance v2, Lu/aly/bl$d;

    invoke-direct {v2, v3}, Lu/aly/bl$d;-><init>(Lu/aly/bl$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lu/aly/bl$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lu/aly/bl$e;->a:Lu/aly/bl$e;

    new-instance v2, Lu/aly/cr;

    const-string v3, "identity"

    new-instance v4, Lu/aly/cs;

    invoke-direct {v4, v8}, Lu/aly/cs;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cr;-><init>(Ljava/lang/String;BLu/aly/cs;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lu/aly/bl$e;->b:Lu/aly/bl$e;

    new-instance v2, Lu/aly/cr;

    const-string v3, "ts"

    new-instance v4, Lu/aly/cs;

    invoke-direct {v4, v7}, Lu/aly/cs;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cr;-><init>(Ljava/lang/String;BLu/aly/cs;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lu/aly/bl$e;->c:Lu/aly/bl$e;

    new-instance v2, Lu/aly/cr;

    const-string v3, "version"

    new-instance v4, Lu/aly/cs;

    invoke-direct {v4, v6}, Lu/aly/cs;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, Lu/aly/cr;-><init>(Ljava/lang/String;BLu/aly/cs;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lu/aly/bl;->d:Ljava/util/Map;

    const-class v0, Lu/aly/bl;

    sget-object v1, Lu/aly/bl;->d:Ljava/util/Map;

    invoke-static {v0, v1}, Lu/aly/cr;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/bl;->m:B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0}, Lu/aly/bl;-><init>()V

    iput-object p1, p0, Lu/aly/bl;->a:Ljava/lang/String;

    iput-wide p2, p0, Lu/aly/bl;->b:J

    invoke-virtual {p0, v0}, Lu/aly/bl;->b(Z)V

    iput p4, p0, Lu/aly/bl;->c:I

    invoke-virtual {p0, v0}, Lu/aly/bl;->c(Z)V

    return-void
.end method

.method public constructor <init>(Lu/aly/bl;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lu/aly/bl;->m:B

    iget-byte v0, p1, Lu/aly/bl;->m:B

    iput-byte v0, p0, Lu/aly/bl;->m:B

    invoke-virtual {p1}, Lu/aly/bl;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lu/aly/bl;->a:Ljava/lang/String;

    iput-object v0, p0, Lu/aly/bl;->a:Ljava/lang/String;

    :cond_0
    iget-wide v0, p1, Lu/aly/bl;->b:J

    iput-wide v0, p0, Lu/aly/bl;->b:J

    iget v0, p1, Lu/aly/bl;->c:I

    iput v0, p0, Lu/aly/bl;->c:I

    return-void
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lu/aly/bl;->m:B

    new-instance v0, Lu/aly/cy;

    new-instance v1, Lu/aly/dq;

    invoke-direct {v1, p1}, Lu/aly/dq;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lu/aly/cy;-><init>(Lu/aly/ds;)V

    invoke-virtual {p0, v0}, Lu/aly/bl;->a(Lu/aly/de;)V
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

    invoke-virtual {p0, v0}, Lu/aly/bl;->b(Lu/aly/de;)V
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

    sget-object v0, Lu/aly/bl;->f:Lu/aly/dj;

    return-object v0
.end method

.method static synthetic n()Lu/aly/cz;
    .locals 1

    sget-object v0, Lu/aly/bl;->g:Lu/aly/cz;

    return-object v0
.end method

.method static synthetic o()Lu/aly/cz;
    .locals 1

    sget-object v0, Lu/aly/bl;->h:Lu/aly/cz;

    return-object v0
.end method

.method static synthetic q()Lu/aly/cz;
    .locals 1

    sget-object v0, Lu/aly/bl;->i:Lu/aly/cz;

    return-object v0
.end method


# virtual methods
.method public a()Lu/aly/bl;
    .locals 1

    new-instance v0, Lu/aly/bl;

    invoke-direct {v0, p0}, Lu/aly/bl;-><init>(Lu/aly/bl;)V

    return-object v0
.end method

.method public a(I)Lu/aly/bl;
    .locals 1

    iput p1, p0, Lu/aly/bl;->c:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bl;->c(Z)V

    return-object p0
.end method

.method public a(J)Lu/aly/bl;
    .locals 1

    iput-wide p1, p0, Lu/aly/bl;->b:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lu/aly/bl;->b(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lu/aly/bl;
    .locals 0

    iput-object p1, p0, Lu/aly/bl;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Lu/aly/de;)V
    .locals 2

    sget-object v0, Lu/aly/bl;->j:Ljava/util/Map;

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

    iput-object v0, p0, Lu/aly/bl;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public synthetic b(I)Lu/aly/cm;
    .locals 1

    invoke-virtual {p0, p1}, Lu/aly/bl;->c(I)Lu/aly/bl$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bl;->a:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lu/aly/bl;->b(Z)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lu/aly/bl;->b:J

    invoke-virtual {p0, v2}, Lu/aly/bl;->c(Z)V

    iput v2, p0, Lu/aly/bl;->c:I

    return-void
.end method

.method public b(Lu/aly/de;)V
    .locals 2

    sget-object v0, Lu/aly/bl;->j:Ljava/util/Map;

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

    iget-byte v0, p0, Lu/aly/bl;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lu/aly/cc;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bl;->m:B

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu/aly/bl;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)Lu/aly/bl$e;
    .locals 1

    invoke-static {p1}, Lu/aly/bl$e;->a(I)Lu/aly/bl$e;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 2

    iget-byte v0, p0, Lu/aly/bl;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lu/aly/cc;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bl;->m:B

    return-void
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/bl;->a:Ljava/lang/String;

    return-void
.end method

.method public e()Z
    .locals 1

    iget-object v0, p0, Lu/aly/bl;->a:Ljava/lang/String;

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

    iget-wide v0, p0, Lu/aly/bl;->b:J

    return-wide v0
.end method

.method public g()V
    .locals 2

    iget-byte v0, p0, Lu/aly/bl;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/cc;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bl;->m:B

    return-void
.end method

.method public h()Z
    .locals 2

    iget-byte v0, p0, Lu/aly/bl;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lu/aly/cc;->a(BI)Z

    move-result v0

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lu/aly/bl;->c:I

    return v0
.end method

.method public j()V
    .locals 2

    iget-byte v0, p0, Lu/aly/bl;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/cc;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lu/aly/bl;->m:B

    return-void
.end method

.method public k()Z
    .locals 2

    iget-byte v0, p0, Lu/aly/bl;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lu/aly/cc;->a(BI)Z

    move-result v0

    return v0
.end method

.method public l()V
    .locals 3

    iget-object v0, p0, Lu/aly/bl;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lu/aly/df;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Required field \'identity\' was not present! Struct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lu/aly/bl;->toString()Ljava/lang/String;

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

    invoke-virtual {p0}, Lu/aly/bl;->a()Lu/aly/bl;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdSnapshot("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "identity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu/aly/bl;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ts:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lu/aly/bl;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lu/aly/bl;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lu/aly/bl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
