.class Lcom/umeng/analytics/d/f$1$1;
.super Lcom/umeng/analytics/a/b/a;
.source "EventTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/analytics/d/f$1;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/analytics/d/f$1;


# direct methods
.method constructor <init>(Lcom/umeng/analytics/d/f$1;)V
    .locals 0

    .prologue
    .line 343
    iput-object p1, p0, Lcom/umeng/analytics/d/f$1$1;->a:Lcom/umeng/analytics/d/f$1;

    invoke-direct {p0}, Lcom/umeng/analytics/a/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Z)V
    .locals 1

    .prologue
    .line 346
    const-string v0, "success"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    :cond_0
    return-void
.end method
