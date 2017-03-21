.class public Lcom/lyhtgh/pay/l;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/lyhtgh/pay/l;


# instance fields
.field private b:Ldalvik/system/DexClassLoader;

.field private c:Landroid/content/Context;

.field private d:Z

.field private e:Ljava/lang/String;

.field private f:Lcom/lyhtgh/pay/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/lyhtgh/pay/l;->a:Lcom/lyhtgh/pay/l;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lyhtgh/pay/l;->b:Ldalvik/system/DexClassLoader;

    iput-object v0, p0, Lcom/lyhtgh/pay/l;->c:Landroid/content/Context;

    iput-boolean v1, p0, Lcom/lyhtgh/pay/l;->d:Z

    iput-object v0, p0, Lcom/lyhtgh/pay/l;->f:Lcom/lyhtgh/pay/k;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/l;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/lyhtgh/pay/l;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/lyhtgh/pay/k;->a(Landroid/content/Context;)Lcom/lyhtgh/pay/k;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/l;->f:Lcom/lyhtgh/pay/k;

    iput-boolean v1, p0, Lcom/lyhtgh/pay/l;->d:Z

    invoke-direct {p0}, Lcom/lyhtgh/pay/l;->d()Z

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/lyhtgh/pay/l;
    .locals 1

    sget-object v0, Lcom/lyhtgh/pay/l;->a:Lcom/lyhtgh/pay/l;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lyhtgh/pay/l;

    invoke-direct {v0, p0}, Lcom/lyhtgh/pay/l;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lyhtgh/pay/l;->a:Lcom/lyhtgh/pay/l;

    :cond_0
    sget-object v0, Lcom/lyhtgh/pay/l;->a:Lcom/lyhtgh/pay/l;

    return-object v0
.end method

.method private static a(Ljava/io/File;)V
    .locals 5

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    aget-object v3, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private declared-synchronized d()Z
    .locals 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/lyhtgh/pay/l;->d:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/lyhtgh/pay/l;->d:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/lyhtgh/pay/l;->b:Ldalvik/system/DexClassLoader;

    :cond_0
    iget-object v1, p0, Lcom/lyhtgh/pay/l;->b:Ldalvik/system/DexClassLoader;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/lyhtgh/pay/l;->f:Lcom/lyhtgh/pay/k;

    invoke-virtual {v1}, Lcom/lyhtgh/pay/k;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lyhtgh/pay/l;->e:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Lcom/lyhtgh/pay/l;->b:Ldalvik/system/DexClassLoader;

    iget-object v2, p0, Lcom/lyhtgh/pay/l;->c:Landroid/content/Context;

    const-string v3, "dex"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/lyhtgh/pay/l;->a(Ljava/io/File;)V

    new-instance v3, Ldalvik/system/DexClassLoader;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lyhtgh/pay/l;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v3, v1, v2, v4, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v3, p0, Lcom/lyhtgh/pay/l;->b:Ldalvik/system/DexClassLoader;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/lyhtgh/pay/l;->b:Ldalvik/system/DexClassLoader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    invoke-direct {p0}, Lcom/lyhtgh/pay/l;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lyhtgh/pay/l;->b:Ldalvik/system/DexClassLoader;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lyhtgh/pay/l;->f:Lcom/lyhtgh/pay/k;

    invoke-virtual {v1}, Lcom/lyhtgh/pay/k;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lyhtgh/pay/l;->b:Ldalvik/system/DexClassLoader;

    invoke-virtual {v1, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lyhtgh/pay/l;->b:Ldalvik/system/DexClassLoader;

    invoke-direct {p0}, Lcom/lyhtgh/pay/l;->d()Z

    return-void
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lyhtgh/pay/l;->d:Z

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/lyhtgh/pay/l;->e:Ljava/lang/String;

    return-object v0
.end method
