.class public Lu/aly/ce;
.super Lu/aly/cl;


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x3

.field public static final e:I = 0x4

.field public static final f:I = 0x5

.field public static final g:I = 0x6

.field public static final h:I = 0x7

.field private static final j:Lu/aly/dj;

.field private static final k:Lu/aly/cz;

.field private static final l:Lu/aly/cz;

.field private static final m:J = 0x1L


# instance fields
.field protected i:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lu/aly/dj;

    const-string v1, "TApplicationException"

    invoke-direct {v0, v1}, Lu/aly/dj;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu/aly/ce;->j:Lu/aly/dj;

    new-instance v0, Lu/aly/cz;

    const-string v1, "message"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lu/aly/cz;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ce;->k:Lu/aly/cz;

    new-instance v0, Lu/aly/cz;

    const-string v1, "type"

    const/16 v2, 0x8

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lu/aly/cz;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lu/aly/ce;->l:Lu/aly/cz;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lu/aly/cl;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lu/aly/ce;->i:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lu/aly/cl;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lu/aly/ce;->i:I

    iput p1, p0, Lu/aly/ce;->i:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p2}, Lu/aly/cl;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lu/aly/ce;->i:I

    iput p1, p0, Lu/aly/ce;->i:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lu/aly/cl;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lu/aly/ce;->i:I

    return-void
.end method

.method public static a(Lu/aly/de;)Lu/aly/ce;
    .locals 5

    invoke-virtual {p0}, Lu/aly/de;->j()Lu/aly/dj;

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lu/aly/de;->l()Lu/aly/cz;

    move-result-object v2

    iget-byte v3, v2, Lu/aly/cz;->b:B

    if-eqz v3, :cond_2

    iget-short v3, v2, Lu/aly/cz;->c:S

    packed-switch v3, :pswitch_data_0

    iget-byte v2, v2, Lu/aly/cz;->b:B

    invoke-static {p0, v2}, Lu/aly/dh;->a(Lu/aly/de;B)V

    :goto_1
    invoke-virtual {p0}, Lu/aly/de;->m()V

    goto :goto_0

    :pswitch_0
    iget-byte v3, v2, Lu/aly/cz;->b:B

    const/16 v4, 0xb

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lu/aly/de;->z()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    iget-byte v2, v2, Lu/aly/cz;->b:B

    invoke-static {p0, v2}, Lu/aly/dh;->a(Lu/aly/de;B)V

    goto :goto_1

    :pswitch_1
    iget-byte v3, v2, Lu/aly/cz;->b:B

    const/16 v4, 0x8

    if-ne v3, v4, :cond_1

    invoke-virtual {p0}, Lu/aly/de;->w()I

    move-result v0

    goto :goto_1

    :cond_1
    iget-byte v2, v2, Lu/aly/cz;->b:B

    invoke-static {p0, v2}, Lu/aly/dh;->a(Lu/aly/de;B)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lu/aly/de;->k()V

    new-instance v2, Lu/aly/ce;

    invoke-direct {v2, v0, v1}, Lu/aly/ce;-><init>(ILjava/lang/String;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lu/aly/ce;->i:I

    return v0
.end method

.method public b(Lu/aly/de;)V
    .locals 1

    sget-object v0, Lu/aly/ce;->j:Lu/aly/dj;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/dj;)V

    invoke-virtual {p0}, Lu/aly/ce;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lu/aly/ce;->k:Lu/aly/cz;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/cz;)V

    invoke-virtual {p0}, Lu/aly/ce;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lu/aly/de;->c()V

    :cond_0
    sget-object v0, Lu/aly/ce;->l:Lu/aly/cz;

    invoke-virtual {p1, v0}, Lu/aly/de;->a(Lu/aly/cz;)V

    iget v0, p0, Lu/aly/ce;->i:I

    invoke-virtual {p1, v0}, Lu/aly/de;->a(I)V

    invoke-virtual {p1}, Lu/aly/de;->c()V

    invoke-virtual {p1}, Lu/aly/de;->d()V

    invoke-virtual {p1}, Lu/aly/de;->b()V

    return-void
.end method
