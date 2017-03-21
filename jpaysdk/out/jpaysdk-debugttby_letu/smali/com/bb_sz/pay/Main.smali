.class public Lcom/bb_sz/pay/Main;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onCreate(Landroid/app/Activity;)V
    .locals 0

    invoke-static {p0}, Lcom/bb_sz/pay/a/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static onDestroy(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public static onPause(Landroid/app/Activity;)V
    .locals 1

    invoke-static {p0}, Lcom/bb_sz/pay/a/a;->c(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/bb_sz/pay/b;->a(Landroid/content/Context;I)V

    return-void
.end method

.method public static onResume(Landroid/app/Activity;)V
    .locals 1

    invoke-static {p0}, Lcom/bb_sz/pay/a/a;->b(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/bb_sz/pay/b;->a(Landroid/content/Context;I)V

    return-void
.end method
