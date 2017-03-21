.class public final enum Lu/aly/w$a;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lu/aly/w$a;

.field public static final enum b:Lu/aly/w$a;

.field public static final enum c:Lu/aly/w$a;

.field public static final enum d:Lu/aly/w$a;

.field public static final enum e:Lu/aly/w$a;

.field private static final synthetic f:[Lu/aly/w$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lu/aly/w$a;

    const-string v1, "AUTOPAGE"

    invoke-direct {v0, v1, v2}, Lu/aly/w$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/aly/w$a;->a:Lu/aly/w$a;

    new-instance v0, Lu/aly/w$a;

    const-string v1, "PAGE"

    invoke-direct {v0, v1, v3}, Lu/aly/w$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/aly/w$a;->b:Lu/aly/w$a;

    new-instance v0, Lu/aly/w$a;

    const-string v1, "BEGIN"

    invoke-direct {v0, v1, v4}, Lu/aly/w$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/aly/w$a;->c:Lu/aly/w$a;

    new-instance v0, Lu/aly/w$a;

    const-string v1, "END"

    invoke-direct {v0, v1, v5}, Lu/aly/w$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/aly/w$a;->d:Lu/aly/w$a;

    new-instance v0, Lu/aly/w$a;

    const-string v1, "NEWSESSION"

    invoke-direct {v0, v1, v6}, Lu/aly/w$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lu/aly/w$a;->e:Lu/aly/w$a;

    const/4 v0, 0x5

    new-array v0, v0, [Lu/aly/w$a;

    sget-object v1, Lu/aly/w$a;->a:Lu/aly/w$a;

    aput-object v1, v0, v2

    sget-object v1, Lu/aly/w$a;->b:Lu/aly/w$a;

    aput-object v1, v0, v3

    sget-object v1, Lu/aly/w$a;->c:Lu/aly/w$a;

    aput-object v1, v0, v4

    sget-object v1, Lu/aly/w$a;->d:Lu/aly/w$a;

    aput-object v1, v0, v5

    sget-object v1, Lu/aly/w$a;->e:Lu/aly/w$a;

    aput-object v1, v0, v6

    sput-object v0, Lu/aly/w$a;->f:[Lu/aly/w$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/w$a;
    .locals 1

    const-class v0, Lu/aly/w$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/w$a;

    return-object v0
.end method

.method public static values()[Lu/aly/w$a;
    .locals 1

    sget-object v0, Lu/aly/w$a;->f:[Lu/aly/w$a;

    invoke-virtual {v0}, [Lu/aly/w$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/w$a;

    return-object v0
.end method
