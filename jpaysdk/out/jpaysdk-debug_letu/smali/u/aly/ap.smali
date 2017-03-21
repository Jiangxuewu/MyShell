.class public Lu/aly/ap;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field private static d:Lorg/json/JSONObject;


# instance fields
.field b:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final c:Ljava/util/Map;

.field private e:Landroid/app/Application;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lu/aly/ap;->a:Ljava/lang/String;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lu/aly/ap;->d:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu/aly/ap;->c:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lu/aly/ap;->e:Landroid/app/Application;

    new-instance v0, Lu/aly/ap$1;

    invoke-direct {v0, p0}, Lu/aly/ap$1;-><init>(Lu/aly/ap;)V

    iput-object v0, p0, Lu/aly/ap;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lu/aly/ap;->e:Landroid/app/Application;

    invoke-direct {p0, p1}, Lu/aly/ap;->a(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 2

    iget-object v0, p0, Lu/aly/ap;->e:Landroid/app/Application;

    iget-object v1, p0, Lu/aly/ap;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    sget-object v0, Lu/aly/ap;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lu/aly/ap;->b(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lu/aly/ap;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lu/aly/ap;->b(Landroid/app/Activity;)V

    return-void
.end method

.method private b(Landroid/app/Activity;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lu/aly/ap;->a:Ljava/lang/String;

    iget-object v1, p0, Lu/aly/ap;->c:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lu/aly/ap;->c:Ljava/util/Map;

    sget-object v2, Lu/aly/ap;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 5

    :try_start_0
    sget-object v1, Lu/aly/ap;->d:Lorg/json/JSONObject;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Lu/aly/ap;->d:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {p0}, Lu/aly/w;->a(Landroid/content/Context;)Lu/aly/w;

    move-result-object v0

    invoke-static {}, Lu/aly/bd;->a()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lu/aly/ap;->d:Lorg/json/JSONObject;

    sget-object v4, Lu/aly/w$a;->a:Lu/aly/w$a;

    invoke-virtual {v0, v2, v3, v4}, Lu/aly/w;->a(Ljava/lang/String;Lorg/json/JSONObject;Lu/aly/w$a;)Z

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lu/aly/ap;->d:Lorg/json/JSONObject;

    :cond_0
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lu/aly/ap;Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lu/aly/ap;->c(Landroid/app/Activity;)V

    return-void
.end method

.method private c(Landroid/app/Activity;)V
    .locals 6

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lu/aly/ap;->c:Ljava/util/Map;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lu/aly/ap;->c:Ljava/util/Map;

    sget-object v4, Lu/aly/ap;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lu/aly/ap;->c:Ljava/util/Map;

    sget-object v1, Lu/aly/ap;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, v4, v0

    iget-object v3, p0, Lu/aly/ap;->c:Ljava/util/Map;

    sget-object v4, Lu/aly/ap;->a:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v2, Lu/aly/ap;->d:Lorg/json/JSONObject;

    monitor-enter v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    sput-object v3, Lu/aly/ap;->d:Lorg/json/JSONObject;

    const-string v4, "page_name"

    sget-object v5, Lu/aly/ap;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Lu/aly/ap;->d:Lorg/json/JSONObject;

    const-string v4, "duration"

    invoke-virtual {v3, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lu/aly/ap;->e:Landroid/app/Application;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/aly/ap;->e:Landroid/app/Application;

    iget-object v1, p0, Lu/aly/ap;->b:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v0, v1}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lu/aly/ap;->c(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lu/aly/ap;->a()V

    return-void
.end method
