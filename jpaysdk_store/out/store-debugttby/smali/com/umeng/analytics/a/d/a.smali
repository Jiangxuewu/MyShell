.class public Lcom/umeng/analytics/a/d/a;
.super Ljava/lang/Object;
.source "UMCCAggregatedManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/a/d/a$a;,
        Lcom/umeng/analytics/a/d/a$b;
    }
.end annotation


# static fields
.field private static final i:I = 0x30

.field private static final j:I = 0x31

.field private static k:Landroid/content/Context;


# instance fields
.field private a:Lcom/umeng/analytics/a/c/a;

.field private b:Lcom/umeng/analytics/a/d/c;

.field private c:Lcom/umeng/analytics/a/d/d;

.field private d:Z

.field private e:Z

.field private f:J

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcom/umeng/analytics/a/d/a$a;

.field private final n:Ljava/lang/Thread;


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v2, p0, Lcom/umeng/analytics/a/d/a;->a:Lcom/umeng/analytics/a/c/a;

    .line 43
    iput-object v2, p0, Lcom/umeng/analytics/a/d/a;->b:Lcom/umeng/analytics/a/d/c;

    .line 44
    iput-object v2, p0, Lcom/umeng/analytics/a/d/a;->c:Lcom/umeng/analytics/a/d/d;

    .line 46
    iput-boolean v0, p0, Lcom/umeng/analytics/a/d/a;->d:Z

    .line 47
    iput-boolean v0, p0, Lcom/umeng/analytics/a/d/a;->e:Z

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/umeng/analytics/a/d/a;->f:J

    .line 50
    const-string v0, "main_fest_mode"

    iput-object v0, p0, Lcom/umeng/analytics/a/d/a;->g:Ljava/lang/String;

    .line 51
    const-string v0, "main_fest_timestamp"

    iput-object v0, p0, Lcom/umeng/analytics/a/d/a;->h:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/a/d/a;->l:Ljava/util/List;

    .line 59
    iput-object v2, p0, Lcom/umeng/analytics/a/d/a;->m:Lcom/umeng/analytics/a/d/a$a;

    .line 61
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/umeng/analytics/a/d/a$1;

    invoke-direct {v1, p0}, Lcom/umeng/analytics/a/d/a$1;-><init>(Lcom/umeng/analytics/a/d/a;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/umeng/analytics/a/d/a;->n:Ljava/lang/Thread;

    .line 105
    sget-object v0, Lcom/umeng/analytics/a/d/a;->k:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 107
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->a:Lcom/umeng/analytics/a/c/a;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/umeng/analytics/a/c/a;

    invoke-direct {v0}, Lcom/umeng/analytics/a/c/a;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/a/d/a;->a:Lcom/umeng/analytics/a/c/a;

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->b:Lcom/umeng/analytics/a/d/c;

    if-nez v0, :cond_1

    .line 111
    sget-object v0, Lcom/umeng/analytics/a/d/a;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/a/d/c;->a(Landroid/content/Context;)Lcom/umeng/analytics/a/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/analytics/a/d/a;->b:Lcom/umeng/analytics/a/d/c;

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->c:Lcom/umeng/analytics/a/d/d;

    if-nez v0, :cond_2

    .line 114
    new-instance v0, Lcom/umeng/analytics/a/d/d;

    invoke-direct {v0}, Lcom/umeng/analytics/a/d/d;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/a/d/a;->c:Lcom/umeng/analytics/a/d/d;

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->n:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 118
    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/a/d/a$1;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/umeng/analytics/a/d/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/a/d/a;Lcom/umeng/analytics/a/c/a;)Lcom/umeng/analytics/a/c/a;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/umeng/analytics/a/d/a;->a:Lcom/umeng/analytics/a/c/a;

    return-object p1
.end method

.method static synthetic a(Lcom/umeng/analytics/a/d/a;)Lcom/umeng/analytics/a/d/a$a;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->m:Lcom/umeng/analytics/a/d/a$a;

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/analytics/a/d/a;Lcom/umeng/analytics/a/d/a$a;)Lcom/umeng/analytics/a/d/a$a;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/umeng/analytics/a/d/a;->m:Lcom/umeng/analytics/a/d/a$a;

    return-object p1
.end method

