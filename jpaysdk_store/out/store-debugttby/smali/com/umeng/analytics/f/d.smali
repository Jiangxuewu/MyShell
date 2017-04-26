.class public Lcom/umeng/analytics/f/d;
.super Ljava/lang/Object;
.source "IdTracking.java"

# interfaces
.implements La/a/a/d;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/f/d$c;,
        Lcom/umeng/analytics/f/d$d;,
        Lcom/umeng/analytics/f/d$a;,
        Lcom/umeng/analytics/f/d$b;,
        Lcom/umeng/analytics/f/d$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/a/d",
        "<",
        "Lcom/umeng/analytics/f/d;",
        "Lcom/umeng/analytics/f/d$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/umeng/analytics/f/d$e;",
            "La/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:J = -0x4ffe4305ce3009afL

.field private static final f:La/a/a/b/m;

.field private static final g:La/a/a/b/c;

.field private static final h:La/a/a/b/c;

.field private static final i:La/a/a/b/c;

.field private static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<+",
            "La/a/a/c/a;",
            ">;",
            "La/a/a/c/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/f/c;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/umeng/analytics/f/b;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field private k:[Lcom/umeng/analytics/f/d$e;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/16 v12, 0xd

    const/16 v11, 0xc

    const/4 v10, 0x1

    const/16 v9, 0xb

    const/4 v8, 0x2

    .line 28
    new-instance v0, La/a/a/b/m;

    const-string v1, "IdTracking"

    invoke-direct {v0, v1}, La/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/f/d;->f:La/a/a/b/m;

    .line 31
    new-instance v0, La/a/a/b/c;

    const-string v1, "snapshots"

    invoke-direct {v0, v1, v12, v10}, La/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/f/d;->g:La/a/a/b/c;

    .line 33
    new-instance v0, La/a/a/b/c;

    const-string v1, "journals"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2, v8}, La/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/f/d;->h:La/a/a/b/c;

    .line 35
    new-instance v0, La/a/a/b/c;

    const-string v1, "checksum"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v9, v2}, La/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/f/d;->i:La/a/a/b/c;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/f/d;->j:Ljava/util/Map;

    .line 42
    sget-object v0, Lcom/umeng/analytics/f/d;->j:Ljava/util/Map;

    const-class v1, La/a/a/c/c;

    new-instance v2, Lcom/umeng/analytics/f/d$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/umeng/analytics/f/d$b;-><init>(Lcom/umeng/analytics/f/d$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/umeng/analytics/f/d;->j:Ljava/util/Map;

    const-class v1, La/a/a/c/d;

    new-instance v2, Lcom/umeng/analytics/f/d$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/umeng/analytics/f/d$d;-><init>(Lcom/umeng/analytics/f/d$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/umeng/analytics/f/d$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 126
    sget-object v1, Lcom/umeng/analytics/f/d$e;->a:Lcom/umeng/analytics/f/d$e;

    new-instance v2, La/a/a/a/b;

    const-string v3, "snapshots"

    new-instance v4, La/a/a/a/e;

    new-instance v5, La/a/a/a/c;

    invoke-direct {v5, v9}, La/a/a/a/c;-><init>(B)V

    new-instance v6, La/a/a/a/g;

    const-class v7, Lcom/umeng/analytics/f/c;

    invoke-direct {v6, v11, v7}, La/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v12, v5, v6}, La/a/a/a/e;-><init>(BLa/a/a/a/c;La/a/a/a/c;)V

    invoke-direct {v2, v3, v10, v4}, La/a/a/a/b;-><init>(Ljava/lang/String;BLa/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v1, Lcom/umeng/analytics/f/d$e;->b:Lcom/umeng/analytics/f/d$e;

    new-instance v2, La/a/a/a/b;

    const-string v3, "journals"

    new-instance v4, La/a/a/a/d;

    const/16 v5, 0xf

    new-instance v6, La/a/a/a/g;

    const-class v7, Lcom/umeng/analytics/f/b;

    invoke-direct {v6, v11, v7}, La/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v5, v6}, La/a/a/a/d;-><init>(BLa/a/a/a/c;)V

    invoke-direct {v2, v3, v8, v4}, La/a/a/a/b;-><init>(Ljava/lang/String;BLa/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v1, Lcom/umeng/analytics/f/d$e;->c:Lcom/umeng/analytics/f/d$e;

    new-instance v2, La/a/a/a/b;

    const-string v3, "checksum"

    new-instance v4, La/a/a/a/c;

    invoke-direct {v4, v9}, La/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v8, v4}, La/a/a/a/b;-><init>(Ljava/lang/String;BLa/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/f/d;->d:Ljava/util/Map;

    .line 145
    const-class v0, Lcom/umeng/analytics/f/d;

    sget-object v1, Lcom/umeng/analytics/f/d;->d:Ljava/util/Map;

    invoke-static {v0, v1}, La/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 146
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/umeng/analytics/f/d$e;

    const/4 v1, 0x0

    sget-object v2, Lcom/umeng/analytics/f/d$e;->b:Lcom/umeng/analytics/f/d$e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/umeng/analytics/f/d$e;->c:Lcom/umeng/analytics/f/d$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/umeng/analytics/f/d;->k:[Lcom/umeng/analytics/f/d$e;

    .line 149
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/f/d;)V
    .locals 5

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/umeng/analytics/f/d$e;

    const/4 v1, 0x0

    sget-object v2, Lcom/umeng/analytics/f/d$e;->b:Lcom/umeng/analytics/f/d$e;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/umeng/analytics/f/d$e;->c:Lcom/umeng/analytics/f/d$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/umeng/analytics/f/d;->k:[Lcom/umeng/analytics/f/d$e;

    .line 160
    invoke-virtual {p1}, Lcom/umeng/analytics/f/d;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 162
    iget-object v0, p1, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 164
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 165
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/f/c;

    .line 169
    new-instance v4, Lcom/umeng/analytics/f/c;

    invoke-direct {v4, v0}, Lcom/umeng/analytics/f/c;-><init>(Lcom/umeng/analytics/f/c;)V

    .line 171
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 173
    :cond_0
    iput-object v2, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    .line 175
    :cond_1
    invoke-virtual {p1}, Lcom/umeng/analytics/f/d;->k()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 176
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 177
    iget-object v0, p1, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/f/b;

    .line 178
    new-instance v3, Lcom/umeng/analytics/f/b;

    invoke-direct {v3, v0}, Lcom/umeng/analytics/f/b;-><init>(Lcom/umeng/analytics/f/b;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 180
    :cond_2
    iput-object v1, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    .line 182
    :cond_3
    invoke-virtual {p1}, Lcom/umeng/analytics/f/d;->n()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 183
    iget-object v0, p1, Lcom/umeng/analytics/f/d;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/f/d;->c:Ljava/lang/String;

    .line 185
    :cond_4
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/f/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/umeng/analytics/f/d;-><init>()V

    .line 153
    iput-object p1, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    .line 154
    return-void
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 377
    :try_start_0
    new-instance v0, La/a/a/b/b;

    new-instance v1, La/a/a/d/a;

    invoke-direct {v1, p1}, La/a/a/d/a;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, La/a/a/b/b;-><init>(La/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/f/d;->a(La/a/a/b/h;)V
    :try_end_0
    .catch La/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 382
    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 380
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, La/a/a/j;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 368
    :try_start_0
    new-instance v0, La/a/a/b/b;

    new-instance v1, La/a/a/d/a;

    invoke-direct {v1, p1}, La/a/a/d/a;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, La/a/a/b/b;-><init>(La/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/f/d;->b(La/a/a/b/h;)V
    :try_end_0
    .catch La/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, La/a/a/j;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic q()La/a/a/b/m;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/umeng/analytics/f/d;->f:La/a/a/b/m;

    return-object v0
.end method

.method static synthetic r()La/a/a/b/c;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/umeng/analytics/f/d;->g:La/a/a/b/c;

    return-object v0
.end method

.method static synthetic s()La/a/a/b/c;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/umeng/analytics/f/d;->h:La/a/a/b/c;

    return-object v0
.end method

.method static synthetic t()La/a/a/b/c;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/umeng/analytics/f/d;->i:La/a/a/b/c;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/umeng/analytics/f/d$e;
    .locals 1

    .prologue
    .line 306
    invoke-static {p1}, Lcom/umeng/analytics/f/d$e;->a(I)Lcom/umeng/analytics/f/d$e;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/umeng/analytics/f/d;
    .locals 1

    .prologue
    .line 188
    new-instance v0, Lcom/umeng/analytics/f/d;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/f/d;-><init>(Lcom/umeng/analytics/f/d;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/analytics/f/d;
    .locals 0

    .prologue
    .line 283
    iput-object p1, p0, Lcom/umeng/analytics/f/d;->c:Ljava/lang/String;

    .line 284
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/umeng/analytics/f/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/analytics/f/b;",
            ">;)",
            "Lcom/umeng/analytics/f/d;"
        }
    .end annotation

    .prologue
    .line 256
    iput-object p1, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    .line 257
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/umeng/analytics/f/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/f/c;",
            ">;)",
            "Lcom/umeng/analytics/f/d;"
        }
    .end annotation

    .prologue
    .line 214
    iput-object p1, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    .line 215
    return-object p0
.end method

.method public a(La/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/j;
        }
    .end annotation

    .prologue
    .line 311
    sget-object v0, Lcom/umeng/analytics/f/d;->j:Ljava/util/Map;

    invoke-virtual {p1}, La/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/c/b;

    invoke-interface {v0}, La/a/a/c/b;->b()La/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, La/a/a/c/a;->b(La/a/a/b/h;La/a/a/d;)V

    .line 312
    return-void
.end method

.method public a(Lcom/umeng/analytics/f/b;)V
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    if-nez v0, :cond_0

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/umeng/analytics/f/c;)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    .line 206
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 231
    if-nez p1, :cond_0

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    .line 234
    :cond_0
    return-void
.end method

.method public synthetic b(I)La/a/a/k;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/f/d;->a(I)Lcom/umeng/analytics/f/d$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 193
    iput-object v0, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    .line 194
    iput-object v0, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    .line 195
    iput-object v0, p0, Lcom/umeng/analytics/f/d;->c:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public b(La/a/a/b/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/j;
        }
    .end annotation

    .prologue
    .line 316
    sget-object v0, Lcom/umeng/analytics/f/d;->j:Ljava/util/Map;

    invoke-virtual {p1}, La/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/c/b;

    invoke-interface {v0}, La/a/a/c/b;->b()La/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, La/a/a/c/a;->a(La/a/a/b/h;La/a/a/d;)V

    .line 317
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 273
    if-nez p1, :cond_0

    .line 274
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    .line 276
    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 300
    if-nez p1, :cond_0

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/f/d;->c:Ljava/lang/String;

    .line 303
    :cond_0
    return-void
.end method

.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/f/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    return-object v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    .line 220
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public h()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/umeng/analytics/f/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    iget-object v0, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0
.end method

.method public i()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/umeng/analytics/f/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 252
    iget-object v0, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    return-object v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    .line 262
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/umeng/analytics/f/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public m()V
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/f/d;->c:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lcom/umeng/analytics/f/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/j;
        }
    .end annotation

    .prologue
    .line 359
    iget-object v0, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 360
    new-instance v0, La/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'snapshots\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 361
    invoke-virtual {p0}, Lcom/umeng/analytics/f/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 364
    :cond_0
    return-void
.end method

.method public synthetic p()La/a/a/d;
    .locals 1

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/umeng/analytics/f/d;->a()Lcom/umeng/analytics/f/d;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdTracking("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 324
    const-string v1, "snapshots:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    iget-object v1, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    if-nez v1, :cond_2

    .line 326
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    :goto_0
    invoke-virtual {p0}, Lcom/umeng/analytics/f/d;->k()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    const-string v1, "journals:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    iget-object v1, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    if-nez v1, :cond_3

    .line 336
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/umeng/analytics/f/d;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 344
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const-string v1, "checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    iget-object v1, p0, Lcom/umeng/analytics/f/d;->c:Ljava/lang/String;

    if-nez v1, :cond_4

    .line 347
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    :cond_1
    :goto_2
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 328
    :cond_2
    iget-object v1, p0, Lcom/umeng/analytics/f/d;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 338
    :cond_3
    iget-object v1, p0, Lcom/umeng/analytics/f/d;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 349
    :cond_4
    iget-object v1, p0, Lcom/umeng/analytics/f/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method
