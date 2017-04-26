.class Lcom/umeng/analytics/d/f$1;
.super Lcom/umeng/a/k;
.source "EventTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/d/f;->a(Ljava/util/List;ILjava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Lcom/umeng/analytics/d/f;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/d/f;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 341
    iput-object p1, p0, Lcom/umeng/analytics/d/f$1;->b:Lcom/umeng/analytics/d/f;

    iput-object p2, p0, Lcom/umeng/analytics/d/f$1;->a:Ljava/util/Map;

    invoke-direct {p0}, Lcom/umeng/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 343
    iget-object v0, p0, Lcom/umeng/analytics/d/f$1;->b:Lcom/umeng/analytics/d/f;

    invoke-static {v0}, Lcom/umeng/analytics/d/f;->a(Lcom/umeng/analytics/d/f;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/umeng/analytics/a/d/a;->a(Landroid/content/Context;)Lcom/umeng/analytics/a/d/a;

    move-result-object v0

    new-instance v1, Lcom/umeng/analytics/d/f$1$1;

    invoke-direct {v1, p0}, Lcom/umeng/analytics/d/f$1$1;-><init>(Lcom/umeng/analytics/d/f$1;)V

    iget-object v2, p0, Lcom/umeng/analytics/d/f$1;->a:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/umeng/analytics/a/d/a;->a(Lcom/umeng/analytics/a/b/a;Ljava/util/Map;)V

    .line 350
    return-void
.end method
