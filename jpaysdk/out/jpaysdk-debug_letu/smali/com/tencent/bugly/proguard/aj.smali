.class public final Lcom/tencent/bugly/proguard/aj;
.super Lcom/tencent/bugly/proguard/j;


# static fields
.field private static A:Ljava/util/ArrayList;

.field private static B:Ljava/util/Map;

.field private static C:Ljava/util/Map;

.field private static v:Ljava/util/Map;

.field private static w:Lcom/tencent/bugly/proguard/ah;

.field private static x:Lcom/tencent/bugly/proguard/ag;

.field private static y:Ljava/util/ArrayList;

.field private static z:Ljava/util/ArrayList;


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/util/Map;

.field public i:Ljava/lang/String;

.field public j:Lcom/tencent/bugly/proguard/ah;

.field public k:I

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Lcom/tencent/bugly/proguard/ag;

.field public o:Ljava/util/ArrayList;

.field public p:Ljava/util/ArrayList;

.field public q:Ljava/util/ArrayList;

.field public r:Ljava/util/Map;

.field public s:Ljava/util/Map;

.field public t:Ljava/lang/String;

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/aj;->v:Ljava/util/Map;

    const-string v0, ""

    const-string v1, ""

    sget-object v2, Lcom/tencent/bugly/proguard/aj;->v:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/tencent/bugly/proguard/ah;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ah;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/aj;->w:Lcom/tencent/bugly/proguard/ah;

    new-instance v0, Lcom/tencent/bugly/proguard/ag;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ag;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/aj;->x:Lcom/tencent/bugly/proguard/ag;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/aj;->y:Ljava/util/ArrayList;

    new-instance v0, Lcom/tencent/bugly/proguard/ag;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ag;-><init>()V

    sget-object v1, Lcom/tencent/bugly/proguard/aj;->y:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/aj;->z:Ljava/util/ArrayList;

    new-instance v0, Lcom/tencent/bugly/proguard/ag;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ag;-><init>()V

    sget-object v1, Lcom/tencent/bugly/proguard/aj;->z:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/aj;->A:Ljava/util/ArrayList;

    new-instance v0, Lcom/tencent/bugly/proguard/ai;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/ai;-><init>()V

    sget-object v1, Lcom/tencent/bugly/proguard/aj;->A:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/aj;->B:Ljava/util/Map;

    const-string v0, ""

    const-string v1, ""

    sget-object v2, Lcom/tencent/bugly/proguard/aj;->B:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/aj;->C:Ljava/util/Map;

    const-string v0, ""

    const-string v1, ""

    sget-object v2, Lcom/tencent/bugly/proguard/aj;->C:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/j;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->a:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/aj;->b:J

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->c:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->e:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->g:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/bugly/proguard/aj;->h:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->i:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/bugly/proguard/aj;->j:Lcom/tencent/bugly/proguard/ah;

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/bugly/proguard/aj;->k:I

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->l:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->m:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/bugly/proguard/aj;->n:Lcom/tencent/bugly/proguard/ag;

    iput-object v2, p0, Lcom/tencent/bugly/proguard/aj;->o:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/tencent/bugly/proguard/aj;->p:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/tencent/bugly/proguard/aj;->q:Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/tencent/bugly/proguard/aj;->r:Ljava/util/Map;

    iput-object v2, p0, Lcom/tencent/bugly/proguard/aj;->s:Ljava/util/Map;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->t:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/aj;->u:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/h;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->a:Ljava/lang/String;

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/aj;->b:J

    invoke-virtual {p1, v0, v1, v3, v3}, Lcom/tencent/bugly/proguard/h;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/aj;->b:J

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->c:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->d:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->e:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->f:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->g:Ljava/lang/String;

    sget-object v0, Lcom/tencent/bugly/proguard/aj;->v:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->h:Ljava/util/Map;

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->i:Ljava/lang/String;

    sget-object v0, Lcom/tencent/bugly/proguard/aj;->w:Lcom/tencent/bugly/proguard/ah;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/j;IZ)Lcom/tencent/bugly/proguard/j;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/ah;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->j:Lcom/tencent/bugly/proguard/ah;

    iget v0, p0, Lcom/tencent/bugly/proguard/aj;->k:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/proguard/aj;->k:I

    const/16 v0, 0xb

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->l:Ljava/lang/String;

    const/16 v0, 0xc

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->m:Ljava/lang/String;

    sget-object v0, Lcom/tencent/bugly/proguard/aj;->x:Lcom/tencent/bugly/proguard/ag;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/j;IZ)Lcom/tencent/bugly/proguard/j;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/ag;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->n:Lcom/tencent/bugly/proguard/ag;

    sget-object v0, Lcom/tencent/bugly/proguard/aj;->y:Ljava/util/ArrayList;

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->o:Ljava/util/ArrayList;

    sget-object v0, Lcom/tencent/bugly/proguard/aj;->z:Ljava/util/ArrayList;

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->p:Ljava/util/ArrayList;

    sget-object v0, Lcom/tencent/bugly/proguard/aj;->A:Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->q:Ljava/util/ArrayList;

    sget-object v0, Lcom/tencent/bugly/proguard/aj;->B:Ljava/util/Map;

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->r:Ljava/util/Map;

    sget-object v0, Lcom/tencent/bugly/proguard/aj;->C:Ljava/util/Map;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->s:Ljava/util/Map;

    const/16 v0, 0x13

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/aj;->t:Ljava/lang/String;

    const/16 v0, 0x14

    invoke-virtual {p1, v0, v2}, Lcom/tencent/bugly/proguard/h;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/aj;->u:Z

    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/i;)V
    .locals 3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/aj;->b:J

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(JI)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->e:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->f:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->f:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->g:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->g:Ljava/lang/String;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    :cond_3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->h:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->h:Ljava/util/Map;

    const/4 v1, 0x7

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/util/Map;I)V

    :cond_4
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->i:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->i:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    :cond_5
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->j:Lcom/tencent/bugly/proguard/ah;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->j:Lcom/tencent/bugly/proguard/ah;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/j;I)V

    :cond_6
    iget v0, p0, Lcom/tencent/bugly/proguard/aj;->k:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(II)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->l:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->l:Ljava/lang/String;

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    :cond_7
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->m:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->m:Ljava/lang/String;

    const/16 v1, 0xc

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    :cond_8
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->n:Lcom/tencent/bugly/proguard/ag;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->n:Lcom/tencent/bugly/proguard/ag;

    const/16 v1, 0xd

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/j;I)V

    :cond_9
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->o:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->o:Ljava/util/ArrayList;

    const/16 v1, 0xe

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/util/Collection;I)V

    :cond_a
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->p:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->p:Ljava/util/ArrayList;

    const/16 v1, 0xf

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/util/Collection;I)V

    :cond_b
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->q:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->q:Ljava/util/ArrayList;

    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/util/Collection;I)V

    :cond_c
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->r:Ljava/util/Map;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->r:Ljava/util/Map;

    const/16 v1, 0x11

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/util/Map;I)V

    :cond_d
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->s:Ljava/util/Map;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->s:Ljava/util/Map;

    const/16 v1, 0x12

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/util/Map;I)V

    :cond_e
    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->t:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/bugly/proguard/aj;->t:Ljava/lang/String;

    const/16 v1, 0x13

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    :cond_f
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/aj;->u:Z

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(ZI)V

    return-void
.end method
