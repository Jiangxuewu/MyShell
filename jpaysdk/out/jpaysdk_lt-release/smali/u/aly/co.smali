.class public Lu/aly/co;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/io/ByteArrayOutputStream;

.field private final b:Lu/aly/dq;

.field private c:Lu/aly/de;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lu/aly/cy$a;

    invoke-direct {v0}, Lu/aly/cy$a;-><init>()V

    invoke-direct {p0, v0}, Lu/aly/co;-><init>(Lu/aly/dg;)V

    return-void
.end method

.method public constructor <init>(Lu/aly/dg;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lu/aly/co;->a:Ljava/io/ByteArrayOutputStream;

    new-instance v0, Lu/aly/dq;

    iget-object v1, p0, Lu/aly/co;->a:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Lu/aly/dq;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lu/aly/co;->b:Lu/aly/dq;

    iget-object v0, p0, Lu/aly/co;->b:Lu/aly/dq;

    invoke-interface {p1, v0}, Lu/aly/dg;->a(Lu/aly/ds;)Lu/aly/de;

    move-result-object v0

    iput-object v0, p0, Lu/aly/co;->c:Lu/aly/de;

    return-void
.end method


# virtual methods
.method public a(Lu/aly/cf;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lu/aly/co;->a(Lu/aly/cf;)[B

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lu/aly/cl;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "JVM DOES NOT SUPPORT ENCODING: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cl;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lu/aly/cf;)[B
    .locals 1

    iget-object v0, p0, Lu/aly/co;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    iget-object v0, p0, Lu/aly/co;->c:Lu/aly/de;

    invoke-interface {p1, v0}, Lu/aly/cf;->b(Lu/aly/de;)V

    iget-object v0, p0, Lu/aly/co;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public b(Lu/aly/cf;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lu/aly/co;->a(Lu/aly/cf;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
