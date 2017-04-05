.class public Lcom/lyhtgh/pay/SdkPayServer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MSG_WHAT_TO_APP:I = 0x3e8

.field public static final ORDER_INFO_APP_ID:Ljava/lang/String; = "appId"

.field public static final ORDER_INFO_APP_NAME:Ljava/lang/String; = "appName"

.field public static final ORDER_INFO_APP_VER:Ljava/lang/String; = "appVersion"

.field public static final ORDER_INFO_CP_CHANNELID:Ljava/lang/String; = "cpChannelId"

.field public static final ORDER_INFO_CP_EXINFO:Ljava/lang/String; = "ex"

.field public static final ORDER_INFO_GAME_TYPE:Ljava/lang/String; = "gameType"

.field public static final ORDER_INFO_MERCHANT_ID:Ljava/lang/String; = "merchantId"

.field public static final ORDER_INFO_MERCHANT_SIGN:Ljava/lang/String; = "merchantSign"

.field public static final ORDER_INFO_ORDER_DESC:Ljava/lang/String; = "orderDesc"

.field public static final ORDER_INFO_ORDER_ID:Ljava/lang/String; = "orderId"

.field public static final ORDER_INFO_PAYPOINT:Ljava/lang/String; = "payPointNum"

.field public static final ORDER_INFO_PAY_PRICE:Ljava/lang/String; = "price"

.field public static final ORDER_INFO_PAY_TYPE:Ljava/lang/String; = "payType"

.field public static final ORDER_INFO_PRODUCT_NAME:Ljava/lang/String; = "productName"

.field public static final ORDER_INFO_SDK_CHANNELID:Ljava/lang/String; = "sdkChannelId"

.field public static final ORDER_INFO_SHOW_PAYUIKEY:Ljava/lang/String; = "showUIKey"

.field public static final PAYRET_KEY_FAILED_CODE:Ljava/lang/String; = "failed_code"

.field public static final PAYRET_KEY_PAIED_PRICE:Ljava/lang/String; = "pay_price"

.field public static final PAYRET_KEY_RESULT_STATUS:Ljava/lang/String; = "result_status"

.field public static final PAY_ORDER_ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final PAY_RESULT_FAILED:I = 0x1

.field public static final PAY_RESULT_FAILED_HANDLER:I = 0x67

.field public static final PAY_RESULT_FAILED_LAODER:I = 0x65

.field public static final PAY_RESULT_FAILED_NOINIT:I = 0x66

.field public static final PAY_RESULT_FAILED_ORDER:I = 0x68

.field public static final PAY_RESULT_FAILED_PARAM:I = 0x69

.field public static final PAY_RESULT_FAILED_WORKING:I = 0x6a

.field public static final PAY_RESULT_SUCCESS:I = 0x0

.field public static final PAY_RETURN_FAILED:I = 0x1

.field public static final PAY_RETURN_NOAPPC:I = 0x4

.field public static final PAY_RETURN_NOMETA:I = 0x5

.field public static final PAY_RETURN_PAYCODE:I = 0x6

.field public static final PAY_RETURN_PAYINFO:I = 0x7

.field public static final PAY_RETURN_PAYING:I = 0x2

.field public static final PAY_RETURN_SUCCESS:I = 0x0

.field public static final PAY_RETURN_UNINIT:I = 0x3

.field private static a:Lcom/lyhtgh/pay/SdkPayServer;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Lcom/lyhtgh/pay/s;

.field public static isHadLoadSmsSo:Z


# instance fields
.field private f:Landroid/graphics/Bitmap;

.field private g:Ljava/lang/String;

.field private h:Landroid/os/Handler;

.field private i:I

.field private j:I

