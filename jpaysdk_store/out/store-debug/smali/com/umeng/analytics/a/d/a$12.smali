.class Lcom/umeng/analytics/a/d/a$12;
.super Lcom/umeng/analytics/a/b/a;
.source "UMCCAggregatedManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/a/d/a;->n()V
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
    .line 398
    iput-object p1, p0, Lcom/umeng/analytics/a/d/a$12;->a:Lcom/umeng/analytics/a/d/a;

    invoke-direct {p0}, Lcom/umeng/analytics/a/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/umeng/analytics/a/d/a$12;->a:Lcom/umeng/analytics/a/d/a;

    check-cast p1, Lcom/umeng/analytics/a/d/d;

    invoke-static {v0, p1}, Lcom/umeng/analytics/a/d/a;->a(Lcom/umeng/analytics/a/d/a;Lcom/umeng/analytics/a/d/d;)Lcom/umeng/analytics/a/d/d;

    .line 402
    return-void
.end method
