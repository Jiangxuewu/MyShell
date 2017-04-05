.class public Lcom/jpay/main/JPayReceiver;
.super Landroid/content/BroadcastReceiver;
.source "JPayReceiver.java"


# static fields
.field private static final ClassName:[B

.field private static final MethodName:[B


# instance fields
.field private mJPayEReceiver:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jpay/main/JPayReceiver;->ClassName:[B

    .line 15
    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/jpay/main/JPayReceiver;->MethodName:[B

    return-void

    .line 14
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
        0x52t
        0x65t
        0x63t
        0x65t
        0x69t
        0x76t
        0x65t
        0x72t
    .end array-data

    .line 15
    nop

    :array_1
    .array-data 1
        0x6ft
        0x6et
        0x52t
        0x65t
        0x63t
        0x65t
        0x69t
        0x76t
        0x65t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jpay/main/JPayReceiver;->mJPayEReceiver:Ljava/lang/Object;

    .line 12
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    :try_start_0
    iget-object v3, p0, Lcom/jpay/main/JPayReceiver;->mJPayEReceiver:Ljava/lang/Object;

    if-nez v3, :cond_0

    .line 21
    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/jpay/main/JPayReceiver;->ClassName:[B

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 22
    .local v2, "serviceClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 23
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    iput-object v3, p0, Lcom/jpay/main/JPayReceiver;->mJPayEReceiver:Ljava/lang/Object;

    .line 25
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "serviceClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    iget-object v3, p0, Lcom/jpay/main/JPayReceiver;->mJPayEReceiver:Ljava/lang/Object;

    if-eqz v3, :cond_1

    .line 26
    iget-object v3, p0, Lcom/jpay/main/JPayReceiver;->mJPayEReceiver:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    sget-object v5, Lcom/jpay/main/JPayReceiver;->MethodName:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/content/Context;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-class v7, Landroid/content/Intent;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 27
    .local v1, "oncreate":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 28
    iget-object v3, p0, Lcom/jpay/main/JPayReceiver;->mJPayEReceiver:Ljava/lang/Object;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .end local v1    # "oncreate":Ljava/lang/reflect/Method;
    :cond_1
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v3

    goto :goto_0
.end method
