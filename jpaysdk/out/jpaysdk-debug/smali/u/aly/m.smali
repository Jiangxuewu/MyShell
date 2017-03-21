.class public Lu/aly/m;
.super Ljava/lang/Object;


# static fields
.field private static final i:I = 0x30

.field private static final j:I = 0x31

.field private static k:Landroid/content/Context;


# instance fields
.field private a:Lu/aly/h;

.field private b:Lu/aly/o;

.field private c:Lu/aly/p;

.field private d:Z

.field private e:Z

.field private f:J

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private l:Ljava/util/List;

.field private m:Lu/aly/m$a;

.field private final n:Ljava/lang/Thread;


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lu/aly/m;->a:Lu/aly/h;

    iput-object v2, p0, Lu/aly/m;->b:Lu/aly/o;

    iput-object v2, p0, Lu/aly/m;->c:Lu/aly/p;

    iput-boolean v0, p0, Lu/aly/m;->d:Z

    iput-boolean v0, p0, Lu/aly/m;->e:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lu/aly/m;->f:J

    const-string v0, "main_fest_mode"

    iput-object v0, p0, Lu/aly/m;->g:Ljava/lang/String;

    const-string v0, "main_fest_timestamp"

    iput-object v0, p0, Lu/aly/m;->h:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lu/aly/m;->l:Ljava/util/List;

    iput-object v2, p0, Lu/aly/m;->m:Lu/aly/m$a;

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lu/aly/m$1;

    invoke-direct {v1, p0}, Lu/aly/m$1;-><init>(Lu/aly/m;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lu/aly/m;->n:Ljava/lang/Thread;

    sget-object v0, Lu/aly/m;->k:Landroid/content/Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lu/aly/m;->a:Lu/aly/h;

    if-nez v0, :cond_0

    new-instance v0, Lu/aly/h;

    invoke-direct {v0}, Lu/aly/h;-><init>()V

    iput-object v0, p0, Lu/aly/m;->a:Lu/aly/h;

    :cond_0
    iget-object v0, p0, Lu/aly/m;->b:Lu/aly/o;

    if-nez v0, :cond_1

    sget-object v0, Lu/aly/m;->k:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/o;->a(Landroid/content/Context;)Lu/aly/o;

    move-result-object v0

    iput-object v0, p0, Lu/aly/m;->b:Lu/aly/o;

    :cond_1
    iget-object v0, p0, Lu/aly/m;->c:Lu/aly/p;

    if-nez v0, :cond_2

    new-instance v0, Lu/aly/p;

    invoke-direct {v0}, Lu/aly/p;-><init>()V

    iput-object v0, p0, Lu/aly/m;->c:Lu/aly/p;

    :cond_2
    iget-object v0, p0, Lu/aly/m;->n:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/m$1;)V
    .locals 0

    invoke-direct {p0}, Lu/aly/m;-><init>()V

    return-void
.end method

.method static synthetic a(Lu/aly/m;Lu/aly/h;)Lu/aly/h;
    .locals 0

    iput-object p1, p0, Lu/aly/m;->a:Lu/aly/h;

    return-object p1
.end method

.method static synthetic a(Lu/aly/m;)Lu/aly/m$a;
    .locals 1

    iget-object v0, p0, Lu/aly/m;->m:Lu/aly/m$a;

    return-object v0
.end method

.method static synthetic a(Lu/aly/m;Lu/aly/m$a;)Lu/aly/m$a;
    .locals 0

    iput-object p1, p0, Lu/aly/m;->m:Lu/aly/m$a;

    return-object p1
.end method

.method public static final a(Landroid/content/Context;)Lu/aly/m;
    .locals 1

    sput-object p0, Lu/aly/m;->k:Landroid/content/Context;

    invoke-static {}, Lu/aly/m$b;->a()Lu/aly/m;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lu/aly/m;Lu/aly/p;)Lu/aly/p;
    .locals 0

    iput-object p1, p0, Lu/aly/m;->c:Lu/aly/p;

    return-object p1
.end method

