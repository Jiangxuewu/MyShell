.class Lcom/umeng/analytics/b$5;
.super Lcom/umeng/a/k;
.source "InternalAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/b;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/b;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/b;)V
    .locals 0

    .prologue
    .line 419
    iput-object p1, p0, Lcom/umeng/analytics/b$5;->a:Lcom/umeng/analytics/b;

    invoke-direct {p0}, Lcom/umeng/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 423
    iget-object v0, p0, Lcom/umeng/analytics/b$5;->a:Lcom/umeng/analytics/b;

    invoke-static {v0}, Lcom/umeng/analytics/b;->b(Lcom/umeng/analytics/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/c;->a(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    .line 424
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 426
    iget-object v0, p0, Lcom/umeng/analytics/b$5;->a:Lcom/umeng/analytics/b;

    invoke-static {v0}, Lcom/umeng/analytics/b;->c(Lcom/umeng/analytics/b;)Lcom/umeng/analytics/d/d;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/b$5;->a:Lcom/umeng/analytics/b;

    invoke-static {v1}, Lcom/umeng/analytics/b;->b(Lcom/umeng/analytics/b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d/d;->a(Landroid/content/Context;)Lcom/umeng/analytics/d/c;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/b$5;->a:Lcom/umeng/analytics/b;

    invoke-static {v1}, Lcom/umeng/analytics/b;->b(Lcom/umeng/analytics/b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d/c;->a(Landroid/content/Context;)V

    .line 427
    iget-object v0, p0, Lcom/umeng/analytics/b$5;->a:Lcom/umeng/analytics/b;

    invoke-virtual {v0}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/d/p;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/b$5;->a:Lcom/umeng/analytics/b;

    invoke-static {v1}, Lcom/umeng/analytics/b;->b(Lcom/umeng/analytics/b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d/p;->e(Landroid/content/Context;)Z

    move-result v0

    .line 428
    iget-object v1, p0, Lcom/umeng/analytics/b$5;->a:Lcom/umeng/analytics/b;

    invoke-static {v1}, Lcom/umeng/analytics/b;->b(Lcom/umeng/analytics/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/umeng/analytics/d/d;->b(Landroid/content/Context;)Lcom/umeng/analytics/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/umeng/analytics/d/d;->b()V

    .line 429
    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/umeng/analytics/b$5;->a:Lcom/umeng/analytics/b;

    invoke-virtual {v0}, Lcom/umeng/analytics/b;->a()Lcom/umeng/analytics/d/p;

    move-result-object v0

    iget-object v1, p0, Lcom/umeng/analytics/b$5;->a:Lcom/umeng/analytics/b;

    invoke-static {v1}, Lcom/umeng/analytics/b;->b(Lcom/umeng/analytics/b;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/d/p;->f(Landroid/content/Context;)V

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/b$5;->a:Lcom/umeng/analytics/b;

    invoke-static {v0}, Lcom/umeng/analytics/b;->b(Lcom/umeng/analytics/b;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/c;->b(Landroid/content/Context;)V

    .line 433
    :cond_1
    return-void
.end method
