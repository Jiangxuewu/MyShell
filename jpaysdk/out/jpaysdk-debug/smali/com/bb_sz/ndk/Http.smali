.class public Lcom/bb_sz/ndk/Http;
.super Ljava/lang/Object;
.source "Http.java"


# static fields
.field private static final CLOCK:Ljava/lang/Object;

.field public static final CONNECT_TIMEOUT:I = 0x2710

.field public static final DATA_TIMEOUT:I = 0x7530

.field private static final END:Ljava/lang/String; = "\r\n"

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
    const/4 v0, 0x3

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
    .locals 2
    .param p1, "type"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 113
    new-instance v0, Lcom/bb_sz/ndk/Http$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/bb_sz/ndk/Http$2;-><init>(Lcom/bb_sz/ndk/Http;ILjava/lang/String;)V

    .line 159
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/bb_sz/ndk/Http;->postPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/bb_sz/ndk/Http;->postPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 163
    :cond_0
    return-void
.end method

.method public post(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;I)V
    .locals 1
    .param p1, "item"    # Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;
    .param p2, "code"    # I

    .prologue
    .line 64
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bb_sz/ndk/Http;->post(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;ILjava/lang/String;)V

    .line 65
    return-void
.end method

.method public post(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;ILjava/lang/String;)V
    .locals 1
    .param p1, "item"    # Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;
    .param p2, "code"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 68
    if-eqz p1, :cond_0

    .line 69
    iget-object v0, p1, Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;->pkg:Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3}, Lcom/bb_sz/ndk/Http;->post(Ljava/lang/String;ILjava/lang/String;)V

    .line 71
    :cond_0
    return-void
.end method

.method public post(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "code"    # I

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bb_sz/ndk/Http;->post(Ljava/lang/String;ILjava/lang/String;)V

    .line 75
    return-void
.end method

.method public post(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "code"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 78
    new-instance v0, Lcom/bb_sz/ndk/Http$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bb_sz/ndk/Http$1;-><init>(Lcom/bb_sz/ndk/Http;Ljava/lang/String;ILjava/lang/String;)V

    .line 107
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcom/bb_sz/ndk/Http;->postPool:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/bb_sz/ndk/Http;->postPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 110
    :cond_0
    return-void
.end method
