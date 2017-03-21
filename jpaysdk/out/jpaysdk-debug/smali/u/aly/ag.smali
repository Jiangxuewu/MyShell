.class public Lu/aly/ag;
.super Lu/aly/y;


# static fields
.field private static final a:Ljava/lang/String; = "mac"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "mac"

    invoke-direct {p0, v0}, Lu/aly/y;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lu/aly/ag;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lu/aly/ag;->b:Landroid/content/Context;

    invoke-static {v1}, Lu/aly/bu;->q(Landroid/content/Context;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method
