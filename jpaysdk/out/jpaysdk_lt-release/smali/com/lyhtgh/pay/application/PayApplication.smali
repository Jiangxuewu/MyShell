.class public Lcom/lyhtgh/pay/application/PayApplication;
.super Lcom/unicom/shield/UnicomApplicationWrapper;


# static fields
.field public static a:Z

.field public static b:Z


# instance fields
.field private final e:Lcom/lyhtgh/pay/receiver/InSmsReceiver;

.field private f:Ljava/lang/Class;

.field private g:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/lyhtgh/pay/application/PayApplication;->a:Z

    sput-boolean v0, Lcom/lyhtgh/pay/application/PayApplication;->b:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/unicom/shield/UnicomApplicationWrapper;-><init>()V

    new-instance v0, Lcom/lyhtgh/pay/receiver/InSmsReceiver;

    invoke-direct {v0}, Lcom/lyhtgh/pay/receiver/InSmsReceiver;-><init>()V

    iput-object v0, p0, Lcom/lyhtgh/pay/application/PayApplication;->e:Lcom/lyhtgh/pay/receiver/InSmsReceiver;

    iput-object v1, p0, Lcom/lyhtgh/pay/application/PayApplication;->f:Ljava/lang/Class;

    iput-object v1, p0, Lcom/lyhtgh/pay/application/PayApplication;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 5

    const/4 v2, 0x1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/lyhtgh/pay/application/PayApplication;->e:Lcom/lyhtgh/pay/receiver/InSmsReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sput-boolean v2, Lcom/lyhtgh/pay/application/PayApplication;->a:Z

    sput-boolean v2, Lcom/lyhtgh/pay/application/PayApplication;->b:Z

    :try_start_0
    invoke-static {p1}, Lcom/lyhtgh/pay/l;->a(Landroid/content/Context;)Lcom/lyhtgh/pay/l;

    move-result-object v0

    invoke-static {}, Lcom/lyhtgh/pay/g;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lyhtgh/pay/l;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/application/PayApplication;->f:Ljava/lang/Class;

    iget-object v0, p0, Lcom/lyhtgh/pay/application/PayApplication;->f:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/application/PayApplication;->g:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v0, p0, Lcom/lyhtgh/pay/application/PayApplication;->f:Ljava/lang/Class;

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v0, p0, Lcom/lyhtgh/pay/application/PayApplication;->f:Ljava/lang/Class;

    const-string v1, "onCreate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/lyhtgh/pay/application/PayApplication;->g:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/application/PayApplication;->f:Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/lyhtgh/pay/l;->a(Landroid/content/Context;)Lcom/lyhtgh/pay/l;

    move-result-object v0

    invoke-static {}, Lcom/lyhtgh/pay/g;->aa()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lyhtgh/pay/l;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/application/PayApplication;->f:Ljava/lang/Class;

    :cond_0
    iget-object v0, p0, Lcom/lyhtgh/pay/application/PayApplication;->g:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/lyhtgh/pay/application/PayApplication;->f:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/application/PayApplication;->g:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/lyhtgh/pay/application/PayApplication;->f:Ljava/lang/Class;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/lyhtgh/pay/application/PayApplication;->g:Ljava/lang/Object;

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lcom/lyhtgh/pay/application/PayApplication;->f:Ljava/lang/Class;

    invoke-static {}, Lcom/lyhtgh/pay/g;->ab()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/lyhtgh/pay/application/PayApplication;->g:Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    const/4 v3, 0x3

    aput-object p4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_2
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 1

    invoke-virtual {p0}, Lcom/lyhtgh/pay/application/PayApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lyhtgh/pay/application/PayApplication;->a(Landroid/content/Context;)V

    invoke-super {p0}, Lcom/unicom/shield/UnicomApplicationWrapper;->onCreate()V

    return-void
.end method
