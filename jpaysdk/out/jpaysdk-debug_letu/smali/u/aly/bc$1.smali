.class Lu/aly/bc$1;
.super Ljava/lang/Object;

# interfaces
.implements Lu/aly/cb$b;


# instance fields
.field final synthetic a:Lu/aly/bc;


# direct methods
.method constructor <init>(Lu/aly/bc;)V
    .locals 0

    iput-object p1, p0, Lu/aly/bc$1;->a:Lu/aly/bc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 0

    return-void
.end method

.method public b(Ljava/io/File;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v2}, Lu/aly/bv;->b(Ljava/io/InputStream;)[B
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    :try_start_2
    invoke-static {v2}, Lu/aly/bv;->c(Ljava/io/InputStream;)V

    iget-object v2, p0, Lu/aly/bc$1;->a:Lu/aly/bc;

    invoke-static {v2}, Lu/aly/bc;->a(Lu/aly/bc;)Lu/aly/aw;

    move-result-object v2

    invoke-virtual {v2, v3}, Lu/aly/aw;->a([B)[B

    move-result-object v2

    if-nez v2, :cond_1

    move v2, v0

    :goto_0
    iget-object v3, p0, Lu/aly/bc$1;->a:Lu/aly/bc;

    invoke-static {v3}, Lu/aly/bc;->b(Lu/aly/bc;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    :goto_1
    return v0

    :catchall_0
    move-exception v0

    move-object v2, v3

    :goto_2
    invoke-static {v2}, Lu/aly/bv;->c(Ljava/io/InputStream;)V

    throw v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lu/aly/bc$1;->a:Lu/aly/bc;

    invoke-static {v3, v2}, Lu/aly/bc;->a(Lu/aly/bc;[B)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v2

    goto :goto_0

    :cond_2
    if-ne v2, v0, :cond_0

    move v0, v1

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public c(Ljava/io/File;)V
    .locals 1

    iget-object v0, p0, Lu/aly/bc$1;->a:Lu/aly/bc;

    invoke-static {v0}, Lu/aly/bc;->c(Lu/aly/bc;)Lu/aly/be;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/be;->k()V

    return-void
.end method
