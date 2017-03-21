.class Lcom/umeng/analytics/game/c;
.super Ljava/lang/Object;

# interfaces
.implements Lu/aly/bw;


# instance fields
.field private a:Lcom/umeng/analytics/b;

.field private b:Lcom/umeng/analytics/game/b;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Ljava/lang/String;

.field private final m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/String;

.field private final v:Ljava/lang/String;

.field private final w:Ljava/lang/String;

.field private final x:Ljava/lang/String;

.field private final y:Ljava/lang/String;

.field private z:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/umeng/analytics/MobclickAgent;->getAgent()Lcom/umeng/analytics/b;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->a:Lcom/umeng/analytics/b;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    const/16 v0, 0x64

    iput v0, p0, Lcom/umeng/analytics/game/c;->c:I

    iput v1, p0, Lcom/umeng/analytics/game/c;->d:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/umeng/analytics/game/c;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/umeng/analytics/game/c;->f:I

    iput v1, p0, Lcom/umeng/analytics/game/c;->g:I

    const-string v0, "level"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->h:Ljava/lang/String;

    const-string v0, "pay"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->i:Ljava/lang/String;

    const-string v0, "buy"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->j:Ljava/lang/String;

    const-string v0, "use"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->k:Ljava/lang/String;

    const-string v0, "bonus"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->l:Ljava/lang/String;

    const-string v0, "item"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->m:Ljava/lang/String;

    const-string v0, "cash"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->n:Ljava/lang/String;

    const-string v0, "coin"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->o:Ljava/lang/String;

    const-string v0, "source"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->p:Ljava/lang/String;

    const-string v0, "amount"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->q:Ljava/lang/String;

    const-string v0, "user_level"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->r:Ljava/lang/String;

    const-string v0, "bonus_source"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->s:Ljava/lang/String;

    const-string v0, "level"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->t:Ljava/lang/String;

    const-string v0, "status"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->u:Ljava/lang/String;

    const-string v0, "duration"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->v:Ljava/lang/String;

    const-string v0, "curtype"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->w:Ljava/lang/String;

    const-string v0, "orderid"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->x:Ljava/lang/String;

    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->y:Ljava/lang/String;

    sput-boolean v1, Lcom/umeng/analytics/game/a;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/game/c;)Lcom/umeng/analytics/game/b;
    .locals 1

    iget-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    return-object v0
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/umeng/analytics/game/c;->z:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/umeng/analytics/game/c$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/umeng/analytics/game/c$2;-><init>(Lcom/umeng/analytics/game/c;Ljava/lang/String;I)V

    invoke-static {v0}, Lu/aly/by;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/umeng/analytics/game/c;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/umeng/analytics/game/c;->z:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/umeng/analytics/game/c;)Lcom/umeng/analytics/b;
    .locals 1

    iget-object v0, p0, Lcom/umeng/analytics/game/c;->a:Lcom/umeng/analytics/b;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 1

    const-string v0, "App resume from background"

    invoke-static {v0}, Lu/aly/bx;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/umeng/analytics/game/c;->z:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/umeng/analytics/game/a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0}, Lcom/umeng/analytics/game/b;->b()V

    goto :goto_0
.end method

