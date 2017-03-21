.class final Lcom/tencent/bugly/proguard/at;
.super Ljava/lang/Thread;


# instance fields
.field private a:I

.field private b:Lcom/tencent/bugly/proguard/n;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:[Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:[Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:[B

.field private synthetic o:Lcom/tencent/bugly/proguard/o;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/o;ILcom/tencent/bugly/proguard/n;)V
    .locals 1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/at;->o:Lcom/tencent/bugly/proguard/o;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/tencent/bugly/proguard/at;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/at;->b:Lcom/tencent/bugly/proguard/n;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;[B)V
    .locals 0

    iput p1, p0, Lcom/tencent/bugly/proguard/at;->l:I

    iput-object p2, p0, Lcom/tencent/bugly/proguard/at;->m:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/bugly/proguard/at;->n:[B

    return-void
.end method

.method public final run()V
    .locals 11

    const/4 v3, 0x0

    iget v0, p0, Lcom/tencent/bugly/proguard/at;->a:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->o:Lcom/tencent/bugly/proguard/o;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/at;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/at;->b:Lcom/tencent/bugly/proguard/n;

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/bugly/proguard/o;->a(Lcom/tencent/bugly/proguard/o;Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/n;)J

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->o:Lcom/tencent/bugly/proguard/o;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/at;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/at;->b:Lcom/tencent/bugly/proguard/n;

    invoke-static {v0, v1, v3, v3, v2}, Lcom/tencent/bugly/proguard/o;->a(Lcom/tencent/bugly/proguard/o;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/n;)I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->o:Lcom/tencent/bugly/proguard/o;

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/at;->d:Z

    iget-object v2, p0, Lcom/tencent/bugly/proguard/at;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/at;->e:[Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/bugly/proguard/at;->f:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/bugly/proguard/at;->g:[Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/bugly/proguard/at;->h:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/bugly/proguard/at;->i:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/bugly/proguard/at;->j:Ljava/lang/String;

    iget-object v9, p0, Lcom/tencent/bugly/proguard/at;->k:Ljava/lang/String;

    iget-object v10, p0, Lcom/tencent/bugly/proguard/at;->b:Lcom/tencent/bugly/proguard/n;

    invoke-static/range {v0 .. v10}, Lcom/tencent/bugly/proguard/o;->a(Lcom/tencent/bugly/proguard/o;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/n;)Landroid/database/Cursor;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->o:Lcom/tencent/bugly/proguard/o;

    iget v1, p0, Lcom/tencent/bugly/proguard/at;->l:I

    iget-object v2, p0, Lcom/tencent/bugly/proguard/at;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/at;->n:[B

    iget-object v4, p0, Lcom/tencent/bugly/proguard/at;->b:Lcom/tencent/bugly/proguard/n;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/bugly/proguard/o;->a(Lcom/tencent/bugly/proguard/o;ILjava/lang/String;[BLcom/tencent/bugly/proguard/n;)Z

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->o:Lcom/tencent/bugly/proguard/o;

    iget v1, p0, Lcom/tencent/bugly/proguard/at;->l:I

    iget-object v2, p0, Lcom/tencent/bugly/proguard/at;->b:Lcom/tencent/bugly/proguard/n;

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/o;->a(Lcom/tencent/bugly/proguard/o;ILcom/tencent/bugly/proguard/n;)Ljava/util/Map;

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/tencent/bugly/proguard/at;->o:Lcom/tencent/bugly/proguard/o;

    iget v1, p0, Lcom/tencent/bugly/proguard/at;->l:I

    iget-object v2, p0, Lcom/tencent/bugly/proguard/at;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/at;->b:Lcom/tencent/bugly/proguard/n;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/o;->a(Lcom/tencent/bugly/proguard/o;ILjava/lang/String;Lcom/tencent/bugly/proguard/n;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