.method public static final a(Landroid/content/Context;)Lcom/umeng/analytics/a/d/a;
    .locals 1

    .prologue
    .line 127
    sput-object p0, Lcom/umeng/analytics/a/d/a;->k:Landroid/content/Context;

    .line 128
    invoke-static {}, Lcom/umeng/analytics/a/d/a$b;->a()Lcom/umeng/analytics/a/d/a;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/umeng/analytics/a/d/a;Lcom/umeng/analytics/a/d/d;)Lcom/umeng/analytics/a/d/d;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/umeng/analytics/a/d/a;->c:Lcom/umeng/analytics/a/d/d;

    return-object p1
.end method

.method private a(Lcom/umeng/analytics/a/c/e;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/analytics/a/c/e;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->a:Lcom/umeng/analytics/a/c/a;

    new-instance v1, Lcom/umeng/analytics/a/d/a$9;

    invoke-direct {v1, p0}, Lcom/umeng/analytics/a/d/a$9;-><init>(Lcom/umeng/analytics/a/d/a;)V

    iget-object v2, p0, Lcom/umeng/analytics/a/d/a;->l:Ljava/util/List;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/umeng/analytics/a/c/a;->a(Lcom/umeng/analytics/a/b/a;Lcom/umeng/analytics/a/c/e;Ljava/util/List;Ljava/util/List;)V

    .line 263
    return-void
.end method

.method static synthetic a(Lcom/umeng/analytics/a/d/a;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lcom/umeng/analytics/a/d/a;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/umeng/analytics/a/d/a;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/umeng/analytics/a/d/a;->h()V

    return-void
.end method

.method static synthetic c(Lcom/umeng/analytics/a/d/a;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/umeng/analytics/a/d/a;->p()V

    return-void
.end method

.method static synthetic d(Lcom/umeng/analytics/a/d/a;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/umeng/analytics/a/d/a;->o()V

    return-void
.end method

.method static synthetic e(Lcom/umeng/analytics/a/d/a;)Lcom/umeng/analytics/a/c/a;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->a:Lcom/umeng/analytics/a/c/a;

    return-object v0
.end method

.method static synthetic f(Lcom/umeng/analytics/a/d/a;)Lcom/umeng/analytics/a/d/c;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->b:Lcom/umeng/analytics/a/d/c;

    return-object v0
.end method

.method static synthetic g()Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/umeng/analytics/a/d/a;->k:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/umeng/analytics/a/d/a;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/umeng/analytics/a/d/a;->l()V

    return-void
.end method

.method private h()V
    .locals 6

    .prologue
    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 122
    iget-object v2, p0, Lcom/umeng/analytics/a/d/a;->m:Lcom/umeng/analytics/a/d/a$a;

    const/16 v3, 0x30

    invoke-static {v0, v1}, Lcom/umeng/analytics/a/d/e;->c(J)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lcom/umeng/analytics/a/d/a$a;->sendEmptyMessageDelayed(IJ)Z

    .line 123
    iget-object v2, p0, Lcom/umeng/analytics/a/d/a;->m:Lcom/umeng/analytics/a/d/a$a;

    const/16 v3, 0x31

    invoke-static {v0, v1}, Lcom/umeng/analytics/a/d/e;->d(J)J

    move-result-wide v0

    invoke-virtual {v2, v3, v0, v1}, Lcom/umeng/analytics/a/d/a$a;->sendEmptyMessageDelayed(IJ)Z

    .line 124
    return-void
.end method

.method static synthetic h(Lcom/umeng/analytics/a/d/a;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/umeng/analytics/a/d/a;->q()V

    return-void
.end method

.method static synthetic i(Lcom/umeng/analytics/a/d/a;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/umeng/analytics/a/d/a;->n()V

    return-void
.end method

.method private i()Z
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {}, Lcom/umeng/analytics/a/d/b;->a()Lcom/umeng/analytics/a/d/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/a/d/b;->d()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 272
    const/4 v0, 0x1

    .line 274
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j(Lcom/umeng/analytics/a/d/a;)Lcom/umeng/analytics/a/d/d;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->c:Lcom/umeng/analytics/a/d/d;

    return-object v0
.end method

.method private j()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 282
    sget-object v0, Lcom/umeng/analytics/a/d/a;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/d/m;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 283
    const-string v1, "main_fest_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    iput-boolean v3, p0, Lcom/umeng/analytics/a/d/a;->e:Z

    .line 285
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 286
    const-string v1, "main_fest_mode"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 287
    const-string v1, "main_fest_timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 288
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 290
    :cond_0
    return-void
.end method

.method private k()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 296
    sget-object v0, Lcom/umeng/analytics/a/d/a;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/d/m;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 297
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 298
    const-string v1, "main_fest_mode"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 299
    const-string v1, "main_fest_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 300
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 301
    iput-boolean v4, p0, Lcom/umeng/analytics/a/d/a;->e:Z

    .line 302
    return-void
.end method

.method static synthetic k(Lcom/umeng/analytics/a/d/a;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/umeng/analytics/a/d/a;->m()V

    return-void
.end method

.method private l()V
    .locals 4

    .prologue
    .line 308
    sget-object v0, Lcom/umeng/analytics/a/d/a;->k:Landroid/content/Context;

    invoke-static {v0}, Lcom/umeng/analytics/d/m;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 309
    const-string v1, "main_fest_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/umeng/analytics/a/d/a;->e:Z

    .line 310
    const-string v1, "main_fest_timestamp"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/umeng/analytics/a/d/a;->f:J

    .line 311
    return-void
.end method

.method private m()V
    .locals 3

    .prologue
    .line 379
    .line 380
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->a:Lcom/umeng/analytics/a/c/a;

    invoke-virtual {v0}, Lcom/umeng/analytics/a/c/a;->a()Ljava/util/Map;

    move-result-object v0

    .line 381
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 382
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 383
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 384
    iget-object v2, p0, Lcom/umeng/analytics/a/d/a;->l:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 385
    iget-object v2, p0, Lcom/umeng/analytics/a/d/a;->l:Ljava/util/List;

    invoke-static {v0}, Lcom/umeng/analytics/a/a/d;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 389
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->b:Lcom/umeng/analytics/a/d/c;

    new-instance v1, Lcom/umeng/analytics/a/b/a;

    invoke-direct {v1}, Lcom/umeng/analytics/a/b/a;-><init>()V

    iget-object v2, p0, Lcom/umeng/analytics/a/d/a;->l:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/analytics/a/d/c;->a(Lcom/umeng/analytics/a/b/a;Ljava/util/List;)V

    .line 391
    :cond_2
    return-void
.end method

.method private n()V
    .locals 3

    .prologue
    .line 398
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->c:Lcom/umeng/analytics/a/d/d;

    new-instance v1, Lcom/umeng/analytics/a/d/a$12;

    invoke-direct {v1, p0}, Lcom/umeng/analytics/a/d/a$12;-><init>(Lcom/umeng/analytics/a/d/a;)V

    const-string v2, "__ag_of"

    invoke-virtual {v0, v1, v2}, Lcom/umeng/analytics/a/d/d;->a(Lcom/umeng/analytics/a/b/a;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method private o()V
    .locals 3

    .prologue
    .line 433
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->a:Lcom/umeng/analytics/a/c/a;

    invoke-virtual {v0}, Lcom/umeng/analytics/a/c/a;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->b:Lcom/umeng/analytics/a/d/c;

    new-instance v1, Lcom/umeng/analytics/a/d/a$2;

    invoke-direct {v1, p0}, Lcom/umeng/analytics/a/d/a$2;-><init>(Lcom/umeng/analytics/a/d/a;)V

    iget-object v2, p0, Lcom/umeng/analytics/a/d/a;->a:Lcom/umeng/analytics/a/c/a;

    .line 441
    invoke-virtual {v2}, Lcom/umeng/analytics/a/c/a;->a()Ljava/util/Map;

    move-result-object v2

    .line 434
    invoke-virtual {v0, v1, v2}, Lcom/umeng/analytics/a/d/c;->c(Lcom/umeng/analytics/a/b/a;Ljava/util/Map;)V

    .line 443
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->c:Lcom/umeng/analytics/a/d/d;

    invoke-virtual {v0}, Lcom/umeng/analytics/a/d/d;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 444
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->b:Lcom/umeng/analytics/a/d/c;

    new-instance v1, Lcom/umeng/analytics/a/d/a$3;

    invoke-direct {v1, p0}, Lcom/umeng/analytics/a/d/a$3;-><init>(Lcom/umeng/analytics/a/d/a;)V

    iget-object v2, p0, Lcom/umeng/analytics/a/d/a;->c:Lcom/umeng/analytics/a/d/d;

    .line 452
    invoke-virtual {v2}, Lcom/umeng/analytics/a/d/d;->a()Ljava/util/Map;

    move-result-object v2

    .line 444
    invoke-virtual {v0, v1, v2}, Lcom/umeng/analytics/a/d/c;->b(Lcom/umeng/analytics/a/b/a;Ljava/util/Map;)V

    .line 454
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->b:Lcom/umeng/analytics/a/d/c;

    new-instance v1, Lcom/umeng/analytics/a/b/a;

    invoke-direct {v1}, Lcom/umeng/analytics/a/b/a;-><init>()V

    iget-object v2, p0, Lcom/umeng/analytics/a/d/a;->l:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/analytics/a/d/c;->a(Lcom/umeng/analytics/a/b/a;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    :cond_2
    :goto_0
    return-void

    .line 457
    :catch_0
    move-exception v0

    .line 458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "converyMemoryToDataTable happen error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/a/h;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private p()V
    .locals 3

    .prologue
    .line 470
    :try_start_0
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->a:Lcom/umeng/analytics/a/c/a;

    invoke-virtual {v0}, Lcom/umeng/analytics/a/c/a;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->b:Lcom/umeng/analytics/a/d/c;

    new-instance v1, Lcom/umeng/analytics/a/d/a$4;

    invoke-direct {v1, p0}, Lcom/umeng/analytics/a/d/a$4;-><init>(Lcom/umeng/analytics/a/d/a;)V

    iget-object v2, p0, Lcom/umeng/analytics/a/d/a;->a:Lcom/umeng/analytics/a/c/a;

    .line 474
    invoke-virtual {v2}, Lcom/umeng/analytics/a/c/a;->a()Ljava/util/Map;

    move-result-object v2

    .line 471
    invoke-virtual {v0, v1, v2}, Lcom/umeng/analytics/a/d/c;->a(Lcom/umeng/analytics/a/b/a;Ljava/util/Map;)V

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->c:Lcom/umeng/analytics/a/d/d;

    invoke-virtual {v0}, Lcom/umeng/analytics/a/d/d;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->b:Lcom/umeng/analytics/a/d/c;

    new-instance v1, Lcom/umeng/analytics/a/d/a$5;

    invoke-direct {v1, p0}, Lcom/umeng/analytics/a/d/a$5;-><init>(Lcom/umeng/analytics/a/d/a;)V

    iget-object v2, p0, Lcom/umeng/analytics/a/d/a;->c:Lcom/umeng/analytics/a/d/d;

    .line 485
    invoke-virtual {v2}, Lcom/umeng/analytics/a/d/d;->a()Ljava/util/Map;

    move-result-object v2

    .line 477
    invoke-virtual {v0, v1, v2}, Lcom/umeng/analytics/a/d/c;->b(Lcom/umeng/analytics/a/b/a;Ljava/util/Map;)V

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 488
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->b:Lcom/umeng/analytics/a/d/c;

    new-instance v1, Lcom/umeng/analytics/a/b/a;

    invoke-direct {v1}, Lcom/umeng/analytics/a/b/a;-><init>()V

    iget-object v2, p0, Lcom/umeng/analytics/a/d/a;->l:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/analytics/a/d/c;->a(Lcom/umeng/analytics/a/b/a;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :cond_2
    :goto_0
    return-void

    .line 490
    :catch_0
    move-exception v0

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertMemoryToCacheTable happen error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/a/h;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private q()V
    .locals 1

    .prologue
    .line 500
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->b:Lcom/umeng/analytics/a/d/c;

    invoke-virtual {v0}, Lcom/umeng/analytics/a/d/c;->b()Ljava/util/List;

    move-result-object v0

    .line 501
    if-eqz v0, :cond_0

    .line 502
    iput-object v0, p0, Lcom/umeng/analytics/a/d/a;->l:Ljava/util/List;

    .line 505
    :cond_0
    return-void
.end method


# virtual methods
.method public a(JJLjava/lang/String;)V
    .locals 9

    .prologue
    .line 416
    iget-object v1, p0, Lcom/umeng/analytics/a/d/a;->b:Lcom/umeng/analytics/a/d/c;

    new-instance v2, Lcom/umeng/analytics/a/d/a$13;

    invoke-direct {v2, p0}, Lcom/umeng/analytics/a/d/a$13;-><init>(Lcom/umeng/analytics/a/d/a;)V

    move-object v3, p5

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v1 .. v7}, Lcom/umeng/analytics/a/d/c;->a(Lcom/umeng/analytics/a/b/a;Ljava/lang/String;JJ)V

    .line 424
    return-void
.end method

.method public a(Lcom/umeng/analytics/a/b/a;)V
    .locals 1

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/umeng/analytics/a/d/a;->d:Z

    if-eqz v0, :cond_0

    .line 181
    :goto_0
    return-void

    .line 149
    :cond_0
    new-instance v0, Lcom/umeng/analytics/a/d/a$6;

    invoke-direct {v0, p0, p1}, Lcom/umeng/analytics/a/d/a$6;-><init>(Lcom/umeng/analytics/a/d/a;Lcom/umeng/analytics/a/b/a;)V

    invoke-static {v0}, Lcom/umeng/a/i;->b(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public a(Lcom/umeng/analytics/a/b/a;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/analytics/a/b/a;",
            "Ljava/util/Map",
            "<",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/umeng/analytics/a/c/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lcom/umeng/analytics/a/c/e;

    .line 196
    invoke-virtual {v0}, Lcom/umeng/analytics/a/c/e;->a()Ljava/util/List;

    move-result-object v1

    .line 197
    iget-object v2, p0, Lcom/umeng/analytics/a/d/a;->l:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/umeng/analytics/a/d/a;->l:Ljava/util/List;

    invoke-static {v1}, Lcom/umeng/analytics/a/a/d;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    iget-object v1, p0, Lcom/umeng/analytics/a/d/a;->a:Lcom/umeng/analytics/a/c/a;

    new-instance v2, Lcom/umeng/analytics/a/d/a$7;

    invoke-direct {v2, p0, p1}, Lcom/umeng/analytics/a/d/a$7;-><init>(Lcom/umeng/analytics/a/d/a;Lcom/umeng/analytics/a/b/a;)V

    invoke-virtual {v1, v2, v0}, Lcom/umeng/analytics/a/c/a;->a(Lcom/umeng/analytics/a/b/a;Lcom/umeng/analytics/a/c/e;)V

    .line 243
    :goto_0
    return-void

    .line 213
    :cond_0
    iget-boolean v2, p0, Lcom/umeng/analytics/a/d/a;->e:Z

    if-eqz v2, :cond_1

    .line 214
    invoke-direct {p0, v0, v1}, Lcom/umeng/analytics/a/d/a;->a(Lcom/umeng/analytics/a/c/e;Ljava/util/List;)V

    goto :goto_0

    .line 219
    :cond_1
    invoke-direct {p0}, Lcom/umeng/analytics/a/d/a;->i()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 220
    invoke-static {v1}, Lcom/umeng/analytics/a/a/d;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    .line 222
    iget-object v3, p0, Lcom/umeng/analytics/a/d/a;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 223
    iget-object v3, p0, Lcom/umeng/analytics/a/d/a;->l:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    :cond_2
    iget-object v2, p0, Lcom/umeng/analytics/a/d/a;->a:Lcom/umeng/analytics/a/c/a;

    new-instance v3, Lcom/umeng/analytics/a/d/a$8;

    invoke-direct {v3, p0}, Lcom/umeng/analytics/a/d/a$8;-><init>(Lcom/umeng/analytics/a/d/a;)V

    invoke-virtual {v2, v3, v1, v0}, Lcom/umeng/analytics/a/c/a;->a(Lcom/umeng/analytics/a/b/a;Ljava/util/List;Lcom/umeng/analytics/a/c/e;)V

    goto :goto_0

    .line 238
    :cond_3
    invoke-direct {p0, v0, v1}, Lcom/umeng/analytics/a/d/a;->a(Lcom/umeng/analytics/a/c/e;Ljava/util/List;)V

    .line 240
    invoke-direct {p0}, Lcom/umeng/analytics/a/d/a;->j()V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/umeng/analytics/a/d/a;->d:Z

    return v0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 316
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->b:Lcom/umeng/analytics/a/d/c;

    invoke-virtual {v0}, Lcom/umeng/analytics/a/d/c;->a()Lorg/json/JSONObject;

    move-result-object v2

    .line 317
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 318
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-gtz v0, :cond_1

    .line 319
    :cond_0
    const/4 v0, 0x0

    .line 329
    :goto_0
    return-object v0

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->l:Ljava/util/List;

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

    .line 322
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 324
    :try_start_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 325
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 329
    goto :goto_0
.end method

.method public b(Lcom/umeng/analytics/a/b/a;)V
    .locals 4

    .prologue
    .line 351
    const/4 v0, 0x0

    .line 352
    iget-boolean v1, p0, Lcom/umeng/analytics/a/d/a;->e:Z

    if-eqz v1, :cond_1

    .line 353
    iget-wide v0, p0, Lcom/umeng/analytics/a/d/a;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 354
    invoke-direct {p0}, Lcom/umeng/analytics/a/d/a;->l()V

    .line 356
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/umeng/analytics/a/d/a;->f:J

    invoke-static {v0, v1, v2, v3}, Lcom/umeng/analytics/a/d/e;->a(JJ)Z

    move-result v0

    .line 358
    :cond_1
    if-nez v0, :cond_2

    .line 359
    invoke-direct {p0}, Lcom/umeng/analytics/a/d/a;->k()V

    .line 360
    iget-object v1, p0, Lcom/umeng/analytics/a/d/a;->l:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 363
    :cond_2
    iget-object v1, p0, Lcom/umeng/analytics/a/d/a;->c:Lcom/umeng/analytics/a/d/d;

    invoke-virtual {v1}, Lcom/umeng/analytics/a/d/d;->b()V

    .line 364
    iget-object v1, p0, Lcom/umeng/analytics/a/d/a;->b:Lcom/umeng/analytics/a/d/c;

    new-instance v2, Lcom/umeng/analytics/a/d/a$11;

    invoke-direct {v2, p0}, Lcom/umeng/analytics/a/d/a$11;-><init>(Lcom/umeng/analytics/a/d/a;)V

    invoke-virtual {v1, v2, v0}, Lcom/umeng/analytics/a/d/c;->a(Lcom/umeng/analytics/a/b/a;Z)V

    .line 373
    return-void
.end method

.method public c()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->c:Lcom/umeng/analytics/a/d/d;

    invoke-virtual {v0}, Lcom/umeng/analytics/a/d/d;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->b:Lcom/umeng/analytics/a/d/c;

    new-instance v1, Lcom/umeng/analytics/a/d/a$10;

    invoke-direct {v1, p0}, Lcom/umeng/analytics/a/d/a$10;-><init>(Lcom/umeng/analytics/a/d/a;)V

    iget-object v2, p0, Lcom/umeng/analytics/a/d/a;->c:Lcom/umeng/analytics/a/d/d;

    .line 341
    invoke-virtual {v2}, Lcom/umeng/analytics/a/d/d;->a()Ljava/util/Map;

    move-result-object v2

    .line 334
    invoke-virtual {v0, v1, v2}, Lcom/umeng/analytics/a/d/c;->b(Lcom/umeng/analytics/a/b/a;Ljava/util/Map;)V

    .line 343
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a;->b:Lcom/umeng/analytics/a/d/c;

    new-instance v1, Lcom/umeng/analytics/a/b/a;

    invoke-direct {v1}, Lcom/umeng/analytics/a/b/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/a/d/c;->b(Lcom/umeng/analytics/a/b/a;)Lorg/json/JSONObject;

    move-result-object v0

    .line 344
    return-object v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 508
    invoke-direct {p0}, Lcom/umeng/analytics/a/d/a;->p()V

    .line 509
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 512
    invoke-direct {p0}, Lcom/umeng/analytics/a/d/a;->p()V

    .line 513
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/umeng/analytics/a/d/a;->p()V

    .line 517
    return-void
.end method
