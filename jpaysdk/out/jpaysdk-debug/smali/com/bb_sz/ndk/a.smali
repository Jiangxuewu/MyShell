.class public final Lcom/bb_sz/ndk/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Lcom/bb_sz/ndk/a;


# instance fields
.field private final c:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bb_sz/ndk/a;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/bb_sz/ndk/a;->b:Lcom/bb_sz/ndk/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bb_sz/ndk/a;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public static a()Lcom/bb_sz/ndk/a;
    .locals 2

    sget-object v1, Lcom/bb_sz/ndk/a;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bb_sz/ndk/a;->b:Lcom/bb_sz/ndk/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bb_sz/ndk/a;

    invoke-direct {v0}, Lcom/bb_sz/ndk/a;-><init>()V

    sput-object v0, Lcom/bb_sz/ndk/a;->b:Lcom/bb_sz/ndk/a;

    :cond_0
    sget-object v0, Lcom/bb_sz/ndk/a;->b:Lcom/bb_sz/ndk/a;

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/bb_sz/ndk/b;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bb_sz/ndk/b;-><init>(Lcom/bb_sz/ndk/a;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/bb_sz/ndk/a;->c:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bb_sz/ndk/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/bb_sz/ndk/c;

    invoke-direct {v0, p0, p1, p2}, Lcom/bb_sz/ndk/c;-><init>(Lcom/bb_sz/ndk/a;ILjava/lang/String;)V

    iget-object v1, p0, Lcom/bb_sz/ndk/a;->c:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bb_sz/ndk/a;->c:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public final a(Lcom/bb_sz/ndk/a/b;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/bb_sz/ndk/a;->a(Lcom/bb_sz/ndk/a/b;ILjava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/bb_sz/ndk/a/b;ILjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/bb_sz/ndk/a/b;->d:Ljava/lang/String;

    invoke-direct {p0, v0, p2, p3}, Lcom/bb_sz/ndk/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 2

    const/16 v0, 0x9

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/bb_sz/ndk/a;->a(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method
