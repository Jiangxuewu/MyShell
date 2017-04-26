.class Lcom/umeng/analytics/a/d/a$3;
.super Lcom/umeng/analytics/a/b/a;
.source "UMCCAggregatedManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/a/d/a;->o()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/a/d/a;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/a/d/a;)V
    .locals 0

    .prologue
    .line 444
    iput-object p1, p0, Lcom/umeng/analytics/a/d/a$3;->a:Lcom/umeng/analytics/a/d/a;

    invoke-direct {p0}, Lcom/umeng/analytics/a/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 448
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a$3;->a:Lcom/umeng/analytics/a/d/a;

    invoke-static {v0}, Lcom/umeng/analytics/a/d/a;->j(Lcom/umeng/analytics/a/d/a;)Lcom/umeng/analytics/a/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/umeng/analytics/a/d/d;->b()V

    .line 451
    :cond_0
    return-void
.end method
