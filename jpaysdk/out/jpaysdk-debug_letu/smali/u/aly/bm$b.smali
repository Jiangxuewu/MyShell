.class Lu/aly/bm$b;
.super Ljava/lang/Object;

# interfaces
.implements Lu/aly/dn;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lu/aly/bm$1;)V
    .locals 0

    invoke-direct {p0}, Lu/aly/bm$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lu/aly/bm$a;
    .locals 2

    new-instance v0, Lu/aly/bm$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu/aly/bm$a;-><init>(Lu/aly/bm$1;)V

    return-object v0
.end method

.method public synthetic b()Lu/aly/dm;
    .locals 1

    invoke-virtual {p0}, Lu/aly/bm$b;->a()Lu/aly/bm$a;

    move-result-object v0

    return-object v0
.end method
