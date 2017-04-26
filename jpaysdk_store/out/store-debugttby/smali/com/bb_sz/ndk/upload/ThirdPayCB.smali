.class public Lcom/bb_sz/ndk/upload/ThirdPayCB;
.super Ljava/lang/Object;
.source "ThirdPayCB.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SkyThird"

.field public static final debug:Z = true

.field private static mInstance:Lcom/bb_sz/ndk/upload/ThirdPayCB;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static getInstance()Lcom/bb_sz/ndk/upload/ThirdPayCB;
    .locals 2

    .prologue
    .line 22
    const-string v1, "SkyThird"

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/bb_sz/ndk/upload/ThirdPayCB;->mInstance:Lcom/bb_sz/ndk/upload/ThirdPayCB;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/bb_sz/ndk/upload/ThirdPayCB;

    invoke-direct {v0}, Lcom/bb_sz/ndk/upload/ThirdPayCB;-><init>()V

    sput-object v0, Lcom/bb_sz/ndk/upload/ThirdPayCB;->mInstance:Lcom/bb_sz/ndk/upload/ThirdPayCB;

    .line 26
    :cond_0
    sget-object v0, Lcom/bb_sz/ndk/upload/ThirdPayCB;->mInstance:Lcom/bb_sz/ndk/upload/ThirdPayCB;

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private httpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "jarVersion"    # Ljava/lang/String;
    .param p2, "cid"    # Ljava/lang/String;
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "appid"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Lcom/bb_sz/ndk/upload/ThirdPayCB$1;

    invoke-direct {v0, p0, p4, p2, p1}, Lcom/bb_sz/ndk/upload/ThirdPayCB$1;-><init>(Lcom/bb_sz/ndk/upload/ThirdPayCB;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    .local v0, "run":Ljava/lang/Runnable;
    invoke-static {}, Lcom/bb_sz/ndk/Http;->getInstance()Lcom/bb_sz/ndk/Http;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bb_sz/ndk/Http;->submit(Ljava/lang/Runnable;)V

    .line 147
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "{$CID$}"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "{$APPID$}"

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/bb_sz/ndk/upload/ThirdPayCB;->httpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method
