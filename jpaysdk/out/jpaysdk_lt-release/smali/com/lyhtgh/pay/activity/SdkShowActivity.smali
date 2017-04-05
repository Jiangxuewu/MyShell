.class public Lcom/lyhtgh/pay/activity/SdkShowActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Object;

.field private c:Lcom/lyhtgh/pay/e;

.field private d:Landroid/app/Activity;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    .line 33
    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->b:Ljava/lang/Object;

    .line 35
    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->c:Lcom/lyhtgh/pay/e;

    .line 37
    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->d:Landroid/app/Activity;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->e:Z

    .line 27
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 460
    iget-boolean v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->e:Z

    if-eqz v0, :cond_0

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    const-string v1, "dispatchTouchEvent"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/MotionEvent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 464
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 483
    :goto_0
    return v0

    .line 472
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->d()Ljava/lang/Class;

    move-result-object v0

    .line 473
    if-eqz v0, :cond_1

    .line 474
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->e()Ljava/lang/Object;

    move-result-object v1

    .line 476
    const-string v2, "dispatchTouchEvent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/MotionEvent;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 477
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 483
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 479
    :catch_0
    move-exception v0

    goto :goto_1

    .line 466
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    .line 661
    iget-boolean v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->e:Z

    if-eqz v0, :cond_1

    .line 662
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 664
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    .line 665
    const-string v1, "onActivityResult"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    .line 664
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 666
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 687
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 688
    return-void

    .line 675
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->d()Ljava/lang/Class;

    move-result-object v0

    .line 676
    if-eqz v0, :cond_0

    .line 677
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->e()Ljava/lang/Object;

    move-result-object v1

    .line 679
    const-string v2, "onActivityResult"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 680
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 683
    :catch_0
    move-exception v0

    goto :goto_0

    .line 668
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    .line 516
    :try_start_0
    iget-boolean v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->e:Z

    if-eqz v0, :cond_1

    .line 517
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    const-string v1, "onBackPressed"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 519
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 533
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 534
    return-void

    .line 522
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->d()Ljava/lang/Class;

    move-result-object v0

    .line 523
    if-eqz v0, :cond_0

    .line 524
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->e()Ljava/lang/Object;

    move-result-object v1

    .line 526
    const-string v2, "onBackPressed"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 527
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 530
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    .prologue
    .line 609
    iget-boolean v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->e:Z

    if-eqz v0, :cond_1

    .line 610
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 612
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    .line 613
    const-string v1, "onConfigurationChanged"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/res/Configuration;

    aput-object v4, v2, v3

    .line 612
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 614
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 635
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 636
    return-void

    .line 623
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->d()Ljava/lang/Class;

    move-result-object v0

    .line 624
    if-eqz v0, :cond_0

    .line 625
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->e()Ljava/lang/Object;

    move-result-object v1

    .line 627
    const-string v2, "onConfigurationChanged"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/res/Configuration;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 628
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 631
    :catch_0
    move-exception v0

    goto :goto_0

    .line 616
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onContentChanged()V
    .locals 4

    .prologue
    .line 541
    :try_start_0
    iget-boolean v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->e:Z

    if-eqz v0, :cond_1

    .line 542
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    const-string v1, "onContentChanged"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 544
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 559
    return-void

    .line 547
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->d()Ljava/lang/Class;

    move-result-object v0

    .line 548
    if-eqz v0, :cond_0

    .line 549
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->e()Ljava/lang/Object;

    move-result-object v1

    .line 551
    const-string v2, "onContentChanged"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 552
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 555
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 43
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/lyhtgh/pay/activity/SdkShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/lyhtgh/pay/activity/SdkShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/lyhtgh/pay/activity/SdkShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {}, Lcom/lyhtgh/pay/g;->Z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    iput-boolean v2, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->e:Z

    .line 55
    :cond_0
    iget-boolean v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->e:Z

    if-eqz v0, :cond_4

    .line 56
    const v0, 0x1030011

    invoke-virtual {p0, v0}, Lcom/lyhtgh/pay/activity/SdkShowActivity;->setTheme(I)V

    .line 58
    new-instance v0, Lcom/lyhtgh/pay/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/lyhtgh/pay/e;-><init>(Lcom/lyhtgh/pay/activity/SdkShowActivity;Lcom/lyhtgh/pay/e;)V

    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->c:Lcom/lyhtgh/pay/e;

    .line 60
    iput-object p0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->d:Landroid/app/Activity;

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->d:Landroid/app/Activity;

    invoke-static {v0}, Lcom/lyhtgh/pay/l;->a(Landroid/content/Context;)Lcom/lyhtgh/pay/l;

    move-result-object v0

    invoke-static {}, Lcom/lyhtgh/pay/g;->Y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lyhtgh/pay/l;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->b:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 74
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->b:Ljava/lang/Object;

    .line 77
    :cond_2
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    const-string v1, "onCreate"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/os/Handler;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->d:Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/lyhtgh/pay/activity/SdkShowActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->c:Lcom/lyhtgh/pay/e;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    :cond_3
    :goto_0
    return-void

    .line 88
    :cond_4
    const v0, 0x1030010

    invoke-virtual {p0, v0}, Lcom/lyhtgh/pay/activity/SdkShowActivity;->setTheme(I)V

    .line 91
    :try_start_1
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->b()I

    .line 93
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->d()Ljava/lang/Class;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_3

    .line 95
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->e()Ljava/lang/Object;

    move-result-object v1

    .line 97
    const-string v2, "onCreate"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/app/Activity;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 98
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 101
    :catch_0
    move-exception v0

    goto :goto_0

    .line 81
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 4

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->e:Z

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 305
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 306
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 326
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 327
    return-void

    .line 314
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->d()Ljava/lang/Class;

    move-result-object v0

    .line 315
    if-eqz v0, :cond_0

    .line 316
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->e()Ljava/lang/Object;

    move-result-object v1

    .line 318
    const-string v2, "onDestroy"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 319
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    goto :goto_0

    .line 307
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 361
    iget-boolean v1, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->e:Z

    if-eqz v1, :cond_3

    .line 362
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    const-string v1, "onKeyDown"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/view/KeyEvent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 391
    :cond_0
    :goto_0
    return v0

    .line 372
    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 391
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 379
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->d()Ljava/lang/Class;

    move-result-object v0

    .line 380
    if-eqz v0, :cond_2

    .line 381
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->e()Ljava/lang/Object;

    move-result-object v1

    .line 383
    const-string v2, "onKeyDown"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/view/KeyEvent;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 384
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 387
    :catch_0
    move-exception v0

    goto :goto_1

    .line 367
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 398
    iget-boolean v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->e:Z

    if-eqz v0, :cond_0

    .line 400
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    const-string v1, "onKeyUp"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/view/KeyEvent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 401
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 420
    :goto_0
    return v0

    .line 409
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->d()Ljava/lang/Class;

    move-result-object v0

    .line 410
    if-eqz v0, :cond_1

    .line 411
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->e()Ljava/lang/Object;

    move-result-object v1

    .line 413
    const-string v2, "onKeyUp"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Landroid/view/KeyEvent;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 414
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 420
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    goto :goto_1

    .line 403
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onLowMemory()V
    .locals 4

    .prologue
    .line 566
    :try_start_0
    iget-boolean v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->e:Z

    if-eqz v0, :cond_1

    .line 567
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    const-string v1, "onLowMemory"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 569
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onLowMemory()V

    .line 584
    return-void

    .line 572
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->d()Ljava/lang/Class;

    move-result-object v0

    .line 573
    if-eqz v0, :cond_0

    .line 574
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->e()Ljava/lang/Object;

    move-result-object v1

    .line 576
    const-string v2, "onLowMemory"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 577
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 580
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->e:Z

    if-eqz v0, :cond_1

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    const-string v1, "onNewIntent"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Intent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 336
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 354
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 355
    return-void

    .line 343
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->d()Ljava/lang/Class;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_0

    .line 345
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->e()Ljava/lang/Object;

    move-result-object v1

    .line 347
    const-string v2, "onNewIntent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Intent;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 348
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    goto :goto_0

    .line 337
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->e:Z

    if-eqz v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    const-string v1, "onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 263
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 264
    return-void

    .line 251
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->d()Ljava/lang/Class;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_0

    .line 253
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->e()Ljava/lang/Object;

    move-result-object v1

    .line 255
    const-string v2, "onPause"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 256
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    move-exception v0

    goto :goto_0

    .line 244
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->e:Z

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    const-string v1, "onPostCreate"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 136
    return-void

    .line 124
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->d()Ljava/lang/Class;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->e()Ljava/lang/Object;

    move-result-object v1

    .line 128
    const-string v2, "onPostCreate"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 129
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 131
    :catch_0
    move-exception v0

    goto :goto_0

    .line 117
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 4

    .prologue
    .line 174
    iget-boolean v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->e:Z

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    const-string v1, "onRestart"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 199
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 200
    return-void

    .line 187
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->d()Ljava/lang/Class;

    move-result-object v0

    .line 188
    if-eqz v0, :cond_0

    .line 189
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->e()Ljava/lang/Object;

    move-result-object v1

    .line 191
    const-string v2, "onRestart"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 192
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    goto :goto_0

    .line 180
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 642
    iget-boolean v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->e:Z

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 645
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    .line 646
    const-string v1, "onRestoreInstanceState"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    .line 645
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 647
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 654
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 655
    return-void

    .line 649
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->e:Z

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    const-string v1, "onResume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 274
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 295
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 296
    return-void

    .line 283
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->d()Ljava/lang/Class;

    move-result-object v0

    .line 284
    if-eqz v0, :cond_0

    .line 285
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->e()Ljava/lang/Object;

    move-result-object v1

    .line 287
    const-string v2, "onResume"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 288
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 291
    :catch_0
    move-exception v0

    goto :goto_0

    .line 276
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->e:Z

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 593
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    .line 594
    const-string v1, "onSaveInstanceState"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    .line 593
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 595
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 602
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 603
    return-void

    .line 597
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 4

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->e:Z

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    const-string v1, "onStart"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 167
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 168
    return-void

    .line 155
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->d()Ljava/lang/Class;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    .line 157
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->e()Ljava/lang/Object;

    move-result-object v1

    .line 159
    const-string v2, "onStart"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 160
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    goto :goto_0

    .line 148
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->e:Z

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    const-string v1, "onStop"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 231
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 232
    return-void

    .line 219
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->d()Ljava/lang/Class;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_0

    .line 221
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->e()Ljava/lang/Object;

    move-result-object v1

    .line 223
    const-string v2, "onStop"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 224
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v0

    goto :goto_0

    .line 212
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 427
    iget-boolean v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->e:Z

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    const-string v1, "onTouchEvent"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/MotionEvent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 432
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 453
    :goto_0
    return v0

    .line 441
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->d()Ljava/lang/Class;

    move-result-object v0

    .line 442
    if-eqz v0, :cond_1

    .line 443
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->e()Ljava/lang/Object;

    move-result-object v1

    .line 445
    const-string v2, "onTouchEvent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/MotionEvent;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 446
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 453
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 449
    :catch_0
    move-exception v0

    goto :goto_1

    .line 434
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    .line 491
    :try_start_0
    iget-boolean v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->e:Z

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->a:Ljava/lang/Class;

    const-string v1, "onTrackballEvent"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/MotionEvent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkShowActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 508
    :goto_0
    return v0

    .line 497
    :cond_0
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/q;->d()Ljava/lang/Class;

    move-result-object v0

    .line 498
    if-eqz v0, :cond_1

    .line 499
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/q;->e()Ljava/lang/Object;

    move-result-object v1

    .line 501
    const-string v2, "onTrackballEvent"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/view/MotionEvent;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 502
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

    goto :goto_0

    .line 505
    :catch_0
    move-exception v0

    .line 508
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
