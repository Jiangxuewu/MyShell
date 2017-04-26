.class public Lcom/umeng/analytics/f/g;
.super Ljava/lang/Object;
.source "Response.java"

# interfaces
.implements La/a/a/d;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/analytics/f/g$c;,
        Lcom/umeng/analytics/f/g$d;,
        Lcom/umeng/analytics/f/g$a;,
        Lcom/umeng/analytics/f/g$b;,
        Lcom/umeng/analytics/f/g$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/a/a/d",
        "<",
        "Lcom/umeng/analytics/f/g;",
        "Lcom/umeng/analytics/f/g$e;",
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
            "Lcom/umeng/analytics/f/g$e;",
            "La/a/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:J = -0x3f22482b0751777fL

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
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Lcom/umeng/analytics/f/e;

.field private l:B

.field private m:[Lcom/umeng/analytics/f/g$e;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/16 v9, 0xc

    const/16 v8, 0xb

    const/16 v7, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x2

    .line 26
    new-instance v0, La/a/a/b/m;

    const-string v1, "Response"

    invoke-direct {v0, v1}, La/a/a/b/m;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/analytics/f/g;->f:La/a/a/b/m;

    .line 29
    new-instance v0, La/a/a/b/c;

    const-string v1, "resp_code"

    invoke-direct {v0, v1, v7, v5}, La/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/f/g;->g:La/a/a/b/c;

    .line 31
    new-instance v0, La/a/a/b/c;

    const-string v1, "msg"

    invoke-direct {v0, v1, v8, v6}, La/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/f/g;->h:La/a/a/b/c;

    .line 33
    new-instance v0, La/a/a/b/c;

    const-string v1, "imprint"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v9, v2}, La/a/a/b/c;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/analytics/f/g;->i:La/a/a/b/c;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/analytics/f/g;->j:Ljava/util/Map;

    .line 40
    sget-object v0, Lcom/umeng/analytics/f/g;->j:Ljava/util/Map;

    const-class v1, La/a/a/c/c;

    new-instance v2, Lcom/umeng/analytics/f/g$b;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/umeng/analytics/f/g$b;-><init>(Lcom/umeng/analytics/f/g$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/umeng/analytics/f/g;->j:Ljava/util/Map;

    const-class v1, La/a/a/c/d;

    new-instance v2, Lcom/umeng/analytics/f/g$d;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/umeng/analytics/f/g$d;-><init>(Lcom/umeng/analytics/f/g$1;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/umeng/analytics/f/g$e;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 126
    sget-object v1, Lcom/umeng/analytics/f/g$e;->a:Lcom/umeng/analytics/f/g$e;

    new-instance v2, La/a/a/a/b;

    const-string v3, "resp_code"

    new-instance v4, La/a/a/a/c;

    invoke-direct {v4, v7}, La/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v5, v4}, La/a/a/a/b;-><init>(Ljava/lang/String;BLa/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v1, Lcom/umeng/analytics/f/g$e;->b:Lcom/umeng/analytics/f/g$e;

    new-instance v2, La/a/a/a/b;

    const-string v3, "msg"

    new-instance v4, La/a/a/a/c;

    invoke-direct {v4, v8}, La/a/a/a/c;-><init>(B)V

    invoke-direct {v2, v3, v6, v4}, La/a/a/a/b;-><init>(Ljava/lang/String;BLa/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v1, Lcom/umeng/analytics/f/g$e;->c:Lcom/umeng/analytics/f/g$e;

    new-instance v2, La/a/a/a/b;

    const-string v3, "imprint"

    new-instance v4, La/a/a/a/g;

    const-class v5, Lcom/umeng/analytics/f/e;

    invoke-direct {v4, v9, v5}, La/a/a/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v2, v3, v6, v4}, La/a/a/a/b;-><init>(Ljava/lang/String;BLa/a/a/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/f/g;->d:Ljava/util/Map;

    .line 139
    const-class v0, Lcom/umeng/analytics/f/g;

    sget-object v1, Lcom/umeng/analytics/f/g;->d:Ljava/util/Map;

    invoke-static {v0, v1}, La/a/a/a/b;->a(Ljava/lang/Class;Ljava/util/Map;)V

    .line 140
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-byte v2, p0, Lcom/umeng/analytics/f/g;->l:B

    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/umeng/analytics/f/g$e;

    sget-object v1, Lcom/umeng/analytics/f/g$e;->b:Lcom/umeng/analytics/f/g$e;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/umeng/analytics/f/g$e;->c:Lcom/umeng/analytics/f/g$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/umeng/analytics/f/g;->m:[Lcom/umeng/analytics/f/g$e;

    .line 143
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/umeng/analytics/f/g;-><init>()V

    .line 147
    iput p1, p0, Lcom/umeng/analytics/f/g;->a:I

    .line 148
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/f/g;->a(Z)V

    .line 149
    return-void
.end method

.method public constructor <init>(Lcom/umeng/analytics/f/g;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-byte v2, p0, Lcom/umeng/analytics/f/g;->l:B

    .line 119
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/umeng/analytics/f/g$e;

    sget-object v1, Lcom/umeng/analytics/f/g$e;->b:Lcom/umeng/analytics/f/g$e;

    aput-object v1, v0, v2

    const/4 v1, 0x1

    sget-object v2, Lcom/umeng/analytics/f/g$e;->c:Lcom/umeng/analytics/f/g$e;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/umeng/analytics/f/g;->m:[Lcom/umeng/analytics/f/g$e;

    .line 155
    iget-byte v0, p1, Lcom/umeng/analytics/f/g;->l:B

    iput-byte v0, p0, Lcom/umeng/analytics/f/g;->l:B

    .line 156
    iget v0, p1, Lcom/umeng/analytics/f/g;->a:I

    iput v0, p0, Lcom/umeng/analytics/f/g;->a:I

    .line 157
    invoke-virtual {p1}, Lcom/umeng/analytics/f/g;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p1, Lcom/umeng/analytics/f/g;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/analytics/f/g;->b:Ljava/lang/String;

    .line 160
    :cond_0
    invoke-virtual {p1}, Lcom/umeng/analytics/f/g;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    new-instance v0, Lcom/umeng/analytics/f/e;

    iget-object v1, p1, Lcom/umeng/analytics/f/g;->c:Lcom/umeng/analytics/f/e;

    invoke-direct {v0, v1}, Lcom/umeng/analytics/f/e;-><init>(Lcom/umeng/analytics/f/e;)V

    iput-object v0, p0, Lcom/umeng/analytics/f/g;->c:Lcom/umeng/analytics/f/e;

    .line 163
    :cond_1
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
    .line 328
    const/4 v0, 0x0

    :try_start_0
    iput-byte v0, p0, Lcom/umeng/analytics/f/g;->l:B

    .line 329
    new-instance v0, La/a/a/b/b;

    new-instance v1, La/a/a/d/a;

    invoke-direct {v1, p1}, La/a/a/d/a;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, La/a/a/b/b;-><init>(La/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/f/g;->a(La/a/a/b/h;)V
    :try_end_0
    .catch La/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 334
    return-void

    .line 331
    :catch_0
    move-exception v0

    .line 332
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
    .line 317
    :try_start_0
    new-instance v0, La/a/a/b/b;

    new-instance v1, La/a/a/d/a;

    invoke-direct {v1, p1}, La/a/a/d/a;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, La/a/a/b/b;-><init>(La/a/a/d/c;)V

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/f/g;->b(La/a/a/b/h;)V
    :try_end_0
    .catch La/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, La/a/a/j;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic m()La/a/a/b/m;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/umeng/analytics/f/g;->f:La/a/a/b/m;

    return-object v0
.end method

.method static synthetic n()La/a/a/b/c;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/umeng/analytics/f/g;->g:La/a/a/b/c;

    return-object v0
.end method

.method static synthetic o()La/a/a/b/c;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/umeng/analytics/f/g;->h:La/a/a/b/c;

    return-object v0
.end method

.method static synthetic q()La/a/a/b/c;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/umeng/analytics/f/g;->i:La/a/a/b/c;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/umeng/analytics/f/g;
    .locals 1

    .prologue
    .line 166
    new-instance v0, Lcom/umeng/analytics/f/g;

    invoke-direct {v0, p0}, Lcom/umeng/analytics/f/g;-><init>(Lcom/umeng/analytics/f/g;)V

    return-object v0
.end method

.method public a(I)Lcom/umeng/analytics/f/g;
    .locals 1

    .prologue
    .line 182
    iput p1, p0, Lcom/umeng/analytics/f/g;->a:I

    .line 183
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/umeng/analytics/f/g;->a(Z)V

    .line 184
    return-object p0
.end method

.method public a(Lcom/umeng/analytics/f/e;)Lcom/umeng/analytics/f/g;
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lcom/umeng/analytics/f/g;->c:Lcom/umeng/analytics/f/e;

    .line 236
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/analytics/f/g;
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/umeng/analytics/f/g;->b:Ljava/lang/String;

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
    .line 263
    sget-object v0, Lcom/umeng/analytics/f/g;->j:Ljava/util/Map;

    invoke-virtual {p1}, La/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/c/b;

    invoke-interface {v0}, La/a/a/c/b;->b()La/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, La/a/a/c/a;->b(La/a/a/b/h;La/a/a/d;)V

    .line 264
    return-void
.end method

.method public a(Z)V
    .locals 2

    .prologue
    .line 200
    iget-byte v0, p0, Lcom/umeng/analytics/f/g;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, La/a/a/a;->a(BIZ)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/f/g;->l:B

    .line 201
    return-void
.end method

.method public synthetic b(I)La/a/a/k;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/umeng/analytics/f/g;->c(I)Lcom/umeng/analytics/f/g$e;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 171
    invoke-virtual {p0, v0}, Lcom/umeng/analytics/f/g;->a(Z)V

    .line 172
    iput v0, p0, Lcom/umeng/analytics/f/g;->a:I

    .line 173
    iput-object v1, p0, Lcom/umeng/analytics/f/g;->b:Ljava/lang/String;

    .line 174
    iput-object v1, p0, Lcom/umeng/analytics/f/g;->c:Lcom/umeng/analytics/f/e;

    .line 175
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
    .line 268
    sget-object v0, Lcom/umeng/analytics/f/g;->j:Ljava/util/Map;

    invoke-virtual {p1}, La/a/a/b/h;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La/a/a/c/b;

    invoke-interface {v0}, La/a/a/c/b;->b()La/a/a/c/a;

    move-result-object v0

    invoke-interface {v0, p1, p0}, La/a/a/c/a;->a(La/a/a/b/h;La/a/a/d;)V

    .line 269
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 225
    if-nez p1, :cond_0

    .line 226
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/f/g;->b:Ljava/lang/String;

    .line 228
    :cond_0
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/umeng/analytics/f/g;->a:I

    return v0
.end method

.method public c(I)Lcom/umeng/analytics/f/g$e;
    .locals 1

    .prologue
    .line 258
    invoke-static {p1}, Lcom/umeng/analytics/f/g$e;->a(I)Lcom/umeng/analytics/f/g$e;

    move-result-object v0

    return-object v0
.end method

.method public c(Z)V
    .locals 1

    .prologue
    .line 252
    if-nez p1, :cond_0

    .line 253
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/f/g;->c:Lcom/umeng/analytics/f/e;

    .line 255
    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 188
    iget-byte v0, p0, Lcom/umeng/analytics/f/g;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/a/a/a;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/analytics/f/g;->l:B

    .line 189
    return-void
.end method

.method public e()Z
    .locals 2

    .prologue
    .line 196
    iget-byte v0, p0, Lcom/umeng/analytics/f/g;->l:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/a/a/a;->a(BI)Z

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/umeng/analytics/f/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public g()V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/f/g;->b:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/umeng/analytics/f/g;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Lcom/umeng/analytics/f/e;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/umeng/analytics/f/g;->c:Lcom/umeng/analytics/f/e;

    return-object v0
.end method

.method public j()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/umeng/analytics/f/g;->c:Lcom/umeng/analytics/f/e;

    .line 241
    return-void
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/umeng/analytics/f/g;->c:Lcom/umeng/analytics/f/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            La/a/a/j;
        }
    .end annotation

    .prologue
    .line 310
    iget-object v0, p0, Lcom/umeng/analytics/f/g;->c:Lcom/umeng/analytics/f/e;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/umeng/analytics/f/g;->c:Lcom/umeng/analytics/f/e;

    invoke-virtual {v0}, Lcom/umeng/analytics/f/e;->m()V

    .line 313
    :cond_0
    return-void
.end method

.method public synthetic p()La/a/a/d;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/umeng/analytics/f/g;->a()Lcom/umeng/analytics/f/g;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    const-string v1, "resp_code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    iget v1, p0, Lcom/umeng/analytics/f/g;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    invoke-virtual {p0}, Lcom/umeng/analytics/f/g;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string v1, "msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    iget-object v1, p0, Lcom/umeng/analytics/f/g;->b:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 284
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/umeng/analytics/f/g;->k()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const-string v1, "imprint:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget-object v1, p0, Lcom/umeng/analytics/f/g;->c:Lcom/umeng/analytics/f/e;

    if-nez v1, :cond_3

    .line 295
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :cond_1
    :goto_1
    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 286
    :cond_2
    iget-object v1, p0, Lcom/umeng/analytics/f/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 297
    :cond_3
    iget-object v1, p0, Lcom/umeng/analytics/f/g;->c:Lcom/umeng/analytics/f/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
