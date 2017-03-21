.class public Lu/aly/ai;
.super Lu/aly/y;


# static fields
.field private static final a:Ljava/lang/String; = "oldumid"


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "oldumid"

    invoke-direct {p0, v0}, Lu/aly/y;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lu/aly/ai;->c:Ljava/lang/String;

    iput-object v1, p0, Lu/aly/ai;->d:Ljava/lang/String;

    iput-object p1, p0, Lu/aly/ai;->b:Landroid/content/Context;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method private j()V
    .locals 2

    :try_start_0
    const-string v0, "/data/local/tmp/.um"

    invoke-direct {p0, v0}, Lu/aly/ai;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/.um/sysid.dat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lu/aly/ai;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lu/aly/bv;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private k()V
    .locals 2

    :try_start_0
    const-string v0, "/sdcard/Android/obj/.um"

    invoke-direct {p0, v0}, Lu/aly/ai;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/Android/obj/.um/sysid.dat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lu/aly/ai;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lu/aly/bv;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private l()V
    .locals 2

    :try_start_0
    const-string v0, "/sdcard/Android/data/.um"

    invoke-direct {p0, v0}, Lu/aly/ai;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/Android/data/.um/sysid.dat"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lu/aly/ai;->d:Ljava/lang/String;

    invoke-static {v0, v1}, Lu/aly/bv;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lu/aly/ai;->c:Ljava/lang/String;

    return-object v0
.end method

.method public g()Z
    .locals 1

    invoke-virtual {p0}, Lu/aly/ai;->h()Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 5

    const/4 v0, 0x1

    iget-object v1, p0, Lu/aly/ai;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/af;->a(Landroid/content/Context;)Lu/aly/af;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/af;->b()Lu/aly/af$a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lu/aly/af$a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lu/aly/ai;->d:Ljava/lang/String;

    iget-object v1, p0, Lu/aly/ai;->d:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lu/aly/ai;->d:Ljava/lang/String;

    invoke-static {v1}, Lu/aly/bs;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lu/aly/ai;->d:Ljava/lang/String;

    new-instance v1, Ljava/io/File;

    const-string v2, "/sdcard/Android/data/.um/sysid.dat"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lu/aly/bv;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    const-string v3, "/sdcard/Android/obj/.um/sysid.dat"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lu/aly/bv;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    const-string v4, "/data/local/tmp/.um/sysid.dat"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lu/aly/bv;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lu/aly/ai;->l()V

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lu/aly/ai;->k()V

    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lu/aly/ai;->j()V

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    iget-object v4, p0, Lu/aly/ai;->d:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iput-object v1, p0, Lu/aly/ai;->c:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lu/aly/ai;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object v2, p0, Lu/aly/ai;->c:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lu/aly/ai;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iput-object v3, p0, Lu/aly/ai;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public i()V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Lu/aly/ai;->l()V

    invoke-direct {p0}, Lu/aly/ai;->k()V

    invoke-direct {p0}, Lu/aly/ai;->j()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
