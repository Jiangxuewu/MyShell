.class Lcom/umeng/analytics/a/a/c$a;
.super Ljava/lang/Object;
.source "UMCCDBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/umeng/analytics/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/umeng/analytics/a/a/c;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 24
    new-instance v0, Lcom/umeng/analytics/a/a/c;

    invoke-static {}, Lcom/umeng/analytics/a/a/c;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/umeng/analytics/a/a/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/analytics/a/a/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cc.db"

    const/4 v5, 0x1

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lcom/umeng/analytics/a/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILcom/umeng/analytics/a/a/c$1;)V

    sput-object v0, Lcom/umeng/analytics/a/a/c$a;->a:Lcom/umeng/analytics/a/a/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/umeng/analytics/a/a/c;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/umeng/analytics/a/a/c$a;->a:Lcom/umeng/analytics/a/a/c;

    return-object v0
.end method
