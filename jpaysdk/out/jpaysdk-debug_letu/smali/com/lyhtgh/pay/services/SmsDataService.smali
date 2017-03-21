.class public Lcom/lyhtgh/pay/services/SmsDataService;
.super Landroid/app/Service;


# instance fields
.field private a:Ljava/lang/Class;

.field private b:Ljava/lang/Object;

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    iput-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->a:Ljava/lang/Class;

    iput-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->c:Z

    return-void
.end method

.method private a()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->b:Ljava/lang/Object;

    if-nez v0, :cond_1

    :cond_0
    iput-object v1, p0, Lcom/lyhtgh/pay/services/SmsDataService;->a:Ljava/lang/Class;

    iput-object v1, p0, Lcom/lyhtgh/pay/services/SmsDataService;->b:Ljava/lang/Object;

    :try_start_0
    invoke-static {p0}, Lcom/lyhtgh/pay/l;->a(Landroid/content/Context;)Lcom/lyhtgh/pay/l;

    move-result-object v0

    invoke-static {}, Lcom/lyhtgh/pay/g;->af()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lyhtgh/pay/l;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->a:Ljava/lang/Class;

    iget-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->a:Ljava/lang/Class;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->b:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 6

    iget-boolean v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->a:Ljava/lang/Class;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->a:Ljava/lang/Class;

    const-string v1, "onBind"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/lyhtgh/pay/services/SmsDataService;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->f()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->g()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onDestroy"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    iget-boolean v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->c:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->f()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->g()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onConfigurationChanged"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/res/Configuration;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onCreate()V
    .locals 6

    invoke-direct {p0}, Lcom/lyhtgh/pay/services/SmsDataService;->a()V

    iget-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->a:Ljava/lang/Class;

    const-string v1, "onCreate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Service;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/lyhtgh/pay/services/SmsDataService;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->c()I

    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->f()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->g()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onCreate"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Service;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    iget-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->a:Ljava/lang/Class;

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/lyhtgh/pay/services/SmsDataService;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->f()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->g()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onDestroy"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 4

    iget-boolean v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->c:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->f()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->g()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onLowMemory"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 6

    iget-boolean v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->c:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->f()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->g()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onRebind"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Service;->onRebind(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "SmsDataService"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/lyhtgh/pay/services/SmsDataService;->c:Z

    :goto_0
    iget-boolean v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->a:Ljava/lang/Class;

    const-string v1, "onStart"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Service;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/lyhtgh/pay/services/SmsDataService;->b:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/lyhtgh/pay/services/SmsDataService;->c:Z

    goto :goto_0

    :cond_2
    iput-boolean v2, p0, Lcom/lyhtgh/pay/services/SmsDataService;->c:Z

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->f()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->g()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onStart"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6

    iget-boolean v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->c:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->f()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->g()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onStartCommand"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    goto :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/lyhtgh/pay/services/SmsDataService;->c:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->f()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->g()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "onUnbind"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    goto :goto_0
.end method
