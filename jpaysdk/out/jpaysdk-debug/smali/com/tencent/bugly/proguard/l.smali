.class public final Lcom/tencent/bugly/proguard/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# instance fields
.field public a:J

.field public b:Ljava/lang/String;

.field public c:J

.field public d:I

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/tencent/bugly/proguard/l;

    iget-wide v0, p0, Lcom/tencent/bugly/proguard/l;->c:J

    iget-wide v2, p1, Lcom/tencent/bugly/proguard/l;->c:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
