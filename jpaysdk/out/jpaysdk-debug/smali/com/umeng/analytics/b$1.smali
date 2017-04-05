.class Lcom/umeng/analytics/b$1;
.super Lcom/umeng/a/k;
.source "InternalAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/b;->g(Landroid/content/Context;)V
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
    .line 94
    iput-object p1, p0, Lcom/umeng/analytics/b$1;->a:Lcom/umeng/analytics/b;

    invoke-direct {p0}, Lcom/umeng/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/umeng/analytics/b$1;->a:Lcom/umeng/analytics/b;

    invoke-static {v0}, Lcom/umeng/analytics/b;->a(Lcom/umeng/analytics/b;)Lcom/umeng/analytics/a/d/a;

    move-result-object v0

    new-instance v1, Lcom/umeng/analytics/b$1$1;

    invoke-direct {v1, p0}, Lcom/umeng/analytics/b$1$1;-><init>(Lcom/umeng/analytics/b$1;)V

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/a/d/a;->a(Lcom/umeng/analytics/a/b/a;)V

    .line 104
    return-void
.end method
