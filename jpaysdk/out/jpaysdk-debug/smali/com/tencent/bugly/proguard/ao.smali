.class public final Lcom/tencent/bugly/proguard/ao;
.super Lcom/tencent/bugly/proguard/j;

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static m:Lcom/tencent/bugly/proguard/an;

.field private static n:Ljava/util/Map;

.field private static synthetic o:Z


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Lcom/tencent/bugly/proguard/an;

.field public g:Ljava/util/Map;

.field public h:J

.field public i:I

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/tencent/bugly/proguard/ao;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/tencent/bugly/proguard/ao;->o:Z

    new-instance v0, Lcom/tencent/bugly/proguard/an;

    invoke-direct {v0}, Lcom/tencent/bugly/proguard/an;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/ao;->m:Lcom/tencent/bugly/proguard/an;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/bugly/proguard/ao;->n:Ljava/util/Map;

    const-string v0, ""

    const-string v1, ""

    sget-object v2, Lcom/tencent/bugly/proguard/ao;->n:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/tencent/bugly/proguard/j;-><init>()V

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ao;->a:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ao;->b:Z

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ao;->c:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ao;->d:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ao;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/ao;->f:Lcom/tencent/bugly/proguard/an;

    iput-object v1, p0, Lcom/tencent/bugly/proguard/ao;->g:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ao;->h:J

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ao;->j:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ao;->k:Ljava/lang/String;

    iput v2, p0, Lcom/tencent/bugly/proguard/ao;->l:I

    iput v2, p0, Lcom/tencent/bugly/proguard/ao;->i:I

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/h;)V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v1}, Lcom/tencent/bugly/proguard/h;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ao;->a:Z

    invoke-virtual {p1, v1, v1}, Lcom/tencent/bugly/proguard/h;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ao;->b:Z

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/h;->a(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ao;->c:Z

    const/4 v0, 0x3

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ao;->d:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ao;->e:Ljava/lang/String;

    sget-object v0, Lcom/tencent/bugly/proguard/ao;->m:Lcom/tencent/bugly/proguard/an;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1, v3}, Lcom/tencent/bugly/proguard/h;->a(Lcom/tencent/bugly/proguard/j;IZ)Lcom/tencent/bugly/proguard/j;

    move-result-object v0

    check-cast v0, Lcom/tencent/bugly/proguard/an;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ao;->f:Lcom/tencent/bugly/proguard/an;

    sget-object v0, Lcom/tencent/bugly/proguard/ao;->n:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1, v3}, Lcom/tencent/bugly/proguard/h;->a(Ljava/lang/Object;IZ)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ao;->g:Ljava/util/Map;

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/ao;->h:J

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/h;->a(JIZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ao;->h:J

    const/16 v0, 0x8

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ao;->j:Ljava/lang/String;

    const/16 v0, 0x9

    invoke-virtual {p1, v0, v3}, Lcom/tencent/bugly/proguard/h;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/bugly/proguard/ao;->k:Ljava/lang/String;

    iget v0, p0, Lcom/tencent/bugly/proguard/ao;->l:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v3}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/proguard/ao;->l:I

    iget v0, p0, Lcom/tencent/bugly/proguard/ao;->i:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1, v3}, Lcom/tencent/bugly/proguard/h;->a(IIZ)I

    move-result v0

    iput v0, p0, Lcom/tencent/bugly/proguard/ao;->i:I

    return-void
.end method

.method public final a(Lcom/tencent/bugly/proguard/i;)V
    .locals 3

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/ao;->a:Z

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(ZI)V

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/ao;->b:Z

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(ZI)V

    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/ao;->c:Z

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(ZI)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ao;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ao;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ao;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ao;->e:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    :cond_1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ao;->f:Lcom/tencent/bugly/proguard/an;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ao;->f:Lcom/tencent/bugly/proguard/an;

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Lcom/tencent/bugly/proguard/j;I)V

    :cond_2
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ao;->g:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ao;->g:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/util/Map;I)V

    :cond_3
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/ao;->h:J

    const/4 v2, 0x7

    invoke-virtual {p1, v0, v1, v2}, Lcom/tencent/bugly/proguard/i;->a(JI)V

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ao;->j:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ao;->j:Ljava/lang/String;

    const/16 v1, 0x8

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    :cond_4
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ao;->k:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/tencent/bugly/proguard/ao;->k:Ljava/lang/String;

    const/16 v1, 0x9

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(Ljava/lang/String;I)V

    :cond_5
    iget v0, p0, Lcom/tencent/bugly/proguard/ao;->l:I

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(II)V

    iget v0, p0, Lcom/tencent/bugly/proguard/ao;->i:I

    const/16 v1, 0xb

    invoke-virtual {p1, v0, v1}, Lcom/tencent/bugly/proguard/i;->a(II)V

    return-void
