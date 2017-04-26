.class public Lcom/umeng/analytics/f/e;
.super Ljava/lang/Object;
.source "Imprint.java"

# interfaces
.implements La/a/a/d;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/f/e$c;,
        Lcom/umeng/analytics/f/e$d;,
        Lcom/umeng/analytics/f/e$a;,
        Lcom/umeng/analytics/f/e$b;,
        Lcom/umeng/analytics/f/e$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/a/d",
        "<",
        "Lcom/umeng/analytics/f/e;",
        "Lcom/umeng/analytics/f/e$e;",
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
            "Lcom/umeng/analytics/f/e$e;",
            "La/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:J = 0x2780a889f75f91feL

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

.field private static final k:I


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/f/f;",
            ">;"
        }
    .end annotation
.end field

.field public b:I

.field public c:Ljava/lang/String;

.field private l:B


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v3, 0x0

    const/16 v12, 0xd

    const/16 v11, 0x8

    const/16 v10, 0xb

    const/4 v9, 0x1

    .line 25
    new-instance v0, La/a/a/b/m;

    const-string v1, "Imprint"

    invoke-direct {v0, v1}, La/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/f/e;->f:La/a/a/b/m;

    .line 28
    new-instance v0, La/a/a/b/c;

    const-string v1, "property"

    invoke-direct {v0, v1, v12, v9}, La/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/f/e;->g:La/a/a/b/c;

    .line 30
    new-instance v0, La/a/a/b/c;

    const-string v1, "version"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v11, v2}, La/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/f/e;->h:La/a/a/b/c;

    .line 32
    new-instance v0, La/a/a/b/c;

    const-string v1, "checksum"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v10, v2}, La/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/f/e;->i:La/a/a/b/c;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/f/e;->j:Ljava/util/Map;

    .line 39
    sget-object v0, Lcom/umeng/analytics/f/e;->j:Ljava/util/Map;

    const-class v1, La/a/a/c/c;

    new-instance v2, Lcom/umeng/analytics/f/e$b;

    invoke-direct {v2, v3}, Lcom/umeng/analytics/f/e$b;-><init>(Lcom/umeng/analytics/f/e$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/umeng/analytics/f/e;->j:Ljava/util/Map;

    const-class v1, La/a/a/c/d;

    new-instance v2, Lcom/umeng/analytics/f/e$d;

    invoke-direct {v2, v3}, Lcom/umeng/analytics/f/e$d;-><init>(Lcom/umeng/analytics/f/e$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/umeng/analytics/f/e$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 123
    sget-object v1, Lcom/umeng/analytics/f/e$e;->a:Lcom/umeng/analytics/f/e$e;

    new-instance v2, La/a/a/a/b;

    const-string v3, "property"

    new-instance v4, La/a/a/a/e;

    new-instance v5, La/a/a/a/c;

    invoke-direct {v5, v10}, La/a/a/a/c;-><init>(B)V

    new-instance v6, La/a/a/a/g;

    const/16 v7, 0xc

    const-class v8, Lcom/umeng/analytics/f/f;

    invoke-direct {v6, v7, v8}, La/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v4, v12, v5, v6}, La/a/a/a/e;-><init>(BLa/a/a/a/c;La/a/a/a/c;)V

    invoke-direct {v2, v3, v9, v4}, La/a/a/a/b;-><init>(Ljava/lang/String;BLa/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v1, Lcom/umeng/analytics/f/e$e;->b:Lcom/umeng/analytics/f/e$e;

    new-instance v2, La/a/a/a/b;

    const-string v3, "version"

    new-instance v4, La/a/a/a/c;

    invoke-direct {v4, v11}, La/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, La/a/a/a/b;-><init>(Ljava/lang/String;BLa/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v1, Lcom/umeng/analytics/f/e$e;->c:Lcom/umeng/analytics/f/e$e;

    new-instance v2, La/a/a/a/b;

    const-string v3, "checksum"

    new-instance v4, La/a/a/a/c;

    invoke-direct {v4, v10}, La/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v9, v4}, La/a/a/a/b;-><init>(Ljava/lang/String;BLa/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/f/e;->d:Ljava/util/Map;

    .line 140
    const-class v0, Lcom/umeng/analytics/f/e;

    sget-object v1, Lcom/umeng/analytics/f/e;->d:Ljava/util/Map;

    invoke-static {v0, v1}, La/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 141
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/f/e;->l:B

    .line 144
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/f/e;)V
    .locals 5

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/umeng/analytics/f/e;->l:B

    .line 158
    iget-byte v0, p1, Lcom/umeng/analytics/f/e;->l:B

    iput-byte v0, p0, Lcom/umeng/analytics/f/e;->l:B

    .line 159
    invoke-virtual {p1}, Lcom/umeng/analytics/f/e;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 160
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 161
    iget-object v0, p1, Lcom/umeng/analytics/f/e;->a:Ljava/util/Map;

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

    .line 163
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 164
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/f/f;

    .line 168
    new-instance v4, Lcom/umeng/analytics/f/f;

    invoke-direct {v4, v0}, Lcom/umeng/analytics/f/f;-><init>(Lcom/umeng/analytics/f/f;)V

    .line 170
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 172
    :cond_0
    iput-object v2, p0, Lcom/umeng/analytics/f/e;->a:Ljava/util/Map;

    .line 174
    :cond_1
    iget v0, p1, Lcom/umeng/analytics/f/e;->b:I

    iput v0, p0, Lcom/umeng/analytics/f/e;->b:I

    .line 175
    invoke-virtual {p1}, Lcom/umeng/analytics/f/e;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p1, Lcom/umeng/analytics/f/e;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/f/e;->c:Ljava/lang/String;

    .line 178
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/f/f;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/umeng/analytics/f/e;-><init>()V

    .line 148
    iput-object p1, p0, Lcom/umeng/analytics/f/e;->a:Ljava/util/Map;

    .line 149
    iput p2, p0, Lcom/umeng/analytics/f/e;->b:I

    .line 150
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/f/e;->b(Z)V

    .line 151
    iput-object p3, p0, Lcom/umeng/analytics/f/e;->c:Ljava/lang/String;

    .line 152
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
    .line 355
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lcom/umeng/analytics/f/e;->l:B

    .line 356
    new-instance v0, La/a/a/b/b;

    new-instance v1, La/a/a/d/a;

    invoke-direct {v1, p1}, La/a/a/d/a;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, La/a/a/b/b;-><init>(La/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/f/e;->a(La/a/a/b/h;)V
    :try_end_0
    .catch La/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    return-void

    .line 358
    :catch_0
    move-exception v0

    .line 359
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
    .line 344
    :try_start_0
    new-instance v0, La/a/a/b/b;

    new-instance v1, La/a/a/d/a;

    invoke-direct {v1, p1}, La/a/a/d/a;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, La/a/a/b/b;-><init>(La/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/f/e;->b(La/a/a/b/h;)V
    :try_end_0
    .catch La/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    return-void

    .line 346
    :catch_0
    move-exception v0

    .line 347
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, La/a/a/j;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic n()La/a/a/b/m;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/umeng/analytics/f/e;->f:La/a/a/b/m;

    return-object v0
.end method

.method static synthetic o()La/a/a/b/c;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/umeng/analytics/f/e;->g:La/a/a/b/c;

    return-object v0
.end method

.method static synthetic q()La/a/a/b/c;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/umeng/analytics/f/e;->h:La/a/a/b/c;

    return-object v0
.end method

.method static synthetic r()La/a/a/b/c;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/umeng/analytics/f/e;->i:La/a/a/b/c;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/umeng/analytics/f/e;
    .locals 1

    .prologue
    .line 181
    new-instance v0, Lcom/umeng/analytics/f/e;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/f/e;-><init>(Lcom/umeng/analytics/f/e;)V

    return-object v0
.end method

.method public a(I)Lcom/umeng/analytics/f/e;
    .locals 1

    .prologue
    .line 235
    iput p1, p0, Lcom/umeng/analytics/f/e;->b:I

    .line 236
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/f/e;->b(Z)V

    .line 237
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/analytics/f/e;
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/umeng/analytics/f/e;->c:Ljava/lang/String;

    .line 262
    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/umeng/analytics/f/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/umeng/analytics/f/f;",
            ">;)",
            "Lcom/umeng/analytics/f/e;"
        }
    .end annotation

    .prologue
    .line 208
    iput-object p1, p0, Lcom/umeng/analytics/f/e;->a:Ljava/util/Map;

    .line 209
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
    .line 289
    sget-object v0, Lcom/umeng/analytics/f/e;->j:Ljava/util/Map;

    invoke-virtual {p1}, La/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/c/b;

    invoke-interface {v0}, La/a/a/c/b;->b()La/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, La/a/a/c/a;->b(La/a/a/b/h;La/a/a/d;)V

    .line 290
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/umeng/analytics/f/f;)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/umeng/analytics/f/e;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 198
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/analytics/f/e;->a:Ljava/util/Map;

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/f/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 225
    if-nez p1, :cond_0

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/f/e;->a:Ljava/util/Map;

    .line 228
    :cond_0
    return-void
.end method

.method public synthetic b(I)La/a/a/k;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/f/e;->c(I)Lcom/umeng/analytics/f/e$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 186
    iput-object v1, p0, Lcom/umeng/analytics/f/e;->a:Ljava/util/Map;

    .line 187
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/f/e;->b(Z)V

    .line 188
    iput v0, p0, Lcom/umeng/analytics/f/e;->b:I

    .line 189
    iput-object v1, p0, Lcom/umeng/analytics/f/e;->c:Ljava/lang/String;

    .line 190
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
    .line 294
    sget-object v0, Lcom/umeng/analytics/f/e;->j:Ljava/util/Map;

    invoke-virtual {p1}, La/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/c/b;

    invoke-interface {v0}, La/a/a/c/b;->b()La/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, La/a/a/c/a;->a(La/a/a/b/h;La/a/a/d;)V

    .line 295
    return-void
.end method

.method public b(Z)V
    .locals 2

    .prologue
    .line 253
    iget-byte v0, p0, Lcom/umeng/analytics/f/e;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, La/a/a/a;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/f/e;->l:B

    .line 254
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/umeng/analytics/f/e;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/f/e;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_0
.end method

.method public c(I)Lcom/umeng/analytics/f/e$e;
    .locals 1

    .prologue
    .line 284
    invoke-static {p1}, Lcom/umeng/analytics/f/e$e;->a(I)Lcom/umeng/analytics/f/e$e;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 278
    if-nez p1, :cond_0

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/f/e;->c:Ljava/lang/String;

    .line 281
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
            "Lcom/umeng/analytics/f/f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/umeng/analytics/f/e;->a:Ljava/util/Map;

    return-object v0
.end method

.method public e()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/f/e;->a:Ljava/util/Map;

    .line 214
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/umeng/analytics/f/e;->a:Ljava/util/Map;

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
    .line 231
    iget v0, p0, Lcom/umeng/analytics/f/e;->b:I

    return v0
.end method

.method public h()V
    .locals 2

    .prologue
    .line 241
    iget-byte v0, p0, Lcom/umeng/analytics/f/e;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/f/e;->l:B

    .line 242
    return-void
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 249
    iget-byte v0, p0, Lcom/umeng/analytics/f/e;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/umeng/analytics/f/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public k()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/f/e;->c:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/umeng/analytics/f/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public m()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/j;
        }
    .end annotation

    .prologue
    .line 329
    iget-object v0, p0, Lcom/umeng/analytics/f/e;->a:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 330
    new-instance v0, La/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'property\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 331
    invoke-virtual {p0}, Lcom/umeng/analytics/f/e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 335
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/f/e;->c:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 336
    new-instance v0, La/a/a/b/i;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'checksum\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 337
    invoke-virtual {p0}, Lcom/umeng/analytics/f/e;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/a/a/b/i;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_1
    return-void
.end method

.method public synthetic p()La/a/a/d;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/umeng/analytics/f/e;->a()Lcom/umeng/analytics/f/e;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Imprint("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 302
    const-string v1, "property:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    iget-object v1, p0, Lcom/umeng/analytics/f/e;->a:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 304
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    :goto_0
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    const-string v1, "version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    iget v1, p0, Lcom/umeng/analytics/f/e;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    const-string v1, "checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    iget-object v1, p0, Lcom/umeng/analytics/f/e;->c:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 318
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    :goto_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/umeng/analytics/f/e;->a:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 320
    :cond_1
    iget-object v1, p0, Lcom/umeng/analytics/f/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
