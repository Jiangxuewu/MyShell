.class public Lu/aly/ah;
.super Lu/aly/y;


# static fields
.field private static final a:Ljava/lang/String; = "newumid"


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "newumid"

    invoke-direct {p0, v0}, Lu/aly/y;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lu/aly/ah;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lu/aly/ah;->b:Landroid/content/Context;

    invoke-static {v0}, Lu/aly/af;->a(Landroid/content/Context;)Lu/aly/af;

    move-result-object v0

    invoke-virtual {v0}, Lu/aly/af;->b()Lu/aly/af$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lu/aly/af$a;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
