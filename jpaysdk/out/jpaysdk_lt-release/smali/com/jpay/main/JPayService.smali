.class public Lcom/jpay/main/JPayService;
.super Landroid/app/Service;
.source "JPayService.java"


# static fields
.field private static final ClassName:[B

.field private static final Method1Name:[B

.field private static final Method2Name:[B

.field private static final Method3Name:[B

.field private static final SERVICE_NAME:Ljava/lang/String;

.field private static final className1:[B


# instance fields
.field private mJPayDService:Ljava/lang/Object;

.field private mJPayEService:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/jpay/main/JPayService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jpay/main/JPayService;->SERVICE_NAME:Ljava/lang/String;

    .line 15
    const/16 v0, 0x21

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jpay/main/JPayService;->ClassName:[B

    .line 16
    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/jpay/main/JPayService;->Method1Name:[B

    .line 17
    const/4 v0, 0x7

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/jpay/main/JPayService;->Method2Name:[B

    .line 18
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/jpay/main/JPayService;->Method3Name:[B

    .line 20
    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/jpay/main/JPayService;->className1:[B

    return-void

    .line 15
    nop

    :array_0
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x6at
        0x70t
        0x61t
        0x79t
        0x2et
        0x6dt
        0x61t
        0x69t
        0x6et
        0x2et
        0x75t
        0x70t
        0x64t
        0x61t
        0x74t
        0x65t
        0x2et
        0x4at
        0x50t
        0x61t
        0x79t
        0x45t
        0x53t
        0x65t
        0x72t
        0x76t
        0x69t
        0x63t
        0x65t
    .end array-data

    .line 16
    nop

    :array_1
    .array-data 1
        0x6ft
        0x6et
        0x43t
        0x72t
        0x65t
        0x61t
        0x74t
        0x65t
    .end array-data

    .line 17
    :array_2
    .array-data 1
        0x6ft
        0x6et
        0x53t
        0x74t
        0x61t
        0x72t
        0x74t
    .end array-data

    .line 18
    :array_3
    .array-data 1
        0x6ft
        0x6et
        0x44t
        0x65t
        0x73t
        0x74t
        0x72t
        0x6ft
        0x79t
    .end array-data

    .line 20
    nop

    :array_4
    .array-data 1
        0x63t
        0x6ft
        0x6dt
        0x2et
        0x6at
        0x70t
        0x61t
        0x79t
        0x2et
        0x6dt
        0x61t
        0x69t
        0x6et
        0x2et
        0x4at
        0x50t
        0x61t
        0x79t
        0x44t
        0x53t
        0x65t
        0x72t
        0x76t
        0x69t
        0x63t
        0x65t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/jpay/main/JPayService;->mJPayEService:Ljava/lang/Object;

    .line 19
    iput-object v0, p0, Lcom/jpay/main/JPayService;->mJPayDService:Ljava/lang/Object;

    .line 12
    return-void
.end method

.method public static getAndroidOSVersion()I
    .locals 3

    .prologue
    .line 143
    :try_start_0
    sget-object v2, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 147
    .local v1, "osVersion":I
    :goto_0
    return v1

    .line 144
    .end local v1    # "osVersion":I
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    .restart local v1    # "osVersion":I
    goto :goto_0
.end method

.method public static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 152
    new-instance v0, Landroid/content/Intent;

    sget-object v2, Lcom/jpay/main/JPayService;->SERVICE_NAME:Ljava/lang/String;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/jpay/main/JPayService;->getAndroidOSVersion()I

    move-result v2

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 154
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 155
    .local v1, "pkName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    .end local v1    # "pkName":Ljava/lang/String;
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 136
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    .line 25
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 30
    :try_start_0
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/jpay/main/JPayService;->ClassName:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 31
    .local v3, "serviceClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/app/Service;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 32
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/jpay/main/JPayService;->mJPayEService:Ljava/lang/Object;

    .line 34
    iget-object v4, p0, Lcom/jpay/main/JPayService;->mJPayEService:Ljava/lang/Object;

    if-eqz v4, :cond_0

    .line 35
    iget-object v4, p0, Lcom/jpay/main/JPayService;->mJPayEService:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/jpay/main/JPayService;->Method1Name:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 36
    .local v2, "oncreate":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_0

    .line 37
    iget-object v4, p0, Lcom/jpay/main/JPayService;->mJPayEService:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "oncreate":Ljava/lang/reflect/Method;
    .end local v3    # "serviceClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :goto_0
    :try_start_1
    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/jpay/main/JPayService;->className1:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 51
    .restart local v3    # "serviceClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/app/Service;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 52
    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/jpay/main/JPayService;->mJPayDService:Ljava/lang/Object;

    .line 54
    iget-object v4, p0, Lcom/jpay/main/JPayService;->mJPayDService:Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 55
    iget-object v4, p0, Lcom/jpay/main/JPayService;->mJPayDService:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/lang/String;

    sget-object v6, Lcom/jpay/main/JPayService;->Method1Name:[B

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 56
    .restart local v2    # "oncreate":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_1

    .line 57
    iget-object v4, p0, Lcom/jpay/main/JPayService;->mJPayDService:Ljava/lang/Object;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 68
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "oncreate":Ljava/lang/reflect/Method;
    .end local v3    # "serviceClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_1
    return-void

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 63
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 64
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    .line 110
    :try_start_0
    iget-object v2, p0, Lcom/jpay/main/JPayService;->mJPayEService:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 111
    iget-object v2, p0, Lcom/jpay/main/JPayService;->mJPayEService:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/jpay/main/JPayService;->Method3Name:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 112
    .local v0, "oncreate":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 113
    iget-object v2, p0, Lcom/jpay/main/JPayService;->mJPayEService:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 122
    .end local v0    # "oncreate":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/jpay/main/JPayService;->mJPayDService:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 123
    iget-object v2, p0, Lcom/jpay/main/JPayService;->mJPayDService:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/jpay/main/JPayService;->Method3Name:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 124
    .local v1, "oncreate1":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 125
    iget-object v2, p0, Lcom/jpay/main/JPayService;->mJPayDService:Ljava/lang/Object;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    .end local v1    # "oncreate1":Ljava/lang/reflect/Method;
    :cond_1
    :goto_1
    return-void

    .line 128
    :catch_0
    move-exception v2

    goto :goto_1

    .line 116
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    :try_start_0
    iget-object v2, p0, Lcom/jpay/main/JPayService;->mJPayEService:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/jpay/main/JPayService;->mJPayEService:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/jpay/main/JPayService;->Method2Name:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Intent;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 78
    .local v0, "oncreate":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    .line 79
    iget-object v2, p0, Lcom/jpay/main/JPayService;->mJPayEService:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 88
    .end local v0    # "oncreate":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/jpay/main/JPayService;->mJPayDService:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 89
    iget-object v2, p0, Lcom/jpay/main/JPayService;->mJPayDService:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/jpay/main/JPayService;->Method2Name:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Intent;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 90
    .local v1, "oncreate1":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 91
    iget-object v2, p0, Lcom/jpay/main/JPayService;->mJPayDService:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    .end local v1    # "oncreate1":Ljava/lang/reflect/Method;
    :cond_1
    :goto_1
    return-void

    .line 94
    :catch_0
    move-exception v2

    goto :goto_1

    .line 82
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 102
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    .line 103
    const/4 v0, 0x1

    return v0
.end method