.field private final k:Lcom/lyhtgh/pay/receiver/InSmsReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 100
    const/4 v0, 0x0

    sput-boolean v0, Lcom/lyhtgh/pay/SdkPayServer;->isHadLoadSmsSo:Z

    .line 102
    sput-object v1, Lcom/lyhtgh/pay/SdkPayServer;->b:Ljava/lang/String;

    .line 103
    sput-object v1, Lcom/lyhtgh/pay/SdkPayServer;->c:Ljava/lang/String;

    .line 104
    sput-object v1, Lcom/lyhtgh/pay/SdkPayServer;->d:Ljava/lang/String;

    .line 106
    sput-object v1, Lcom/lyhtgh/pay/SdkPayServer;->e:Lcom/lyhtgh/pay/s;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lyhtgh/pay/SdkPayServer;->f:Landroid/graphics/Bitmap;

    .line 126
    iput v1, p0, Lcom/lyhtgh/pay/SdkPayServer;->i:I

    .line 127
    iput v1, p0, Lcom/lyhtgh/pay/SdkPayServer;->j:I

    .line 129
    new-instance v0, Lcom/lyhtgh/pay/receiver/InSmsReceiver;

    invoke-direct {v0}, Lcom/lyhtgh/pay/receiver/InSmsReceiver;-><init>()V

    iput-object v0, p0, Lcom/lyhtgh/pay/SdkPayServer;->k:Lcom/lyhtgh/pay/receiver/InSmsReceiver;

    .line 144
    return-void
.end method

