.class public Lcom/bb_sz/ndk/os/OS;
.super Ljava/lang/Object;
.source "OS.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    if-eqz p0, :cond_0

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "pkg":Ljava/lang/String;
    new-instance v1, Lcom/bb_sz/ndk/os/OS$1;

    invoke-direct {v1, v0}, Lcom/bb_sz/ndk/os/OS$1;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1}, Lcom/bb_sz/ndk/os/OS;->os(Landroid/content/Context;Lcom/bb_sz/ndk/os/OSCallback;)V

    .line 60
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private static os(Landroid/content/Context;Lcom/bb_sz/ndk/os/OSCallback;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/bb_sz/ndk/os/OSCallback;

    .prologue
    .line 48
    return-void
.end method
