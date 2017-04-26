.class Lcom/umeng/analytics/a/c/a$1;
.super Lcom/umeng/analytics/a/b/a;
.source "UMCCAggregatedListObject.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/a/c/a;->a(Lcom/umeng/analytics/a/b/a;Lcom/umeng/analytics/a/c/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/a/b/a;

.field final synthetic b:Lcom/umeng/analytics/a/c/a;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/a/c/a;Lcom/umeng/analytics/a/b/a;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/umeng/analytics/a/c/a$1;->b:Lcom/umeng/analytics/a/c/a;

    iput-object p2, p0, Lcom/umeng/analytics/a/c/a$1;->a:Lcom/umeng/analytics/a/b/a;

    invoke-direct {p0}, Lcom/umeng/analytics/a/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 2

    .prologue
    .line 117
    check-cast p1, Lcom/umeng/analytics/a/c/b;

    .line 118
    iget-object v0, p0, Lcom/umeng/analytics/a/c/a$1;->b:Lcom/umeng/analytics/a/c/a;

    invoke-static {v0}, Lcom/umeng/analytics/a/c/a;->a(Lcom/umeng/analytics/a/c/a;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/umeng/analytics/a/c/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    iget-object v0, p0, Lcom/umeng/analytics/a/c/a$1;->b:Lcom/umeng/analytics/a/c/a;

    invoke-static {v0}, Lcom/umeng/analytics/a/c/a;->a(Lcom/umeng/analytics/a/c/a;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/umeng/analytics/a/c/b;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/umeng/analytics/a/c/a$1;->a:Lcom/umeng/analytics/a/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/umeng/analytics/a/b/a;->a(Ljava/lang/Object;Z)V

    .line 121
    return-void
.end method
