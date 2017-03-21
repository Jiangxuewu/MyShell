.class Lu/aly/t$a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lu/aly/t;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v4, 0x0

    new-instance v0, Lu/aly/t;

    invoke-static {}, Lu/aly/t;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lu/aly/t;->a()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lu/aly/v;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ua.db"

    const/4 v5, 0x1

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lu/aly/t;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;ILu/aly/t$1;)V

    sput-object v0, Lu/aly/t$a;->a:Lu/aly/t;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lu/aly/t;
    .locals 1

    sget-object v0, Lu/aly/t$a;->a:Lu/aly/t;

    return-object v0
.end method
