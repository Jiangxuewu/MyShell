.class public Lu/aly/bc;
.super Ljava/lang/Object;


# static fields
.field private static final a:I = 0x1

.field private static final b:I = 0x2

.field private static final c:I = 0x3

.field private static g:Landroid/content/Context;


# instance fields
.field private d:Lu/aly/ad;

.field private e:Lu/aly/af;

.field private final f:I

.field private h:Lu/aly/be;

.field private i:Lu/aly/aw;

.field private j:Lorg/json/JSONObject;

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lu/aly/be;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lu/aly/bc;->f:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lu/aly/bc;->k:Z

    invoke-static {p1}, Lu/aly/ad;->a(Landroid/content/Context;)Lu/aly/ad;

    move-result-object v0

    iput-object v0, p0, Lu/aly/bc;->d:Lu/aly/ad;

    invoke-static {p1}, Lu/aly/af;->a(Landroid/content/Context;)Lu/aly/af;

    move-result-object v0

    iput-object v0, p0, Lu/aly/bc;->e:Lu/aly/af;

    sput-object p1, Lu/aly/bc;->g:Landroid/content/Context;

    iput-object p2, p0, Lu/aly/bc;->h:Lu/aly/be;

    new-instance v0, Lu/aly/aw;

    invoke-direct {v0, p1}, Lu/aly/aw;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lu/aly/bc;->i:Lu/aly/aw;

    iget-object v0, p0, Lu/aly/bc;->i:Lu/aly/aw;

    iget-object v1, p0, Lu/aly/bc;->h:Lu/aly/be;

    invoke-virtual {v0, v1}, Lu/aly/aw;->a(Lu/aly/av;)V

    return-void
.end method

