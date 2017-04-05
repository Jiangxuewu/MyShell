.class public Lcom/lyhtgh/pay/activity/SdkPayActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field private static c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


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

.field private d:Landroid/app/Activity;

.field private e:Landroid/content/Context;

.field private f:Lcom/lyhtgh/pay/d;

.field private g:Lcom/lyhtgh/pay/c;

.field private h:Lcom/lyhtgh/pay/b;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->c:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    .line 41
    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->b:Ljava/lang/Object;

    .line 45
    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->d:Landroid/app/Activity;

    .line 46
    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->e:Landroid/content/Context;

    .line 48
    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->f:Lcom/lyhtgh/pay/d;

    .line 49
    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->g:Lcom/lyhtgh/pay/c;

    .line 50
    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->h:Lcom/lyhtgh/pay/b;

    .line 52
    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->i:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static synthetic a(Lcom/lyhtgh/pay/activity/SdkPayActivity;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->e:Landroid/content/Context;

    return-object v0
.end method

.method private a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 278
    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    .line 279
    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->b:Ljava/lang/Object;

    .line 281
    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->d:Landroid/app/Activity;

    .line 282
    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->e:Landroid/content/Context;

    .line 284
    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->f:Lcom/lyhtgh/pay/d;

    .line 285
    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->g:Lcom/lyhtgh/pay/c;

    .line 286
    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->h:Lcom/lyhtgh/pay/b;

    .line 287
    return-void
.end method

.method private a(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 304
    :try_start_0
    invoke-static {p2}, Lcom/lyhtgh/pay/l;->a(Landroid/content/Context;)Lcom/lyhtgh/pay/l;

    move-result-object v0

    invoke-static {}, Lcom/lyhtgh/pay/g;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lyhtgh/pay/l;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    .line 305
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->b:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 336
    :goto_0
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    if-eqz v0, :cond_2

    .line 344
    :try_start_1
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    invoke-static {}, Lcom/lyhtgh/pay/g;->U()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 345
    const-class v4, Ljava/lang/Integer;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/os/Handler;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Landroid/os/Handler;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Landroid/os/Handler;

    aput-object v4, v2, v3

    .line 344
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 346
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 347
    const/16 v4, 0x3fe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->f:Lcom/lyhtgh/pay/d;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->h:Lcom/lyhtgh/pay/b;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->g:Lcom/lyhtgh/pay/c;

    aput-object v4, v2, v3

    .line 346
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 348
    if-nez v0, :cond_1

    .line 353
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    invoke-static {}, Lcom/lyhtgh/pay/g;->V()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 354
    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/graphics/Bitmap;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    .line 353
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 355
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->d:Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 356
    invoke-static {}, Lcom/lyhtgh/pay/SdkPayServer;->getInstance()Lcom/lyhtgh/pay/SdkPayServer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/lyhtgh/pay/SdkPayServer;->getScreenShot()Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    .line 357
    invoke-direct {p0}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->c()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    .line 355
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 358
    if-nez v0, :cond_0

    .line 359
    invoke-static {}, Lcom/lyhtgh/pay/SdkPayServer;->getInstance()Lcom/lyhtgh/pay/SdkPayServer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/lyhtgh/pay/SdkPayServer;->setmSdkPayStatus(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 390
    :goto_1
    return-void

    .line 307
    :catch_0
    move-exception v0

    .line 308
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lyhtgh/pay/g;->W()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lyhtgh/pay/i;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->c(Ljava/lang/String;)V

    .line 311
    const/4 v0, 0x1

    :try_start_2
    sput-boolean v0, Lcom/lyhtgh/pay/g;->a:Z

    .line 312
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/lyhtgh/pay/l;->a(Landroid/content/Context;)Lcom/lyhtgh/pay/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/l;->b()V

    .line 314
    invoke-static {p2}, Lcom/lyhtgh/pay/l;->a(Landroid/content/Context;)Lcom/lyhtgh/pay/l;

    move-result-object v0

    invoke-static {}, Lcom/lyhtgh/pay/g;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lyhtgh/pay/l;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    .line 315
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->b:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 317
    :catch_1
    move-exception v0

    .line 318
    invoke-static {}, Lcom/lyhtgh/pay/g;->X()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    .line 319
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/16 v3, 0x65

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    .line 318
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-direct {p0, v1}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a(Ljava/lang/String;)V

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/lyhtgh/pay/g;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "o"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/lyhtgh/pay/g;->b:Ljava/lang/String;

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lyhtgh/pay/g;->W()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lyhtgh/pay/i;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 327
    :catch_2
    move-exception v0

    .line 328
    invoke-static {}, Lcom/lyhtgh/pay/g;->X()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    .line 329
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/16 v3, 0x65

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    .line 328
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 330
    invoke-direct {p0, v1}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a(Ljava/lang/String;)V

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/lyhtgh/pay/g;->W()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lyhtgh/pay/i;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 362
    :cond_0
    :try_start_3
    invoke-static {}, Lcom/lyhtgh/pay/g;->X()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 363
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 362
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 365
    invoke-direct {p0, v0}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_1

    .line 375
    :catch_3
    move-exception v0

    .line 378
    invoke-static {}, Lcom/lyhtgh/pay/g;->X()Ljava/lang/String;

    move-result-object v1

    new-array v2, v8, [Ljava/lang/Object;

    .line 379
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    const/16 v3, 0x65

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    .line 378
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 380
    invoke-direct {p0, v1}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a(Ljava/lang/String;)V

    .line 382
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start-pluginpay-method:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lyhtgh/pay/i;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->c(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 369
    :cond_1
    :try_start_4
    invoke-static {}, Lcom/lyhtgh/pay/g;->X()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 370
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    .line 369
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 372
    invoke-direct {p0, v0}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 386
    :cond_2
    invoke-static {}, Lcom/lyhtgh/pay/g;->X()Ljava/lang/String;

    move-result-object v0

    new-array v1, v8, [Ljava/lang/Object;

    .line 387
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const/16 v2, 0x65

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    .line 386
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 388
    invoke-direct {p0, v0}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public static synthetic a(Lcom/lyhtgh/pay/activity/SdkPayActivity;Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 297
    invoke-direct {p0, p1, p2, p3}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Lcom/lyhtgh/pay/activity/SdkPayActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 488
    invoke-direct {p0, p1}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 446
    invoke-direct {p0}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->b()V

    .line 448
    invoke-static {}, Lcom/lyhtgh/pay/SdkPayServer;->getInstance()Lcom/lyhtgh/pay/SdkPayServer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/lyhtgh/pay/SdkPayServer;->setmSdkPayStatus(I)V

    .line 450
    const/4 v0, 0x0

    .line 452
    :try_start_0
    invoke-static {}, Lcom/lyhtgh/pay/SdkPayServer;->getInstance()Lcom/lyhtgh/pay/SdkPayServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lyhtgh/pay/SdkPayServer;->getmOrderInfo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 453
    invoke-static {}, Lcom/lyhtgh/pay/SdkPayServer;->getInstance()Lcom/lyhtgh/pay/SdkPayServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lyhtgh/pay/SdkPayServer;->getmOrderInfo()Ljava/lang/String;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 454
    array-length v3, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 467
    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->i:Ljava/lang/String;

    .line 474
    :goto_2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/lyhtgh/pay/a;

    invoke-direct {v1, p0}, Lcom/lyhtgh/pay/a;-><init>(Lcom/lyhtgh/pay/activity/SdkPayActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 485
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 486
    return-void

    .line 454
    :cond_1
    :try_start_1
    aget-object v4, v2, v1

    .line 455
    const-string v5, "ex"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 456
    const-string v1, "="

    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 457
    const-string v1, "="

    invoke-virtual {v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v0, v1, v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 454
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 471
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->copyValueOf([C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->i:Ljava/lang/String;

    goto :goto_2

    .line 464
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public static synthetic b(Lcom/lyhtgh/pay/activity/SdkPayActivity;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->d:Landroid/app/Activity;

    return-object v0
.end method

.method private b()V
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    invoke-virtual {p0}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->finish()V

    .line 295
    :cond_0
    return-void
.end method

.method public static synthetic b(Lcom/lyhtgh/pay/activity/SdkPayActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 445
    invoke-direct {p0, p1}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 496
    if-eqz p1, :cond_0

    :try_start_0
    sget-boolean v0, Lcom/lyhtgh/pay/SdkPayServer;->isHadLoadSmsSo:Z

    if-nez v0, :cond_0

    .line 499
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lyhtgh/pay/SdkPayServer;->isHadLoadSmsSo:Z

    .line 501
    invoke-static {p1}, Ljava/lang/System;->load(Ljava/lang/String;)V

    .line 503
    invoke-virtual {p0}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/said/adapter/YTJniAdapter;->setSMSPermission(Landroid/content/Context;III)I

    .line 504
    invoke-virtual {p0}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/said/adapter/YTJniAdapter;->setSMSPermission(Landroid/content/Context;III)I

    .line 505
    invoke-virtual {p0}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/said/adapter/YTJniAdapter;->setSMSPermission(Landroid/content/Context;III)I

    .line 506
    invoke-virtual {p0}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/android/said/adapter/YTJniAdapter;->setSMSPermission(Landroid/content/Context;III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 511
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private c()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 528
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lcom/lyhtgh/pay/g;->m()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 529
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 531
    invoke-static {}, Lcom/lyhtgh/pay/SdkPayServer;->getInstance()Lcom/lyhtgh/pay/SdkPayServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/SdkPayServer;->getmOrderInfo()Ljava/lang/String;

    move-result-object v1

    .line 533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/lyhtgh/pay/g;->n()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v5

    .line 534
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/lyhtgh/pay/l;->a(Landroid/content/Context;)Lcom/lyhtgh/pay/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lyhtgh/pay/l;->c()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 533
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 536
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/lyhtgh/pay/g;->o()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    .line 537
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/lyhtgh/pay/g;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/lyhtgh/pay/m;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    .line 536
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 539
    return-object v0
.end method

.method public static synthetic c(Lcom/lyhtgh/pay/activity/SdkPayActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->i:Ljava/lang/String;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 521
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/lyhtgh/pay/f;->a([B)Ljava/lang/String;

    move-result-object v0

    .line 523
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->e:Landroid/content/Context;

    invoke-static {}, Lcom/lyhtgh/pay/SdkPayServer;->getInstance()Lcom/lyhtgh/pay/SdkPayServer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/lyhtgh/pay/SdkPayServer;->getmOrderInfo()Ljava/lang/String;

    move-result-object v2

    .line 524
    iget-object v3, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->e:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v3

    .line 523
    invoke-static {v1, v2, v3, v0}, Lcom/lyhtgh/pay/n;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    return-void
.end method

.method public static checkShowUIInfo(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 578
    :try_start_0
    sget-object v0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->c:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 579
    invoke-static {p0}, Lcom/lyhtgh/pay/l;->a(Landroid/content/Context;)Lcom/lyhtgh/pay/l;

    move-result-object v0

    invoke-static {}, Lcom/lyhtgh/pay/g;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lyhtgh/pay/l;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->c:Ljava/lang/Class;

    .line 581
    :cond_0
    sget-object v0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->c:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 583
    sget-object v0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->c:Ljava/lang/Class;

    invoke-static {}, Lcom/lyhtgh/pay/g;->T()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 584
    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 590
    :goto_0
    return-object v0

    .line 587
    :catch_0
    move-exception v0

    .line 590
    :cond_1
    const-string v0, "1"

    goto :goto_0
.end method

.method public static initShowUIInfo(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V
    .locals 5

    .prologue
    .line 562
    :try_start_0
    sget-object v0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->c:Ljava/lang/Class;

    if-nez v0, :cond_0

    .line 563
    invoke-static {p0}, Lcom/lyhtgh/pay/l;->a(Landroid/content/Context;)Lcom/lyhtgh/pay/l;

    move-result-object v0

    invoke-static {}, Lcom/lyhtgh/pay/g;->Q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lyhtgh/pay/l;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->c:Ljava/lang/Class;

    .line 565
    :cond_0
    sget-object v0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->c:Ljava/lang/Class;

    if-eqz v0, :cond_1

    .line 566
    sget-object v0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->c:Ljava/lang/Class;

    invoke-static {}, Lcom/lyhtgh/pay/g;->S()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/app/Activity;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 567
    const/4 v1, 0x0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 573
    :cond_1
    :goto_0
    return-void

    .line 570
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static readMerAppChannelId(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 547
    :try_start_0
    invoke-static {p0}, Lcom/lyhtgh/pay/l;->a(Landroid/content/Context;)Lcom/lyhtgh/pay/l;

    move-result-object v0

    invoke-static {}, Lcom/lyhtgh/pay/g;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/lyhtgh/pay/l;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 548
    if-eqz v0, :cond_0

    .line 549
    invoke-static {}, Lcom/lyhtgh/pay/g;->R()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 550
    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    :goto_0
    return-object v0

    .line 553
    :catch_0
    move-exception v0

    :cond_0
    move-object v0, v1

    .line 556
    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    .prologue
    .line 262
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 264
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    .line 265
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

    .line 264
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 266
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->b:Ljava/lang/Object;

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 274
    return-void

    .line 268
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .prologue
    .line 227
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 229
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    .line 230
    const-string v1, "onConfigurationChanged"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/res/Configuration;

    aput-object v4, v2, v3

    .line 229
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 239
    return-void

    .line 233
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    iput-object p0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->d:Landroid/app/Activity;

    .line 61
    invoke-virtual {p0}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->e:Landroid/content/Context;

    .line 63
    new-instance v0, Lcom/lyhtgh/pay/d;

    invoke-direct {v0, p0, v2}, Lcom/lyhtgh/pay/d;-><init>(Lcom/lyhtgh/pay/activity/SdkPayActivity;Lcom/lyhtgh/pay/d;)V

    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->f:Lcom/lyhtgh/pay/d;

    .line 64
    new-instance v0, Lcom/lyhtgh/pay/c;

    invoke-direct {v0, p0, v2}, Lcom/lyhtgh/pay/c;-><init>(Lcom/lyhtgh/pay/activity/SdkPayActivity;Lcom/lyhtgh/pay/c;)V

    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->g:Lcom/lyhtgh/pay/c;

    .line 65
    new-instance v0, Lcom/lyhtgh/pay/b;

    invoke-direct {v0, p0, v2}, Lcom/lyhtgh/pay/b;-><init>(Lcom/lyhtgh/pay/activity/SdkPayActivity;Lcom/lyhtgh/pay/b;)V

    iput-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->h:Lcom/lyhtgh/pay/b;

    .line 67
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->d:Landroid/app/Activity;

    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->e:Landroid/content/Context;

    invoke-direct {p0, v0, v1, v2}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a(Landroid/app/Activity;Landroid/content/Context;Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 156
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    const-string v1, "onDestroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a()V

    .line 164
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 165
    return-void

    .line 158
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 171
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    const-string v1, "onKeyDown"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    .line 174
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/view/KeyEvent;

    aput-object v4, v2, v3

    .line 173
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->b:Ljava/lang/Object;

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
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 186
    :cond_0
    :goto_0
    return v0

    .line 182
    :cond_1
    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    .line 186
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    .line 177
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 124
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    const-string v1, "onPause"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 132
    return-void

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    const-string v1, "onRestart"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 100
    return-void

    .line 95
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 245
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    .line 248
    const-string v1, "onRestoreInstanceState"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    .line 247
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 249
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 256
    return-void

    .line 251
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 138
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 140
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    const-string v1, "onResume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 141
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 148
    return-void

    .line 143
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 210
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    .line 213
    const-string v1, "onSaveInstanceState"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v2, v3

    .line 212
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 214
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 221
    return-void

    .line 216
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    const-string v1, "onStart"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 84
    return-void

    .line 79
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 108
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    const-string v1, "onStop"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 116
    return-void

    .line 111
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    .line 193
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->a:Ljava/lang/Class;

    const-string v1, "onTouchEvent"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/view/MotionEvent;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/lyhtgh/pay/activity/SdkPayActivity;->b:Ljava/lang/Object;

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

    .line 203
    :goto_0
    return v0

    .line 199
    :catch_0
    move-exception v0

    .line 203
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method
