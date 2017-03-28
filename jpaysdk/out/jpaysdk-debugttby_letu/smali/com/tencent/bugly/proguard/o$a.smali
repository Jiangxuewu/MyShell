.class final Lcom/tencent/bugly/proguard/o$a;
.super Ljava/lang/Thread;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/bugly/proguard/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/tencent/bugly/proguard/n;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/ContentValues;

.field private e:Z

.field private f:[Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:[Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:[Ljava/lang/String;

.field private o:I

.field private p:Ljava/lang/String;

.field private q:[B

.field private synthetic r:Lcom/tencent/bugly/proguard/o;


# direct methods
.method public constructor <init>(Lcom/tencent/bugly/proguard/o;ILcom/tencent/bugly/proguard/n;)V
    .locals 0

    .prologue
    .line 762
    iput-object p1, p0, Lcom/tencent/bugly/proguard/o$a;->r:Lcom/tencent/bugly/proguard/o;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 763
    iput p2, p0, Lcom/tencent/bugly/proguard/o$a;->a:I

    .line 764
    iput-object p3, p0, Lcom/tencent/bugly/proguard/o$a;->b:Lcom/tencent/bugly/proguard/n;

    .line 765
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;[B)V
    .locals 0

    .prologue
    .line 793
    iput p1, p0, Lcom/tencent/bugly/proguard/o$a;->o:I

    .line 794
    iput-object p2, p0, Lcom/tencent/bugly/proguard/o$a;->p:Ljava/lang/String;

    .line 795
    iput-object p3, p0, Lcom/tencent/bugly/proguard/o$a;->q:[B

    .line 796
    return-void
.end method

.method public final a(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 775
    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/o$a;->e:Z

    .line 776
    iput-object p2, p0, Lcom/tencent/bugly/proguard/o$a;->c:Ljava/lang/String;

    .line 777
    iput-object p3, p0, Lcom/tencent/bugly/proguard/o$a;->f:[Ljava/lang/String;

    .line 778
    iput-object p4, p0, Lcom/tencent/bugly/proguard/o$a;->g:Ljava/lang/String;

    .line 779
    iput-object p5, p0, Lcom/tencent/bugly/proguard/o$a;->h:[Ljava/lang/String;

    .line 780
    iput-object p6, p0, Lcom/tencent/bugly/proguard/o$a;->i:Ljava/lang/String;

    .line 781
    iput-object p7, p0, Lcom/tencent/bugly/proguard/o$a;->j:Ljava/lang/String;

    .line 782
    iput-object p8, p0, Lcom/tencent/bugly/proguard/o$a;->k:Ljava/lang/String;

    .line 783
    iput-object p9, p0, Lcom/tencent/bugly/proguard/o$a;->l:Ljava/lang/String;

    .line 784
    return-void
.end method

.method public final run()V
    .locals 11

    .prologue
    .line 809
    iget v0, p0, Lcom/tencent/bugly/proguard/o$a;->a:I

    packed-switch v0, :pswitch_data_0

    .line 828
    :goto_0
    return-void

    .line 811
    :pswitch_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/o$a;->r:Lcom/tencent/bugly/proguard/o;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/o$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/o$a;->d:Landroid/content/ContentValues;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/o$a;->b:Lcom/tencent/bugly/proguard/n;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/o;->a(Lcom/tencent/bugly/proguard/o;Ljava/lang/String;Landroid/content/ContentValues;Lcom/tencent/bugly/proguard/n;)J

    goto :goto_0

    .line 814
    :pswitch_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/o$a;->r:Lcom/tencent/bugly/proguard/o;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/o$a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/o$a;->m:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/o$a;->n:[Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/bugly/proguard/o$a;->b:Lcom/tencent/bugly/proguard/n;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/bugly/proguard/o;->a(Lcom/tencent/bugly/proguard/o;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/tencent/bugly/proguard/n;)I

    goto :goto_0

    .line 817
    :pswitch_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/o$a;->r:Lcom/tencent/bugly/proguard/o;

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/o$a;->e:Z

    iget-object v2, p0, Lcom/tencent/bugly/proguard/o$a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/o$a;->f:[Ljava/lang/String;

    iget-object v4, p0, Lcom/tencent/bugly/proguard/o$a;->g:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/bugly/proguard/o$a;->h:[Ljava/lang/String;

    iget-object v6, p0, Lcom/tencent/bugly/proguard/o$a;->i:Ljava/lang/String;

    iget-object v7, p0, Lcom/tencent/bugly/proguard/o$a;->j:Ljava/lang/String;

    iget-object v8, p0, Lcom/tencent/bugly/proguard/o$a;->k:Ljava/lang/String;

    iget-object v9, p0, Lcom/tencent/bugly/proguard/o$a;->l:Ljava/lang/String;

    iget-object v10, p0, Lcom/tencent/bugly/proguard/o$a;->b:Lcom/tencent/bugly/proguard/n;

    invoke-static/range {v0 .. v10}, Lcom/tencent/bugly/proguard/o;->a(Lcom/tencent/bugly/proguard/o;ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/n;)Landroid/database/Cursor;

    goto :goto_0

    .line 821
    :pswitch_3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/o$a;->r:Lcom/tencent/bugly/proguard/o;

    iget v1, p0, Lcom/tencent/bugly/proguard/o$a;->o:I

    iget-object v2, p0, Lcom/tencent/bugly/proguard/o$a;->p:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/o$a;->q:[B

    iget-object v4, p0, Lcom/tencent/bugly/proguard/o$a;->b:Lcom/tencent/bugly/proguard/n;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/bugly/proguard/o;->a(Lcom/tencent/bugly/proguard/o;ILjava/lang/String;[BLcom/tencent/bugly/proguard/n;)Z

    goto :goto_0

    .line 824
    :pswitch_4
    iget-object v0, p0, Lcom/tencent/bugly/proguard/o$a;->r:Lcom/tencent/bugly/proguard/o;

    iget v1, p0, Lcom/tencent/bugly/proguard/o$a;->o:I

    iget-object v2, p0, Lcom/tencent/bugly/proguard/o$a;->b:Lcom/tencent/bugly/proguard/n;

    invoke-static {v0, v1, v2}, Lcom/tencent/bugly/proguard/o;->a(Lcom/tencent/bugly/proguard/o;ILcom/tencent/bugly/proguard/n;)Ljava/util/Map;

    goto :goto_0

    .line 827
    :pswitch_5
    iget-object v0, p0, Lcom/tencent/bugly/proguard/o$a;->r:Lcom/tencent/bugly/proguard/o;

    iget v1, p0, Lcom/tencent/bugly/proguard/o$a;->o:I

    iget-object v2, p0, Lcom/tencent/bugly/proguard/o$a;->p:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/bugly/proguard/o$a;->b:Lcom/tencent/bugly/proguard/n;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/o;->a(Lcom/tencent/bugly/proguard/o;ILjava/lang/String;Lcom/tencent/bugly/proguard/n;)Z

    goto :goto_0

    .line 809
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