.method a(DDI)V
    .locals 7

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    iget-object v0, p0, Lcom/umeng/analytics/game/c;->z:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "cash"

    mul-double v2, p1, v4

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "coin"

    mul-double v2, p3, v4

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "source"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v1, v1, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "user_level"

    iget-object v2, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v2, v2, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v1, v1, Lcom/umeng/analytics/game/b;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "level"

    iget-object v2, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v2, v2, Lcom/umeng/analytics/game/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/umeng/analytics/game/c;->a:Lcom/umeng/analytics/b;

    iget-object v2, p0, Lcom/umeng/analytics/game/c;->z:Landroid/content/Context;

    const-string v3, "pay"

    invoke-virtual {v1, v2, v3, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method a(DI)V
    .locals 5

    iget-object v0, p0, Lcom/umeng/analytics/game/c;->z:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "coin"

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, p1

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "bonus_source"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v1, v1, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "user_level"

    iget-object v2, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v2, v2, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v1, v1, Lcom/umeng/analytics/game/b;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "level"

    iget-object v2, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v2, v2, Lcom/umeng/analytics/game/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/umeng/analytics/game/c;->a:Lcom/umeng/analytics/b;

    iget-object v2, p0, Lcom/umeng/analytics/game/c;->z:Landroid/content/Context;

    const-string v3, "bonus"

    invoke-virtual {v1, v2, v3, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method a(DLjava/lang/String;DILjava/lang/String;)V
    .locals 6

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lcom/umeng/analytics/game/c;->z:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    cmpl-double v0, p1, v2

    if-ltz v0, :cond_0

    cmpl-double v0, p4, v2

    if-ltz v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x3

    if-gt v0, v2, :cond_2

    const-string v0, "curtype"

    invoke-virtual {v1, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p7, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_3

    const/16 v2, 0x400

    if-gt v0, v2, :cond_3

    const-string v0, "orderid"

    invoke-virtual {v1, v0, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    const-string v0, "cash"

    mul-double v2, p1, v4

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "coin"

    mul-double v2, p4, v4

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "source"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v0, v0, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v0, "user_level"

    iget-object v2, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v2, v2, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v0, v0, Lcom/umeng/analytics/game/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v0, "level"

    iget-object v2, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v2, v2, Lcom/umeng/analytics/game/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->a:Lcom/umeng/analytics/b;

    iget-object v2, p0, Lcom/umeng/analytics/game/c;->z:Landroid/content/Context;

    const-string v3, "pay"

    invoke-virtual {v0, v2, v3, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method a(DLjava/lang/String;IDI)V
    .locals 7

    int-to-double v0, p4

    mul-double v4, p5, v0

    move-object v1, p0

    move-wide v2, p1

    move v6, p7

    invoke-virtual/range {v1 .. v6}, Lcom/umeng/analytics/game/c;->a(DDI)V

    invoke-virtual {p0, p3, p4, p5, p6}, Lcom/umeng/analytics/game/c;->a(Ljava/lang/String;ID)V

    return-void
.end method

.method a(Landroid/content/Context;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "Context is null, can\'t init GameAgent"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->z:Landroid/content/Context;

    iget-object v0, p0, Lcom/umeng/analytics/game/c;->a:Lcom/umeng/analytics/b;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/b;->a(Lu/aly/bw;)V

    new-instance v0, Lcom/umeng/analytics/game/b;

    iget-object v1, p0, Lcom/umeng/analytics/game/c;->z:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/umeng/analytics/game/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v0, p0, Lcom/umeng/analytics/game/c;->a:Lcom/umeng/analytics/b;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iput-object p1, v0, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    iget-object v0, p0, Lcom/umeng/analytics/game/c;->z:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ba;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "userlevel"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method a(Ljava/lang/String;ID)V
    .locals 7

    iget-object v0, p0, Lcom/umeng/analytics/game/c;->z:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "amount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "coin"

    int-to-double v2, p2

    mul-double/2addr v2, p3

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v1, v1, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "user_level"

    iget-object v2, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v2, v2, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v1, v1, Lcom/umeng/analytics/game/b;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "level"

    iget-object v2, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v2, v2, Lcom/umeng/analytics/game/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/umeng/analytics/game/c;->a:Lcom/umeng/analytics/b;

    iget-object v2, p0, Lcom/umeng/analytics/game/c;->z:Landroid/content/Context;

    const-string v3, "buy"

    invoke-virtual {v1, v2, v3, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method a(Ljava/lang/String;IDI)V
    .locals 3

    int-to-double v0, p2

    mul-double/2addr v0, p3

    invoke-virtual {p0, v0, v1, p5}, Lcom/umeng/analytics/game/c;->a(DI)V

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/umeng/analytics/game/c;->a(Ljava/lang/String;ID)V

    return-void
.end method

.method a(Z)V
    .locals 4

    const-string v0, "Trace sleep time : %b"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bx;->b(Ljava/lang/String;)V

    sput-boolean p1, Lcom/umeng/analytics/game/a;->a:Z

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/umeng/analytics/game/c;->z:Landroid/content/Context;

    if-nez v0, :cond_1

    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/umeng/analytics/game/a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    invoke-virtual {v0}, Lcom/umeng/analytics/game/b;->a()V

    goto :goto_0
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/umeng/analytics/game/c;->z:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iput-object p1, v0, Lcom/umeng/analytics/game/b;->a:Ljava/lang/String;

    new-instance v0, Lcom/umeng/analytics/game/c$1;

    invoke-direct {v0, p0, p1}, Lcom/umeng/analytics/game/c$1;-><init>(Lcom/umeng/analytics/game/c;Ljava/lang/String;)V

    invoke-static {v0}, Lu/aly/by;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method b(Ljava/lang/String;ID)V
    .locals 7

    iget-object v0, p0, Lcom/umeng/analytics/game/c;->z:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "item"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "amount"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "coin"

    int-to-double v2, p2

    mul-double/2addr v2, p3

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v1, v1, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "user_level"

    iget-object v2, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v2, v2, Lcom/umeng/analytics/game/b;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v1, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v1, v1, Lcom/umeng/analytics/game/b;->a:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, "level"

    iget-object v2, p0, Lcom/umeng/analytics/game/c;->b:Lcom/umeng/analytics/game/b;

    iget-object v2, v2, Lcom/umeng/analytics/game/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/umeng/analytics/game/c;->a:Lcom/umeng/analytics/b;

    iget-object v2, p0, Lcom/umeng/analytics/game/c;->z:Landroid/content/Context;

    const-string v3, "use"

    invoke-virtual {v1, v2, v3, v0}, Lcom/umeng/analytics/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_0
.end method

.method c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/umeng/analytics/game/c;->z:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/game/c;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/umeng/analytics/game/c;->z:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, "UMGameAgent.init(Context) should be called before any game api"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/umeng/analytics/game/c;->a(Ljava/lang/String;I)V

    goto :goto_0
.end method
