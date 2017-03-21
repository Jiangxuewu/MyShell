.class public final Lu/aly/aq;
.super Ljava/lang/Object;

# interfaces
.implements Lu/aly/au;
.implements Lu/aly/az;


# static fields
.field private static j:Landroid/content/Context; = null

.field private static final q:Ljava/lang/String; = "thtstart"

.field private static final r:Ljava/lang/String; = "gkvc"

.field private static final s:Ljava/lang/String; = "ekvc"


# instance fields
.field a:Ljava/lang/String;

.field private b:Lu/aly/cb;

.field private c:Lu/aly/be;

.field private d:Lu/aly/bh;

.field private e:Lu/aly/bg;

.field private f:Lu/aly/bi;

.field private g:Lu/aly/aq$a;

.field private h:Lu/aly/af$a;

.field private i:J

.field private k:I

.field private l:Lorg/json/JSONArray;

.field private final m:I

.field private n:I

.field private o:I

.field private p:J

.field private final t:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lu/aly/aq;->b:Lu/aly/cb;

    iput-object v4, p0, Lu/aly/aq;->c:Lu/aly/be;

    iput-object v4, p0, Lu/aly/aq;->d:Lu/aly/bh;

    iput-object v4, p0, Lu/aly/aq;->e:Lu/aly/bg;

    iput-object v4, p0, Lu/aly/aq;->f:Lu/aly/bi;

    iput-object v4, p0, Lu/aly/aq;->g:Lu/aly/aq$a;

    iput-object v4, p0, Lu/aly/aq;->h:Lu/aly/af$a;

    iput-wide v2, p0, Lu/aly/aq;->i:J

    iput-object v4, p0, Lu/aly/aq;->a:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lu/aly/aq;->k:I

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lu/aly/aq;->l:Lorg/json/JSONArray;

    const/16 v0, 0x1388

    iput v0, p0, Lu/aly/aq;->m:I

    iput v5, p0, Lu/aly/aq;->n:I

    iput v5, p0, Lu/aly/aq;->o:I

    iput-wide v2, p0, Lu/aly/aq;->p:J

    const-wide/32 v0, 0x1b77400

    iput-wide v0, p0, Lu/aly/aq;->t:J

    sput-object p1, Lu/aly/aq;->j:Landroid/content/Context;

    new-instance v0, Lu/aly/be;

    invoke-direct {v0, p1}, Lu/aly/be;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/aq;->c:Lu/aly/be;

    invoke-static {p1}, Lu/aly/cb;->a(Landroid/content/Context;)Lu/aly/cb;

    move-result-object v0

    iput-object v0, p0, Lu/aly/aq;->b:Lu/aly/cb;

    invoke-static {p1}, Lu/aly/af;->a(Landroid/content/Context;)Lu/aly/af;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/af;->b()Lu/aly/af$a;

    move-result-object v0

    iput-object v0, p0, Lu/aly/aq;->h:Lu/aly/af$a;

    new-instance v0, Lu/aly/aq$a;

    invoke-direct {v0, p0}, Lu/aly/aq$a;-><init>(Lu/aly/aq;)V

    iput-object v0, p0, Lu/aly/aq;->g:Lu/aly/aq$a;

    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/bg;->a(Landroid/content/Context;)Lu/aly/bg;

    move-result-object v0

    iput-object v0, p0, Lu/aly/aq;->e:Lu/aly/bg;

    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/bh;->a(Landroid/content/Context;)Lu/aly/bh;

    move-result-object v0

    iput-object v0, p0, Lu/aly/aq;->d:Lu/aly/bh;

    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    iget-object v1, p0, Lu/aly/aq;->c:Lu/aly/be;

    invoke-static {v0, v1}, Lu/aly/bi;->a(Landroid/content/Context;Lu/aly/be;)Lu/aly/bi;

    move-result-object v0

    iput-object v0, p0, Lu/aly/aq;->f:Lu/aly/bi;

    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ba;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "thtstart"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lu/aly/aq;->p:J

    const-string v1, "gkvc"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lu/aly/aq;->n:I

    const-string v1, "ekvc"

    invoke-interface {v0, v1, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lu/aly/aq;->o:I

    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/af;->a(Landroid/content/Context;)Lu/aly/af;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/af;->b()Lu/aly/af$a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lu/aly/af$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/aly/aq;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lu/aly/aq;)Lu/aly/af$a;
    .locals 1

    iget-object v0, p0, Lu/aly/aq;->h:Lu/aly/af$a;

    return-object v0