.method private a(Lu/aly/l;Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lu/aly/m;->a:Lu/aly/h;

    new-instance v1, Lu/aly/m$9;

    invoke-direct {v1, p0}, Lu/aly/m$9;-><init>(Lu/aly/m;)V

    iget-object v2, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2, v2}, Lu/aly/h;->a(Lu/aly/f;Lu/aly/l;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lu/aly/m;Z)Z
    .locals 0

    iput-boolean p1, p0, Lu/aly/m;->d:Z

    return p1
.end method

.method static synthetic b(Lu/aly/m;)V
    .locals 0

    invoke-direct {p0}, Lu/aly/m;->h()V

    return-void
.end method

.method static synthetic c(Lu/aly/m;)V
    .locals 0

    invoke-direct {p0}, Lu/aly/m;->p()V

    return-void
.end method

.method static synthetic d(Lu/aly/m;)V
    .locals 0

    invoke-direct {p0}, Lu/aly/m;->o()V

    return-void
.end method

.method static synthetic e(Lu/aly/m;)Lu/aly/h;
    .locals 1

    iget-object v0, p0, Lu/aly/m;->a:Lu/aly/h;

    return-object v0
.end method

.method static synthetic f(Lu/aly/m;)Lu/aly/o;
    .locals 1

    iget-object v0, p0, Lu/aly/m;->b:Lu/aly/o;

    return-object v0
.end method

.method static synthetic g()Landroid/content/Context;
    .locals 1

    sget-object v0, Lu/aly/m;->k:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lu/aly/m;)V
    .locals 0

    invoke-direct {p0}, Lu/aly/m;->l()V

    return-void
.end method

.method private h()V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lu/aly/m;->m:Lu/aly/m$a;

    const/16 v3, 0x30

    invoke-static {v0, v1}, Lu/aly/q;->c(J)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lu/aly/m$a;->sendEmptyMessageDelayed(IJ)Z

    iget-object v2, p0, Lu/aly/m;->m:Lu/aly/m$a;

    const/16 v3, 0x31

    invoke-static {v0, v1}, Lu/aly/q;->d(J)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Lu/aly/m$a;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic h(Lu/aly/m;)V
    .locals 0

    invoke-direct {p0}, Lu/aly/m;->q()V

    return-void
.end method

.method static synthetic i(Lu/aly/m;)V
    .locals 0

    invoke-direct {p0}, Lu/aly/m;->n()V

    return-void
.end method

.method private i()Z
    .locals 2

    iget-object v0, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lu/aly/n;->a()Lu/aly/n;

    move-result-object v1

    invoke-virtual {v1}, Lu/aly/n;->d()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j(Lu/aly/m;)Lu/aly/p;
    .locals 1

    iget-object v0, p0, Lu/aly/m;->c:Lu/aly/p;

    return-object v0
.end method

.method private j()V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lu/aly/m;->k:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ba;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "main_fest_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v3, p0, Lu/aly/m;->e:Z

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "main_fest_mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "main_fest_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    return-void
.end method

.method private k()V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lu/aly/m;->k:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ba;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "main_fest_mode"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string v1, "main_fest_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iput-boolean v4, p0, Lu/aly/m;->e:Z

    return-void
.end method

.method static synthetic k(Lu/aly/m;)V
    .locals 0

    invoke-direct {p0}, Lu/aly/m;->m()V

    return-void
.end method

.method private l()V
    .locals 4

    sget-object v0, Lu/aly/m;->k:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/ba;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "main_fest_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lu/aly/m;->e:Z

    const-string v1, "main_fest_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lu/aly/m;->f:J

    return-void
.end method

