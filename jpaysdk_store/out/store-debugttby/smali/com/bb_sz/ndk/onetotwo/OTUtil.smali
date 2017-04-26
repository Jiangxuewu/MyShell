.class public Lcom/bb_sz/ndk/onetotwo/OTUtil;
.super Ljava/lang/Object;
.source "OTUtil.java"


# static fields
.field private static final CLOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "SkyOTUtil"

.field protected static hexDigits:[C

.field private static mInstance:Lcom/bb_sz/ndk/onetotwo/OTUtil;


# instance fields
.field private context:Landroid/content/Context;

.field private countDownPool:Ljava/util/concurrent/ExecutorService;

.field private downPool:Ljava/util/concurrent/ExecutorService;

.field private installPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bb_sz/ndk/onetotwo/OTUtil;->CLOCK:Ljava/lang/Object;

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/bb_sz/ndk/onetotwo/OTUtil;->mInstance:Lcom/bb_sz/ndk/onetotwo/OTUtil;

    .line 212
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/bb_sz/ndk/onetotwo/OTUtil;->hexDigits:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/bb_sz/ndk/onetotwo/OTUtil;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/bb_sz/ndk/onetotwo/OTUtil;

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->getTopPkg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/bb_sz/ndk/onetotwo/OTUtil;Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/bb_sz/ndk/onetotwo/OTUtil;
    .param p1, "x1"    # Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->getLocalIconPath(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static appendHexPair(BLjava/lang/StringBuffer;)V
    .locals 4
    .param p0, "bt"    # B
    .param p1, "stringbuffer"    # Ljava/lang/StringBuffer;

    .prologue
    .line 216
    sget-object v2, Lcom/bb_sz/ndk/onetotwo/OTUtil;->hexDigits:[C

    and-int/lit16 v3, p0, 0xf0

    shr-int/lit8 v3, v3, 0x4

    aget-char v0, v2, v3

    .line 217
    .local v0, "c0":C
    sget-object v2, Lcom/bb_sz/ndk/onetotwo/OTUtil;->hexDigits:[C

    and-int/lit8 v3, p0, 0xf

    aget-char v1, v2, v3

    .line 218
    .local v1, "c1":C
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 219
    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 220
    return-void
.end method

.method private static bufferToHex([B)Ljava/lang/String;
    .locals 2
    .param p0, "bytes"    # [B

    .prologue
    .line 200
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->bufferToHex([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bufferToHex([BII)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B
    .param p1, "m"    # I
    .param p2, "n"    # I

    .prologue
    .line 204
    new-instance v2, Ljava/lang/StringBuffer;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 205
    .local v2, "stringbuffer":Ljava/lang/StringBuffer;
    add-int v0, p1, p2

    .line 206
    .local v0, "k":I
    move v1, p1

    .local v1, "l":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 207
    aget-byte v3, p0, v1

    invoke-static {v3, v2}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->appendHexPair(BLjava/lang/StringBuffer;)V

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private checkAndInstall(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)V
    .locals 3
    .param p1, "item"    # Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;

    .prologue
    .line 149
    iget-object v1, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil;->installPool:Ljava/util/concurrent/ExecutorService;

    if-nez v1, :cond_0

    .line 150
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    iput-object v1, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil;->installPool:Ljava/util/concurrent/ExecutorService;

    .line 151
    :cond_0
    invoke-static {}, Lcom/bb_sz/ndk/Http;->getInstance()Lcom/bb_sz/ndk/Http;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, p1, v2}, Lcom/bb_sz/ndk/Http;->post(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;I)V

    .line 152
    iget-object v1, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 153
    .local v0, "curPkg":Ljava/lang/String;
    iget-object v1, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil;->installPool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/bb_sz/ndk/onetotwo/OTUtil$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/bb_sz/ndk/onetotwo/OTUtil$1;-><init>(Lcom/bb_sz/ndk/onetotwo/OTUtil;Ljava/lang/String;Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 166
    return-void
.end method

.method private createShortCut(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)V
    .locals 5
    .param p1, "item"    # Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 109
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-direct {p0, p1}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->getLocalIconPath(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 105
    .local v1, "icon":Landroid/graphics/Bitmap;
    iget-object v2, p1, Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;->name:Ljava/lang/String;

    .line 106
    .local v2, "name":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->getLocalApkPath(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, "apk":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 108
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {p0, v1, v2, v3}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->addShortCutInstall(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private down(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)V
    .locals 2
    .param p1, "item"    # Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil;->downPool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 358
    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil;->downPool:Ljava/util/concurrent/ExecutorService;

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil;->downPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/bb_sz/ndk/onetotwo/OTUtil$4;

    invoke-direct {v1, p0, p1}, Lcom/bb_sz/ndk/onetotwo/OTUtil$4;-><init>(Lcom/bb_sz/ndk/onetotwo/OTUtil;Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 369
    return-void
.end method

.method private downFailed(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;I)V
    .locals 3
    .param p1, "item"    # Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;
    .param p2, "type"    # I

    .prologue
    .line 489
    sget v0, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v0, :cond_0

    const-string v0, "SkyOTUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downFailed, pt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_0
    return-void
.end method

.method private downSuccess(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;I)V
    .locals 3
    .param p1, "item"    # Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;
    .param p2, "type"    # I

    .prologue
    .line 493
    sget v0, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v0, :cond_0

    const-string v0, "SkyOTUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downSuccess, pt = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_0
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->isInLocal(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    invoke-static {}, Lcom/bb_sz/ndk/Http;->getInstance()Lcom/bb_sz/ndk/Http;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/bb_sz/ndk/Http;->post(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;I)V

    .line 496
    invoke-virtual {p0, p1}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->installApk(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)V

    .line 498
    :cond_1
    return-void
.end method

.method private getDownState(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)I
    .locals 10
    .param p1, "item"    # Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x0

    .line 372
    iget-object v4, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil;->context:Landroid/content/Context;

    const-string v5, "pt_apk_sp"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 373
    .local v3, "sp":Landroid/content/SharedPreferences;
    iget-object v4, p1, Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;->md5:Ljava/lang/String;

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 375
    .local v2, "i":I
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 376
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;->md5:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_state"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 377
    .local v0, "dt":J
    cmp-long v4, v0, v8

    if-lez v4, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/32 v6, 0x1b7740

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 378
    const/4 v2, 0x3

    .line 381
    .end local v0    # "dt":J
    :cond_0
    return v2
.end method

.method private getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 112
    const/4 v2, 0x0

    .line 113
    .local v2, "image":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 115
    .local v0, "am":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 116
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 117
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v3    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 118
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getInstallTimes(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 312
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 314
    :goto_0
    return v1

    .line 313
    :cond_0
    iget-object v2, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil;->context:Landroid/content/Context;

    const-string v3, "pt_apk_sp"

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 314
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method public static getInstsance()Lcom/bb_sz/ndk/onetotwo/OTUtil;
    .locals 2

    .prologue
    .line 52
    sget-object v1, Lcom/bb_sz/ndk/onetotwo/OTUtil;->CLOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/bb_sz/ndk/onetotwo/OTUtil;->mInstance:Lcom/bb_sz/ndk/onetotwo/OTUtil;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/bb_sz/ndk/onetotwo/OTUtil;

    invoke-direct {v0}, Lcom/bb_sz/ndk/onetotwo/OTUtil;-><init>()V

    sput-object v0, Lcom/bb_sz/ndk/onetotwo/OTUtil;->mInstance:Lcom/bb_sz/ndk/onetotwo/OTUtil;

    .line 55
    :cond_0
    sget-object v0, Lcom/bb_sz/ndk/onetotwo/OTUtil;->mInstance:Lcom/bb_sz/ndk/onetotwo/OTUtil;

    monitor-exit v1

    return-object v0

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getLocalApkPath(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;

    .prologue
    .line 501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->getSDcardPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;->md5:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLocalIconPath(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)Ljava/lang/String;
    .locals 2
    .param p1, "item"    # Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;

    .prologue
    .line 505
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->getSDcardPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSDcardPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 509
    const-string v0, "/sdcard/Download/Apk"

    return-object v0
.end method

.method private getTopPkg()Ljava/lang/String;
    .locals 6

    .prologue
    .line 169
    iget-object v3, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil;->context:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 170
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 171
    .local v2, "taskInfo":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 172
    .local v1, "componentInfo":Landroid/content/ComponentName;
    sget v3, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v3, :cond_0

    const-string v3, "SkyOTUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTopPkg, top pkg :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private isInLocal(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;Z)Z
    .locals 9
    .param p1, "item"    # Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;
    .param p2, "isNeedUpdate"    # Z

    .prologue
    const/4 v4, 0x0

    .line 318
    invoke-direct {p0, p1}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->getLocalApkPath(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)Ljava/lang/String;

    move-result-object v2

    .line 319
    .local v2, "localPath":Ljava/lang/String;
    sget v5, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v5, :cond_0

    const-string v5, "SkyOTUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isInLocal, item:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p1, Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;->pkg:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", localPath:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 321
    .local v0, "apk":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 334
    :cond_1
    :goto_0
    return v4

    .line 322
    :cond_2
    iget-object v3, p1, Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;->md5:Ljava/lang/String;

    .line 323
    .local v3, "md5":Ljava/lang/String;
    const/4 v1, 0x0

    .line 325
    .local v1, "fmd5":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->getMd5ByFile(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)Ljava/lang/String;

    move-result-object v1

    .line 326
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 329
    :cond_3
    :goto_1
    sget v5, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v5, :cond_4

    const-string v5, "SkyOTUtil"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isInLocal, md5:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", fmd5:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v4, 0x1

    .line 331
    .local v4, "result":Z
    :cond_5
    if-eqz p2, :cond_1

    if-nez v4, :cond_1

    .line 332
    invoke-static {}, Lcom/bb_sz/ndk/Http;->getInstance()Lcom/bb_sz/ndk/Http;

    move-result-object v5

    const/16 v6, 0xc

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "curMd5 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", serMd5 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, p1, v6, v7}, Lcom/bb_sz/ndk/Http;->post(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;ILjava/lang/String;)V

    goto :goto_0

    .line 327
    .end local v4    # "result":Z
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 197
    return-void
.end method

.method private needInstall(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p1, "args":Ljava/util/List;, "Ljava/util/List<Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 89
    :cond_0
    return-void

    .line 71
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;

    .line 72
    .local v1, "item":Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;
    invoke-virtual {p0, v1}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->isInstalled(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 73
    invoke-static {}, Lcom/bb_sz/ndk/Http;->getInstance()Lcom/bb_sz/ndk/Http;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v1, v4}, Lcom/bb_sz/ndk/Http;->post(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;I)V

    goto :goto_0

    .line 76
    :cond_2
    invoke-direct {p0, v1}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->getDownState(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)I

    move-result v0

    .line 77
    .local v0, "downState":I
    sget v3, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v3, :cond_3

    const-string v3, "SkyOTUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needInstall, item:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", downState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_3
    const/4 v3, 0x1

    if-ne v0, v3, :cond_4

    .line 79
    invoke-static {}, Lcom/bb_sz/ndk/Http;->getInstance()Lcom/bb_sz/ndk/Http;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v1, v4}, Lcom/bb_sz/ndk/Http;->post(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;I)V

    goto :goto_0

    .line 82
    :cond_4
    const/4 v3, 0x0

    invoke-direct {p0, v1, v3}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->isInLocal(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 83
    invoke-virtual {p0, v1}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->installApk(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)V

    goto :goto_0

    .line 85
    :cond_5
    invoke-virtual {p0, v1}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->readyDownloadApk(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)V

    goto :goto_0
.end method

.method private setDownState(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;II)V
    .locals 4
    .param p1, "item"    # Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;
    .param p2, "i"    # I
    .param p3, "type"    # I

    .prologue
    .line 385
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->setDownStateTime(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;J)V

    .line 386
    iget-object v1, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil;->context:Landroid/content/Context;

    const-string v2, "pt_apk_sp"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 387
    .local v0, "sp":Landroid/content/SharedPreferences;
    const/4 v1, 0x2

    if-ne p3, v1, :cond_0

    .line 388
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;->md5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_state"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 389
    :cond_0
    return-void
.end method

.method private setDownStateTime(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;J)V
    .locals 4
    .param p1, "item"    # Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;
    .param p2, "i"    # J

    .prologue
    .line 392
    iget-object v1, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil;->context:Landroid/content/Context;

    const-string v2, "pt_apk_sp"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 393
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;->md5:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_t"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 394
    return-void
.end method

.method private setInstallTimes(Ljava/lang/String;I)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 306
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v1, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil;->context:Landroid/content/Context;

    const-string v2, "pt_apk_sp"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 308
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private startCountDown(ILcom/bb_sz/ndk/onetotwo/Model$MsgBean;Lcom/bb_sz/ndk/onetotwo/ICountDown;)V
    .locals 2
    .param p1, "i"    # I
    .param p2, "item"    # Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;
    .param p3, "iCountDown"    # Lcom/bb_sz/ndk/onetotwo/ICountDown;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil;->countDownPool:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 285
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil;->countDownPool:Ljava/util/concurrent/ExecutorService;

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil;->countDownPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/bb_sz/ndk/onetotwo/OTUtil$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/bb_sz/ndk/onetotwo/OTUtil$3;-><init>(Lcom/bb_sz/ndk/onetotwo/OTUtil;ILcom/bb_sz/ndk/onetotwo/Model$MsgBean;Lcom/bb_sz/ndk/onetotwo/ICountDown;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 303
    return-void
.end method


# virtual methods
.method public _installApk(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)V
    .locals 7
    .param p1, "item"    # Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;

    .prologue
    .line 250
    if-nez p1, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->getLocalApkPath(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    .local v0, "apk":Ljava/io/File;
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    .line 253
    .local v3, "uri":Landroid/net/Uri;
    if-eqz v3, :cond_0

    .line 254
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->getInstallTimes(Ljava/lang/String;)I

    move-result v1

    .line 255
    .local v1, "i":I
    const/4 v4, 0x3

    if-lt v1, v4, :cond_4

    .line 256
    sget v4, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v4, :cond_2

    const-string v5, "SkyOTUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installApk, uri:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", i = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_2
    invoke-static {}, Lcom/bb_sz/ndk/Http;->getInstance()Lcom/bb_sz/ndk/Http;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v4, p1, v5}, Lcom/bb_sz/ndk/Http;->post(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;I)V

    goto :goto_0

    .line 256
    :cond_3
    const-string v4, "null"

    goto :goto_1

    .line 260
    :cond_4
    sget v4, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v4, :cond_5

    const-string v5, "SkyOTUtil"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "installApk, uri:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    :cond_5
    iget-object v4, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil;->context:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 262
    invoke-static {}, Lcom/bb_sz/ndk/Http;->getInstance()Lcom/bb_sz/ndk/Http;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, p1, v5}, Lcom/bb_sz/ndk/Http;->post(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;I)V

    .line 263
    const v4, 0x927c0

    new-instance v5, Lcom/bb_sz/ndk/onetotwo/OTUtil$2;

    invoke-direct {v5, p0}, Lcom/bb_sz/ndk/onetotwo/OTUtil$2;-><init>(Lcom/bb_sz/ndk/onetotwo/OTUtil;)V

    invoke-direct {p0, v4, p1, v5}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->startCountDown(ILcom/bb_sz/ndk/onetotwo/Model$MsgBean;Lcom/bb_sz/ndk/onetotwo/ICountDown;)V

    .line 274
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v5, v1, 0x1

    invoke-direct {p0, v4, v5}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->setInstallTimes(Ljava/lang/String;I)V

    .line 275
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 276
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 279
    iget-object v4, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil;->context:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 260
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_6
    const-string v4, "null"

    goto :goto_2
.end method

.method public addShortCutInstall(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 4
    .param p1, "paramBitmap"    # Landroid/graphics/Bitmap;
    .param p2, "paramString"    # Ljava/lang/String;
    .param p3, "uri"    # Landroid/net/Uri;

    .prologue
    .line 125
    if-nez p1, :cond_0

    .line 126
    const-string v2, "sz_game_center.png"

    invoke-direct {p0, v2}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 128
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 129
    const-string p2, "\u6e38\u620f\u4e2d\u5fc3"

    .line 131
    :cond_1
    if-nez p3, :cond_2

    .line 132
    const-string v2, "http://nav.iadmore.com:8011/market/index.html"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    .line 134
    :cond_2
    sget v2, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v2, :cond_3

    const-string v2, "SkyOTUtil"

    const-string v3, "addShortCut b s u start "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "localIntent1":Landroid/content/Intent;
    const-string v2, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v2, "duplicate"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 138
    const-string v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 139
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 140
    .local v1, "localIntent2":Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v1, p3, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 144
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 145
    iget-object v2, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil;->context:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 146
    return-void
.end method

.method public download(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;I)V
    .locals 22
    .param p1, "item"    # Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;
    .param p2, "type"    # I

    .prologue
    .line 405
    invoke-static {}, Lcom/bb_sz/ndk/Http;->getInstance()Lcom/bb_sz/ndk/Http;

    move-result-object v17

    const/16 v18, 0x0

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "type = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/bb_sz/ndk/Http;->post(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;ILjava/lang/String;)V

    .line 406
    const/16 v17, 0x2

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;->apk:Ljava/lang/String;

    .line 407
    .local v12, "netUrl":Ljava/lang/String;
    :goto_0
    const/16 v17, 0x2

    move/from16 v0, p2

    move/from16 v1, v17

    if-ne v0, v1, :cond_c

    invoke-direct/range {p0 .. p1}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->getLocalApkPath(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)Ljava/lang/String;

    move-result-object v11

    .line 408
    .local v11, "localPath":Ljava/lang/String;
    :goto_1
    const/4 v9, 0x0

    .line 409
    .local v9, "is":Ljava/io/InputStream;
    const/4 v15, 0x0

    .line 410
    .local v15, "output":Ljava/io/FileOutputStream;
    const/4 v8, 0x0

    .line 412
    .local v8, "http":Ljava/net/HttpURLConnection;
    :try_start_0
    sget v17, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v17, :cond_0

    const-string v17, "SkyOTUtil"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "downloadApk, netUrl = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_0
    sget v17, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v17, :cond_1

    const-string v17, "SkyOTUtil"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "downloadApk, localPath = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_1
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    .local v14, "outFile":Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_3

    .line 416
    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->exists()Z

    move-result v17

    if-nez v17, :cond_2

    .line 417
    invoke-virtual {v14}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->mkdirs()Z

    .line 419
    :cond_2
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    .line 421
    :cond_3
    new-instance v16, Ljava/io/FileOutputStream;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-direct {v0, v14, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 422
    .end local v15    # "output":Ljava/io/FileOutputStream;
    .local v16, "output":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 423
    .local v6, "downUrl":Ljava/net/URL;
    sget v17, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v17, :cond_4

    const-string v17, "SkyOTUtil"

    const-string v18, "downloadApk, openConnection ==== "

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_4
    invoke-virtual {v6}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v8, v0

    .line 425
    const/16 v17, 0x2710

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 426
    const/16 v17, 0x7530

    move/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 427
    const-string v17, "GET"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 428
    const-string v17, "Accept"

    const-string v18, "image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    const-string v17, "Accept-Language"

    const-string v18, "zh-CN"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const-string v17, "Referer"

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v17, "Charset"

    const-string v18, "UTF-8"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    const-string v17, "User-Agent"

    const-string v18, "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.2; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    const-string v17, "Connection"

    const-string v18, "Keep-Alive"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->connect()V

    .line 439
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v10

    .line 440
    .local v10, "length":I
    sget v17, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v17, :cond_5

    const-string v17, "SkyOTUtil"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "downloadApk, length = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_5
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v5

    .line 443
    .local v5, "code":I
    sget v17, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v17, :cond_6

    const-string v17, "SkyOTUtil"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "downloadApk, code = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :cond_6
    const/16 v17, 0x194

    move/from16 v0, v17

    if-eq v5, v0, :cond_7

    const/16 v17, 0x1f7

    move/from16 v0, v17

    if-eq v5, v0, :cond_7

    const/16 v17, 0x1f4

    move/from16 v0, v17

    if-ne v5, v0, :cond_d

    .line 445
    :cond_7
    invoke-direct/range {p0 .. p2}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->downFailed(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;I)V

    .line 446
    invoke-static {}, Lcom/bb_sz/ndk/Http;->getInstance()Lcom/bb_sz/ndk/Http;

    move-result-object v17

    const/16 v18, 0x64

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "error code is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", type = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/bb_sz/ndk/Http;->post(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;ILjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 465
    if-eqz v9, :cond_8

    .line 467
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 472
    :cond_8
    :goto_2
    if-eqz v16, :cond_9

    .line 474
    :try_start_3
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 479
    :cond_9
    :goto_3
    if-eqz v8, :cond_a

    .line 480
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 482
    :cond_a
    invoke-static {}, Lcom/bb_sz/ndk/Http;->getInstance()Lcom/bb_sz/ndk/Http;

    move-result-object v17

    const/16 v18, 0x2

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "type = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/bb_sz/ndk/Http;->post(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;ILjava/lang/String;)V

    .line 483
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->setDownState(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;II)V

    .line 484
    invoke-direct/range {p0 .. p2}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->downSuccess(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;I)V

    move-object/from16 v15, v16

    .line 486
    .end local v5    # "code":I
    .end local v6    # "downUrl":Ljava/net/URL;
    .end local v10    # "length":I
    .end local v14    # "outFile":Ljava/io/File;
    .end local v16    # "output":Ljava/io/FileOutputStream;
    .restart local v15    # "output":Ljava/io/FileOutputStream;
    :goto_4
    return-void

    .line 406
    .end local v8    # "http":Ljava/net/HttpURLConnection;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v11    # "localPath":Ljava/lang/String;
    .end local v12    # "netUrl":Ljava/lang/String;
    .end local v15    # "output":Ljava/io/FileOutputStream;
    :cond_b
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;->icon:Ljava/lang/String;

    goto/16 :goto_0

    .line 407
    .restart local v12    # "netUrl":Ljava/lang/String;
    :cond_c
    invoke-direct/range {p0 .. p1}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->getLocalIconPath(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 468
    .restart local v5    # "code":I
    .restart local v6    # "downUrl":Ljava/net/URL;
    .restart local v8    # "http":Ljava/net/HttpURLConnection;
    .restart local v9    # "is":Ljava/io/InputStream;
    .restart local v10    # "length":I
    .restart local v11    # "localPath":Ljava/lang/String;
    .restart local v14    # "outFile":Ljava/io/File;
    .restart local v16    # "output":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v7

    .line 469
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 475
    .end local v7    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v7

    .line 476
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 449
    .end local v7    # "e":Ljava/io/IOException;
    :cond_d
    :try_start_4
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    .line 450
    const/16 v17, 0x2800

    move/from16 v0, v17

    new-array v4, v0, [B

    .line 451
    .local v4, "buffer":[B
    const/4 v13, 0x0

    .line 452
    .local v13, "offset":I
    invoke-static {}, Lcom/bb_sz/ndk/Http;->getInstance()Lcom/bb_sz/ndk/Http;

    move-result-object v17

    const/16 v18, 0x1

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "type = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/bb_sz/ndk/Http;->post(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;ILjava/lang/String;)V

    .line 453
    :goto_5
    const/16 v17, 0x0

    const/16 v18, 0x2800

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v9, v4, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v13, v0, :cond_11

    .line 454
    const/16 v17, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v0, v4, v1, v13}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_5

    .line 460
    .end local v4    # "buffer":[B
    .end local v5    # "code":I
    .end local v6    # "downUrl":Ljava/net/URL;
    .end local v10    # "length":I
    .end local v13    # "offset":I
    :catch_2
    move-exception v7

    move-object/from16 v15, v16

    .line 461
    .end local v14    # "outFile":Ljava/io/File;
    .end local v16    # "output":Ljava/io/FileOutputStream;
    .local v7, "e":Ljava/lang/Exception;
    .restart local v15    # "output":Ljava/io/FileOutputStream;
    :goto_6
    :try_start_5
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 462
    invoke-direct/range {p0 .. p2}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->downFailed(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;I)V

    .line 463
    invoke-static {}, Lcom/bb_sz/ndk/Http;->getInstance()Lcom/bb_sz/ndk/Http;

    move-result-object v17

    const/16 v18, 0x65

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",type = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/bb_sz/ndk/Http;->post(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 465
    if-eqz v9, :cond_e

    .line 467
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 472
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_e
    :goto_7
    if-eqz v15, :cond_f

    .line 474
    :try_start_7
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 479
    :cond_f
    :goto_8
    if-eqz v8, :cond_10

    .line 480
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 482
    :cond_10
    invoke-static {}, Lcom/bb_sz/ndk/Http;->getInstance()Lcom/bb_sz/ndk/Http;

    move-result-object v17

    const/16 v18, 0x2

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "type = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/bb_sz/ndk/Http;->post(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;ILjava/lang/String;)V

    .line 483
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->setDownState(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;II)V

    .line 484
    invoke-direct/range {p0 .. p2}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->downSuccess(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;I)V

    goto/16 :goto_4

    .line 456
    .end local v15    # "output":Ljava/io/FileOutputStream;
    .restart local v4    # "buffer":[B
    .restart local v5    # "code":I
    .restart local v6    # "downUrl":Ljava/net/URL;
    .restart local v10    # "length":I
    .restart local v13    # "offset":I
    .restart local v14    # "outFile":Ljava/io/File;
    .restart local v16    # "output":Ljava/io/FileOutputStream;
    :cond_11
    :try_start_8
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->flush()V

    .line 457
    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v18

    int-to-long v0, v10

    move-wide/from16 v20, v0

    cmp-long v17, v18, v20

    if-eqz v17, :cond_12

    .line 458
    invoke-static {}, Lcom/bb_sz/ndk/Http;->getInstance()Lcom/bb_sz/ndk/Http;

    move-result-object v17

    const/16 v18, 0xe

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "curLen = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v14}, Ljava/io/File;->length()J

    move-result-wide v20

    invoke-virtual/range {v19 .. v21}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", serLen = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/bb_sz/ndk/Http;->post(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;ILjava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 465
    :cond_12
    if-eqz v9, :cond_13

    .line 467
    :try_start_9
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 472
    :cond_13
    :goto_9
    if-eqz v16, :cond_14

    .line 474
    :try_start_a
    invoke-virtual/range {v16 .. v16}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 479
    :cond_14
    :goto_a
    if-eqz v8, :cond_15

    .line 480
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 482
    :cond_15
    invoke-static {}, Lcom/bb_sz/ndk/Http;->getInstance()Lcom/bb_sz/ndk/Http;

    move-result-object v17

    const/16 v18, 0x2

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "type = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/bb_sz/ndk/Http;->post(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;ILjava/lang/String;)V

    .line 483
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->setDownState(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;II)V

    .line 484
    invoke-direct/range {p0 .. p2}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->downSuccess(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;I)V

    move-object/from16 v15, v16

    .line 485
    .end local v16    # "output":Ljava/io/FileOutputStream;
    .restart local v15    # "output":Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 468
    .end local v15    # "output":Ljava/io/FileOutputStream;
    .restart local v16    # "output":Ljava/io/FileOutputStream;
    :catch_3
    move-exception v7

    .line 469
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 475
    .end local v7    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v7

    .line 476
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 468
    .end local v4    # "buffer":[B
    .end local v5    # "code":I
    .end local v6    # "downUrl":Ljava/net/URL;
    .end local v10    # "length":I
    .end local v13    # "offset":I
    .end local v14    # "outFile":Ljava/io/File;
    .end local v16    # "output":Ljava/io/FileOutputStream;
    .local v7, "e":Ljava/lang/Exception;
    .restart local v15    # "output":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v7

    .line 469
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 475
    .end local v7    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v7

    .line 476
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 465
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v17

    :goto_b
    if-eqz v9, :cond_16

    .line 467
    :try_start_b
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    .line 472
    :cond_16
    :goto_c
    if-eqz v15, :cond_17

    .line 474
    :try_start_c
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 479
    :cond_17
    :goto_d
    if-eqz v8, :cond_18

    .line 480
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 482
    :cond_18
    invoke-static {}, Lcom/bb_sz/ndk/Http;->getInstance()Lcom/bb_sz/ndk/Http;

    move-result-object v18

    const/16 v19, 0x2

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "type = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move/from16 v2, v19

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/bb_sz/ndk/Http;->post(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;ILjava/lang/String;)V

    .line 483
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->setDownState(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;II)V

    .line 484
    invoke-direct/range {p0 .. p2}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->downSuccess(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;I)V

    throw v17

    .line 468
    :catch_7
    move-exception v7

    .line 469
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 475
    .end local v7    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v7

    .line 476
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 465
    .end local v7    # "e":Ljava/io/IOException;
    .end local v15    # "output":Ljava/io/FileOutputStream;
    .restart local v14    # "outFile":Ljava/io/File;
    .restart local v16    # "output":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v17

    move-object/from16 v15, v16

    .end local v16    # "output":Ljava/io/FileOutputStream;
    .restart local v15    # "output":Ljava/io/FileOutputStream;
    goto :goto_b

    .line 460
    .end local v14    # "outFile":Ljava/io/File;
    :catch_9
    move-exception v7

    goto/16 :goto_6
.end method

.method public downloadApk(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)V
    .locals 1
    .param p1, "item"    # Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;

    .prologue
    .line 401
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->download(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;I)V

    .line 402
    return-void
.end method

.method public downloadIcon(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)V
    .locals 1
    .param p1, "item"    # Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;

    .prologue
    .line 397
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->download(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;I)V

    .line 398
    return-void
.end method

.method public getMd5ByFile(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)Ljava/lang/String;
    .locals 14
    .param p1, "item"    # Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->getLocalApkPath(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)Ljava/lang/String;

    move-result-object v11

    .line 224
    .local v11, "localPath":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 225
    .local v8, "file":Ljava/io/File;
    const/4 v13, 0x0

    .line 226
    .local v13, "value":Ljava/lang/String;
    const/4 v9, 0x0

    .line 228
    .local v9, "in":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 229
    .end local v9    # "in":Ljava/io/FileInputStream;
    .local v10, "in":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v6

    .line 230
    .local v6, "byteBuffer":Ljava/nio/MappedByteBuffer;
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v12

    .line 231
    .local v12, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v12, v6}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 232
    invoke-virtual {v12}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-static {v0}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->bufferToHex([B)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v13

    .line 237
    if-eqz v10, :cond_2

    .line 239
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v9, v10

    .line 245
    .end local v6    # "byteBuffer":Ljava/nio/MappedByteBuffer;
    .end local v10    # "in":Ljava/io/FileInputStream;
    .end local v12    # "md5":Ljava/security/MessageDigest;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return-object v13

    .line 240
    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "byteBuffer":Ljava/nio/MappedByteBuffer;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    .restart local v12    # "md5":Ljava/security/MessageDigest;
    :catch_0
    move-exception v7

    .line 241
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    move-object v9, v10

    .line 242
    .end local v10    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    goto :goto_0

    .line 233
    .end local v6    # "byteBuffer":Ljava/nio/MappedByteBuffer;
    .end local v7    # "e":Ljava/io/IOException;
    .end local v12    # "md5":Ljava/security/MessageDigest;
    :catch_1
    move-exception v7

    .line 234
    .local v7, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 235
    invoke-static {}, Lcom/bb_sz/ndk/Http;->getInstance()Lcom/bb_sz/ndk/Http;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v7}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/bb_sz/ndk/Http;->post(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 237
    if-eqz v9, :cond_0

    .line 239
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 240
    :catch_2
    move-exception v7

    .line 241
    .local v7, "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 237
    .end local v7    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v9, :cond_1

    .line 239
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 242
    :cond_1
    :goto_3
    throw v0

    .line 240
    :catch_3
    move-exception v7

    .line 241
    .restart local v7    # "e":Ljava/io/IOException;
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 237
    .end local v7    # "e":Ljava/io/IOException;
    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v0

    move-object v9, v10

    .end local v10    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    goto :goto_2

    .line 233
    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    :catch_4
    move-exception v7

    move-object v9, v10

    .end local v10    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    goto :goto_1

    .end local v9    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "byteBuffer":Ljava/nio/MappedByteBuffer;
    .restart local v10    # "in":Ljava/io/FileInputStream;
    .restart local v12    # "md5":Ljava/security/MessageDigest;
    :cond_2
    move-object v9, v10

    .end local v10    # "in":Ljava/io/FileInputStream;
    .restart local v9    # "in":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method public install(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "item":Ljava/util/List;, "Ljava/util/List<Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;>;"
    iput-object p1, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil;->context:Landroid/content/Context;

    .line 65
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 66
    :cond_1
    invoke-direct {p0, p2}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->needInstall(Ljava/util/List;)V

    goto :goto_0
.end method

.method public installApk(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)V
    .locals 0
    .param p1, "item"    # Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;

    .prologue
    .line 99
    invoke-direct {p0, p1}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->createShortCut(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)V

    .line 100
    return-void
.end method

.method public isInstalled(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)Z
    .locals 5
    .param p1, "item"    # Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;

    .prologue
    const/4 v1, 0x0

    .line 339
    :try_start_0
    iget-object v2, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p1, Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;->pkg:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 340
    .local v0, "res":Z
    :goto_0
    sget v2, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v2, :cond_0

    const-string v2, "SkyOTUtil"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInstalled, pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    .end local v0    # "res":Z
    :cond_0
    :goto_1
    return v0

    :cond_1
    move v0, v1

    .line 339
    goto :goto_0

    .line 342
    :catch_0
    move-exception v2

    move v0, v1

    .line 344
    goto :goto_1
.end method

.method public readyDownloadApk(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)V
    .locals 6
    .param p1, "item"    # Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 348
    invoke-direct {p0, p1}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->getDownState(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)I

    move-result v0

    .line 349
    .local v0, "downState":I
    sget v1, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v1, :cond_0

    const-string v1, "SkyOTUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readyDownloadApk, pt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", downState ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_0
    if-eq v0, v4, :cond_1

    if-eq v0, v5, :cond_1

    .line 351
    invoke-direct {p0, p1, v4, v5}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->setDownState(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;II)V

    .line 352
    invoke-direct {p0, p1}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->down(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)V

    .line 354
    :cond_1
    return-void
.end method
