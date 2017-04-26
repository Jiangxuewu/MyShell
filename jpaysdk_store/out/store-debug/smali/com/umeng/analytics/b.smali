.class public Lcom/umeng/analytics/b;
.super Ljava/lang/Object;
.source "InternalAgent.java"

# interfaces
.implements Lcom/umeng/analytics/d/k;


# static fields
.field private static final j:Ljava/lang/String; = "sp"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/umeng/a/g;

.field private c:Lcom/umeng/analytics/d/e;

.field private d:Lcom/umeng/analytics/d/r;

.field private e:Lcom/umeng/analytics/d/p;

.field private f:Lcom/umeng/analytics/d/f;

.field private g:Lcom/umeng/analytics/d/d;

.field private h:Lcom/umeng/analytics/d/b;

.field private i:Lcom/umeng/analytics/a/d/a;

.field private k:Z

.field private l:Z

.field private m:Lorg/json/JSONObject;

.field private n:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 52
    new-instance v0, Lcom/umeng/analytics/d/e;

    invoke-direct {v0}, Lcom/umeng/analytics/d/e;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/d/e;

    .line 53
    new-instance v0, Lcom/umeng/analytics/d/r;

    invoke-direct {v0}, Lcom/umeng/analytics/d/r;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/d/r;

    .line 54
    new-instance v0, Lcom/umeng/analytics/d/p;

    invoke-direct {v0}, Lcom/umeng/analytics/d/p;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/d/p;

    .line 55
    iput-object v1, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/d/f;

    .line 56
    iput-object v1, p0, Lcom/umeng/analytics/b;->g:Lcom/umeng/analytics/d/d;

    .line 57
    iput-object v1, p0, Lcom/umeng/analytics/b;->h:Lcom/umeng/analytics/d/b;

    .line 58
    iput-object v1, p0, Lcom/umeng/analytics/b;->i:Lcom/umeng/analytics/a/d/a;

    .line 60
    iput-boolean v2, p0, Lcom/umeng/analytics/b;->k:Z

    .line 61
    iput-boolean v2, p0, Lcom/umeng/analytics/b;->l:Z

    .line 62
    iput-object v1, p0, Lcom/umeng/analytics/b;->m:Lorg/json/JSONObject;

    .line 63
    iput-boolean v2, p0, Lcom/umeng/analytics/b;->n:Z

    .line 66
    iget-object v0, p0, Lcom/umeng/analytics/b;->c:Lcom/umeng/analytics/d/e;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/d/e;->a(Lcom/umeng/analytics/d/k;)V

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/b;)Lcom/umeng/analytics/a/d/a;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/umeng/analytics/b;->i:Lcom/umeng/analytics/a/d/a;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/analytics/b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->h(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/b;Z)Z
    .locals 0

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/umeng/analytics/b;->l:Z

    return p1
.end method

