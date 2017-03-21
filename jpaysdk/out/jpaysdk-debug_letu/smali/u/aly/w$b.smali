.class Lu/aly/w$b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lu/aly/w;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lu/aly/w;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/w;-><init>(Lu/aly/w$1;)V

    sput-object v0, Lu/aly/w$b;->a:Lu/aly/w;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lu/aly/w;
    .locals 1

    sget-object v0, Lu/aly/w$b;->a:Lu/aly/w;

    return-object v0
.end method
