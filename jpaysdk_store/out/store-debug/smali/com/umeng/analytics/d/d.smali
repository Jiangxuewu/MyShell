.class public final Lcom/umeng/analytics/d/d;
.super Ljava/lang/Object;
.source "CacheService.java"

# interfaces
.implements Lcom/umeng/analytics/d/g;


# static fields
.field private static c:Lcom/umeng/analytics/d/d;


# instance fields
.field private a:Lcom/umeng/analytics/d/g;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/umeng/analytics/d/d;->b:Landroid/content/Context;

    .line 23
    new-instance v0, Lcom/umeng/analytics/d/c;

    iget-object v1, p0, Lcom/umeng/analytics/d/d;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/analytics/d/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/analytics/d/d;->a:Lcom/umeng/analytics/d/g;

    .line 24
    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/d/d;)Lcom/umeng/analytics/d/g;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/umeng/analytics/d/d;->a:Lcom/umeng/analytics/d/g;

    return-object v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/umeng/analytics/d/d;
    .locals 2

    .prologue
    .line 31
    const-class v1, Lcom/umeng/analytics/d/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/umeng/analytics/d/d;->c:Lcom/umeng/analytics/d/d;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 32
    new-instance v0, Lcom/umeng/analytics/d/d;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/d/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/analytics/d/d;->c:Lcom/umeng/analytics/d/d;

    .line 35
    :cond_0
    sget-object v0, Lcom/umeng/analytics/d/d;->c:Lcom/umeng/analytics/d/d;
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


# virtual methods
.method public declared-synchronized a(Landroid/content/Context;)Lcom/umeng/analytics/d/c;
    .locals 1

    .prologue
    .line 27
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/d/d;->a:Lcom/umeng/analytics/d/g;

    check-cast v0, Lcom/umeng/analytics/d/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 51
    new-instance v0, Lcom/umeng/analytics/d/d$2;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/d/d$2;-><init>(Lcom/umeng/analytics/d/d;)V

    invoke-static {v0}, Lcom/umeng/a/i;->b(Ljava/lang/Runnable;)V

    .line 56
    return-void
.end method

.method public a(Lcom/umeng/analytics/d/g;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/umeng/analytics/d/d;->a:Lcom/umeng/analytics/d/g;

    .line 40
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/umeng/analytics/d/d$1;

    invoke-direct {v0, p0, p1}, Lcom/umeng/analytics/d/d$1;-><init>(Lcom/umeng/analytics/d/d;Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/umeng/a/i;->b(Ljava/lang/Runnable;)V

    .line 48
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lcom/umeng/analytics/d/d$3;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/d/d$3;-><init>(Lcom/umeng/analytics/d/d;)V

    invoke-static {v0}, Lcom/umeng/a/i;->c(Ljava/lang/Runnable;)V

    .line 68
    return-void
.end method