.end method

.method private a(I)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lu/aly/aq;->c:Lu/aly/be;

    invoke-virtual {v2}, Lu/aly/be;->m()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-virtual {p0, v1}, Lu/aly/aq;->a([I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/aly/aq;->c(Lorg/json/JSONObject;)V

    new-instance v0, Lu/aly/aq$1;

    invoke-direct {v0, p0}, Lu/aly/aq$1;-><init>(Lu/aly/aq;)V

    int-to-long v2, p1

    invoke-static {v0, v2, v3}, Lu/aly/by;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p2, "0"

    :cond_0
    const-string v0, "$pr_ve"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p3

    :cond_1
    const-string v0, "$ud_da"

    invoke-virtual {p1, v0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic a(Lu/aly/aq;I)V
    .locals 0

    invoke-direct {p0, p1}, Lu/aly/aq;->b(I)V

    return-void
.end method

.method private a(Z)Z
    .locals 1

    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/bu;->l(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "network is unavailable"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lu/aly/aq;->c:Lu/aly/be;

    invoke-virtual {v0}, Lu/aly/be;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lu/aly/aq;->g:Lu/aly/aq$a;

    invoke-virtual {v0, p1}, Lu/aly/aq$a;->b(Z)Lu/aly/bz$h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu/aly/bz$h;->a(Z)Z

    move-result v0

    goto :goto_0
.end method

.method private a(Landroid/content/SharedPreferences$Editor;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const-string v0, "pre_version"

    const-string v1, ""

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "pre_date"

    const-string v1, ""

    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cur_version"

    const-string v3, ""

    invoke-interface {p2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v3}, Lu/aly/bu;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "pre_version"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "pre_date"

    invoke-interface {p1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "cur_version"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    return-object v2

    :cond_0
    move-object v1, v2

    goto :goto_0
.end method

.method static synthetic b(Lu/aly/aq;)Lu/aly/bh;
    .locals 1

    iget-object v0, p0, Lu/aly/aq;->d:Lu/aly/bh;

    return-object v0
.end method

.method private b(I)V
    .locals 0

    invoke-direct {p0, p1}, Lu/aly/aq;->a(I)V

    return-void
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 4

    const/16 v0, 0x802

    :try_start_0
    const-string v1, "__t"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_5

    iget v0, p0, Lu/aly/aq;->n:I

    invoke-direct {p0, v0}, Lu/aly/aq;->c(I)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lu/aly/aq;->n:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lu/aly/aq;->n:I

    :cond_2
    :goto_1
    iget-object v0, p0, Lu/aly/aq;->l:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    iget v1, p0, Lu/aly/aq;->k:I

    if-le v0, v1, :cond_3

    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/w;->a(Landroid/content/Context;)Lu/aly/w;

    move-result-object v0

    iget-object v1, p0, Lu/aly/aq;->l:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lu/aly/w;->a(Lorg/json/JSONArray;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lu/aly/aq;->l:Lorg/json/JSONArray;

    :cond_3
    iget-wide v0, p0, Lu/aly/aq;->p:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/aq;->p:J

    :cond_4
    iget-object v0, p0, Lu/aly/aq;->l:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_5
    const/16 v0, 0x801

    const-string v1, "__t"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lu/aly/aq;->o:I

    invoke-direct {p0, v0}, Lu/aly/aq;->c(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lu/aly/aq;->o:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lu/aly/aq;->o:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method static synthetic c()Landroid/content/Context;
    .locals 1

    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lu/aly/aq;)Lu/aly/be;
    .locals 1

    iget-object v0, p0, Lu/aly/aq;->c:Lu/aly/be;

    return-object v0
.end method

.method private c(Lorg/json/JSONObject;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ad;->a(Landroid/content/Context;)Lu/aly/ad;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/ad;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v1}, Lu/aly/ad;->b()Lu/aly/bm;

    move-result-object v0

    new-instance v2, Lu/aly/co;

    invoke-direct {v2}, Lu/aly/co;-><init>()V

    invoke-virtual {v2, v0}, Lu/aly/co;->a(Lu/aly/cf;)[B

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "header"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "id_tracking"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "header"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_1
    :try_start_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v2, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v2, v0}, Lu/aly/bs;->a(Landroid/content/Context;[B)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lu/aly/aq;->e()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lu/aly/aq;->j:Landroid/content/Context;

    sget-object v3, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lu/aly/aa;->b(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/aa;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Lu/aly/aa;->c()[B

    move-result-object v0

    sget-object v2, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v2}, Lu/aly/cb;->a(Landroid/content/Context;)Lu/aly/cb;

    move-result-object v2

    invoke-virtual {v2}, Lu/aly/cb;->g()V

    invoke-virtual {v2, v0}, Lu/aly/cb;->a([B)V

    invoke-virtual {v1}, Lu/aly/ad;->d()V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    sget-object v2, Lu/aly/aq;->j:Landroid/content/Context;

    sget-object v3, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lu/aly/aa;->a(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/aa;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private c(I)Z
    .locals 6

    const/4 v0, 0x1

    iget-wide v2, p0, Lu/aly/aq;->p:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lu/aly/aq;->p:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1b77400

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    invoke-direct {p0}, Lu/aly/aq;->f()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x1388

    if-le p1, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lu/aly/aq;)Lu/aly/bi;
    .locals 1

    iget-object v0, p0, Lu/aly/aq;->f:Lu/aly/bi;

    return-object v0
.end method

.method private d()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lu/aly/aq;->b:Lu/aly/cb;

    invoke-virtual {v0}, Lu/aly/cb;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lu/aly/bc;

    sget-object v1, Lu/aly/aq;->j:Landroid/content/Context;

    iget-object v2, p0, Lu/aly/aq;->c:Lu/aly/be;

    invoke-direct {v0, v1, v2}, Lu/aly/bc;-><init>(Landroid/content/Context;Lu/aly/be;)V

    invoke-virtual {v0, p0}, Lu/aly/bc;->a(Lu/aly/az;)V

    iget-object v1, p0, Lu/aly/aq;->d:Lu/aly/bh;

    invoke-virtual {v1}, Lu/aly/bh;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lu/aly/bc;->b(Z)V

    :cond_0
    invoke-virtual {v0}, Lu/aly/bc;->a()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lu/aly/aq;->a([I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Lu/aly/bc;

    sget-object v2, Lu/aly/aq;->j:Landroid/content/Context;

    iget-object v3, p0, Lu/aly/aq;->c:Lu/aly/be;

    invoke-direct {v1, v2, v3}, Lu/aly/bc;-><init>(Landroid/content/Context;Lu/aly/be;)V

    invoke-virtual {v1, p0}, Lu/aly/bc;->a(Lu/aly/az;)V

    iget-object v2, p0, Lu/aly/aq;->d:Lu/aly/bh;

    invoke-virtual {v2}, Lu/aly/bh;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lu/aly/bc;->b(Z)V

    :cond_3
    invoke-virtual {v1, v0}, Lu/aly/bc;->a(Lorg/json/JSONObject;)V

    invoke-direct {p0}, Lu/aly/aq;->e()Z

    move-result v0

    invoke-virtual {v1, v0}, Lu/aly/bc;->a(Z)V

    invoke-virtual {v1}, Lu/aly/bc;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sget-object v1, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bg;->a(Landroid/content/Context;)Lu/aly/bg;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/bg;->f()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v2}, Lu/aly/bg;->a(Landroid/content/Context;)Lu/aly/bg;

    move-result-object v2

    invoke-virtual {v2}, Lu/aly/bg;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "group_info"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic e(Lu/aly/aq;)Lu/aly/bg;
    .locals 1

    iget-object v0, p0, Lu/aly/aq;->e:Lu/aly/bg;

    return-object v0
.end method

.method private e()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lu/aly/aq;->h:Lu/aly/af$a;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lu/aly/af$a;->c(I)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_2
    sget-boolean v0, Lcom/umeng/analytics/AnalyticsConfig;->sEncrypt:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private f()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lu/aly/aq;->n:I

    iput v0, p0, Lu/aly/aq;->o:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/aq;->p:J

    return-void
.end method


# virtual methods
.method protected final varargs a([I)Lorg/json/JSONObject;
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v1}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Appkey is missing ,Please check AndroidManifest.xml"

    invoke-static {v1}, Lu/aly/bx;->e(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    sget-object v1, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lu/aly/aq;->a(Landroid/content/Context;)V

    sget-object v1, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/w;->a(Landroid/content/Context;)Lu/aly/w;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/w;->a()Lorg/json/JSONObject;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    :cond_1
    :try_start_1
    const-string v1, "body"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    move-object v3, v1

    :goto_1
    :try_start_2
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget-object v1, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/ba;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v5, "userlevel"

    const-string v6, ""

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "userlevel"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    iget-object v5, p0, Lu/aly/aq;->c:Lu/aly/be;

    invoke-virtual {v5}, Lu/aly/be;->f()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-wide v6, p0, Lu/aly/aq;->i:J

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-eqz v5, :cond_3

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v6, "ts"

    iget-wide v8, p0, Lu/aly/aq;->i:J

    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v6, "activate_msg"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "activate_msg"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/m;->a(Landroid/content/Context;)Lu/aly/m;

    move-result-object v6

    invoke-virtual {v6}, Lu/aly/m;->b()Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_4

    const-string v7, "ag"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_4
    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/m;->a(Landroid/content/Context;)Lu/aly/m;

    move-result-object v6

    invoke-virtual {v6}, Lu/aly/m;->c()Lorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v7

    if-lez v7, :cond_5

    const-string v7, "ve_meta"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_6

    const-string v6, "cc"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "cc"

    invoke-virtual {v4, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_6
    sget-object v5, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v5}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_7

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "provider"

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "puid"

    const/4 v8, 0x1

    aget-object v5, v5, v8

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_7

    const-string v5, "active_user"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "active_user"

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    sget-object v5, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v5}, Lu/aly/bg;->a(Landroid/content/Context;)Lu/aly/bg;

    move-result-object v5

    invoke-virtual {v5}, Lu/aly/bg;->a()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-direct {p0, v3}, Lu/aly/aq;->d(Lorg/json/JSONObject;)V

    :cond_8
    iget-object v5, p0, Lu/aly/aq;->d:Lu/aly/bh;

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-virtual {v5, v3, v6}, Lu/aly/bh;->a(Lorg/json/JSONObject;Landroid/content/Context;)V

    if-eqz p1, :cond_9

    array-length v5, p1

    const/4 v6, 0x2

    if-ne v5, v6, :cond_9

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    const-string v7, "interval"

    const/4 v8, 0x0

    aget v8, p1, v8

    div-int/lit16 v8, v8, 0x3e8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "latency"

    const/4 v8, 0x1

    aget v8, p1, v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v7, "latent"

    invoke-virtual {v5, v7, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "control_policy"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v5

    if-lez v5, :cond_14

    const-string v5, "body"

    invoke-virtual {v2, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_2
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "appkey"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "channel"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/analytics/AnalyticsConfig;->getChannel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v3, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v3}, Lcom/umeng/analytics/AnalyticsConfig;->getSecretKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lu/aly/bv;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_a

    const-string v6, "secret"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    const-string v3, "display_name"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/bu;->w(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "package_name"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/bu;->t(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "app_signature"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/bu;->u(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v1, :cond_b

    :try_start_3
    sget-object v3, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v3}, Lu/aly/ba;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    :cond_b
    if-eqz v1, :cond_16

    const-string v3, "vers_name"

    const-string v6, ""

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_15

    const-string v6, "app_version"

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "version_code"

    const-string v6, "vers_code"

    const/4 v7, 0x0

    invoke-interface {v1, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    move-object v3, v1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    if-eqz v1, :cond_c

    sget-object v1, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    if-eqz v1, :cond_c

    const-string v1, "wrapper_type"

    sget-object v6, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "wrapper_version"

    sget-object v6, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_c
    const-string v1, "sdk_type"

    const-string v6, "Android"

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdk_version"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/analytics/AnalyticsConfig;->getSDKVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "vertical_type"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lcom/umeng/analytics/AnalyticsConfig;->getVerticalType(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "idmd5"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/bu;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cpu"

    invoke-static {}, Lu/aly/bu;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "os"

    const-string v6, "Android"

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "os_version"

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bu;->r(Landroid/content/Context;)[I

    move-result-object v1

    if-eqz v1, :cond_d

    const-string v6, "resolution"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v8, 0x1

    aget v8, v1, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "*"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget v1, v1, v8

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_d
    const-string v1, "mc"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/bu;->q(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_id"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/bu;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_model"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_board"

    sget-object v6, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_brand"

    sget-object v6, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_manutime"

    sget-wide v6, Landroid/os/Build;->TIME:J

    invoke-virtual {v5, v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "device_manufacturer"

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_manuid"

    sget-object v6, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_name"

    sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v1, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bu;->x(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    const-string v6, "sub_os_name"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_e
    sget-object v1, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bu;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "sub_os_version"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_f
    sget-object v1, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bu;->j(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    const-string v6, "Wi-Fi"

    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    const-string v6, "access"

    const-string v7, "wifi"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_4
    const-string v6, ""

    const/4 v7, 0x1

    aget-object v7, v1, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    const-string v6, "access_subtype"

    const/4 v7, 0x1

    aget-object v1, v1, v7

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_10
    sget-object v1, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bu;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_19

    const-string v6, "mccmnc"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_5
    sget-object v1, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bu;->o(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    const-string v6, "country"

    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "language"

    const/4 v7, 0x1

    aget-object v1, v1, v7

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "timezone"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/bu;->m(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "carrier"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/bu;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :try_start_5
    const-string v1, "successful_requests"

    const-string v6, "successful_request"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "failed_requests"

    const-string v6, "failed_requests"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "req_time"

    const-string v6, "last_request_spent_ms"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :goto_6
    :try_start_6
    sget-object v1, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/af;->a(Landroid/content/Context;)Lu/aly/af;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/af;->a()Lu/aly/bn;

    move-result-object v1

    if-eqz v1, :cond_11

    new-instance v6, Lu/aly/co;

    invoke-direct {v6}, Lu/aly/co;-><init>()V

    invoke-virtual {v6, v1}, Lu/aly/co;->a(Lu/aly/cf;)[B

    move-result-object v1

    const-string v6, "imprint"

    const/4 v7, 0x0

    invoke-static {v1, v7}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_11
    :goto_7
    :try_start_7
    const-string v1, "header"

    invoke-virtual {v2, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdk_version"

    const-string v6, "sdk_version"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v6, "device_id"

    const-string v7, "device_id"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v6, "device_model"

    const-string v7, "device_model"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v6, "version"

    const-string v7, "version_code"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v6, "appkey"

    const-string v7, "appkey"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v6, "channel"

    const-string v7, "channel"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, v5}, Lu/aly/aq;->a(Lorg/json/JSONObject;)Z

    move-result v1

    if-nez v1, :cond_1a

    move-object v1, v0

    :goto_8
    sget-boolean v2, Lu/aly/bx;->a:Z

    if-eqz v2, :cond_12

    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v2

    if-lez v2, :cond_12

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lu/aly/bx;->b(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :cond_12
    if-eqz v3, :cond_13

    :try_start_8
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "vers_name"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "vers_code"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "vers_date"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v2, "vers_pre_version"

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    :cond_13
    :goto_9
    move-object v0, v1

    goto/16 :goto_0

    :catch_0
    move-exception v1

    :try_start_9
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    move-object v3, v1

    goto/16 :goto_1

    :cond_14
    :try_start_a
    const-string v3, "body"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception v3

    goto/16 :goto_2

    :cond_15
    :try_start_b
    const-string v3, "app_version"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/bu;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "version_code"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/bu;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    :cond_16
    move-object v3, v1

    goto/16 :goto_3

    :catch_2
    move-exception v3

    :try_start_c
    const-string v3, "app_version"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/bu;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "version_code"

    sget-object v6, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v6}, Lu/aly/bu;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-object v3, v1

    goto/16 :goto_3

    :cond_17
    const-string v6, "2G/3G"

    const/4 v7, 0x0

    aget-object v7, v1, v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_18

    const-string v6, "access"

    const-string v7, "2G/3G"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_4

    :catch_3
    move-exception v1

    sget-object v1, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/cb;->a(Landroid/content/Context;)Lu/aly/cb;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/cb;->g()V

    goto/16 :goto_0

    :cond_18
    :try_start_d
    const-string v6, "access"

    const-string v7, "unknow"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_4

    :cond_19
    const-string v1, "mccmnc"

    const-string v6, ""

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3

    goto/16 :goto_5

    :catch_4
    move-exception v0

    goto/16 :goto_9

    :catch_5
    move-exception v1

    goto/16 :goto_7

    :catch_6
    move-exception v1

    goto/16 :goto_6

    :cond_1a
    move-object v1, v2

    goto/16 :goto_8
.end method

.method public final a()V
    .locals 1

    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/bu;->l(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lu/aly/aq;->d()V

    :goto_0
    return-void

    :cond_0
    const-string v0, "network is unavailable"

    invoke-static {v0}, Lu/aly/bx;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    if-nez v0, :cond_0

    sput-object p1, Lu/aly/aq;->j:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lu/aly/aq;->l:Lorg/json/JSONArray;

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/w;->a(Landroid/content/Context;)Lu/aly/w;

    move-result-object v0

    iget-object v1, p0, Lu/aly/aq;->l:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lu/aly/w;->a(Lorg/json/JSONArray;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lu/aly/aq;->l:Lorg/json/JSONArray;

    :cond_1
    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ba;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "thtstart"

    iget-wide v2, p0, Lu/aly/aq;->p:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "gkvc"

    iget v2, p0, Lu/aly/aq;->n:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "ekvc"

    iget v2, p0, Lu/aly/aq;->o:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lu/aly/aq;->c:Lu/aly/be;

    invoke-virtual {v0}, Lu/aly/be;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lu/aly/aq;->c:Lu/aly/be;

    invoke-virtual {v0}, Lu/aly/be;->l()J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/aq;->i:J

    :cond_0
    const/4 v0, 0x1

    instance-of v1, p1, Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :try_start_0
    check-cast p1, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lu/aly/aq;->b(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lu/aly/aq;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lu/aly/aq;->d()V

    :cond_2
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final a(Lu/aly/af$a;)V
    .locals 2

    iget-object v0, p0, Lu/aly/aq;->e:Lu/aly/bg;

    invoke-virtual {v0, p1}, Lu/aly/bg;->a(Lu/aly/af$a;)V

    iget-object v0, p0, Lu/aly/aq;->d:Lu/aly/bh;

    invoke-virtual {v0, p1}, Lu/aly/bh;->a(Lu/aly/af$a;)V

    iget-object v0, p0, Lu/aly/aq;->f:Lu/aly/bi;

    invoke-virtual {v0, p1}, Lu/aly/bi;->a(Lu/aly/af$a;)V

    iget-object v0, p0, Lu/aly/aq;->g:Lu/aly/aq$a;

    invoke-virtual {v0, p1}, Lu/aly/aq$a;->a(Lu/aly/af$a;)V

    sget-object v0, Lu/aly/aq;->j:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/af;->a(Landroid/content/Context;)Lu/aly/af;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/af;->b()Lu/aly/af$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lu/aly/af$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lu/aly/aq;->a:Ljava/lang/String;

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)Z
    .locals 1

    const-string v0, "device_id"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mc"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "resolution"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "appkey"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "channel"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "app_signature"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "package_name"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "app_version"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    invoke-virtual {p0, v0}, Lu/aly/aq;->a([I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lu/aly/aq;->c(Lorg/json/JSONObject;)V

    return-void
.end method
