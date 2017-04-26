.class Lcom/umeng/analytics/a/d/a$1;
.super Ljava/lang/Object;
.source "UMCCAggregatedManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/a/d/a;
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
    .line 61
    iput-object p1, p0, Lcom/umeng/analytics/a/d/a$1;->a:Lcom/umeng/analytics/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 63
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 64
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a$1;->a:Lcom/umeng/analytics/a/d/a;

    invoke-static {v0}, Lcom/umeng/analytics/a/d/a;->a(Lcom/umeng/analytics/a/d/a;)Lcom/umeng/analytics/a/d/a$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a$1;->a:Lcom/umeng/analytics/a/d/a;

    new-instance v1, Lcom/umeng/analytics/a/d/a$a;

    iget-object v2, p0, Lcom/umeng/analytics/a/d/a$1;->a:Lcom/umeng/analytics/a/d/a;

    invoke-direct {v1, v2}, Lcom/umeng/analytics/a/d/a$a;-><init>(Lcom/umeng/analytics/a/d/a;)V

    invoke-static {v0, v1}, Lcom/umeng/analytics/a/d/a;->a(Lcom/umeng/analytics/a/d/a;Lcom/umeng/analytics/a/d/a$a;)Lcom/umeng/analytics/a/d/a$a;

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a$1;->a:Lcom/umeng/analytics/a/d/a;

    invoke-static {v0}, Lcom/umeng/analytics/a/d/a;->b(Lcom/umeng/analytics/a/d/a;)V

    .line 69
    return-void
.end method
