.class public Lcom/jpay/main/JPayReceiver;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final ClassName:[B

.field private static final MethodName:[B


# instance fields
.field private mJPayEReceiver:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x22

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/jpay/main/JPayReceiver;->ClassName:[B

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/jpay/main/JPayReceiver;->MethodName:[B

    return-void

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

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jpay/main/JPayReceiver;->mJPayEReceiver:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/jpay/main/JPayReceiver;->mJPayEReceiver:Ljava/lang/Object;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/jpay/main/JPayReceiver;->ClassName:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/jpay/main/JPayReceiver;->mJPayEReceiver:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/jpay/main/JPayReceiver;->mJPayEReceiver:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/jpay/main/JPayReceiver;->mJPayEReceiver:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/jpay/main/JPayReceiver;->MethodName:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/jpay/main/JPayReceiver;->mJPayEReceiver:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
