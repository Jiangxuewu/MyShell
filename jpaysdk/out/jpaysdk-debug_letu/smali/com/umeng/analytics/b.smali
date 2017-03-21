.class public Lcom/umeng/analytics/b;
.super Ljava/lang/Object;

# interfaces
.implements Lu/aly/ay;


# static fields
.field private static final j:Ljava/lang/String; = "sp"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lu/aly/bw;

.field private c:Lu/aly/as;

.field private d:Lu/aly/bf;

.field private e:Lu/aly/bd;

.field private f:Lu/aly/at;

.field private g:Lu/aly/ar;

.field private h:Lu/aly/ap;

.field private i:Lu/aly/m;

.field private k:Z

.field private l:Z

.field private m:Lorg/json/JSONObject;

.field private n:Z


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    new-instance v0, Lu/aly/as;

    invoke-direct {v0}, Lu/aly/as;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->c:Lu/aly/as;

    new-instance v0, Lu/aly/bf;

    invoke-direct {v0}, Lu/aly/bf;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->d:Lu/aly/bf;

    new-instance v0, Lu/aly/bd;

    invoke-direct {v0}, Lu/aly/bd;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->e:Lu/aly/bd;

    iput-object v1, p0, Lcom/umeng/analytics/b;->f:Lu/aly/at;

    iput-object v1, p0, Lcom/umeng/analytics/b;->g:Lu/aly/ar;

    iput-object v1, p0, Lcom/umeng/analytics/b;->h:Lu/aly/ap;

    iput-object v1, p0, Lcom/umeng/analytics/b;->i:Lu/aly/m;

    iput-boolean v2, p0, Lcom/umeng/analytics/b;->k:Z

    iput-boolean v2, p0, Lcom/umeng/analytics/b;->l:Z

    iput-object v1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    iput-boolean v2, p0, Lcom/umeng/analytics/b;->n:Z

    iget-object v0, p0, Lcom/umeng/analytics/b;->c:Lu/aly/as;

    invoke-virtual {v0, p0}, Lu/aly/as;->a(Lu/aly/ay;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/b;)Lu/aly/m;
    .locals 1

    iget-object v0, p0, Lcom/umeng/analytics/b;->i:Lu/aly/m;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/analytics/b;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->h(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/b;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/umeng/analytics/b;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/umeng/analytics/b;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/analytics/b;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->i(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic c(Lcom/umeng/analytics/b;)Lu/aly/ar;
    .locals 1

    iget-object v0, p0, Lcom/umeng/analytics/b;->g:Lu/aly/ar;

    return-object v0
.end method

.method private g(Landroid/content/Context;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-le v1, v2, :cond_2

    iget-boolean v1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v1, :cond_2

    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    new-instance v2, Lu/aly/ap;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-direct {v2, v1}, Lu/aly/ap;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/umeng/analytics/b;->h:Lu/aly/ap;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/umeng/analytics/b;->n:Z

    :cond_2
    iget-boolean v1, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    new-instance v1, Lu/aly/at;

    iget-object v2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lu/aly/at;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/umeng/analytics/b;->f:Lu/aly/at;

    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/ar;->b(Landroid/content/Context;)Lu/aly/ar;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/analytics/b;->g:Lu/aly/ar;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/umeng/analytics/b;->k:Z

    iget-object v1, p0, Lcom/umeng/analytics/b;->i:Lu/aly/m;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/m;->a(Landroid/content/Context;)Lu/aly/m;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/analytics/b;->i:Lu/aly/m;

    :cond_3
    iget-boolean v1, p0, Lcom/umeng/analytics/b;->l:Z

    if-nez v1, :cond_0

    new-instance v1, Lcom/umeng/analytics/b$1;

    invoke-direct {v1, p0}, Lcom/umeng/analytics/b$1;-><init>(Lcom/umeng/analytics/b;)V

    invoke-static {v1}, Lu/aly/by;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private h(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/umeng/analytics/b;->e:Lu/aly/bd;

    invoke-virtual {v0, p1}, Lu/aly/bd;->c(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/umeng/analytics/b;->b:Lu/aly/bw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/b;->b:Lu/aly/bw;

    invoke-interface {v0}, Lu/aly/bw;->a()V

    :cond_0
    return-void
.end method

.method private i(Landroid/content/Context;)V
    .locals 2

    iget-object v0, p0, Lcom/umeng/analytics/b;->e:Lu/aly/bd;

    invoke-virtual {v0, p1}, Lu/aly/bd;->d(Landroid/content/Context;)V

    invoke-static {p1}, Lu/aly/bf;->a(Landroid/content/Context;)V

    invoke-static {p1}, Lu/aly/ap;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/umeng/analytics/b;->g:Lu/aly/ar;

    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lu/aly/ar;->a(Landroid/content/Context;)Lu/aly/aq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu/aly/aq;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/umeng/analytics/b;->b:Lu/aly/bw;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/b;->b:Lu/aly/bw;

    invoke-interface {v0}, Lu/aly/bw;->b()V

    :cond_0
    return-void
.end method

.method private j(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lu/aly/ba;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "sp"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()Lu/aly/bd;
    .locals 1

    iget-object v0, p0, Lcom/umeng/analytics/b;->e:Lu/aly/bd;

    return-object v0
.end method

.method a(DD)V
    .locals 3

    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    if-nez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [D

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    :cond_0
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    return-void
.end method

.method a(J)V
    .locals 1

    long-to-int v0, p1

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/umeng/analytics/AnalyticsConfig;->sLatentWindow:I

    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "unexpected null context in onResume"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lu/aly/bf;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/bf;->a(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_3

    :cond_2
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->g(Landroid/content/Context;)V

    :cond_3
    new-instance v0, Lcom/umeng/analytics/b$2;

    invoke-direct {v0, p0, p1}, Lcom/umeng/analytics/b$2;-><init>(Lcom/umeng/analytics/b;Landroid/content/Context;)V

    invoke-static {v0}, Lu/aly/by;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Exception occurred in Mobclick.onResume(). "

    invoke-static {v1, v0}, Lu/aly/bx;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;I)V
    .locals 0

    invoke-static {p1, p2}, Lcom/umeng/analytics/AnalyticsConfig;->a(Landroid/content/Context;I)V

    return-void
.end method

.method a(Landroid/content/Context;Lcom/umeng/analytics/MobclickAgent$EScenarioType;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    const-string v0, "unexpected null context in reportError"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->g(Landroid/content/Context;)V

    :cond_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "error_source"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "context"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/w;->a(Landroid/content/Context;)Lu/aly/w;

    move-result-object v1

    invoke-static {}, Lu/aly/bd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Lu/aly/w;->a(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lu/aly/bx;->a:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 8

    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->g(Landroid/content/Context;)V

    :cond_1
    iget-object v1, p0, Lcom/umeng/analytics/b;->f:Lu/aly/at;

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lu/aly/at;->a(Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lu/aly/bx;->a:Z

    if-eqz v1, :cond_2

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->g(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->f:Lu/aly/at;

    invoke-virtual {v0, p2, p3}, Lu/aly/at;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lu/aly/bx;->a:Z

    if-eqz v1, :cond_2

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->g(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->f:Lu/aly/at;

    invoke-virtual {v0, p2, p3, p4, p5}, Lu/aly/at;->a(Ljava/lang/String;Ljava/util/Map;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lu/aly/bx;->a:Z

    if-eqz v1, :cond_2

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    invoke-static {p2}, Lu/aly/bs;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lu/aly/bx;->a:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/util/List;)V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->g(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->f:Lu/aly/at;

    invoke-virtual {v0, p1, p2}, Lu/aly/at;->a(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;)V
    .locals 2

    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->g(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->f:Lu/aly/at;

    invoke-virtual {v0, p2, p3, p4}, Lu/aly/at;->a(Ljava/util/List;ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lu/aly/bx;->a:Z

    if-eqz v1, :cond_2

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;)V
    .locals 2

    iget-object v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    :cond_0
    iget-object v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mAppkey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mAppkey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/analytics/AnalyticsConfig;->setAppkey(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mChannelId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mChannelId:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->setChannel(Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mIsCrashEnable:Z

    sput-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->CATCH_EXCEPTION:Z

    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mType:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Lcom/umeng/analytics/MobclickAgent$EScenarioType;)V

    :goto_0
    return-void

    :cond_2
    const-string v0, "the appkey is null!"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lu/aly/bf;

    invoke-virtual {v0, p1}, Lu/aly/bf;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/umeng/analytics/b$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/umeng/analytics/b$4;-><init>(Lcom/umeng/analytics/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lu/aly/by;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lu/aly/bx;->a:Z

    if-eqz v1, :cond_0

    const-string v1, " Excepthon  in  onProfileSignIn"

    invoke-static {v1, v0}, Lu/aly/bx;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lu/aly/bf;

    invoke-virtual {v0}, Lu/aly/bf;->a()V

    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/b;->g:Lu/aly/ar;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "error_source"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "context"

    invoke-static {p1}, Lu/aly/bs;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/w;->a(Landroid/content/Context;)Lu/aly/w;

    move-result-object v1

    invoke-static {}, Lu/aly/bd;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lu/aly/w;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->i:Lu/aly/m;

    invoke-virtual {v0}, Lu/aly/m;->e()V

    iget-object v0, p0, Lcom/umeng/analytics/b;->h:Lu/aly/ap;

    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lu/aly/ap;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/b;->i(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ba;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    invoke-static {}, Lu/aly/by;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lu/aly/bx;->a:Z

    if-eqz v1, :cond_2

    const-string v1, "Exception in onAppCrash"

    invoke-static {v1, v0}, Lu/aly/bx;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    invoke-static {p1}, Lu/aly/bu;->a(Ljavax/microedition/khronos/opengles/GL10;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    aget-object v1, v0, v1

    sput-object v1, Lcom/umeng/analytics/AnalyticsConfig;->GPU_VENDER:Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_RENDERER:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a(Lu/aly/bw;)V
    .locals 0

    iput-object p1, p0, Lcom/umeng/analytics/b;->b:Lu/aly/bw;

    return-void
.end method

.method a(Z)V
    .locals 0

    sput-boolean p1, Lcom/umeng/analytics/AnalyticsConfig;->CATCH_EXCEPTION:Z

    return-void
.end method

.method b()V
    .locals 2

    :try_start_0
    new-instance v0, Lcom/umeng/analytics/b$5;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/b$5;-><init>(Lcom/umeng/analytics/b;)V

    invoke-static {v0}, Lu/aly/by;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lu/aly/bx;->a:Z

    if-eqz v1, :cond_0

    const-string v1, " Excepthon  in  onProfileSignOff"

    invoke-static {v1, v0}, Lu/aly/bx;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method b(J)V
    .locals 1

    sput-wide p1, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    return-void
.end method

.method b(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_1

    const-string v0, "unexpected null context in onPause"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lu/aly/bf;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lu/aly/bf;->b(Ljava/lang/String;)V

    :cond_2
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_4

    :cond_3
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->g(Landroid/content/Context;)V

    :cond_4
    new-instance v0, Lcom/umeng/analytics/b$3;

    invoke-direct {v0, p0, p1}, Lcom/umeng/analytics/b$3;-><init>(Lcom/umeng/analytics/b;Landroid/content/Context;)V

    invoke-static {v0}, Lu/aly/by;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lu/aly/bx;->a:Z

    if-eqz v1, :cond_0

    const-string v1, "Exception occurred in Mobclick.onRause(). "

    invoke-static {v1, v0}, Lu/aly/bx;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    :cond_0
    invoke-static {p1, p2}, Lcom/umeng/analytics/AnalyticsConfig;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lu/aly/bf;

    invoke-virtual {v0, p1}, Lu/aly/bf;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method b(Z)V
    .locals 0

    sput-boolean p1, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    return-void
.end method

.method c(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->g(Landroid/content/Context;)V

    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->g:Lu/aly/ar;

    invoke-virtual {v0}, Lu/aly/ar;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method c(Z)V
    .locals 0

    sput-boolean p1, Lcom/umeng/analytics/a;->e:Z

    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method d(Landroid/content/Context;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->h:Lu/aly/ap;

    invoke-virtual {v0, p1}, Lu/aly/ap;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lu/aly/bf;

    invoke-virtual {v0}, Lu/aly/bf;->a()V

    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->i(Landroid/content/Context;)V

    invoke-static {p1}, Lu/aly/ba;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/umeng/analytics/b;->i:Lu/aly/m;

    invoke-virtual {v0}, Lu/aly/m;->d()V

    invoke-static {}, Lu/aly/by;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-boolean v1, Lu/aly/bx;->a:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method d(Z)V
    .locals 0

    sput-boolean p1, Lu/aly/bx;->a:Z

    return-void
.end method

.method public e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method e(Z)V
    .locals 0

    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->a(Z)V

    return-void
.end method

.method public f(Landroid/content/Context;)V
    .locals 0

    return-void
.end method
