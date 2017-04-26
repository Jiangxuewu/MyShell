.class Lcom/umeng/analytics/f/d$d;
.super Ljava/lang/Object;
.source "IdTracking.java"

# interfaces
.implements La/a/a/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/f/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 506
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/f/d$1;)V
    .locals 0

    .prologue
    .line 506
    invoke-direct {p0}, Lcom/umeng/analytics/f/d$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/analytics/f/d$c;
    .locals 2

    .prologue
    .line 509
    new-instance v0, Lcom/umeng/analytics/f/d$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/f/d$c;-><init>(Lcom/umeng/analytics/f/d$1;)V

    return-object v0
.end method

.method public synthetic b()La/a/a/c/a;
    .locals 1

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/umeng/analytics/f/d$d;->a()Lcom/umeng/analytics/f/d$c;

    move-result-object v0

    return-object v0
.end method
