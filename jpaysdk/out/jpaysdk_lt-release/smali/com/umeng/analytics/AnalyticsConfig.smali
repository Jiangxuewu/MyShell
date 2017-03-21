.class public Lcom/umeng/analytics/AnalyticsConfig;
.super Ljava/lang/Object;


# static fields
.field public static ACTIVITY_DURATION_OPEN:Z

.field public static CATCH_EXCEPTION:Z

.field public static final FLAG_DPLUS:Z

.field public static GPU_RENDERER:Ljava/lang/String;

.field public static GPU_VENDER:Ljava/lang/String;

.field static a:[D

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:I

.field public static kContinueSessionMillis:J

.field public static mWrapperType:Ljava/lang/String;

.field public static mWrapperVersion:Ljava/lang/String;

.field public static sEncrypt:Z

.field public static sLatentWindow:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    sput-object v2, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    sput-object v2, Lcom/umeng/analytics/AnalyticsConfig;->c:Ljava/lang/String;

    sput-object v2, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    sput-object v2, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperType:Ljava/lang/String;

    sput-object v2, Lcom/umeng/analytics/AnalyticsConfig;->mWrapperVersion:Ljava/lang/String;

    sput v3, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    const-string v0, ""

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_VENDER:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->GPU_RENDERER:Ljava/lang/String;

    sput-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->ACTIVITY_DURATION_OPEN:Z

    sput-boolean v1, Lcom/umeng/analytics/AnalyticsConfig;->CATCH_EXCEPTION:Z

    const-wide/16 v0, 0x7530

    sput-wide v0, Lcom/umeng/analytics/AnalyticsConfig;->kContinueSessionMillis:J

    sput-boolean v3, Lcom/umeng/analytics/AnalyticsConfig;->sEncrypt:Z

    sput-object v2, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;I)V
    .locals 2

    sput p1, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    invoke-static {p0}, Lu/aly/cb;->a(Landroid/content/Context;)Lu/aly/cb;

    move-result-object v0

    sget v1, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    invoke-virtual {v0, v1}, Lu/aly/cb;->a(I)V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sput-object p1, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    invoke-static {p0}, Lu/aly/cb;->a(Landroid/content/Context;)Lu/aly/cb;

    move-result-object v0

    sget-object v1, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lu/aly/cb;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method static a(Z)V
    .locals 0

    sput-boolean p0, Lcom/umeng/analytics/AnalyticsConfig;->sEncrypt:Z

    return-void
.end method

.method public static getAppkey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lu/aly/bu;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lu/aly/cb;->a(Landroid/content/Context;)Lu/aly/cb;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/cb;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static getChannel(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lu/aly/bu;->s(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->c:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocation()[D
    .locals 1

    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->a:[D

    return-object v0
.end method

.method public static getSDKVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const-string v0, "6.0.9"

    return-object v0
.end method

.method public static getSecretKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lu/aly/cb;->a(Landroid/content/Context;)Lu/aly/cb;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/cb;->e()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/umeng/analytics/AnalyticsConfig;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static getVerticalType(Landroid/content/Context;)I
    .locals 1

    sget v0, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    if-nez v0, :cond_0

    invoke-static {p0}, Lu/aly/cb;->a(Landroid/content/Context;)Lu/aly/cb;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/cb;->f()I

    move-result v0

    sput v0, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    :cond_0
    sget v0, Lcom/umeng/analytics/AnalyticsConfig;->e:I

    return v0
.end method

.method static setAppkey(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_1

    sput-object p1, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lu/aly/bu;->p(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sput-object v0, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Appkey\u548cAndroidManifest.xml\u4e2d\u914d\u7f6e\u7684\u4e0d\u4e00\u81f4 "

    invoke-static {v0}, Lu/aly/bx;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lu/aly/cb;->a(Landroid/content/Context;)Lu/aly/cb;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/cb;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "Appkey\u548c\u4e0a\u6b21\u914d\u7f6e\u7684\u4e0d\u4e00\u81f4 "

    invoke-static {v0}, Lu/aly/bx;->d(Ljava/lang/String;)V

    :cond_3
    invoke-static {p0}, Lu/aly/cb;->a(Landroid/content/Context;)Lu/aly/cb;

    move-result-object v0

    invoke-virtual {v0, p1}, Lu/aly/cb;->a(Ljava/lang/String;)V

    :cond_4
    sput-object p1, Lcom/umeng/analytics/AnalyticsConfig;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method static setChannel(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/umeng/analytics/AnalyticsConfig;->c:Ljava/lang/String;

    return-void
.end method
