.class public Lcom/lyhtgh/pay/q;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/lyhtgh/pay/q;


# instance fields
.field private b:Ldalvik/system/DexClassLoader;

.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/res/AssetManager;

.field private f:Z

.field private g:I

.field private h:Ljava/lang/Class;

.field private i:Ljava/lang/Object;

.field private j:Ljava/lang/Class;

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Class;

.field private m:Ljava/lang/Object;

.field private n:Ljava/lang/Class;

.field private o:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/lyhtgh/pay/q;->a:Lcom/lyhtgh/pay/q;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/lyhtgh/pay/q;->b:Ldalvik/system/DexClassLoader;

    iput-object v0, p0, Lcom/lyhtgh/pay/q;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/lyhtgh/pay/q;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/lyhtgh/pay/q;->e:Landroid/content/res/AssetManager;

    iput-boolean v1, p0, Lcom/lyhtgh/pay/q;->f:Z

    iput v1, p0, Lcom/lyhtgh/pay/q;->g:I

    iput-object v0, p0, Lcom/lyhtgh/pay/q;->h:Ljava/lang/Class;

    iput-object v0, p0, Lcom/lyhtgh/pay/q;->i:Ljava/lang/Object;

    iput-object v0, p0, Lcom/lyhtgh/pay/q;->j:Ljava/lang/Class;

    iput-object v0, p0, Lcom/lyhtgh/pay/q;->k:Ljava/lang/Object;

    iput-object v0, p0, Lcom/lyhtgh/pay/q;->l:Ljava/lang/Class;

    iput-object v0, p0, Lcom/lyhtgh/pay/q;->m:Ljava/lang/Object;

    iput-object v0, p0, Lcom/lyhtgh/pay/q;->n:Ljava/lang/Class;

    iput-object v0, p0, Lcom/lyhtgh/pay/q;->o:Ljava/lang/Object;

    return-void
.end method

.method public static a()Lcom/lyhtgh/pay/q;
    .locals 1

    sget-object v0, Lcom/lyhtgh/pay/q;->a:Lcom/lyhtgh/pay/q;

    if-nez v0, :cond_0

    new-instance v0, Lcom/lyhtgh/pay/q;

    invoke-direct {v0}, Lcom/lyhtgh/pay/q;-><init>()V

    sput-object v0, Lcom/lyhtgh/pay/q;->a:Lcom/lyhtgh/pay/q;

    :cond_0
    sget-object v0, Lcom/lyhtgh/pay/q;->a:Lcom/lyhtgh/pay/q;

    return-object v0
.end method

