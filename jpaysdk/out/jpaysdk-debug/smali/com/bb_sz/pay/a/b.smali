.class final Lcom/bb_sz/pay/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/bb_sz/pay/a/b;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    invoke-static {}, Lcom/bb_sz/pay/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/bb_sz/pay/a/a;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bb_sz/pay/a/b;->a:Landroid/content/Context;

    sput-object v0, Lcom/bb_sz/pay/a/a;->a:Landroid/content/Context;

    :cond_0
    sget-object v0, Lcom/bb_sz/pay/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bb_sz/pay/a/a;->a(Landroid/content/Context;)V

    sget-object v0, Lcom/bb_sz/pay/a/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/bb_sz/pay/a/a;->b(Landroid/content/Context;)V

    :cond_1
    return-void
.end method
