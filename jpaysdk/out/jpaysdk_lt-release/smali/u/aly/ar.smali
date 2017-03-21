.class public final Lu/aly/ar;
.super Ljava/lang/Object;

# interfaces
.implements Lu/aly/au;


# static fields
.field private static c:Lu/aly/ar;


# instance fields
.field private a:Lu/aly/au;

.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu/aly/ar;->b:Landroid/content/Context;

    new-instance v0, Lu/aly/aq;

    iget-object v1, p0, Lu/aly/ar;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lu/aly/aq;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/ar;->a:Lu/aly/au;

    return-void
.end method

.method static synthetic a(Lu/aly/ar;)Lu/aly/au;
    .locals 1

    iget-object v0, p0, Lu/aly/ar;->a:Lu/aly/au;

    return-object v0
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lu/aly/ar;
    .locals 2

    const-class v1, Lu/aly/ar;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lu/aly/ar;->c:Lu/aly/ar;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    new-instance v0, Lu/aly/ar;

    invoke-direct {v0, p0}, Lu/aly/ar;-><init>(Landroid/content/Context;)V

    sput-object v0, Lu/aly/ar;->c:Lu/aly/ar;

    :cond_0
    sget-object v0, Lu/aly/ar;->c:Lu/aly/ar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)Lu/aly/aq;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lu/aly/ar;->a:Lu/aly/au;

    check-cast v0, Lu/aly/aq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a()V
    .locals 1

    new-instance v0, Lu/aly/ar$2;

    invoke-direct {v0, p0}, Lu/aly/ar$2;-><init>(Lu/aly/ar;)V

    invoke-static {v0}, Lu/aly/by;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lu/aly/ar$1;

    invoke-direct {v0, p0, p1}, Lu/aly/ar$1;-><init>(Lu/aly/ar;Ljava/lang/Object;)V

    invoke-static {v0}, Lu/aly/by;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Lu/aly/au;)V
    .locals 0

    iput-object p1, p0, Lu/aly/ar;->a:Lu/aly/au;

    return-void
.end method

.method public final b()V
    .locals 1

    new-instance v0, Lu/aly/ar$3;

    invoke-direct {v0, p0}, Lu/aly/ar$3;-><init>(Lu/aly/ar;)V

    invoke-static {v0}, Lu/aly/by;->c(Ljava/lang/Runnable;)V

    return-void
.end method