.end method

.method public final a(Ljava/lang/StringBuilder;I)V
    .locals 4

    new-instance v0, Lcom/tencent/bugly/crashreport/crash/jni/b;

    invoke-direct {v0, p1, p2}, Lcom/tencent/bugly/crashreport/crash/jni/b;-><init>(Ljava/lang/StringBuilder;I)V

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/ao;->a:Z

    const-string v2, "enable"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(ZLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/ao;->b:Z

    const-string v2, "enableUserInfo"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(ZLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/ao;->c:Z

    const-string v2, "enableQuery"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(ZLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ao;->d:Ljava/lang/String;

    const-string v2, "url"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ao;->e:Ljava/lang/String;

    const-string v2, "expUrl"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ao;->f:Lcom/tencent/bugly/proguard/an;

    const-string v2, "security"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Lcom/tencent/bugly/proguard/j;Ljava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ao;->g:Ljava/util/Map;

    const-string v2, "valueMap"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(Ljava/util/Map;Ljava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/ao;->h:J

    const-string v1, "strategylastUpdateTime"

    invoke-virtual {v0, v2, v3, v1}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(JLjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ao;->j:Ljava/lang/String;

    const-string v2, "httpsUrl"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ao;->k:Ljava/lang/String;

    const-string v2, "httpsExpUrl"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    iget v1, p0, Lcom/tencent/bugly/proguard/ao;->l:I

    const-string v2, "eventRecordCount"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(ILjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    iget v1, p0, Lcom/tencent/bugly/proguard/ao;->i:I

    const-string v2, "eventTimeInterval"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/crashreport/crash/jni/b;->a(ILjava/lang/String;)Lcom/tencent/bugly/crashreport/crash/jni/b;

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    sget-boolean v1, Lcom/tencent/bugly/proguard/ao;->o:Z

    if-nez v1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    check-cast p1, Lcom/tencent/bugly/proguard/ao;

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/ao;->a:Z

    iget-boolean v2, p1, Lcom/tencent/bugly/proguard/ao;->a:Z

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/k;->a(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/ao;->b:Z

    iget-boolean v2, p1, Lcom/tencent/bugly/proguard/ao;->b:Z

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/k;->a(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/tencent/bugly/proguard/ao;->c:Z

    iget-boolean v2, p1, Lcom/tencent/bugly/proguard/ao;->c:Z

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/k;->a(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ao;->d:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/ao;->d:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ao;->e:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/ao;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ao;->f:Lcom/tencent/bugly/proguard/an;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/ao;->f:Lcom/tencent/bugly/proguard/an;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ao;->g:Ljava/util/Map;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/ao;->g:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/ao;->h:J

    iget-wide v4, p1, Lcom/tencent/bugly/proguard/ao;->h:J

    invoke-static {v2, v3, v4, v5}, Lcom/tencent/bugly/proguard/k;->a(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ao;->j:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/ao;->j:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ao;->k:Ljava/lang/String;

    iget-object v2, p1, Lcom/tencent/bugly/proguard/ao;->k:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/bugly/proguard/ao;->l:I

    iget v2, p1, Lcom/tencent/bugly/proguard/ao;->l:I

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/k;->a(II)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/tencent/bugly/proguard/ao;->i:I

    iget v2, p1, Lcom/tencent/bugly/proguard/ao;->i:I

    invoke-static {v1, v2}, Lcom/tencent/bugly/proguard/k;->a(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Need define key first!"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method
