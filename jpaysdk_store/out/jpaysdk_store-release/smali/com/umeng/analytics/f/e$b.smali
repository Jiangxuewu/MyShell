.class Lcom/umeng/analytics/f/e$b;
.super Ljava/lang/Object;
.source "Imprint.java"

# interfaces
.implements La/a/a/c/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/f/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/umeng/analytics/f/e$1;)V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/umeng/analytics/f/e$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/umeng/analytics/f/e$a;
    .locals 2

    .prologue
    .line 366
    new-instance v0, Lcom/umeng/analytics/f/e$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/f/e$a;-><init>(Lcom/umeng/analytics/f/e$1;)V

    return-object v0
.end method

.method public synthetic b()La/a/a/c/a;
    .locals 1

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/umeng/analytics/f/e$b;->a()Lcom/umeng/analytics/f/e$a;

    move-result-object v0

    return-object v0
.end method
