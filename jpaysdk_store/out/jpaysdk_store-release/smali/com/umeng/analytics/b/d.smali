.class Lcom/umeng/analytics/b/d;
.super Ljava/lang/Object;
.source "UMDBManager.java"


# static fields
.field private static c:Lcom/umeng/analytics/b/d;

.field private static d:Landroid/database/sqlite/SQLiteOpenHelper;


# instance fields
.field private a:Ljava/util/concurrent/atomic/AtomicInteger;

.field private b:Ljava/util/concurrent/atomic/AtomicInteger;

.field private e:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/umeng/analytics/b/d;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lcom/umeng/analytics/b/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/umeng/analytics/b/d;->c:Lcom/umeng/analytics/b/d;

    if-nez v0, :cond_0

    .line 32
    invoke-static {p0}, Lcom/umeng/analytics/b/d;->b(Landroid/content/Context;)V

    .line 34
    :cond_0
    sget-object v0, Lcom/umeng/analytics/b/d;->c:Lcom/umeng/analytics/b/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 24
    const-class v1, Lcom/umeng/analytics/b/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/umeng/analytics/b/d;->c:Lcom/umeng/analytics/b/d;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/umeng/analytics/b/d;

    invoke-direct {v0}, Lcom/umeng/analytics/b/d;-><init>()V

    sput-object v0, Lcom/umeng/analytics/b/d;->c:Lcom/umeng/analytics/b/d;

    .line 26
    invoke-static {p0}, Lcom/umeng/analytics/b/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/b/c;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/b/d;->d:Landroid/database/sqlite/SQLiteOpenHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    :cond_0
    monitor-exit v1

    return-void

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized a()Landroid/database/sqlite/SQLiteDatabase;
    .locals 2

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 40
    sget-object v0, Lcom/umeng/analytics/b/d;->d:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b/d;->e:Landroid/database/sqlite/SQLiteDatabase;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b/d;->e:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 1

    .prologue
    .line 46
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b/d;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/umeng/analytics/b/d;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b/d;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/umeng/analytics/b/d;->e:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
