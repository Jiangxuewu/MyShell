.class public final enum Lu/aly/bj;
.super Ljava/lang/Enum;

# interfaces
.implements Lu/aly/cj;


# static fields
.field public static final enum a:Lu/aly/bj;

.field public static final enum b:Lu/aly/bj;

.field public static final enum c:Lu/aly/bj;

.field private static final synthetic e:[Lu/aly/bj;


# instance fields
.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lu/aly/bj;

    const-string v1, "MALE"

    invoke-direct {v0, v1, v2, v2}, Lu/aly/bj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/bj;->a:Lu/aly/bj;

    new-instance v0, Lu/aly/bj;

    const-string v1, "FEMALE"

    invoke-direct {v0, v1, v3, v3}, Lu/aly/bj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/bj;->b:Lu/aly/bj;

    new-instance v0, Lu/aly/bj;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lu/aly/bj;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lu/aly/bj;->c:Lu/aly/bj;

    const/4 v0, 0x3

    new-array v0, v0, [Lu/aly/bj;

    sget-object v1, Lu/aly/bj;->a:Lu/aly/bj;

    aput-object v1, v0, v2

    sget-object v1, Lu/aly/bj;->b:Lu/aly/bj;

    aput-object v1, v0, v3

    sget-object v1, Lu/aly/bj;->c:Lu/aly/bj;

    aput-object v1, v0, v4

    sput-object v0, Lu/aly/bj;->e:[Lu/aly/bj;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lu/aly/bj;->d:I

    return-void
.end method

.method public static a(I)Lu/aly/bj;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lu/aly/bj;->a:Lu/aly/bj;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lu/aly/bj;->b:Lu/aly/bj;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lu/aly/bj;->c:Lu/aly/bj;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lu/aly/bj;
    .locals 1

    const-class v0, Lu/aly/bj;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lu/aly/bj;

    return-object v0
.end method

.method public static values()[Lu/aly/bj;
    .locals 1

    sget-object v0, Lu/aly/bj;->e:[Lu/aly/bj;

    invoke-virtual {v0}, [Lu/aly/bj;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu/aly/bj;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lu/aly/bj;->d:I

    return v0
.end method