.method private a(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/lyhtgh/pay/q;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lyhtgh/pay/q;->b:Ldalvik/system/DexClassLoader;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lyhtgh/pay/g;->E()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lyhtgh/pay/q;->b:Ldalvik/system/DexClassLoader;

    invoke-virtual {v1, v0}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a([B)Ljava/lang/String;
    .locals 7

    const/16 v6, 0xa

    array-length v2, p1

    shl-int/lit8 v0, v2, 0x1

    new-array v3, v0, [C

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0

    :cond_0
    aget-byte v4, p1, v1

    shr-int/lit8 v0, v4, 0x4

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v5, v1, 0x1

    if-lt v0, v6, :cond_1

    add-int/lit8 v0, v0, 0x61

    add-int/lit8 v0, v0, -0xa

    :goto_1
    int-to-char v0, v0

    aput-char v0, v3, v5

    and-int/lit8 v0, v4, 0xf

    shl-int/lit8 v4, v1, 0x1

    add-int/lit8 v4, v4, 0x1

    if-lt v0, v6, :cond_2

    add-int/lit8 v0, v0, 0x61

    add-int/lit8 v0, v0, -0xa

    :goto_2
    int-to-char v0, v0

    aput-char v0, v3, v4

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x30

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x30

    goto :goto_2
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

.method private a(Ljava/lang/String;I)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :goto_0
    return v0

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    :try_start_0
    invoke-direct {p0, v1}, Lcom/lyhtgh/pay/q;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/lyhtgh/pay/g;->z()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/lyhtgh/pay/q;->c:Landroid/content/Context;

    invoke-direct {p0, v2, p1}, Lcom/lyhtgh/pay/q;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/lyhtgh/pay/q;->c:Landroid/content/Context;

    invoke-direct {p0, v3, p1}, Lcom/lyhtgh/pay/q;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-static {}, Lcom/lyhtgh/pay/g;->E()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_1

    if-gt p2, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_2
    :try_start_1
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/lyhtgh/pay/q;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v4, 0x400

    new-array v4, v4, [B

    :goto_1
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-gtz v5, :cond_3

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    :cond_0
    const/4 v2, 0x0

    array-length v3, p3

    invoke-virtual {v1, p3, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private b(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/lyhtgh/pay/g;->O()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {}, Lcom/lyhtgh/pay/g;->P()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/lyhtgh/pay/g;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/lyhtgh/pay/h;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/util/jar/JarFile;

    invoke-direct {v1, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lcom/lyhtgh/pay/g;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v2

    const/16 v3, 0x2000

    new-array v3, v3, [B

    invoke-direct {p0, v1, v2, v3}, Lcom/lyhtgh/pay/q;->a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lyhtgh/pay/q;->a([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    :try_start_2
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    move-object v1, v0

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_3
    throw v0

    :cond_0
    :try_start_5
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v2

    goto :goto_1
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/lyhtgh/pay/g;->O()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/lyhtgh/pay/g;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/lyhtgh/pay/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/lyhtgh/pay/g;->P()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized j()Z
    .locals 6

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/lyhtgh/pay/q;->b:Ldalvik/system/DexClassLoader;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/lyhtgh/pay/q;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/lyhtgh/pay/q;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/lyhtgh/pay/q;->c:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/lyhtgh/pay/q;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/lyhtgh/pay/q;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/lyhtgh/pay/q;->d:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/lyhtgh/pay/q;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/lyhtgh/pay/q;->c:Landroid/content/Context;

    const-string v2, "dex"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Lcom/lyhtgh/pay/q;->a(Ljava/io/File;)V

    new-instance v2, Ldalvik/system/DexClassLoader;

    iget-object v3, p0, Lcom/lyhtgh/pay/q;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/lyhtgh/pay/q;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-direct {v2, v3, v1, v4, v5}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iput-object v2, p0, Lcom/lyhtgh/pay/q;->b:Ldalvik/system/DexClassLoader;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    :goto_1
    :try_start_2
    iget-object v1, p0, Lcom/lyhtgh/pay/q;->b:Ldalvik/system/DexClassLoader;
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

.method private declared-synchronized k()Z
    .locals 7

    const/4 v6, 0x0

    monitor-enter p0

    :try_start_0
    const-class v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "addAssetPath"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lyhtgh/pay/q;->d:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Lcom/lyhtgh/pay/q;->e:Landroid/content/res/AssetManager;

    iget-object v0, p0, Lcom/lyhtgh/pay/q;->e:Landroid/content/res/AssetManager;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v6

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private l()I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/lyhtgh/pay/q;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    :try_start_0
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    :cond_0
    :goto_1
    return v0

    :cond_1
    aget-object v4, v2, v1

    invoke-static {}, Lcom/lyhtgh/pay/g;->D()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v1, ".*_"

    const-string v2, ""

    invoke-virtual {v4, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".data"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public a(Landroid/app/Activity;)I
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/q;->h:Ljava/lang/Class;

    invoke-static {}, Lcom/lyhtgh/pay/g;->K()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/lyhtgh/pay/q;->i:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public a(Landroid/content/Context;)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/q;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/lyhtgh/pay/q;->c:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/lyhtgh/pay/q;->n:Ljava/lang/Class;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lyhtgh/pay/g;->N()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lyhtgh/pay/q;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/q;->n:Ljava/lang/Class;

    :cond_1
    iget-object v0, p0, Lcom/lyhtgh/pay/q;->o:Ljava/lang/Object;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/lyhtgh/pay/q;->n:Ljava/lang/Class;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lyhtgh/pay/q;->n:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/q;->o:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/lyhtgh/pay/q;->f:Z

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    :try_start_0
    iput-object p1, p0, Lcom/lyhtgh/pay/q;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/lyhtgh/pay/q;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/lyhtgh/pay/q;->l()I

    move-result v0

    iput v0, p0, Lcom/lyhtgh/pay/q;->g:I

    iget-object v0, p0, Lcom/lyhtgh/pay/q;->d:Ljava/lang/String;

    iget v1, p0, Lcom/lyhtgh/pay/q;->g:I

    invoke-direct {p0, v0, v1}, Lcom/lyhtgh/pay/q;->a(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/lyhtgh/pay/g;->D()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/lyhtgh/pay/q;->d:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/lyhtgh/pay/q;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    invoke-direct {p0}, Lcom/lyhtgh/pay/q;->j()Z

    invoke-direct {p0}, Lcom/lyhtgh/pay/q;->k()Z

    invoke-static {}, Lcom/lyhtgh/pay/g;->F()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lyhtgh/pay/q;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/q;->h:Ljava/lang/Class;

    iget-object v0, p0, Lcom/lyhtgh/pay/q;->h:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/q;->i:Ljava/lang/Object;

    iget-object v0, p0, Lcom/lyhtgh/pay/q;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/lyhtgh/pay/q;->d:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/lyhtgh/pay/q;->c(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lyhtgh/pay/q;->h:Ljava/lang/Class;

    invoke-static {}, Lcom/lyhtgh/pay/g;->G()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/res/AssetManager;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/lyhtgh/pay/q;->i:Ljava/lang/Object;

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lyhtgh/pay/q;->c:Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/lyhtgh/pay/q;->e:Landroid/content/res/AssetManager;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {}, Lcom/lyhtgh/pay/g;->e()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-static {}, Lcom/lyhtgh/pay/g;->I()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    invoke-static {}, Lcom/lyhtgh/pay/g;->J()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object p3, v2, v3

    const/4 v3, 0x6

    aput-object p4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto/16 :goto_0
.end method

.method public a(Landroid/os/Handler;)I
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/q;->h:Ljava/lang/Class;

    invoke-static {}, Lcom/lyhtgh/pay/g;->H()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/Handler;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/lyhtgh/pay/q;->i:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public b()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/q;->j:Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lyhtgh/pay/g;->L()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lyhtgh/pay/q;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/q;->j:Ljava/lang/Class;

    :cond_0
    iget-object v0, p0, Lcom/lyhtgh/pay/q;->k:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lyhtgh/pay/q;->j:Ljava/lang/Class;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lyhtgh/pay/q;->j:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/q;->k:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/q;->l:Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/lyhtgh/pay/g;->M()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lyhtgh/pay/q;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/q;->l:Ljava/lang/Class;

    :cond_0
    iget-object v0, p0, Lcom/lyhtgh/pay/q;->m:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lyhtgh/pay/q;->l:Ljava/lang/Class;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lyhtgh/pay/q;->l:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/q;->m:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public d()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/lyhtgh/pay/q;->j:Ljava/lang/Class;

    return-object v0
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/lyhtgh/pay/q;->k:Ljava/lang/Object;

    return-object v0
.end method

.method public f()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/lyhtgh/pay/q;->l:Ljava/lang/Class;

    return-object v0
.end method

.method public g()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/lyhtgh/pay/q;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public h()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/lyhtgh/pay/q;->n:Ljava/lang/Class;

    return-object v0
.end method

.method public i()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/lyhtgh/pay/q;->o:Ljava/lang/Object;

    return-object v0
.end method
