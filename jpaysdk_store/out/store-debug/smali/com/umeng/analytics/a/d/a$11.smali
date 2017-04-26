.class Lcom/umeng/analytics/a/d/a$11;
.super Lcom/umeng/analytics/a/b/a;
.source "UMCCAggregatedManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/a/d/a;->b(Lcom/umeng/analytics/a/b/a;)V
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
    .line 364
    iput-object p1, p0, Lcom/umeng/analytics/a/d/a$11;->a:Lcom/umeng/analytics/a/d/a;

    invoke-direct {p0}, Lcom/umeng/analytics/a/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 367
    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a$11;->a:Lcom/umeng/analytics/a/d/a;

    invoke-static {v0}, Lcom/umeng/analytics/a/d/a;->k(Lcom/umeng/analytics/a/d/a;)V

    .line 370
    :cond_0
    return-void
.end method
