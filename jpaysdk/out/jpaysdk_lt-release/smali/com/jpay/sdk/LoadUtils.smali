.class public Lcom/jpay/sdk/LoadUtils;
.super Ljava/lang/Object;
.source "LoadUtils.java"


# static fields
.field private static final APKDIR:Ljava/lang/String; = "apkPath"

.field private static final INITFILE:Ljava/lang/String; = "jinit.apk"

.field private static final MODULEODEXDIR:Ljava/lang/String; = "dexDir"

.field private static dexLoader:Ldalvik/system/DexClassLoader;

.field private static instance:Lcom/jpay/sdk/LoadUtils;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkCopyFile(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    .line 51
    .local v7, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "apkPath"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 53
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 54
    :cond_0
    new-instance v2, Ljava/io/File;

    .end local v2    # "file":Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "apkPath"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v9, "jinit.apk"

    invoke-direct {v2, v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    .restart local v2    # "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 79
    :cond_1
    :goto_0
    return-void

    .line 57
    :cond_2
    const/4 v5, 0x0

    .line 58
    .local v5, "ips":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 61
    .local v3, "fops":Ljava/io/FileOutputStream;
    const/16 v8, 0x1000

    :try_start_0
    new-array v0, v8, [B

    .line 62
    .local v0, "buf":[B
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "jinit.apk"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 63
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .end local v3    # "fops":Ljava/io/FileOutputStream;
    .local v4, "fops":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_1
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    .local v6, "len":I
    if-gtz v6, :cond_4

    .line 71
    if-eqz v5, :cond_3

    .line 72
    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 74
    :cond_3
    if-eqz v4, :cond_8

    .line 75
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v3, v4

    .line 76
    .end local v4    # "fops":Ljava/io/FileOutputStream;
    .restart local v3    # "fops":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 65
    .end local v3    # "fops":Ljava/io/FileOutputStream;
    .restart local v4    # "fops":Ljava/io/FileOutputStream;
    :cond_4
    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {v4, v0, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 67
    .end local v6    # "len":I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 68
    .end local v0    # "buf":[B
    .end local v4    # "fops":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "fops":Ljava/io/FileOutputStream;
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 71
    if-eqz v5, :cond_5

    .line 72
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 74
    :cond_5
    if-eqz v3, :cond_1

    .line 75
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 76
    :catch_1
    move-exception v8

    goto :goto_0

    .line 69
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 71
    :goto_3
    if-eqz v5, :cond_6

    .line 72
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 74
    :cond_6
    if-eqz v3, :cond_7

    .line 75
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 78
    :cond_7
    :goto_4
    throw v8

    .line 76
    .end local v3    # "fops":Ljava/io/FileOutputStream;
    .restart local v0    # "buf":[B
    .restart local v4    # "fops":Ljava/io/FileOutputStream;
    .restart local v6    # "len":I
    :catch_2
    move-exception v8

    move-object v3, v4

    .end local v4    # "fops":Ljava/io/FileOutputStream;
    .restart local v3    # "fops":Ljava/io/FileOutputStream;
    goto :goto_0

    .end local v0    # "buf":[B
    .end local v6    # "len":I
    :catch_3
    move-exception v9

    goto :goto_4

    .line 69
    .end local v3    # "fops":Ljava/io/FileOutputStream;
    .restart local v0    # "buf":[B
    .restart local v4    # "fops":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fops":Ljava/io/FileOutputStream;
    .restart local v3    # "fops":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 67
    .end local v0    # "buf":[B
    :catch_4
    move-exception v1

    goto :goto_2

    .end local v3    # "fops":Ljava/io/FileOutputStream;
    .restart local v0    # "buf":[B
    .restart local v4    # "fops":Ljava/io/FileOutputStream;
    .restart local v6    # "len":I
    :cond_8
    move-object v3, v4

    .end local v4    # "fops":Ljava/io/FileOutputStream;
    .restart local v3    # "fops":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method static getInstance()Lcom/jpay/sdk/LoadUtils;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/jpay/sdk/LoadUtils;->instance:Lcom/jpay/sdk/LoadUtils;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/jpay/sdk/LoadUtils;

    invoke-direct {v0}, Lcom/jpay/sdk/LoadUtils;-><init>()V

    sput-object v0, Lcom/jpay/sdk/LoadUtils;->instance:Lcom/jpay/sdk/LoadUtils;

    .line 26
    :cond_0
    sget-object v0, Lcom/jpay/sdk/LoadUtils;->instance:Lcom/jpay/sdk/LoadUtils;

    return-object v0
.end method


# virtual methods
.method JsdkInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "vcode"    # Ljava/lang/String;

    .prologue
    .line 32
    :try_start_0
    invoke-direct {p0, p1}, Lcom/jpay/sdk/LoadUtils;->checkCopyFile(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 35
    .local v4, "path":Ljava/lang/String;
    sget-object v5, Lcom/jpay/sdk/LoadUtils;->dexLoader:Ldalvik/system/DexClassLoader;

    if-nez v5, :cond_1

    .line 36
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dexDir"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 37
    .local v3, "odexDirFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 38
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 39
    :cond_0
    new-instance v5, Ldalvik/system/DexClassLoader;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "apkPath"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "jinit.apk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "dexDir"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v9

    invoke-direct {v5, v6, v7, v8, v9}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v5, Lcom/jpay/sdk/LoadUtils;->dexLoader:Ldalvik/system/DexClassLoader;

    .line 41
    .end local v3    # "odexDirFile":Ljava/io/File;
    :cond_1
    sget-object v5, Lcom/jpay/sdk/LoadUtils;->dexLoader:Ldalvik/system/DexClassLoader;

    const-string v6, "com.jpay.main.update.CheckUpdate"

    invoke-virtual {v5, v6}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 42
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "updateRequest"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Context;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 43
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v4    # "path":Ljava/lang/String;
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
