.class public Lcom/jpay/sdk/JPay;
.super Ljava/lang/Object;
.source "JPay.java"


# static fields
.field private static final FILENAME:Ljava/lang/String; = "jsecurity"

.field public static final JARVERSION:Ljava/lang/String; = "5.0"

.field private static dexLoader:Ldalvik/system/DexClassLoader;

.field private static instance:Lcom/jpay/sdk/JPay;

.field private static isloader:Z

.field static mContext:Landroid/content/Context;


# instance fields
.field private enterbj:Ljava/lang/Object;

.field private isInit:Z

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jpay/sdk/JPay;->isloader:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jpay/sdk/JPay;->isInit:Z

    .line 27
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/jpay/sdk/JPay;->mHandler:Landroid/os/Handler;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/jpay/sdk/JPay;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/jpay/sdk/JPay;->jInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private native checkBilDex()Z
.end method

.method private copyJsecurity(Landroid/content/Context;)Ljava/lang/String;
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "jsecurity"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".so"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 155
    .local v7, "path":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 156
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-object v7

    .line 158
    :cond_1
    const/4 v3, 0x0

    .line 159
    .local v3, "fops":Ljava/io/FileOutputStream;
    const/4 v5, 0x0

    .line 161
    .local v5, "ips":Ljava/io/InputStream;
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .end local v3    # "fops":Ljava/io/FileOutputStream;
    .local v4, "fops":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    const-string v9, "jsecurity.dat"

    invoke-virtual {v8, v9}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v5

    .line 163
    const/16 v8, 0x1000

    new-array v0, v8, [B

    .line 165
    .local v0, "buff":[B
    :goto_1
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    .local v6, "len":I
    const/4 v8, -0x1

    if-ne v6, v8, :cond_3

    .line 171
    if-eqz v4, :cond_2

    .line 173
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .line 176
    :cond_2
    :goto_2
    if-eqz v5, :cond_7

    .line 178
    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v3, v4

    .line 179
    .end local v4    # "fops":Ljava/io/FileOutputStream;
    .restart local v3    # "fops":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 166
    .end local v3    # "fops":Ljava/io/FileOutputStream;
    .restart local v4    # "fops":Ljava/io/FileOutputStream;
    :cond_3
    const/4 v8, 0x0

    :try_start_4
    invoke-virtual {v4, v0, v8, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    .line 168
    .end local v0    # "buff":[B
    .end local v6    # "len":I
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 169
    .end local v4    # "fops":Ljava/io/FileOutputStream;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v3    # "fops":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 171
    if-eqz v3, :cond_4

    .line 173
    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 176
    :cond_4
    :goto_4
    if-eqz v5, :cond_0

    .line 178
    :try_start_7
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .line 179
    :catch_1
    move-exception v8

    goto :goto_0

    .line 170
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 171
    :goto_5
    if-eqz v3, :cond_5

    .line 173
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 176
    :cond_5
    :goto_6
    if-eqz v5, :cond_6

    .line 178
    :try_start_9
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 181
    :cond_6
    :goto_7
    throw v8

    .line 179
    .end local v3    # "fops":Ljava/io/FileOutputStream;
    .restart local v0    # "buff":[B
    .restart local v4    # "fops":Ljava/io/FileOutputStream;
    .restart local v6    # "len":I
    :catch_2
    move-exception v8

    move-object v3, v4

    .end local v4    # "fops":Ljava/io/FileOutputStream;
    .restart local v3    # "fops":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 174
    .end local v0    # "buff":[B
    .end local v6    # "len":I
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v8

    goto :goto_4

    .end local v1    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v9

    goto :goto_6

    .line 179
    :catch_5
    move-exception v9

    goto :goto_7

    .line 174
    .end local v3    # "fops":Ljava/io/FileOutputStream;
    .restart local v0    # "buff":[B
    .restart local v4    # "fops":Ljava/io/FileOutputStream;
    .restart local v6    # "len":I
    :catch_6
    move-exception v8

    goto :goto_2

    .line 170
    .end local v0    # "buff":[B
    .end local v6    # "len":I
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fops":Ljava/io/FileOutputStream;
    .restart local v3    # "fops":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 168
    :catch_7
    move-exception v1

    goto :goto_3

    .end local v3    # "fops":Ljava/io/FileOutputStream;
    .restart local v0    # "buff":[B
    .restart local v4    # "fops":Ljava/io/FileOutputStream;
    .restart local v6    # "len":I
    :cond_7
    move-object v3, v4

    .end local v4    # "fops":Ljava/io/FileOutputStream;
    .restart local v3    # "fops":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public static getInstance()Lcom/jpay/sdk/JPay;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/jpay/sdk/JPay;->instance:Lcom/jpay/sdk/JPay;

    if-nez v0, :cond_0

    .line 34
    new-instance v0, Lcom/jpay/sdk/JPay;

    invoke-direct {v0}, Lcom/jpay/sdk/JPay;-><init>()V

    sput-object v0, Lcom/jpay/sdk/JPay;->instance:Lcom/jpay/sdk/JPay;

    .line 35
    :cond_0
    sget-object v0, Lcom/jpay/sdk/JPay;->instance:Lcom/jpay/sdk/JPay;

    return-object v0
.end method

.method private invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "mname"    # Ljava/lang/String;
    .param p4, "types"    # [Ljava/lang/Class;
    .param p5, "params"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 107
    sget-object v2, Lcom/jpay/sdk/JPay;->dexLoader:Ldalvik/system/DexClassLoader;

    if-nez v2, :cond_0

    .line 108
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 111
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    invoke-virtual {v0, p3, p4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 112
    .local v1, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v1, p1, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 110
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :cond_0
    sget-object v2, Lcom/jpay/sdk/JPay;->dexLoader:Ldalvik/system/DexClassLoader;

    invoke-virtual {v2, p2}, Ldalvik/system/DexClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto :goto_0
.end method

.method private jCharge(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jpay/sdk/IChargeResult;)V
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "price"    # Ljava/lang/String;
    .param p3, "uniqueId"    # Ljava/lang/String;
    .param p4, "cpserverparam"    # Ljava/lang/String;
    .param p5, "nameProp"    # Ljava/lang/String;
    .param p6, "descripProp"    # Ljava/lang/String;
    .param p7, "chargeResultCb"    # Lcom/jpay/sdk/IChargeResult;

    .prologue
    .line 94
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.jpay.main.JPayEnter"

    const-string v3, "getInstance"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/jpay/sdk/JPay;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/jpay/sdk/JPay;->enterbj:Ljava/lang/Object;

    .line 95
    const/16 v0, 0x8

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v1, Landroid/app/Activity;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-class v1, Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-class v1, Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-class v1, Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x4

    const-class v1, Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x5

    const-class v1, Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x6

    const-class v1, Lcom/jpay/sdk/IChargeResult;

    aput-object v1, v4, v0

    const/4 v0, 0x7

    const-class v1, Ljava/lang/String;

    aput-object v1, v4, v0

    .line 96
    .local v4, "clazza":[Ljava/lang/Class;
    const/16 v0, 0x8

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v0, 0x1

    aput-object p2, v5, v0

    const/4 v0, 0x2

    aput-object p3, v5, v0

    const/4 v0, 0x3

    aput-object p4, v5, v0

    const/4 v0, 0x4

    aput-object p5, v5, v0

    const/4 v0, 0x5

    aput-object p6, v5, v0

    const/4 v0, 0x6

    aput-object p7, v5, v0

    const/4 v0, 0x7

    const-string v1, "5.0"

    aput-object v1, v5, v0

    .line 97
    .local v5, "oarray":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/jpay/sdk/JPay;->enterbj:Ljava/lang/Object;

    const-string v2, "com.jpay.main.JPayEnter"

    const-string v3, "charge"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/jpay/sdk/JPay;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v4    # "clazza":[Ljava/lang/Class;
    .end local v5    # "oarray":[Ljava/lang/Object;
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v6

    .line 99
    .local v6, "e":Ljava/lang/Exception;
    const/16 v0, -0x65

    const-string v1, "\u8ba1\u8d39\u5f02\u5e38"

    invoke-interface {p7, v0, v1}, Lcom/jpay/sdk/IChargeResult;->onChargeResult(ILjava/lang/String;)V

    .line 100
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private jInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "vcode"    # Ljava/lang/String;
    .param p4, "jarVersion"    # Ljava/lang/String;

    .prologue
    .line 79
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "com.jpay.main.JPayEnter"

    const-string v3, "getInstance"

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/jpay/sdk/JPay;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/jpay/sdk/JPay;->enterbj:Ljava/lang/Object;

    .line 80
    const/4 v0, 0x4

    new-array v4, v0, [Ljava/lang/Class;

    const/4 v0, 0x0

    const-class v1, Landroid/content/Context;

    aput-object v1, v4, v0

    const/4 v0, 0x1

    const-class v1, Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x2

    const-class v1, Ljava/lang/String;

    aput-object v1, v4, v0

    const/4 v0, 0x3

    const-class v1, Ljava/lang/String;

    aput-object v1, v4, v0

    .line 81
    .local v4, "clazza":[Ljava/lang/Class;
    const/4 v0, 0x4

    new-array v5, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, v5, v0

    const/4 v0, 0x1

    aput-object p2, v5, v0

    const/4 v0, 0x2

    aput-object p3, v5, v0

    const/4 v0, 0x3

    aput-object p4, v5, v0

    .line 82
    .local v5, "oarray":[Ljava/lang/Object;
    iget-object v1, p0, Lcom/jpay/sdk/JPay;->enterbj:Ljava/lang/Object;

    const-string v2, "com.jpay.main.JPayEnter"

    const-string v3, "init"

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/jpay/sdk/JPay;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 87
    .end local v4    # "clazza":[Ljava/lang/Class;
    .end local v5    # "oarray":[Ljava/lang/Object;
    :goto_0
    return v0

    .line 83
    :catch_0
    move-exception v6

    .line 84
    .local v6, "e":Ljava/lang/Exception;
    const-string v0, "JPay"

    const-string v1, "\u521d\u59cb\u5316\u5931\u8d25"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static native seVersion()Ljava/lang/String;
.end method


# virtual methods
.method public charge(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jpay/sdk/IChargeResult;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "price"    # Ljava/lang/String;
    .param p3, "uniqueId"    # Ljava/lang/String;
    .param p4, "cpserverparam"    # Ljava/lang/String;
    .param p5, "nameProp"    # Ljava/lang/String;
    .param p6, "descripProp"    # Ljava/lang/String;
    .param p7, "chargeResultCb"    # Lcom/jpay/sdk/IChargeResult;

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/jpay/sdk/JPay;->isInit:Z

    if-eqz v0, :cond_1

    .line 130
    invoke-direct/range {p0 .. p7}, Lcom/jpay/sdk/JPay;->jCharge(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jpay/sdk/IChargeResult;)V

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    sget-object v0, Lcom/jpay/sdk/JPay;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 133
    sget-object v0, Lcom/jpay/sdk/JPay;->mContext:Landroid/content/Context;

    const-string v1, "\u672a\u8c03\u7528\u521d\u59cb\u5316\u6216\u521d\u59cb\u5316\u672a\u5b8c\u6210"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public getJPVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 141
    const-string v10, ""

    .line 143
    .local v10, "result":Ljava/lang/String;
    const/4 v1, 0x1

    :try_start_0
    new-array v7, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v7, v1

    .line 144
    .local v7, "clazza":[Ljava/lang/Class;
    const/4 v1, 0x1

    new-array v9, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v9, v1

    .line 145
    .local v9, "oarray":[Ljava/lang/Object;
    const/4 v2, 0x0

    const-string v3, "com.jpay.main.JPayEnter"

    const-string v4, "getInstance"

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/jpay/sdk/JPay;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/jpay/sdk/JPay;->enterbj:Ljava/lang/Object;

    .line 146
    iget-object v2, p0, Lcom/jpay/sdk/JPay;->enterbj:Ljava/lang/Object;

    const-string v3, "com.jpay.main.JPayEnter"

    const-string v4, "getJPVersion"

    move-object v1, p0

    move-object v5, v7

    move-object v6, v9

    invoke-direct/range {v1 .. v6}, Lcom/jpay/sdk/JPay;->invokeMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    move-object v10, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v7    # "clazza":[Ljava/lang/Class;
    .end local v9    # "oarray":[Ljava/lang/Object;
    :goto_0
    return-object v10

    .line 147
    :catch_0
    move-exception v8

    .line 148
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "vcode"    # Ljava/lang/String;

    .prologue
    .line 47
    sput-object p1, Lcom/jpay/sdk/JPay;->mContext:Landroid/content/Context;

    .line 48
    sget-boolean v0, Lcom/jpay/sdk/JPay;->isloader:Z

    if-nez v0, :cond_0

    .line 49
    invoke-direct {p0, p1}, Lcom/jpay/sdk/JPay;->copyJsecurity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jpay/sdk/JPay;->isloader:Z

    .line 53
    :cond_0
    invoke-static {}, Lcom/jpay/sdk/LoadUtils;->getInstance()Lcom/jpay/sdk/LoadUtils;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/jpay/sdk/LoadUtils;->JsdkInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    return v0
.end method

.method public updateResult(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "vcode"    # Ljava/lang/String;
    .param p4, "delayTime"    # I

    .prologue
    .line 64
    new-instance v0, Lcom/jpay/sdk/JPay$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/jpay/sdk/JPay$1;-><init>(Lcom/jpay/sdk/JPay;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v0, "initTask":Ljava/lang/Runnable;
    iget-boolean v1, p0, Lcom/jpay/sdk/JPay;->isInit:Z

    if-nez v1, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/jpay/sdk/JPay;->checkBilDex()Z

    .line 71
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jpay/sdk/JPay;->isInit:Z

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/jpay/sdk/JPay;->mHandler:Landroid/os/Handler;

    int-to-long v2, p4

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 74
    const/4 v1, 0x0

    return v1
.end method
