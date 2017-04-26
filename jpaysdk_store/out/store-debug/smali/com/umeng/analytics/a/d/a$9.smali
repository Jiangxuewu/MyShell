.class Lcom/umeng/analytics/a/d/a$9;
.super Lcom/umeng/analytics/a/b/a;
.source "UMCCAggregatedManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/a/d/a;->a(Lcom/umeng/analytics/a/c/e;Ljava/util/List;)V
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
    .line 253
    iput-object p1, p0, Lcom/umeng/analytics/a/d/a$9;->a:Lcom/umeng/analytics/a/d/a;

    invoke-direct {p0}, Lcom/umeng/analytics/a/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 256
    instance-of v0, p1, Lcom/umeng/analytics/a/c/a;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a$9;->a:Lcom/umeng/analytics/a/d/a;

    check-cast p1, Lcom/umeng/analytics/a/c/a;

    invoke-static {v0, p1}, Lcom/umeng/analytics/a/d/a;->a(Lcom/umeng/analytics/a/d/a;Lcom/umeng/analytics/a/c/a;)Lcom/umeng/analytics/a/c/a;

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 258
    :cond_1
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a$9;->a:Lcom/umeng/analytics/a/d/a;

    invoke-static {v0}, Lcom/umeng/analytics/a/d/a;->i(Lcom/umeng/analytics/a/d/a;)V

    goto :goto_0
.end method
