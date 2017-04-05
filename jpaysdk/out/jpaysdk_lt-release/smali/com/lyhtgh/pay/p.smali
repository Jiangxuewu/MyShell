.class Lcom/lyhtgh/pay/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lyhtgh/pay/p;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/lyhtgh/pay/p;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/lyhtgh/pay/p;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/lyhtgh/pay/p;->d:Ljava/lang/String;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 63
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 67
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 68
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/lyhtgh/pay/p;->a:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 71
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/lyhtgh/pay/p;->b:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lcom/lyhtgh/pay/g;->x()Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    .line 87
    iget-object v9, p0, Lcom/lyhtgh/pay/p;->c:Ljava/lang/String;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v4, v7, v8

    const/4 v4, 0x2

    aput-object v0, v7, v4

    const/4 v0, 0x3

    aput-object v1, v7, v0

    const/4 v0, 0x4

    aput-object v2, v7, v0

    const/4 v0, 0x5

    aput-object v3, v7, v0

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/lyhtgh/pay/p;->d:Ljava/lang/String;

    aput-object v1, v7, v0

    const/4 v0, 0x7

    const/16 v1, 0x3fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v0

    .line 86
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 89
    new-instance v0, Lcom/lyhtgh/pay/j;

    iget-object v2, p0, Lcom/lyhtgh/pay/p;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/lyhtgh/pay/j;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-static {}, Lcom/lyhtgh/pay/g;->u()Ljava/lang/String;

    move-result-object v2

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lyhtgh/pay/g;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/lyhtgh/pay/g;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/lyhtgh/pay/g;->s()Ljava/lang/String;

    move-result-object v4

    const v5, 0x9c40

    .line 90
    invoke-virtual/range {v0 .. v5}, Lcom/lyhtgh/pay/j;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 92
    return-void
.end method