.method static synthetic a(Lu/aly/bc;[B)I
    .locals 1

    invoke-direct {p0, p1}, Lu/aly/bc;->a([B)I

    move-result v0

    return v0
.end method

.method private a([B)I
    .locals 4

    const/4 v3, 0x1

    new-instance v0, Lu/aly/bp;

    invoke-direct {v0}, Lu/aly/bp;-><init>()V

    new-instance v1, Lu/aly/ci;

    new-instance v2, Lu/aly/cx$a;

    invoke-direct {v2}, Lu/aly/cx$a;-><init>()V

    invoke-direct {v1, v2}, Lu/aly/ci;-><init>(Lu/aly/dg;)V

    :try_start_0
    invoke-virtual {v1, v0, p1}, Lu/aly/ci;->a(Lu/aly/cf;[B)V

    iget v1, v0, Lu/aly/bp;->a:I

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lu/aly/bc;->e:Lu/aly/af;

    invoke-virtual {v0}, Lu/aly/bp;->i()Lu/aly/bn;

    move-result-object v2

    invoke-virtual {v1, v2}, Lu/aly/af;->b(Lu/aly/bn;)V

    iget-object v1, p0, Lu/aly/bc;->e:Lu/aly/af;

    invoke-virtual {v1}, Lu/aly/af;->d()V

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "send log:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lu/aly/bp;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lu/aly/bx;->c(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget v0, v0, Lu/aly/bp;->a:I

    if-ne v0, v3, :cond_1

    const/4 v0, 0x2

    :goto_1
    return v0

    :cond_1
    const/4 v0, 0x3

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic a(Lu/aly/bc;)Lu/aly/aw;
    .locals 1

    iget-object v0, p0, Lu/aly/bc;->i:Lu/aly/aw;

    return-object v0
.end method

.method private b()V
    .locals 2

    sget-object v0, Lu/aly/bc;->g:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/cb;->a(Landroid/content/Context;)Lu/aly/cb;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/cb;->i()Lu/aly/cb$a;

    move-result-object v0

    new-instance v1, Lu/aly/bc$1;

    invoke-direct {v1, p0}, Lu/aly/bc$1;-><init>(Lu/aly/bc;)V

    invoke-virtual {v0, v1}, Lu/aly/cb$a;->a(Lu/aly/cb$b;)V

    return-void
.end method

.method static synthetic b(Lu/aly/bc;)Z
    .locals 1

    iget-boolean v0, p0, Lu/aly/bc;->l:Z

    return v0
.end method

.method static synthetic c(Lu/aly/bc;)Lu/aly/be;
    .locals 1

    iget-object v0, p0, Lu/aly/bc;->h:Lu/aly/be;

    return-object v0
.end method

.method private c()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lu/aly/bc;->d:Lu/aly/ad;

    invoke-virtual {v0}, Lu/aly/ad;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lu/aly/bc;->d:Lu/aly/ad;

    invoke-virtual {v0}, Lu/aly/ad;->b()Lu/aly/bm;

    move-result-object v0

    new-instance v1, Lu/aly/co;

    invoke-direct {v1}, Lu/aly/co;-><init>()V

    invoke-virtual {v1, v0}, Lu/aly/co;->a(Lu/aly/cf;)[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lu/aly/bc;->j:Lorg/json/JSONObject;

    const-string v2, "header"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "id_tracking"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v0, p0, Lu/aly/bc;->j:Lorg/json/JSONObject;

    const-string v2, "header"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, Lu/aly/bc;->j:Lorg/json/JSONObject;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    sget-object v1, Lu/aly/bc;->g:Landroid/content/Context;

    invoke-static {v1, v0}, Lu/aly/bs;->a(Landroid/content/Context;[B)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lu/aly/bc;->k:Z

    if-nez v1, :cond_3

    sget-object v1, Lu/aly/bc;->g:Landroid/content/Context;

    sget-object v2, Lu/aly/bc;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lu/aly/aa;->a(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/aa;

    move-result-object v0

    :goto_2
    invoke-virtual {v0}, Lu/aly/aa;->c()[B

    move-result-object v1

    sget-object v0, Lu/aly/bc;->g:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/cb;->a(Landroid/content/Context;)Lu/aly/cb;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/cb;->g()V

    iget-object v0, p0, Lu/aly/bc;->i:Lu/aly/aw;

    invoke-virtual {v0, v1}, Lu/aly/aw;->a([B)[B

    move-result-object v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_3
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-boolean v0, p0, Lu/aly/bc;->l:Z

    if-nez v0, :cond_1

    sget-object v0, Lu/aly/bc;->g:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/cb;->a(Landroid/content/Context;)Lu/aly/cb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lu/aly/cb;->a([B)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    sget-object v1, Lu/aly/bc;->g:Landroid/content/Context;

    sget-object v2, Lu/aly/bc;->g:Landroid/content/Context;

    invoke-static {v2}, Lcom/umeng/analytics/AnalyticsConfig;->getAppkey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lu/aly/aa;->b(Landroid/content/Context;Ljava/lang/String;[B)Lu/aly/aa;

    move-result-object v0

    goto :goto_2

    :cond_4
    invoke-direct {p0, v0}, Lu/aly/bc;->a([B)I

    move-result v0

    goto :goto_3

    :pswitch_1
    iget-object v0, p0, Lu/aly/bc;->d:Lu/aly/ad;

    invoke-virtual {v0}, Lu/aly/ad;->d()V

    iget-object v0, p0, Lu/aly/bc;->h:Lu/aly/be;

    invoke-virtual {v0}, Lu/aly/be;->k()V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lu/aly/bc;->h:Lu/aly/be;

    invoke-virtual {v0}, Lu/aly/be;->k()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public a()V
    .locals 10

    const-wide/16 v8, -0x1

    :try_start_0
    iget-object v0, p0, Lu/aly/bc;->j:Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lu/aly/bc;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v0, Lu/aly/bc;->g:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/bu;->k(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lu/aly/bc;->g:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ba;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string v1, "uopdta"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lu/aly/q;->b(J)J

    move-result-wide v2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "uopdte"

    const-wide/16 v4, -0x1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v1, "uopcnt"

    const/4 v6, 0x0

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    cmp-long v6, v4, v8

    if-nez v6, :cond_3

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "uopcnt"

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lu/aly/bc;->i:Lu/aly/aw;

    invoke-virtual {v1}, Lu/aly/aw;->a()V

    :cond_0
    :goto_1
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "uopdte"

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    return-void

    :cond_2
    :try_start_2
    invoke-direct {p0}, Lu/aly/bc;->b()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    cmp-long v4, v2, v4

    if-eqz v4, :cond_4

    :try_start_3
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "uopcnt"

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lu/aly/bc;->i:Lu/aly/aw;

    invoke-virtual {v1}, Lu/aly/aw;->a()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_4
    const/4 v4, 0x2

    if-ge v1, v4, :cond_0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "uopcnt"

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v1, p0, Lu/aly/bc;->i:Lu/aly/aw;

    invoke-virtual {v1}, Lu/aly/aw;->a()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lu/aly/bc;->i:Lu/aly/aw;

    invoke-virtual {v0}, Lu/aly/aw;->a()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lu/aly/bc;->j:Lorg/json/JSONObject;

    return-void
.end method

.method public a(Lu/aly/az;)V
    .locals 1

    iget-object v0, p0, Lu/aly/bc;->e:Lu/aly/af;

    invoke-virtual {v0, p1}, Lu/aly/af;->a(Lu/aly/az;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lu/aly/bc;->k:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lu/aly/bc;->l:Z

    return-void
.end method
