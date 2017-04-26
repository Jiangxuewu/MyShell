.class public La/a/a/m;
.super Ljava/lang/Object;
.source "TSerializer.java"


# instance fields
.field private final a:Ljava/io/ByteArrayOutputStream;

.field private final b:La/a/a/d/a;

.field private c:La/a/a/b/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, La/a/a/b/b$a;

    invoke-direct {v0}, La/a/a/b/b$a;-><init>()V

    invoke-direct {p0, v0}, La/a/a/m;-><init>(La/a/a/b/j;)V

    .line 59
    return-void
.end method

.method public constructor <init>(La/a/a/b/j;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, La/a/a/m;->a:Ljava/io/ByteArrayOutputStream;

    .line 47
    new-instance v0, La/a/a/d/a;

    iget-object v1, p0, La/a/a/m;->a:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, La/a/a/d/a;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, La/a/a/m;->b:La/a/a/d/a;

    .line 68
    iget-object v0, p0, La/a/a/m;->b:La/a/a/d/a;

    invoke-interface {p1, v0}, La/a/a/b/j;->a(La/a/a/d/c;)La/a/a/b/h;

    move-result-object v0

    iput-object v0, p0, La/a/a/m;->c:La/a/a/b/h;

    .line 69
    return-void
.end method


# virtual methods
.method public a(La/a/a/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/j;
        }
    .end annotation

    .prologue
    .line 97
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, La/a/a/m;->a(La/a/a/d;)[B

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    new-instance v0, La/a/a/j;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JVM DOES NOT SUPPORT ENCODING: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/j;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(La/a/a/d;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/j;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, La/a/a/m;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 82
    iget-object v0, p0, La/a/a/m;->c:La/a/a/b/h;

    invoke-interface {p1, v0}, La/a/a/d;->b(La/a/a/b/h;)V

    .line 83
    iget-object v0, p0, La/a/a/m;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public b(La/a/a/d;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/j;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, La/a/a/m;->a(La/a/a/d;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
