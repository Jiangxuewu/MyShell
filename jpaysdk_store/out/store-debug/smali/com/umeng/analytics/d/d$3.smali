.class Lcom/umeng/analytics/d/d$3;
.super Lcom/umeng/a/k;
.source "CacheService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/d/d;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/d/d;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/d/d;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/umeng/analytics/d/d$3;->a:Lcom/umeng/analytics/d/d;

    invoke-direct {p0}, Lcom/umeng/a/k;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/umeng/analytics/d/d$3;->a:Lcom/umeng/analytics/d/d;

    invoke-static {v0}, Lcom/umeng/analytics/d/d;->a(Lcom/umeng/analytics/d/d;)Lcom/umeng/analytics/d/g;

    move-result-object v0

    invoke-interface {v0}, Lcom/umeng/analytics/d/g;->b()V

    .line 65
    return-void
.end method