.method private m()V
    .locals 3

    iget-object v0, p0, Lu/aly/m;->a:Lu/aly/h;

    invoke-virtual {v0}, Lu/aly/h;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v2, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-static {v0}, Lu/aly/d;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lu/aly/m;->b:Lu/aly/o;

    new-instance v1, Lu/aly/f;

    invoke-direct {v1}, Lu/aly/f;-><init>()V

    iget-object v2, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lu/aly/o;->a(Lu/aly/f;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private n()V
    .locals 3

    iget-object v0, p0, Lu/aly/m;->c:Lu/aly/p;

    new-instance v1, Lu/aly/m$12;

    invoke-direct {v1, p0}, Lu/aly/m$12;-><init>(Lu/aly/m;)V

    const-string v2, "__ag_of"

    invoke-virtual {v0, v1, v2}, Lu/aly/p;->a(Lu/aly/f;Ljava/lang/String;)V

    return-void
.end method

.method private o()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lu/aly/m;->a:Lu/aly/h;

    invoke-virtual {v0}, Lu/aly/h;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lu/aly/m;->b:Lu/aly/o;

    new-instance v1, Lu/aly/m$2;

    invoke-direct {v1, p0}, Lu/aly/m$2;-><init>(Lu/aly/m;)V

    iget-object v2, p0, Lu/aly/m;->a:Lu/aly/h;

    invoke-virtual {v2}, Lu/aly/h;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lu/aly/o;->c(Lu/aly/f;Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lu/aly/m;->c:Lu/aly/p;

    invoke-virtual {v0}, Lu/aly/p;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lu/aly/m;->b:Lu/aly/o;

    new-instance v1, Lu/aly/m$3;

    invoke-direct {v1, p0}, Lu/aly/m$3;-><init>(Lu/aly/m;)V

    iget-object v2, p0, Lu/aly/m;->c:Lu/aly/p;

    invoke-virtual {v2}, Lu/aly/p;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lu/aly/o;->b(Lu/aly/f;Ljava/util/Map;)V

    :cond_1
    iget-object v0, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lu/aly/m;->b:Lu/aly/o;

    new-instance v1, Lu/aly/f;

    invoke-direct {v1}, Lu/aly/f;-><init>()V

    iget-object v2, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lu/aly/o;->a(Lu/aly/f;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "converyMemoryToDataTable happen error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bx;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private p()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lu/aly/m;->a:Lu/aly/h;

    invoke-virtual {v0}, Lu/aly/h;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lu/aly/m;->b:Lu/aly/o;

    new-instance v1, Lu/aly/m$4;

    invoke-direct {v1, p0}, Lu/aly/m$4;-><init>(Lu/aly/m;)V

    iget-object v2, p0, Lu/aly/m;->a:Lu/aly/h;

    invoke-virtual {v2}, Lu/aly/h;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lu/aly/o;->a(Lu/aly/f;Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lu/aly/m;->c:Lu/aly/p;

    invoke-virtual {v0}, Lu/aly/p;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lu/aly/m;->b:Lu/aly/o;

    new-instance v1, Lu/aly/m$5;

    invoke-direct {v1, p0}, Lu/aly/m$5;-><init>(Lu/aly/m;)V

    iget-object v2, p0, Lu/aly/m;->c:Lu/aly/p;

    invoke-virtual {v2}, Lu/aly/p;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lu/aly/o;->b(Lu/aly/f;Ljava/util/Map;)V

    :cond_1
    iget-object v0, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lu/aly/m;->b:Lu/aly/o;

    new-instance v1, Lu/aly/f;

    invoke-direct {v1}, Lu/aly/f;-><init>()V

    iget-object v2, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lu/aly/o;->a(Lu/aly/f;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "convertMemoryToCacheTable happen error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lu/aly/bx;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private q()V
    .locals 1

    iget-object v0, p0, Lu/aly/m;->b:Lu/aly/o;

    invoke-virtual {v0}, Lu/aly/o;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lu/aly/m;->l:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(JJLjava/lang/String;)V
    .locals 9

    iget-object v1, p0, Lu/aly/m;->b:Lu/aly/o;

    new-instance v2, Lu/aly/m$13;

    invoke-direct {v2, p0}, Lu/aly/m$13;-><init>(Lu/aly/m;)V

    move-object v3, p5

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lu/aly/o;->a(Lu/aly/f;Ljava/lang/String;JJ)V

    return-void
.end method

.method public a(Lu/aly/f;)V
    .locals 1

    iget-boolean v0, p0, Lu/aly/m;->d:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lu/aly/m$6;

    invoke-direct {v0, p0, p1}, Lu/aly/m$6;-><init>(Lu/aly/m;Lu/aly/f;)V

    invoke-static {v0}, Lu/aly/by;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lu/aly/f;Ljava/util/Map;)V
    .locals 4

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lu/aly/l;

    invoke-virtual {v0}, Lu/aly/l;->a()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-static {v1}, Lu/aly/d;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lu/aly/m;->a:Lu/aly/h;

    new-instance v2, Lu/aly/m$7;

    invoke-direct {v2, p0, p1}, Lu/aly/m$7;-><init>(Lu/aly/m;Lu/aly/f;)V

    invoke-virtual {v1, v2, v0}, Lu/aly/h;->a(Lu/aly/f;Lu/aly/l;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v2, p0, Lu/aly/m;->e:Z

    if-eqz v2, :cond_1

    invoke-direct {p0, v0, v1}, Lu/aly/m;->a(Lu/aly/l;Ljava/util/List;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lu/aly/m;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v1}, Lu/aly/d;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v2, p0, Lu/aly/m;->a:Lu/aly/h;

    new-instance v3, Lu/aly/m$8;

    invoke-direct {v3, p0}, Lu/aly/m$8;-><init>(Lu/aly/m;)V

    invoke-virtual {v2, v3, v1, v0}, Lu/aly/h;->a(Lu/aly/f;Ljava/util/List;Lu/aly/l;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0, v1}, Lu/aly/m;->a(Lu/aly/l;Ljava/util/List;)V

    invoke-direct {p0}, Lu/aly/m;->j()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lu/aly/m;->d:Z

    return v0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 5

    iget-object v0, p0, Lu/aly/m;->b:Lu/aly/o;

    invoke-virtual {v0}, Lu/aly/o;->a()Lorg/json/JSONObject;

    move-result-object v2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :try_start_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method public b(Lu/aly/f;)V
    .locals 4

    const/4 v0, 0x0

    iget-boolean v1, p0, Lu/aly/m;->e:Z

    if-eqz v1, :cond_1

    iget-wide v0, p0, Lu/aly/m;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-direct {p0}, Lu/aly/m;->l()V

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lu/aly/m;->f:J

    invoke-static {v0, v1, v2, v3}, Lu/aly/q;->a(JJ)Z

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    invoke-direct {p0}, Lu/aly/m;->k()V

    iget-object v1, p0, Lu/aly/m;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_2
    iget-object v1, p0, Lu/aly/m;->c:Lu/aly/p;

    invoke-virtual {v1}, Lu/aly/p;->b()V

    iget-object v1, p0, Lu/aly/m;->b:Lu/aly/o;

    new-instance v2, Lu/aly/m$11;

    invoke-direct {v2, p0}, Lu/aly/m$11;-><init>(Lu/aly/m;)V

    invoke-virtual {v1, v2, v0}, Lu/aly/o;->a(Lu/aly/f;Z)V

    return-void
.end method

.method public c()Lorg/json/JSONObject;
    .locals 3

    iget-object v0, p0, Lu/aly/m;->c:Lu/aly/p;

    invoke-virtual {v0}, Lu/aly/p;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lu/aly/m;->b:Lu/aly/o;

    new-instance v1, Lu/aly/m$10;

    invoke-direct {v1, p0}, Lu/aly/m$10;-><init>(Lu/aly/m;)V

    iget-object v2, p0, Lu/aly/m;->c:Lu/aly/p;

    invoke-virtual {v2}, Lu/aly/p;->a()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lu/aly/o;->b(Lu/aly/f;Ljava/util/Map;)V

    :cond_0
    iget-object v0, p0, Lu/aly/m;->b:Lu/aly/o;

    new-instance v1, Lu/aly/f;

    invoke-direct {v1}, Lu/aly/f;-><init>()V

    invoke-virtual {v0, v1}, Lu/aly/o;->b(Lu/aly/f;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 0

    invoke-direct {p0}, Lu/aly/m;->p()V

    return-void
.end method

.method public e()V
    .locals 0

    invoke-direct {p0}, Lu/aly/m;->p()V

    return-void
.end method

.method public f()V
    .locals 0

    invoke-direct {p0}, Lu/aly/m;->p()V

    return-void
.end method
