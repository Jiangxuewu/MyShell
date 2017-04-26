.class public Lcom/bb_sz/ndk/Http;
.super Ljava/lang/Object;
.source "Http.java"


# static fields
.field private static final CLOCK:Ljava/lang/Object;

.field public static final CONNECT_TIMEOUT:I = 0x2710

.field public static final DATA_TIMEOUT:I = 0x7530

.field public static final END:Ljava/lang/String; = "\r\n"

.field private static final HOST:Ljava/lang/String; = "idata.iadmore.com"

.field private static final PORT:I = 0x1f4a

.field public static final STATE_DOWN_ERROR:I = 0x65

.field public static final STATE_DOWN_FINISH:I = 0x2

.field public static final STATE_DOWN_FINISH2:I = 0xc

.field public static final STATE_DOWN_FINISH3:I = 0xd

.field public static final STATE_DOWN_NET_ERROR:I = 0x64

.field public static final STATE_DOWN_SUCCESS:I = 0x3

.field public static final STATE_EXISTS_DOWNING:I = 0x5

.field public static final STATE_INSTALLED:I = 0x4

.field public static final STATE_INSTALL_START:I = 0x8

.field public static final STATE_INSTALL_SUCCESS:I = 0x9

.field public static final STATE_INSTALL_SUCCESS2:I = 0xa

.field public static final STATE_INSTALL_TIMES_MAX:I = 0x7

.field public static final STATE_INSTALL_TIME_OUT:I = 0xb

.field public static final STATE_READ_DATA_ERROR:I = 0xe

.field public static final STATE_READ_INSTALL:I = 0x6

.field public static final STATE_START_DOWN:I = 0x0

.field public static final STATE_START_READ_DATA:I = 0x1

.field private static mInstance:Lcom/bb_sz/ndk/Http;


# instance fields
.field private final postPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bb_sz/ndk/Http;->CLOCK:Ljava/lang/Object;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/bb_sz/ndk/Http;->mInstance:Lcom/bb_sz/ndk/Http;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bb_sz/ndk/Http;->postPool:Ljava/util/concurrent/ExecutorService;

    .line 60
    return-void
.end method

.method public static getInstance()Lcom/bb_sz/ndk/Http;
    .locals 2

    .prologue
    .line 50
    sget-object v1, Lcom/bb_sz/ndk/Http;->CLOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 51
    :try_start_0
    sget-object v0, Lcom/bb_sz/ndk/Http;->mInstance:Lcom/bb_sz/ndk/Http;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/bb_sz/ndk/Http;

    invoke-direct {v0}, Lcom/bb_sz/ndk/Http;-><init>()V

    sput-object v0, Lcom/bb_sz/ndk/Http;->mInstance:Lcom/bb_sz/ndk/Http;

    .line 54
    :cond_0
    sget-object v0, Lcom/bb_sz/ndk/Http;->mInstance:Lcom/bb_sz/ndk/Http;

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public post(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 133
    new-instance v0, Lcom/bb_sz/ndk/Http$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/bb_sz/ndk/Http$3;-><init>(Lcom/bb_sz/ndk/Http;ILjava/lang/String;)V

    .line 179
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/Http;->submit(Ljava/lang/Runnable;)V

    .line 180
    return-void
.end method

.method public post(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;I)V
    .locals 1
    .param p1, "item"    # Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;
    .param p2, "code"    # I

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bb_sz/ndk/Http;->post(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;ILjava/lang/String;)V

    .line 64
    return-void
.end method

.method public post(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;ILjava/lang/String;)V
    .locals 1
    .param p1, "item"    # Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;
    .param p2, "code"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 67
    if-eqz p1, :cond_0

    .line 68
    iget-object v0, p1, Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3}, Lcom/bb_sz/ndk/Http;->post(Ljava/lang/String;ILjava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method

.method public post(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bb_sz/ndk/Http;->post(Ljava/lang/String;ILjava/lang/String;)V

    .line 74
    return-void
.end method

.method public post(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 100
    new-instance v0, Lcom/bb_sz/ndk/Http$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bb_sz/ndk/Http$2;-><init>(Lcom/bb_sz/ndk/Http;Ljava/lang/String;ILjava/lang/String;)V

    .line 129
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/Http;->submit(Ljava/lang/Runnable;)V

    .line 130
    return-void
.end method

.method public post(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "data"    # Ljava/lang/String;

    .prologue
    .line 77
    new-instance v0, Lcom/bb_sz/ndk/Http$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/bb_sz/ndk/Http$1;-><init>(Lcom/bb_sz/ndk/Http;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 96
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/Http;->submit(Ljava/lang/Runnable;)V

    .line 97
    return-void
.end method

.method public submit(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/bb_sz/ndk/Http;->postPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/bb_sz/ndk/Http;->postPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 186
    :cond_0
    return-void
.end method
