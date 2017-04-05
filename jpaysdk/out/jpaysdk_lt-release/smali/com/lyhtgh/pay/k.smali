.class public Lcom/lyhtgh/pay/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/lyhtgh/pay/k;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/lyhtgh/pay/k;->a:Lcom/lyhtgh/pay/k;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lyhtgh/pay/k;->b:Landroid/content/Context;

    .line 55
    iput-object p1, p0, Lcom/lyhtgh/pay/k;->b:Landroid/content/Context;

    .line 57
    invoke-virtual {p0}, Lcom/lyhtgh/pay/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-direct {p0}, Lcom/lyhtgh/pay/k;->g()V

    .line 60
    invoke-direct {p0}, Lcom/lyhtgh/pay/k;->h()I

    move-result v0

    iput v0, p0, Lcom/lyhtgh/pay/k;->d:I

    .line 65
    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/lyhtgh/pay/k;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/lyhtgh/pay/k;->a:Lcom/lyhtgh/pay/k;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/lyhtgh/pay/k;

    invoke-direct {v0, p0}, Lcom/lyhtgh/pay/k;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/lyhtgh/pay/k;->a:Lcom/lyhtgh/pay/k;

    .line 51
    :cond_0
    sget-object v0, Lcom/lyhtgh/pay/k;->a:Lcom/lyhtgh/pay/k;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 368
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 370
    const/4 v1, 0x1

    .line 369
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 371
    if-eqz v0, :cond_0

    .line 372
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 374
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 307
    .line 309
    :try_start_0
    new-instance v1, Ljava/util/jar/JarFile;

    invoke-direct {v1, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 310
    :try_start_1
    invoke-static {}, Lcom/lyhtgh/pay/g;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v2

    .line 311
    const/16 v3, 0x2000

    new-array v3, v3, [B

    .line 312
    invoke-direct {p0, v1, v2, v3}, Lcom/lyhtgh/pay/k;->a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v2

    .line 313
    if-eqz v2, :cond_0

    .line 314
    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/lyhtgh/pay/k;->a([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 319
    :try_start_2
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 323
    :goto_0
    return-object v0

    .line 316
    :catch_0
    move-exception v1

    move-object v1, v0

    .line 319
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 320
    :catch_1
    move-exception v1

    goto :goto_0

    .line 317
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 319
    :goto_2
    :try_start_4
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    .line 322
    :goto_3
    throw v0

    .line 319
    :cond_0
    :try_start_5
    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 320
    :catch_2
    move-exception v1

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_3

    .line 317
    :catchall_1
    move-exception v0

    goto :goto_2

    .line 316
    :catch_5
    move-exception v2

    goto :goto_1
.end method

.method private a([B)Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xa

    .line 353
    .line 354
    array-length v2, p1

    .line 355
    mul-int/lit8 v0, v2, 0x2

    .line 356
    new-array v3, v0, [C

    .line 357
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 364
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 358
    :cond_0
    aget-byte v4, p1, v1

    .line 359
    shr-int/lit8 v0, v4, 0x4

    and-int/lit8 v0, v0, 0xf

    .line 360
    mul-int/lit8 v5, v1, 0x2

    if-lt v0, v6, :cond_1

    add-int/lit8 v0, v0, 0x61

    add-int/lit8 v0, v0, -0xa

    :goto_1
    int-to-char v0, v0

    aput-char v0, v3, v5

    .line 361
    and-int/lit8 v0, v4, 0xf

    .line 362
    mul-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x1

    if-lt v0, v6, :cond_2

    add-int/lit8 v0, v0, 0x61

    add-int/lit8 v0, v0, -0xa

    :goto_2
    int-to-char v0, v0

    aput-char v0, v3, v4

    .line 357
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 360
    :cond_1
    add-int/lit8 v0, v0, 0x30

    goto :goto_1

    .line 362
    :cond_2
    add-int/lit8 v0, v0, 0x30

    goto :goto_2
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 14

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 446
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 451
    if-eqz v5, :cond_a

    iget-object v3, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v3, :cond_a

    .line 457
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-static {}, Lcom/lyhtgh/pay/g;->aq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 458
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_1

    .line 459
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 468
    :goto_0
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-static {}, Lcom/lyhtgh/pay/g;->ar()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 469
    instance-of v3, v0, Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 470
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 479
    :goto_1
    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-static {}, Lcom/lyhtgh/pay/g;->as()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 480
    instance-of v5, v0, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    .line 481
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 488
    :goto_2
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    if-nez v0, :cond_9

    .line 490
    :cond_0
    invoke-static {}, Lcom/lyhtgh/pay/SdkPayServer;->getPayMerChannetId()Ljava/lang/String;

    move-result-object v4

    .line 491
    invoke-static {}, Lcom/lyhtgh/pay/SdkPayServer;->getPayAppId()Ljava/lang/String;

    move-result-object v3

    .line 492
    invoke-static {}, Lcom/lyhtgh/pay/SdkPayServer;->getPayCpChannelId()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move-object v7, v3

    move-object v8, v4

    .line 497
    :goto_3
    const-string v0, "comcom"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const-string v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 503
    array-length v10, v9

    move v5, v2

    move v0, v2

    move v3, v2

    move v4, v2

    :goto_4
    if-lt v5, v10, :cond_4

    .line 526
    if-eqz v4, :cond_8

    if-eqz v3, :cond_8

    if-eqz v0, :cond_8

    .line 533
    :goto_5
    return v1

    .line 462
    :cond_1
    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    goto :goto_0

    .line 473
    :cond_2
    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    goto :goto_1

    .line 484
    :cond_3
    check-cast v0, Ljava/lang/String;

    goto :goto_2

    .line 503
    :cond_4
    aget-object v11, v9, v5

    .line 504
    invoke-static {}, Lcom/lyhtgh/pay/g;->at()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 506
    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 507
    if-eqz v8, :cond_5

    const/4 v13, 0x1

    aget-object v13, v12, v13

    if-eqz v13, :cond_5

    const/4 v13, 0x1

    aget-object v12, v12, v13

    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    move v4, v1

    .line 511
    :cond_5
    invoke-static {}, Lcom/lyhtgh/pay/g;->au()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_6

    .line 513
    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 514
    if-eqz v7, :cond_6

    const/4 v13, 0x1

    aget-object v13, v12, v13

    if-eqz v13, :cond_6

    const/4 v13, 0x1

    aget-object v12, v12, v13

    invoke-virtual {v7, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    move v3, v1

    .line 518
    :cond_6
    invoke-static {}, Lcom/lyhtgh/pay/g;->av()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 520
    const-string v12, "="

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 521
    if-eqz v6, :cond_7

    const/4 v12, 0x1

    aget-object v12, v11, v12

    if-eqz v12, :cond_7

    const/4 v12, 0x1

    aget-object v11, v11, v12

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_7

    move v0, v1

    .line 503
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 529
    :catch_0
    move-exception v0

    .line 531
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_8
    move v1, v2

    .line 533
    goto :goto_5

    :cond_9
    move-object v6, v0

    move-object v7, v3

    move-object v8, v4

    goto/16 :goto_3

    :cond_a
    move-object v3, v0

    move-object v4, v0

    goto/16 :goto_2
.end method

.method private a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 252
    .line 255
    :try_start_0
    iget-object v1, p0, Lcom/lyhtgh/pay/k;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 256
    invoke-virtual {v1, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 258
    if-nez v1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return v0

    .line 261
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 262
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 264
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3

    .line 265
    new-array v3, v3, [B

    .line 266
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    .line 269
    invoke-static {}, Lcom/lyhtgh/pay/g;->q()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/lyhtgh/pay/h;->c([BLjava/lang/String;)[B

    move-result-object v3

    .line 271
    const/4 v4, 0x0

    array-length v5, v3

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 273
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 274
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 275
    invoke-virtual {p1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_0

    .line 278
    const/4 v0, 0x1

    goto :goto_0

    .line 280
    :catch_0
    move-exception v1

    .line 283
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 284
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 286
    :cond_2
    const-string v1, "true"

    sput-object v1, Lcom/lyhtgh/pay/g;->b:Ljava/lang/String;

    goto :goto_0

    .line 288
    :catch_1
    move-exception v1

    .line 291
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 292
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 294
    :cond_3
    const-string v1, "true"

    sput-object v1, Lcom/lyhtgh/pay/g;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 158
    if-nez p1, :cond_1

    .line 185
    :cond_0
    :goto_0
    return v0

    .line 161
    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    :try_start_0
    invoke-direct {p0, v1}, Lcom/lyhtgh/pay/k;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 165
    invoke-static {}, Lcom/lyhtgh/pay/g;->y()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    iget-object v2, p0, Lcom/lyhtgh/pay/k;->b:Landroid/content/Context;

    invoke-direct {p0, v2, p1}, Lcom/lyhtgh/pay/k;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 167
    iget-object v3, p0, Lcom/lyhtgh/pay/k;->b:Landroid/content/Context;

    invoke-direct {p0, v3, p1}, Lcom/lyhtgh/pay/k;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 172
    iget-object v4, p0, Lcom/lyhtgh/pay/k;->e:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/lyhtgh/pay/k;->d:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-gt v2, v3, :cond_2

    .line 173
    const/4 v0, 0x1

    goto :goto_0

    .line 177
    :catch_0
    move-exception v2

    .line 180
    :cond_2
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 210
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 215
    :cond_0
    invoke-direct {p0, v0, p1, p2}, Lcom/lyhtgh/pay/k;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 337
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v1

    .line 338
    :cond_0
    const/4 v2, 0x0

    array-length v3, p3

    invoke-virtual {v1, p3, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 340
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 341
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 344
    :cond_1
    :goto_0
    return-object v0

    .line 342
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 378
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 380
    const/4 v1, 0x1

    .line 379
    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 381
    if-eqz v0, :cond_0

    .line 382
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    .line 384
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 142
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 144
    invoke-static {}, Lcom/lyhtgh/pay/g;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lyhtgh/pay/g;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 146
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 148
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 152
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lyhtgh/pay/k;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lyhtgh/pay/g;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e()Ljava/lang/String;
    .locals 4

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/lyhtgh/pay/k;->b:Landroid/content/Context;

    invoke-static {}, Lcom/lyhtgh/pay/g;->j()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lyhtgh/pay/g;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 191
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 193
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 197
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/lyhtgh/pay/k;->e:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/lyhtgh/pay/g;->B()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private f()Z
    .locals 2

    .prologue
    .line 201
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x1

    .line 204
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private g()V
    .locals 5

    .prologue
    .line 393
    iget-object v0, p0, Lcom/lyhtgh/pay/k;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 394
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/lyhtgh/pay/k;->c:Ljava/util/List;

    .line 396
    :cond_0
    iget-object v0, p0, Lcom/lyhtgh/pay/k;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 398
    :try_start_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 400
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_1

    .line 411
    :goto_1
    return-void

    .line 400
    :cond_1
    aget-object v3, v1, v0

    .line 401
    invoke-static {}, Lcom/lyhtgh/pay/g;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 402
    invoke-static {}, Lcom/lyhtgh/pay/g;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 404
    iget-object v4, p0, Lcom/lyhtgh/pay/k;->c:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 407
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private h()I
    .locals 4

    .prologue
    .line 417
    iget-object v0, p0, Lcom/lyhtgh/pay/k;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 418
    invoke-direct {p0}, Lcom/lyhtgh/pay/k;->g()V

    .line 421
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/k;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 422
    iget-object v0, p0, Lcom/lyhtgh/pay/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 440
    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 422
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 423
    invoke-static {}, Lcom/lyhtgh/pay/g;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 424
    invoke-static {}, Lcom/lyhtgh/pay/g;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 427
    invoke-static {}, Lcom/lyhtgh/pay/g;->A()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/lyhtgh/pay/g;->g()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 430
    if-eqz v0, :cond_1

    .line 431
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_1

    .line 437
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 73
    iget-object v0, p0, Lcom/lyhtgh/pay/k;->c:Ljava/util/List;

    if-nez v0, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/lyhtgh/pay/k;->g()V

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/lyhtgh/pay/k;->c:Ljava/util/List;

    if-nez v0, :cond_1

    move v0, v1

    .line 99
    :goto_0
    return v0

    .line 80
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/k;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    move v0, v1

    .line 99
    goto :goto_0

    .line 80
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/lyhtgh/pay/g;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 82
    invoke-static {}, Lcom/lyhtgh/pay/g;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 84
    iput-object v0, p0, Lcom/lyhtgh/pay/k;->f:Ljava/lang/String;

    .line 85
    invoke-static {}, Lcom/lyhtgh/pay/g;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/k;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    const/4 v0, 0x1

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 97
    invoke-static {}, Lcom/lyhtgh/pay/g;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/k;->e:Ljava/lang/String;

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 106
    .line 107
    sget-boolean v0, Lcom/lyhtgh/pay/g;->a:Z

    if-nez v0, :cond_1

    .line 108
    invoke-direct {p0}, Lcom/lyhtgh/pay/k;->d()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-direct {p0, v0}, Lcom/lyhtgh/pay/k;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 137
    :cond_0
    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    .line 113
    :cond_2
    invoke-direct {p0}, Lcom/lyhtgh/pay/k;->e()Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-direct {p0, v2}, Lcom/lyhtgh/pay/k;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object v0, v2

    .line 115
    goto :goto_0

    .line 120
    :cond_3
    sget-boolean v3, Lcom/lyhtgh/pay/g;->a:Z

    if-nez v3, :cond_4

    .line 121
    invoke-direct {p0}, Lcom/lyhtgh/pay/k;->f()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 122
    iget-object v3, p0, Lcom/lyhtgh/pay/k;->f:Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/lyhtgh/pay/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 123
    invoke-direct {p0, v0}, Lcom/lyhtgh/pay/k;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 132
    :cond_4
    iget-object v0, p0, Lcom/lyhtgh/pay/k;->f:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/lyhtgh/pay/k;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 133
    invoke-direct {p0, v2}, Lcom/lyhtgh/pay/k;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v2

    .line 134
    goto :goto_0

    :cond_5
    move-object v0, v1

    .line 137
    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 537
    iget-object v0, p0, Lcom/lyhtgh/pay/k;->e:Ljava/lang/String;

    return-object v0
.end method