.method private static a(Landroid/app/Activity;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 360
    const/4 v0, 0x0

    .line 363
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 364
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 365
    invoke-virtual {v1}, Landroid/view/View;->buildDrawingCache()V

    .line 366
    invoke-virtual {v1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 367
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v2, v3, v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 368
    invoke-virtual {v1}, Landroid/view/View;->destroyDrawingCache()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_0
    return-object v0

    .line 370
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcom/lyhtgh/pay/SdkPayServer;
    .locals 2

    .prologue
    .line 134
    const-class v1, Lcom/lyhtgh/pay/SdkPayServer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/lyhtgh/pay/SdkPayServer;->a:Lcom/lyhtgh/pay/SdkPayServer;

    if-nez v0, :cond_0

    .line 135
    new-instance v0, Lcom/lyhtgh/pay/SdkPayServer;

    invoke-direct {v0}, Lcom/lyhtgh/pay/SdkPayServer;-><init>()V

    sput-object v0, Lcom/lyhtgh/pay/SdkPayServer;->a:Lcom/lyhtgh/pay/SdkPayServer;

    .line 139
    :cond_0
    sget-object v0, Lcom/lyhtgh/pay/SdkPayServer;->a:Lcom/lyhtgh/pay/SdkPayServer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPayAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    sget-object v0, Lcom/lyhtgh/pay/SdkPayServer;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static getPayCpChannelId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 427
    sget-object v0, Lcom/lyhtgh/pay/SdkPayServer;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static getPayMerChannetId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 419
    sget-object v0, Lcom/lyhtgh/pay/SdkPayServer;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static setPayStartDataInfo(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 410
    sput-object p1, Lcom/lyhtgh/pay/SdkPayServer;->b:Ljava/lang/String;

    .line 411
    sput-object p2, Lcom/lyhtgh/pay/SdkPayServer;->c:Ljava/lang/String;

    .line 412
    sput-object p3, Lcom/lyhtgh/pay/SdkPayServer;->d:Ljava/lang/String;

    .line 414
    new-instance v0, Lcom/lyhtgh/pay/application/PayApplication;

    invoke-direct {v0}, Lcom/lyhtgh/pay/application/PayApplication;-><init>()V

    .line 415
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/lyhtgh/pay/application/PayApplication;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    return-void
.end method


# virtual methods
.method public declared-synchronized cancelSdkServerPay(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 310
    monitor-enter p0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 311
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "game-cancel-pay"

    invoke-static {p1, p2, v0, v1}, Lcom/lyhtgh/pay/n;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :cond_0
    monitor-exit p0

    return-void

    .line 310
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public checkShowUIInfo(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    invoke-static {p1, p2}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->checkShowUIInfo(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getScreenShot()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/lyhtgh/pay/SdkPayServer;->f:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public varargs getSignature(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    invoke-static {p1, p2}, Lcom/lyhtgh/pay/m;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getmOrderInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/lyhtgh/pay/SdkPayServer;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getmResultCBHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/lyhtgh/pay/SdkPayServer;->h:Landroid/os/Handler;

    return-object v0
.end method

.method public getmSdkPayStatus()I
    .locals 1

    .prologue
    .line 394
    iget v0, p0, Lcom/lyhtgh/pay/SdkPayServer;->i:I

    return v0
.end method

.method public initSdkPayServer()I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 150
    iget v1, p0, Lcom/lyhtgh/pay/SdkPayServer;->j:I

    if-ne v0, v1, :cond_0

    .line 155
    :goto_0
    return v0

    .line 153
    :cond_0
    iput v0, p0, Lcom/lyhtgh/pay/SdkPayServer;->j:I

    .line 155
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initShowUIInfo(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 320
    invoke-static {p1, p2, p3, p4}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->initShowUIInfo(Landroid/app/Activity;Ljava/lang/String;ILjava/lang/String;)V

    .line 321
    return-void
.end method

.method public initUcPay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)I
    .locals 1

    .prologue
    .line 330
    :try_start_0
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/lyhtgh/pay/q;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 331
    if-nez v0, :cond_0

    if-eqz p5, :cond_0

    .line 332
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/lyhtgh/pay/q;->a(Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 339
    :cond_0
    :goto_0
    return v0

    .line 336
    :catch_0
    move-exception v0

    .line 339
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public readMerAppChannelId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 316
    invoke-static {p1}, Lcom/lyhtgh/pay/activity/SdkPayActivity;->readMerAppChannelId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setScreenShot(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 382
    iput-object p1, p0, Lcom/lyhtgh/pay/SdkPayServer;->f:Landroid/graphics/Bitmap;

    .line 383
    return-void
.end method

.method public setmOrderInfo(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 390
    iput-object p1, p0, Lcom/lyhtgh/pay/SdkPayServer;->g:Ljava/lang/String;

    .line 391
    return-void
.end method

.method public setmResultCBHandler(Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 406
    iput-object p1, p0, Lcom/lyhtgh/pay/SdkPayServer;->h:Landroid/os/Handler;

    .line 407
    return-void
.end method

.method public setmSdkPayStatus(I)V
    .locals 0

    .prologue
    .line 398
    iput p1, p0, Lcom/lyhtgh/pay/SdkPayServer;->i:I

    .line 399
    return-void
.end method

.method public declared-synchronized startSdkServerPay(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;)I
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 258
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/lyhtgh/pay/SdkPayServer;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_1

    .line 259
    const/4 v0, 0x3

    .line 303
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 265
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/lyhtgh/pay/SdkPayServer;->i:I

    if-eqz v1, :cond_2

    .line 266
    const/4 v0, 0x2

    goto :goto_0

    .line 272
    :cond_2
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 279
    sget-boolean v0, Lcom/lyhtgh/pay/application/PayApplication;->b:Z

    if-nez v0, :cond_3

    .line 280
    const/4 v0, 0x4

    goto :goto_0

    .line 282
    :cond_3
    invoke-static {p1, p3}, Lcom/lyhtgh/pay/k;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 283
    const/4 v0, 0x5

    goto :goto_0

    .line 286
    :cond_4
    sget-boolean v0, Lcom/lyhtgh/pay/application/PayApplication;->a:Z

    if-nez v0, :cond_5

    .line 288
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 289
    const-string v1, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 290
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 291
    iget-object v1, p0, Lcom/lyhtgh/pay/SdkPayServer;->k:Lcom/lyhtgh/pay/receiver/InSmsReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 292
    const/4 v0, 0x1

    sput-boolean v0, Lcom/lyhtgh/pay/application/PayApplication;->a:Z

    .line 295
    :cond_5
    iput-object p3, p0, Lcom/lyhtgh/pay/SdkPayServer;->g:Ljava/lang/String;

    .line 296
    iput-object p2, p0, Lcom/lyhtgh/pay/SdkPayServer;->h:Landroid/os/Handler;

    .line 298
    invoke-static {p1}, Lcom/lyhtgh/pay/SdkPayServer;->a(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/SdkPayServer;->f:Landroid/graphics/Bitmap;

    .line 300
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lyhtgh/pay/activity/SdkPayActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 301
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    const/4 v0, 0x0

    goto :goto_0

    .line 258
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startSdkSmsPay(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 191
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/lyhtgh/pay/SdkPayServer;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_1

    .line 192
    const/4 v0, 0x3

    .line 246
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 198
    :cond_1
    :try_start_1
    iget v1, p0, Lcom/lyhtgh/pay/SdkPayServer;->i:I

    if-eqz v1, :cond_2

    .line 199
    const/4 v0, 0x2

    goto :goto_0

    .line 205
    :cond_2
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    if-eqz p6, :cond_0

    .line 208
    sget-object v0, Lcom/lyhtgh/pay/SdkPayServer;->e:Lcom/lyhtgh/pay/s;

    if-nez v0, :cond_3

    .line 209
    invoke-static {}, Lcom/lyhtgh/pay/g;->l()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, p1}, Lcom/lyhtgh/pay/r;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Lcom/lyhtgh/pay/s;

    move-result-object v0

    sput-object v0, Lcom/lyhtgh/pay/SdkPayServer;->e:Lcom/lyhtgh/pay/s;

    .line 211
    :cond_3
    sget-object v0, Lcom/lyhtgh/pay/SdkPayServer;->e:Lcom/lyhtgh/pay/s;

    if-nez v0, :cond_4

    .line 212
    const/4 v0, 0x6

    goto :goto_0

    .line 214
    :cond_4
    sget-object v5, Lcom/lyhtgh/pay/SdkPayServer;->e:Lcom/lyhtgh/pay/s;

    move-object v0, p3

    move-object v1, p4

    move-object v2, p5

    move-object v3, p6

    move-object v4, p7

    invoke-static/range {v0 .. v5}, Lcom/lyhtgh/pay/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/lyhtgh/pay/s;)Ljava/lang/String;

    move-result-object v0

    .line 215
    if-nez v0, :cond_5

    .line 216
    const/4 v0, 0x7

    goto :goto_0

    .line 222
    :cond_5
    sget-boolean v1, Lcom/lyhtgh/pay/application/PayApplication;->b:Z

    if-nez v1, :cond_6

    .line 223
    const/4 v0, 0x4

    goto :goto_0

    .line 225
    :cond_6
    invoke-static {p1, v0}, Lcom/lyhtgh/pay/k;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 226
    const/4 v0, 0x5

    goto :goto_0

    .line 229
    :cond_7
    sget-boolean v1, Lcom/lyhtgh/pay/application/PayApplication;->a:Z

    if-nez v1, :cond_8

    .line 231
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 232
    const-string v2, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 233
    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 234
    iget-object v2, p0, Lcom/lyhtgh/pay/SdkPayServer;->k:Lcom/lyhtgh/pay/receiver/InSmsReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 235
    const/4 v1, 0x1

    sput-boolean v1, Lcom/lyhtgh/pay/application/PayApplication;->a:Z

    .line 238
    :cond_8
    iput-object v0, p0, Lcom/lyhtgh/pay/SdkPayServer;->g:Ljava/lang/String;

    .line 239
    iput-object p2, p0, Lcom/lyhtgh/pay/SdkPayServer;->h:Landroid/os/Handler;

    .line 241
    invoke-static {p1}, Lcom/lyhtgh/pay/SdkPayServer;->a(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/lyhtgh/pay/SdkPayServer;->f:Landroid/graphics/Bitmap;

    .line 243
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/lyhtgh/pay/activity/SdkPayActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 244
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 246
    const/4 v0, 0x0

    goto :goto_0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startUnPay(Landroid/app/Activity;)I
    .locals 1

    .prologue
    .line 345
    :try_start_0
    invoke-static {}, Lcom/lyhtgh/pay/q;->a()Lcom/lyhtgh/pay/q;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/lyhtgh/pay/q;->a(Landroid/app/Activity;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 350
    :goto_0
    return v0

    .line 347
    :catch_0
    move-exception v0

    .line 350
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public unInitSdkPayServer()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcom/lyhtgh/pay/SdkPayServer;->j:I

    .line 163
    return-void
.end method