.method static synthetic b(Lcom/umeng/analytics/b;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/umeng/analytics/b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->i(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic c(Lcom/umeng/analytics/b;)Lcom/umeng/analytics/d/d;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/umeng/analytics/b;->g:Lcom/umeng/analytics/d/d;

    return-object v0
.end method

.method private g(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 72
    if-nez p1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 76
    :cond_1
    :try_start_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xd

    if-le v1, v2, :cond_2

    .line 77
    iget-boolean v1, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v1, :cond_2

    .line 78
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 79
    new-instance v2, Lcom/umeng/analytics/d/b;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    move-object v1, v0

    invoke-direct {v2, v1}, Lcom/umeng/analytics/d/b;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/umeng/analytics/b;->h:Lcom/umeng/analytics/d/b;

    .line 80
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/umeng/analytics/b;->n:Z

    .line 85
    :cond_2
    iget-boolean v1, p0, Lcom/umeng/analytics/b;->k:Z

    if-nez v1, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 87
    new-instance v1, Lcom/umeng/analytics/d/f;

    iget-object v2, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/umeng/analytics/d/f;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/d/f;

    .line 88
    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/d/d;->b(Landroid/content/Context;)Lcom/umeng/analytics/d/d;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/analytics/b;->g:Lcom/umeng/analytics/d/d;

    .line 89
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/umeng/analytics/b;->k:Z

    .line 90
    iget-object v1, p0, Lcom/umeng/analytics/b;->i:Lcom/umeng/analytics/a/d/a;

    if-nez v1, :cond_3

    .line 91
    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/a/d/a;->a(Landroid/content/Context;)Lcom/umeng/analytics/a/d/a;

    move-result-object v1

    iput-object v1, p0, Lcom/umeng/analytics/b;->i:Lcom/umeng/analytics/a/d/a;

    .line 93
    :cond_3
    iget-boolean v1, p0, Lcom/umeng/analytics/b;->l:Z

    if-nez v1, :cond_0

    .line 94
    new-instance v1, Lcom/umeng/analytics/b$1;

    invoke-direct {v1, p0}, Lcom/umeng/analytics/b$1;-><init>(Lcom/umeng/analytics/b;)V

    invoke-static {v1}, Lcom/umeng/a/i;->b(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private h(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/d/p;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/d/p;->c(Landroid/content/Context;)V

    .line 264
    iget-object v0, p0, Lcom/umeng/analytics/b;->b:Lcom/umeng/a/g;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/umeng/analytics/b;->b:Lcom/umeng/a/g;

    invoke-interface {v0}, Lcom/umeng/a/g;->a()V

    .line 266
    :cond_0
    return-void
.end method

.method private i(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/d/p;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/d/p;->d(Landroid/content/Context;)V

    .line 275
    invoke-static {p1}, Lcom/umeng/analytics/d/r;->a(Landroid/content/Context;)V

    .line 276
    invoke-static {p1}, Lcom/umeng/analytics/d/b;->b(Landroid/content/Context;)V

    .line 277
    iget-object v0, p0, Lcom/umeng/analytics/b;->g:Lcom/umeng/analytics/d/d;

    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d/d;->a(Landroid/content/Context;)Lcom/umeng/analytics/d/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/d/c;->a(Landroid/content/Context;)V

    .line 279
    iget-object v0, p0, Lcom/umeng/analytics/b;->b:Lcom/umeng/a/g;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/umeng/analytics/b;->b:Lcom/umeng/a/g;

    invoke-interface {v0}, Lcom/umeng/a/g;->b()V

    .line 281
    :cond_0
    return-void
.end method

.method private j(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 690
    :try_start_0
    invoke-static {p1}, Lcom/umeng/analytics/d/m;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 691
    const-string v2, "sp"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 693
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 694
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 701
    :goto_0
    return-object v0

    .line 698
    :catch_0
    move-exception v0

    .line 699
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    move-object v0, v1

    .line 701
    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/umeng/analytics/d/p;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/umeng/analytics/b;->e:Lcom/umeng/analytics/d/p;

    return-object v0
.end method

.method a(DD)V
    .locals 3

    .prologue
    .line 508
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    if-nez v0, :cond_0

    .line 509
    const/4 v0, 0x2

    new-array v0, v0, [D

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    .line 512
    :cond_0
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    .line 513
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    const/4 v1, 0x1

    aput-wide p3, v0, v1

    .line 514
    return-void
.end method

.method a(J)V
    .locals 1

    .prologue
    .line 517
    long-to-int v0, p1

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/umeng/analytics/AnalyticsConfig;->sLatentWindow:I

    .line 518
    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 150
    if-nez p1, :cond_0

    .line 151
    const-string v0, "unexpected null context in onResume"

    invoke-static {v0}, Lcom/umeng/a/h;->e(Ljava/lang/String;)V

    .line 171
    :goto_0
    return-void

    .line 154
    :cond_0
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/d/r;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d/r;->a(Ljava/lang/String;)V

    .line 159
    :cond_1
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_3

    .line 160
    :cond_2
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->g(Landroid/content/Context;)V

    .line 162
    :cond_3
    new-instance v0, Lcom/umeng/analytics/b$2;

    invoke-direct {v0, p0, p1}, Lcom/umeng/analytics/b$2;-><init>(Lcom/umeng/analytics/b;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/umeng/a/i;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v0

    .line 169
    const-string v1, "Exception occurred in Mobclick.onResume(). "

    invoke-static {v1, v0}, Lcom/umeng/a/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 146
    invoke-static {p1, p2}, Lcom/umeng/analytics/AnalyticsConfig;->a(Landroid/content/Context;I)V

    .line 147
    return-void
.end method

.method a(Landroid/content/Context;Lcom/umeng/analytics/MobclickAgent$EScenarioType;)V
    .locals 1

    .prologue
    .line 527
    if-eqz p1, :cond_0

    .line 528
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 530
    :cond_0
    if-eqz p2, :cond_1

    .line 531
    invoke-virtual {p2}, Lcom/umeng/analytics/MobclickAgent$EScenarioType;->toValue()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;I)V

    .line 533
    :cond_1
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 217
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    if-nez p1, :cond_2

    .line 222
    const-string v0, "unexpected null context in reportError"

    invoke-static {v0}, Lcom/umeng/a/h;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 227
    :cond_2
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_4

    .line 228
    :cond_3
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->g(Landroid/content/Context;)V

    .line 229
    :cond_4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 230
    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 231
    const-string v1, "error_source"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 232
    const-string v1, "context"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/b/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/b/f;

    move-result-object v1

    invoke-static {}, Lcom/umeng/analytics/d/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Lcom/umeng/analytics/b/f;->a(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 234
    :catch_0
    move-exception v0

    .line 235
    sget-boolean v1, Lcom/umeng/a/h;->a:Z

    if-eqz v1, :cond_0

    .line 236
    invoke-static {v0}, Lcom/umeng/a/h;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 612
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 8

    .prologue
    .line 315
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_1

    .line 316
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->g(Landroid/content/Context;)V

    .line 317
    :cond_1
    iget-object v1, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/d/f;

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/umeng/analytics/d/f;->a(Ljava/lang/String;Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    :cond_2
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v0

    .line 319
    sget-boolean v1, Lcom/umeng/a/h;->a:Z

    if-eqz v1, :cond_2

    .line 320
    invoke-static {v0}, Lcom/umeng/a/h;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 206
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_1

    .line 207
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->g(Landroid/content/Context;)V

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/d/f;

    invoke-virtual {v0, p2, p3}, Lcom/umeng/analytics/d/f;->b(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :cond_2
    :goto_0
    return-void

    .line 209
    :catch_0
    move-exception v0

    .line 210
    sget-boolean v1, Lcom/umeng/a/h;->a:Z

    if-eqz v1, :cond_2

    .line 211
    invoke-static {v0}, Lcom/umeng/a/h;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 349
    return-void
.end method

.method a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 327
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_1

    .line 328
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->g(Landroid/content/Context;)V

    .line 329
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/d/f;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/umeng/analytics/d/f;->a(Ljava/lang/String;Ljava/util/Map;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :cond_2
    :goto_0
    return-void

    .line 330
    :catch_0
    move-exception v0

    .line 331
    sget-boolean v1, Lcom/umeng/a/h;->a:Z

    if-eqz v1, :cond_2

    .line 332
    invoke-static {v0}, Lcom/umeng/a/h;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Landroid/content/Context;Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 248
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    :try_start_0
    invoke-static {p2}, Lcom/umeng/a/c;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    sget-boolean v1, Lcom/umeng/a/h;->a:Z

    if-eqz v1, :cond_0

    .line 256
    invoke-static {v0}, Lcom/umeng/a/h;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 726
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_1

    .line 727
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->g(Landroid/content/Context;)V

    .line 729
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/d/f;

    invoke-virtual {v0, p1, p2}, Lcom/umeng/analytics/d/f;->a(Landroid/content/Context;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    :goto_0
    return-void

    .line 730
    :catch_0
    move-exception v0

    .line 731
    invoke-static {v0}, Lcom/umeng/a/h;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/util/List;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 302
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_1

    .line 303
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->g(Landroid/content/Context;)V

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->f:Lcom/umeng/analytics/d/f;

    invoke-virtual {v0, p2, p3, p4}, Lcom/umeng/analytics/d/f;->a(Ljava/util/List;ILjava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :cond_2
    :goto_0
    return-void

    .line 305
    :catch_0
    move-exception v0

    .line 306
    sget-boolean v1, Lcom/umeng/a/h;->a:Z

    if-eqz v1, :cond_2

    .line 307
    invoke-static {v0}, Lcom/umeng/a/h;->e(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Lcom/umeng/a/g;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/umeng/analytics/b;->b:Lcom/umeng/a/g;

    .line 143
    return-void
.end method

.method a(Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;)V
    .locals 2

    .prologue
    .line 554
    iget-object v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 555
    iget-object v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 557
    :cond_0
    iget-object v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mAppkey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 558
    iget-object v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mContext:Landroid/content/Context;

    iget-object v1, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mAppkey:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/umeng/analytics/AnalyticsConfig;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 563
    iget-object v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mChannelId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 564
    iget-object v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mChannelId:Ljava/lang/String;

    invoke-static {v0}, Lcom/umeng/analytics/AnalyticsConfig;->a(Ljava/lang/String;)V

    .line 566
    :cond_1
    iget-boolean v0, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mIsCrashEnable:Z

    sput-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->CATCH_EXCEPTION:Z

    .line 567
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/umeng/analytics/MobclickAgent$UMAnalyticsConfig;->mType:Lcom/umeng/analytics/MobclickAgent$EScenarioType;

    invoke-virtual {p0, v0, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Lcom/umeng/analytics/MobclickAgent$EScenarioType;)V

    .line 568
    :goto_0
    return-void

    .line 560
    :cond_2
    const-string v0, "the appkey is null!"

    invoke-static {v0}, Lcom/umeng/a/h;->e(Ljava/lang/String;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 124
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v0, :cond_0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/d/r;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/d/r;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 394
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/b$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/umeng/analytics/b$4;-><init>(Lcom/umeng/analytics/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/umeng/a/i;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 410
    :catch_0
    move-exception v0

    .line 411
    sget-boolean v1, Lcom/umeng/a/h;->a:Z

    if-eqz v1, :cond_0

    .line 412
    const-string v1, " Excepthon  in  onProfileSignIn"

    invoke-static {v1, v0}, Lcom/umeng/a/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 4

    .prologue
    .line 368
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/d/r;

    invoke-virtual {v0}, Lcom/umeng/analytics/d/r;->a()V

    .line 370
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 371
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/b;->g:Lcom/umeng/analytics/d/d;

    if-eqz v0, :cond_0

    .line 372
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 373
    const-string v1, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 374
    const-string v1, "error_source"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 375
    const-string v1, "context"

    invoke-static {p1}, Lcom/umeng/a/c;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 376
    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/b/f;->a(Landroid/content/Context;)Lcom/umeng/analytics/b/f;

    move-result-object v1

    invoke-static {}, Lcom/umeng/analytics/d/p;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/umeng/analytics/b/f;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->i:Lcom/umeng/analytics/a/d/a;

    invoke-virtual {v0}, Lcom/umeng/analytics/a/d/a;->e()V

    .line 379
    iget-object v0, p0, Lcom/umeng/analytics/b;->h:Lcom/umeng/analytics/d/b;

    iget-object v1, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d/b;->a(Landroid/content/Context;)V

    .line 380
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/umeng/analytics/b;->i(Landroid/content/Context;)V

    .line 381
    iget-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/d/m;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 384
    :cond_1
    invoke-static {}, Lcom/umeng/a/i;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    :cond_2
    :goto_0
    return-void

    .line 385
    :catch_0
    move-exception v0

    .line 386
    sget-boolean v1, Lcom/umeng/a/h;->a:Z

    if-eqz v1, :cond_2

    .line 387
    const-string v1, "Exception in onAppCrash"

    invoke-static {v1, v0}, Lcom/umeng/a/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    .prologue
    .line 458
    invoke-static {p1}, Lcom/umeng/a/e;->a(Ljavax/microedition/khronos/opengles/GL10;)[Ljava/lang/String;

    move-result-object v0

    .line 459
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 460
    const/4 v1, 0x0

    aget-object v1, v0, v1

    sput-object v1, Lcom/umeng/analytics/AnalyticsConfig;->GPU_VENDER:Ljava/lang/String;

    .line 461
    const/4 v1, 0x1

    aget-object v0, v0, v1

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_RENDERER:Ljava/lang/String;

    .line 463
    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 0

    .prologue
    .line 449
    sput-boolean p1, Lcom/umeng/analytics/AnalyticsConfig;->CATCH_EXCEPTION:Z

    .line 450
    return-void
.end method

.method b()V
    .locals 2

    .prologue
    .line 419
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/b$5;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/b$5;-><init>(Lcom/umeng/analytics/b;)V

    invoke-static {v0}, Lcom/umeng/a/i;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 441
    :cond_0
    :goto_0
    return-void

    .line 436
    :catch_0
    move-exception v0

    .line 437
    sget-boolean v1, Lcom/umeng/a/h;->a:Z

    if-eqz v1, :cond_0

    .line 438
    const-string v1, " Excepthon  in  onProfileSignOff"

    invoke-static {v1, v0}, Lcom/umeng/a/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method b(J)V
    .locals 1

    .prologue
    .line 576
    sput-wide p1, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    .line 577
    return-void
.end method

.method b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 174
    if-nez p1, :cond_1

    .line 175
    const-string v0, "unexpected null context in onPause"

    invoke-static {v0}, Lcom/umeng/a/h;->e(Ljava/lang/String;)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/d/r;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d/r;->b(Ljava/lang/String;)V

    .line 184
    :cond_2
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_4

    .line 185
    :cond_3
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->g(Landroid/content/Context;)V

    .line 187
    :cond_4
    new-instance v0, Lcom/umeng/analytics/b$3;

    invoke-direct {v0, p0, p1}, Lcom/umeng/analytics/b$3;-><init>(Lcom/umeng/analytics/b;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/umeng/a/i;->a(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    sget-boolean v1, Lcom/umeng/a/h;->a:Z

    if-eqz v1, :cond_0

    .line 195
    const-string v1, "Exception occurred in Mobclick.onRause(). "

    invoke-static {v1, v0}, Lcom/umeng/a/h;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 542
    if-eqz p1, :cond_0

    .line 543
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/b;->a:Landroid/content/Context;

    .line 545
    :cond_0
    invoke-static {p1, p2}, Lcom/umeng/analytics/AnalyticsConfig;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 546
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 133
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    if-nez v0, :cond_0

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/d/r;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/d/r;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method b(Z)V
    .locals 0

    .prologue
    .line 471
    sput-boolean p1, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    .line 472
    return-void
.end method

.method c(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 285
    :try_start_0
    iget-boolean v0, p0, Lcom/umeng/analytics/b;->k:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/umeng/analytics/b;->n:Z

    if-nez v0, :cond_1

    .line 286
    :cond_0
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->g(Landroid/content/Context;)V

    .line 287
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/b;->g:Lcom/umeng/analytics/d/d;

    invoke-virtual {v0}, Lcom/umeng/analytics/d/d;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    return-void

    .line 288
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 646
    return-void
.end method

.method c(Z)V
    .locals 0

    .prologue
    .line 480
    sput-boolean p1, Lcom/umeng/analytics/a;->d:Z

    .line 481
    return-void
.end method

.method public d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 663
    const/4 v0, 0x0

    return-object v0
.end method

.method d(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/b;->h:Lcom/umeng/analytics/d/b;

    invoke-virtual {v0, p1}, Lcom/umeng/analytics/d/b;->a(Landroid/content/Context;)V

    .line 354
    iget-object v0, p0, Lcom/umeng/analytics/b;->d:Lcom/umeng/analytics/d/r;

    invoke-virtual {v0}, Lcom/umeng/analytics/d/r;->a()V

    .line 355
    invoke-direct {p0, p1}, Lcom/umeng/analytics/b;->i(Landroid/content/Context;)V

    .line 356
    invoke-static {p1}, Lcom/umeng/analytics/d/m;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 357
    iget-object v0, p0, Lcom/umeng/analytics/b;->i:Lcom/umeng/analytics/a/d/a;

    invoke-virtual {v0}, Lcom/umeng/analytics/a/d/a;->d()V

    .line 358
    invoke-static {}, Lcom/umeng/a/i;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :cond_0
    :goto_0
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    sget-boolean v1, Lcom/umeng/a/h;->a:Z

    if-eqz v1, :cond_0

    .line 361
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method d(Z)V
    .locals 0

    .prologue
    .line 489
    sput-boolean p1, Lcom/umeng/a/h;->a:Z

    .line 490
    return-void
.end method

.method public e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 679
    const/4 v0, 0x0

    return-object v0
.end method

.method e(Z)V
    .locals 0

    .prologue
    .line 498
    invoke-static {p1}, Lcom/umeng/analytics/AnalyticsConfig;->a(Z)V

    .line 499
    return-void
.end method

.method public f(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 722
    return-void
.end method
