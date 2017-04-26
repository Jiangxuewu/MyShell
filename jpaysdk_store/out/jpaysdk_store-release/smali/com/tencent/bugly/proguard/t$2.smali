.class final Lcom/tencent/bugly/proguard/t$2;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/bugly/proguard/t;->c(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:I

.field private synthetic b:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method constructor <init>(Lcom/tencent/bugly/proguard/t;ILjava/util/concurrent/LinkedBlockingQueue;)V
    .locals 0

    .prologue
    .line 747
    iput p2, p0, Lcom/tencent/bugly/proguard/t$2;->a:I

    iput-object p3, p0, Lcom/tencent/bugly/proguard/t$2;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 750
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lcom/tencent/bugly/proguard/t$2;->a:I

    if-ge v1, v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/tencent/bugly/proguard/t$2;->b:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 752
    if-eqz v0, :cond_0

    .line 753
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 750
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 758
    :cond_0
    return-void
.end method
