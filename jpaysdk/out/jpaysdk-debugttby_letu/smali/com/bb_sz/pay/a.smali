.class final Lcom/bb_sz/pay/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/app/Activity;

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Ljava/lang/String;

.field private synthetic d:Ljava/lang/String;

.field private synthetic e:Ljava/lang/String;

.field private synthetic f:Ljava/lang/String;

.field private synthetic g:Lcom/jpay/sdk/IChargeResult;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jpay/sdk/IChargeResult;)V
    .locals 0

    iput-object p1, p0, Lcom/bb_sz/pay/a;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bb_sz/pay/a;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bb_sz/pay/a;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/bb_sz/pay/a;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/bb_sz/pay/a;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/bb_sz/pay/a;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/bb_sz/pay/a;->g:Lcom/jpay/sdk/IChargeResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/bb_sz/pay/a;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bb_sz/pay/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/bb_sz/pay/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/bb_sz/pay/a;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/bb_sz/pay/a;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/bb_sz/pay/a;->f:Ljava/lang/String;

    iget-object v6, p0, Lcom/bb_sz/pay/a;->g:Lcom/jpay/sdk/IChargeResult;

    invoke-static/range {v0 .. v6}, Lcom/bb_sz/pay/Api;->_charge(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jpay/sdk/IChargeResult;)V

    return-void
.end method
