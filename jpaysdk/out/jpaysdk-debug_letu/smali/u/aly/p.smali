.class public Lu/aly/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lu/aly/p;->b:Ljava/util/Map;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v0, Lu/aly/k;

    const-wide/16 v4, 0x1

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lu/aly/k;-><init>(Ljava/lang/String;JJ)V

    iget-object v1, p0, Lu/aly/p;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private b(Lu/aly/k;)V
    .locals 3

    iget-object v0, p0, Lu/aly/p;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/k;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/k;

    invoke-virtual {v0, p1}, Lu/aly/k;->a(Lu/aly/k;)Lu/aly/k;

    move-result-object v0

    iget-object v1, p0, Lu/aly/p;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/k;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lu/aly/p;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu/aly/k;

    invoke-virtual {v0}, Lu/aly/k;->a()Lu/aly/k;

    move-result-object v0

    iget-object v1, p0, Lu/aly/p;->b:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lu/aly/p;->b:Ljava/util/Map;

    return-object v0
.end method

.method public a(Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lu/aly/p;->b:Ljava/util/Map;

    return-void
.end method

.method public a(Lu/aly/f;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lu/aly/p;->b:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lu/aly/p;->c(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lu/aly/f;->a(Ljava/lang/Object;Z)V

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lu/aly/p;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lu/aly/k;)V
    .locals 2

    invoke-virtual {p1}, Lu/aly/k;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu/aly/p;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lu/aly/p;->b(Lu/aly/k;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lu/aly/p;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lu/aly/k;->c()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lu/aly/p;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lu/aly/p;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
