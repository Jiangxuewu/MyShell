.class Lcom/umeng/analytics/b/f$b;
.super Ljava/lang/Object;
.source "UMStoreManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field private static final a:Lcom/umeng/analytics/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    new-instance v0, Lcom/umeng/analytics/b/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/umeng/analytics/b/f;-><init>(Lcom/umeng/analytics/b/f$1;)V

    sput-object v0, Lcom/umeng/analytics/b/f$b;->a:Lcom/umeng/analytics/b/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/umeng/analytics/b/f;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/umeng/analytics/b/f$b;->a:Lcom/umeng/analytics/b/f;

    return-object v0
.end method
