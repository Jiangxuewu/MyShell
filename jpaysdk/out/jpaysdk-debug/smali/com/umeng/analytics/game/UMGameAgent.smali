.class public Lcom/umeng/analytics/game/UMGameAgent;
.super Lcom/umeng/analytics/MobclickAgent;


# static fields
.field private static final a:Ljava/lang/String; = "Input string is null or empty"

.field private static final b:Ljava/lang/String; = "Input string must be less than 64 chars"

.field private static final c:Ljava/lang/String; = "Input value type is negative"

.field private static final d:Ljava/lang/String; = "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

.field private static final e:Lcom/umeng/analytics/game/c;

.field private static f:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/umeng/analytics/game/c;

    invoke-direct {v0}, Lcom/umeng/analytics/game/c;-><init>()V

    sput-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/umeng/analytics/MobclickAgent;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static bonus(DI)V
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    const-string v0, "Input value type is negative"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-lez p2, :cond_1

    const/16 v0, 0x64

    if-lt p2, v0, :cond_2

    :cond_1
    const-string v0, "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    invoke-virtual {v0, p0, p1, p2}, Lcom/umeng/analytics/game/c;->a(DI)V

    goto :goto_0
.end method

.method public static bonus(Ljava/lang/String;IDI)V
    .locals 8

    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Input string is null or empty"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-ltz p1, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_2

    :cond_1
    const-string v0, "Input value type is negative"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    if-lez p4, :cond_3

    const/16 v0, 0x64

    if-lt p4, v0, :cond_4

    :cond_3
    const-string v0, "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/umeng/analytics/game/c;->a(Ljava/lang/String;IDI)V

    goto :goto_0
.end method

.method public static buy(Ljava/lang/String;ID)V
    .locals 2

    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Input string is null or empty"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-ltz p1, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_2

    :cond_1
    const-string v0, "Input value type is negative"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/umeng/analytics/game/c;->a(Ljava/lang/String;ID)V

    goto :goto_0
.end method

.method public static exchange(DLjava/lang/String;DILjava/lang/String;)V
    .locals 8

    const-wide/16 v2, 0x0

    cmpg-double v0, p0, v2

    if-ltz v0, :cond_0

    cmpg-double v0, p3, v2

    if-gez v0, :cond_1

    :cond_0
    const-string v0, "Input value type is negative"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    if-lez p5, :cond_2

    const/16 v0, 0x64

    if-lt p5, v0, :cond_3

    :cond_2
    const-string v0, "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    move-wide v1, p0

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/umeng/analytics/game/c;->a(DLjava/lang/String;DILjava/lang/String;)V

    goto :goto_0
.end method

.method public static failLevel(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Input string is null or empty"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    const-string v0, "Input string must be less than 64 chars"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/c;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static finishLevel(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Input string is null or empty"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    const-string v0, "Input string must be less than 64 chars"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/c;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/c;->a(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/game/UMGameAgent;->f:Landroid/content/Context;

    return-void
.end method

.method public static onEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->f:Landroid/content/Context;

    invoke-static {v0, p0, p1}, Lcom/umeng/analytics/game/UMGameAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static varargs onSocialEvent(Landroid/content/Context;Ljava/lang/String;[Lcom/umeng/analytics/social/UMPlatformData;)V
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "context is null in onShareEvent"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "4"

    sput-object v0, Lcom/umeng/analytics/social/d;->d:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/umeng/analytics/social/UMSocialService;->share(Landroid/content/Context;Ljava/lang/String;[Lcom/umeng/analytics/social/UMPlatformData;)V

    goto :goto_0
.end method

.method public static varargs onSocialEvent(Landroid/content/Context;[Lcom/umeng/analytics/social/UMPlatformData;)V
    .locals 1

    if-nez p0, :cond_0

    const-string v0, "context is null in onShareEvent"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "4"

    sput-object v0, Lcom/umeng/analytics/social/d;->d:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/umeng/analytics/social/UMSocialService;->share(Landroid/content/Context;[Lcom/umeng/analytics/social/UMPlatformData;)V

    goto :goto_0
.end method

.method public static pay(DDI)V
    .locals 8

    const-wide/16 v2, 0x0

    if-lez p4, :cond_0

    const/16 v0, 0x64

    if-lt p4, v0, :cond_1

    :cond_0
    const-string v0, "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    cmpg-double v0, p0, v2

    if-ltz v0, :cond_2

    cmpg-double v0, p2, v2

    if-gez v0, :cond_3

    :cond_2
    const-string v0, "Input value type is negative"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    move-wide v2, p0

    move-wide v4, p2

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/umeng/analytics/game/c;->a(DDI)V

    goto :goto_0
.end method

.method public static pay(DLjava/lang/String;IDI)V
    .locals 12

    const-wide/16 v4, 0x0

    if-lez p6, :cond_0

    const/16 v2, 0x64

    move/from16 v0, p6

    if-lt v0, v2, :cond_1

    :cond_0
    const-string v2, "The int value for \'Pay Channels\' ranges between 1 ~ 99 "

    invoke-static {v2}, Lu/aly/bx;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    cmpg-double v2, p0, v4

    if-ltz v2, :cond_2

    if-ltz p3, :cond_2

    cmpg-double v2, p4, v4

    if-gez v2, :cond_3

    :cond_2
    const-string v2, "Input value type is negative"

    invoke-static {v2}, Lu/aly/bx;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {p2}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "Input string is null or empty"

    invoke-static {v2}, Lu/aly/bx;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v3, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    move-wide v4, p0

    move-object v6, p2

    move v7, p3

    move-wide/from16 v8, p4

    move/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/umeng/analytics/game/c;->a(DLjava/lang/String;IDI)V

    goto :goto_0
.end method

.method public static setPlayerLevel(I)V
    .locals 2

    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/umeng/analytics/game/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static setTraceSleepTime(Z)V
    .locals 1

    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/c;->a(Z)V

    return-void
.end method

.method public static startLevel(Ljava/lang/String;)V
    .locals 2

    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Input string is null or empty"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_1

    const-string v0, "Input string must be less than 64 chars"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    invoke-virtual {v0, p0}, Lcom/umeng/analytics/game/c;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static use(Ljava/lang/String;ID)V
    .locals 2

    invoke-static {p0}, Lcom/umeng/analytics/game/UMGameAgent;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Input string is null or empty"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-ltz p1, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    if-gez v0, :cond_2

    :cond_1
    const-string v0, "Input value type is negative"

    invoke-static {v0}, Lu/aly/bx;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/umeng/analytics/game/UMGameAgent;->e:Lcom/umeng/analytics/game/c;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/umeng/analytics/game/c;->b(Ljava/lang/String;ID)V

    goto :goto_0
.end method
