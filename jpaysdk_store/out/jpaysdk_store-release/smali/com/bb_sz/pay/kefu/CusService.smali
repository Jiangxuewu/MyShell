.class public Lcom/bb_sz/pay/kefu/CusService;
.super Ljava/lang/Object;
.source "CusService.java"


# static fields
.field private static final BANK:F = 32.0f

.field private static final H:F = 65.0f

.field private static final HBtn:F = 32.0f

.field public static HD:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "SkyCusService"

.field private static final W:F = 65.0f

.field private static final WBtn:F = 98.0f

.field public static WD:F

.field private static mInstance:Lcom/bb_sz/pay/kefu/CusService;


# instance fields
.field private isMoved:Z

.field isShowIcon:Z

.field private lastUpdateTime:J

.field private mDView:Landroid/view/View;

.field private mDialogView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mTouchStartX:F

.field private mTouchStartY:F

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParamDialog:Landroid/view/WindowManager$LayoutParams;

.field private mWindowParamIcon:Landroid/view/WindowManager$LayoutParams;

.field private pkg:Ljava/lang/String;

.field private resumeRun:Ljava/lang/Runnable;

.field private st:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/bb_sz/pay/kefu/CusService;->mInstance:Lcom/bb_sz/pay/kefu/CusService;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const-wide/16 v0, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-wide v0, p0, Lcom/bb_sz/pay/kefu/CusService;->st:J

    .line 51
    iput-wide v0, p0, Lcom/bb_sz/pay/kefu/CusService;->lastUpdateTime:J

    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bb_sz/pay/kefu/CusService;->isShowIcon:Z

    .line 69
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->pkg:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 70
    sget v0, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v0, :cond_0

    const-string v0, "SkyCusService"

    const-string v1, "CusService..error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    sget v0, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v0, :cond_2

    const-string v0, "SkyCusService"

    const-string v1, "CusService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_2
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CusService;->initWH(Landroid/app/Activity;)V

    .line 77
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->pkg:Ljava/lang/String;

    .line 79
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CusService;->initViewIcon(Landroid/app/Activity;)V

    .line 80
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CusService;->initViewDialog(Landroid/app/Activity;)V

    .line 81
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CusService;->createView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mDView:Landroid/view/View;

    .line 83
    new-instance v0, Lcom/bb_sz/pay/kefu/CSDialogView;

    invoke-direct {v0, p1}, Lcom/bb_sz/pay/kefu/CSDialogView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mDialogView:Landroid/view/View;

    .line 85
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mDialogView:Landroid/view/View;

    check-cast v0, Lcom/bb_sz/pay/kefu/CSDialogView;

    new-instance v1, Lcom/bb_sz/pay/kefu/CusService$1;

    invoke-direct {v1, p0}, Lcom/bb_sz/pay/kefu/CusService$1;-><init>(Lcom/bb_sz/pay/kefu/CusService;)V

    invoke-virtual {v0, v1}, Lcom/bb_sz/pay/kefu/CSDialogView;->setItemListener(Lcom/bb_sz/pay/kefu/CSDialogView$IItemListener;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/bb_sz/pay/kefu/CusService;)V
    .locals 0
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/CusService;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/bb_sz/pay/kefu/CusService;->hideDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/bb_sz/pay/kefu/CusService;)V
    .locals 0
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/CusService;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/bb_sz/pay/kefu/CusService;->showIcon()V

    return-void
.end method

.method static synthetic access$1000(Lcom/bb_sz/pay/kefu/CusService;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/CusService;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mDView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/bb_sz/pay/kefu/CusService;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/CusService;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowParamIcon:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/bb_sz/pay/kefu/CusService;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/CusService;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/bb_sz/pay/kefu/CusService;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/CusService;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowParamDialog:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bb_sz/pay/kefu/CusService;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/CusService;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mDialogView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bb_sz/pay/kefu/CusService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/CusService;

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/bb_sz/pay/kefu/CusService;->isMoved:Z

    return v0
.end method

.method static synthetic access$302(Lcom/bb_sz/pay/kefu/CusService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/CusService;
    .param p1, "x1"    # Z

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/bb_sz/pay/kefu/CusService;->isMoved:Z

    return p1
.end method

.method static synthetic access$400(Lcom/bb_sz/pay/kefu/CusService;)F
    .locals 1
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/CusService;

    .prologue
    .line 33
    iget v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mTouchStartX:F

    return v0
.end method

.method static synthetic access$402(Lcom/bb_sz/pay/kefu/CusService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/CusService;
    .param p1, "x1"    # F

    .prologue
    .line 33
    iput p1, p0, Lcom/bb_sz/pay/kefu/CusService;->mTouchStartX:F

    return p1
.end method

.method static synthetic access$500(Lcom/bb_sz/pay/kefu/CusService;)F
    .locals 1
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/CusService;

    .prologue
    .line 33
    iget v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mTouchStartY:F

    return v0
.end method

.method static synthetic access$502(Lcom/bb_sz/pay/kefu/CusService;F)F
    .locals 0
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/CusService;
    .param p1, "x1"    # F

    .prologue
    .line 33
    iput p1, p0, Lcom/bb_sz/pay/kefu/CusService;->mTouchStartY:F

    return p1
.end method

.method static synthetic access$600(Lcom/bb_sz/pay/kefu/CusService;)J
    .locals 2
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/CusService;

    .prologue
    .line 33
    iget-wide v0, p0, Lcom/bb_sz/pay/kefu/CusService;->st:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/bb_sz/pay/kefu/CusService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/CusService;
    .param p1, "x1"    # J

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/bb_sz/pay/kefu/CusService;->st:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/bb_sz/pay/kefu/CusService;FF)V
    .locals 0
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/CusService;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/bb_sz/pay/kefu/CusService;->updateViewPosition(FF)V

    return-void
.end method

.method static synthetic access$800(Lcom/bb_sz/pay/kefu/CusService;)V
    .locals 0
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/CusService;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/bb_sz/pay/kefu/CusService;->click()V

    return-void
.end method

.method static synthetic access$900(Lcom/bb_sz/pay/kefu/CusService;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/CusService;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/bb_sz/pay/kefu/CusService;->notifyServer(ILjava/lang/String;)V

    return-void
.end method

.method private click()V
    .locals 2

    .prologue
    .line 181
    sget v0, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v0, :cond_0

    const-string v0, "SkyCusService"

    const-string v1, "click"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/bb_sz/pay/kefu/CusService;->hideIcon()V

    .line 183
    invoke-direct {p0}, Lcom/bb_sz/pay/kefu/CusService;->showDialog()V

    .line 185
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bb_sz/pay/kefu/CusService;->notifyServer(ILjava/lang/String;)V

    .line 186
    return-void
.end method

.method private createDialogView(Landroid/app/Activity;)Landroid/view/View;
    .locals 20
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 189
    new-instance v16, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 190
    .local v16, "rl":Landroid/widget/RelativeLayout;
    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 191
    .local v4, "bg":Landroid/widget/ImageView;
    new-instance v17, Landroid/widget/FrameLayout$LayoutParams;

    sget v18, Lcom/bb_sz/pay/kefu/CusService;->WD:F

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v18

    sget v19, Lcom/bb_sz/pay/kefu/CusService;->HD:F

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v19

    invoke-direct/range {v17 .. v19}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    const/4 v13, 0x0

    .line 194
    .local v13, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    const-string v18, "cus_service/px_cus_page.png"

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v13

    .line 198
    :goto_0
    invoke-static {v13}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 199
    .local v5, "bmp":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_0

    .line 200
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 202
    :cond_0
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 204
    new-instance v14, Landroid/widget/LinearLayout;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 205
    .local v14, "ll":Landroid/widget/LinearLayout;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 206
    new-instance v15, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v17, -0x1

    const/high16 v18, 0x42000000    # 32.0f

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-direct {v15, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 208
    .local v15, "llP":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v17, 0x41200000    # 10.0f

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v17

    move/from16 v0, v17

    iput v0, v15, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 209
    sget v17, Lcom/bb_sz/pay/kefu/CusService;->HD:F

    const/high16 v18, 0x42000000    # 32.0f

    sub-float v17, v17, v18

    iget v0, v15, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v17, v17, v18

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v17

    move/from16 v0, v17

    iput v0, v15, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 211
    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 213
    new-instance v6, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 214
    .local v6, "call":Landroid/widget/ImageView;
    new-instance v17, Lcom/bb_sz/pay/kefu/CusService$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/bb_sz/pay/kefu/CusService$3;-><init>(Lcom/bb_sz/pay/kefu/CusService;Landroid/app/Activity;)V

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    const/4 v8, 0x0

    .line 230
    .local v8, "callIn":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    const-string v18, "cus_service/px_btn_call.png"

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 234
    :goto_1
    invoke-static {v8}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 235
    .local v7, "callBmp":Landroid/graphics/Bitmap;
    if-eqz v7, :cond_1

    .line 236
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 238
    :cond_1
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v18, 0x42c40000    # 98.0f

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v18

    const/high16 v19, 0x42000000    # 32.0f

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v19

    invoke-direct/range {v17 .. v19}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 239
    new-instance v3, Landroid/view/View;

    move-object/from16 v0, p1

    invoke-direct {v3, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 240
    .local v3, "bank":Landroid/view/View;
    const/16 v17, 0x4

    move/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 241
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v18, 0x42000000    # 32.0f

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v18

    const/high16 v19, 0x3f800000    # 1.0f

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v19

    invoke-direct/range {v17 .. v19}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 243
    new-instance v9, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 244
    .local v9, "cancel":Landroid/widget/ImageView;
    new-instance v17, Lcom/bb_sz/pay/kefu/CusService$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/bb_sz/pay/kefu/CusService$4;-><init>(Lcom/bb_sz/pay/kefu/CusService;)V

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    const/4 v11, 0x0

    .line 253
    .local v11, "cancelIn":Ljava/io/InputStream;
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v17

    const-string v18, "cus_service/px_btn_cancel.png"

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v11

    .line 257
    :goto_2
    invoke-static {v11}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 258
    .local v10, "cancelBmp":Landroid/graphics/Bitmap;
    if-eqz v10, :cond_2

    .line 259
    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 261
    :cond_2
    new-instance v17, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v18, 0x42c40000    # 98.0f

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v18

    const/high16 v19, 0x42000000    # 32.0f

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-static {v0, v1}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v19

    invoke-direct/range {v17 .. v19}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v9, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 264
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 265
    return-object v16

    .line 195
    .end local v3    # "bank":Landroid/view/View;
    .end local v5    # "bmp":Landroid/graphics/Bitmap;
    .end local v6    # "call":Landroid/widget/ImageView;
    .end local v7    # "callBmp":Landroid/graphics/Bitmap;
    .end local v8    # "callIn":Ljava/io/InputStream;
    .end local v9    # "cancel":Landroid/widget/ImageView;
    .end local v10    # "cancelBmp":Landroid/graphics/Bitmap;
    .end local v11    # "cancelIn":Ljava/io/InputStream;
    .end local v14    # "ll":Landroid/widget/LinearLayout;
    .end local v15    # "llP":Landroid/widget/RelativeLayout$LayoutParams;
    :catch_0
    move-exception v12

    .line 196
    .local v12, "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 231
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v5    # "bmp":Landroid/graphics/Bitmap;
    .restart local v6    # "call":Landroid/widget/ImageView;
    .restart local v8    # "callIn":Ljava/io/InputStream;
    .restart local v14    # "ll":Landroid/widget/LinearLayout;
    .restart local v15    # "llP":Landroid/widget/RelativeLayout$LayoutParams;
    :catch_1
    move-exception v12

    .line 232
    .restart local v12    # "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 254
    .end local v12    # "e":Ljava/io/IOException;
    .restart local v3    # "bank":Landroid/view/View;
    .restart local v7    # "callBmp":Landroid/graphics/Bitmap;
    .restart local v9    # "cancel":Landroid/widget/ImageView;
    .restart local v11    # "cancelIn":Ljava/io/InputStream;
    :catch_2
    move-exception v12

    .line 255
    .restart local v12    # "e":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private createView(Landroid/app/Activity;)Landroid/view/View;
    .locals 9
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/high16 v8, 0x42820000    # 65.0f

    .line 126
    sget v5, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v5, :cond_0

    const-string v5, "SkyCusService"

    const-string v6, "createView"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 129
    .local v2, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 130
    .local v3, "icon":Landroid/widget/ImageView;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p1, v8}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-static {p1, v8}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    const/4 v4, 0x0

    .line 133
    .local v4, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "cus_service/px_btn_customer_service.png"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 137
    :goto_0
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 138
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 139
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 142
    :goto_1
    new-instance v5, Lcom/bb_sz/pay/kefu/CusService$2;

    invoke-direct {v5, p0}, Lcom/bb_sz/pay/kefu/CusService$2;-><init>(Lcom/bb_sz/pay/kefu/CusService;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 175
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 176
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p1, v8}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-static {p1, v8}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    return-object v2

    .line 134
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 135
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 141
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_1
    const v5, 0x1080036

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public static dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 480
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 481
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getInstance(Landroid/app/Activity;)Lcom/bb_sz/pay/kefu/CusService;
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 59
    const-string v1, "SkyCusService"

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Lcom/bb_sz/pay/kefu/CusService;->mInstance:Lcom/bb_sz/pay/kefu/CusService;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lcom/bb_sz/pay/kefu/CusService;

    invoke-direct {v0, p0}, Lcom/bb_sz/pay/kefu/CusService;-><init>(Landroid/app/Activity;)V

    sput-object v0, Lcom/bb_sz/pay/kefu/CusService;->mInstance:Lcom/bb_sz/pay/kefu/CusService;

    .line 63
    :cond_0
    sget-object v0, Lcom/bb_sz/pay/kefu/CusService;->mInstance:Lcom/bb_sz/pay/kefu/CusService;

    monitor-exit v1

    return-object v0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getScreenOrientation(Landroid/content/Context;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 467
    if-eqz p0, :cond_0

    .line 468
    const-string v3, "window"

    .line 469
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 470
    .local v2, "wm":Landroid/view/WindowManager;
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 471
    .local v1, "width":I
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 472
    .local v0, "height":I
    if-le v1, v0, :cond_0

    .line 473
    const/4 v3, 0x1

    .line 476
    .end local v0    # "height":I
    .end local v1    # "width":I
    .end local v2    # "wm":Landroid/view/WindowManager;
    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private hideDialog()V
    .locals 3

    .prologue
    .line 339
    :try_start_0
    sget v1, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v1, :cond_0

    const-string v1, "SkyCusService"

    const-string v2, "hideDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_0
    iget-object v1, p0, Lcom/bb_sz/pay/kefu/CusService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/bb_sz/pay/kefu/CusService$8;

    invoke-direct {v2, p0}, Lcom/bb_sz/pay/kefu/CusService$8;-><init>(Lcom/bb_sz/pay/kefu/CusService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    return-void

    .line 347
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private hideIcon()V
    .locals 3

    .prologue
    .line 308
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/bb_sz/pay/kefu/CusService;->isShowIcon:Z

    .line 309
    sget v1, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v1, :cond_0

    const-string v1, "SkyCusService"

    const-string v2, "hideIcon"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/bb_sz/pay/kefu/CusService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/bb_sz/pay/kefu/CusService$6;

    invoke-direct {v2, p0}, Lcom/bb_sz/pay/kefu/CusService$6;-><init>(Lcom/bb_sz/pay/kefu/CusService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private initViewDialog(Landroid/app/Activity;)V
    .locals 3
    .param p1, "mContext"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 392
    sget v0, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v0, :cond_0

    const-string v0, "SkyCusService"

    const-string v1, "initViewDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_1

    .line 394
    const-string v0, "window"

    .line 395
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowManager:Landroid/view/WindowManager;

    .line 398
    :cond_1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowParamDialog:Landroid/view/WindowManager$LayoutParams;

    .line 400
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowParamDialog:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 401
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowParamDialog:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x400

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 404
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowParamDialog:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/bb_sz/pay/kefu/CusService;->WD:F

    invoke-static {p1, v1}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 405
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowParamDialog:Landroid/view/WindowManager$LayoutParams;

    sget v1, Lcom/bb_sz/pay/kefu/CusService;->HD:F

    invoke-static {p1, v1}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 407
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowParamDialog:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x11

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 408
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowParamDialog:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 409
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowParamDialog:Landroid/view/WindowManager$LayoutParams;

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 411
    return-void
.end method

.method private initViewIcon(Landroid/app/Activity;)V
    .locals 4
    .param p1, "mContext"    # Landroid/app/Activity;

    .prologue
    const/high16 v3, 0x42820000    # 65.0f

    .line 414
    sget v0, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v0, :cond_0

    const-string v0, "SkyCusService"

    const-string v1, "initViewIcon"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_1

    .line 416
    const-string v0, "window"

    .line 417
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowManager:Landroid/view/WindowManager;

    .line 419
    :cond_1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowParamIcon:Landroid/view/WindowManager$LayoutParams;

    .line 423
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowParamIcon:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 424
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowParamIcon:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 425
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowParamIcon:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowParamIcon:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 429
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowParamIcon:Landroid/view/WindowManager$LayoutParams;

    invoke-static {p1, v3}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 430
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowParamIcon:Landroid/view/WindowManager$LayoutParams;

    invoke-static {p1, v3}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 432
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowParamIcon:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 434
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowParamIcon:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 435
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowParamIcon:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x32

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 436
    return-void
.end method

.method private initWH(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 114
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    .line 115
    const v0, 0x43adc000    # 347.5f

    sput v0, Lcom/bb_sz/pay/kefu/CusService;->WD:F

    .line 116
    const v0, 0x43568000    # 214.5f

    sput v0, Lcom/bb_sz/pay/kefu/CusService;->HD:F

    .line 117
    sget v0, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v0, :cond_0

    const-string v0, "SkyCusService"

    const-string v1, "initWH, screen is Vertical screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    const v0, 0x43e78000    # 463.0f

    sput v0, Lcom/bb_sz/pay/kefu/CusService;->WD:F

    .line 120
    const/high16 v0, 0x438f0000    # 286.0f

    sput v0, Lcom/bb_sz/pay/kefu/CusService;->HD:F

    .line 121
    sget v0, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v0, :cond_0

    const-string v0, "SkyCusService"

    const-string v1, "initWH, screen is Horizontal screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private notifyServer(ILjava/lang/String;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mDView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mDView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/bb_sz/pay/kefu/CusService;->notifyServer(Landroid/content/Context;ILjava/lang/String;)V

    .line 275
    :cond_0
    return-void
.end method

.method public static notifyServer(Landroid/content/Context;ILjava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 278
    if-eqz p0, :cond_1

    .line 279
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 280
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "cs_notify_server"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    const-string v1, "msg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 286
    sget v1, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v1, :cond_1

    const-string v1, "SkyCusService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyServer, type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", msg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public static px2dip(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .prologue
    .line 488
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 489
    .local v0, "scale":F
    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private showDialog()V
    .locals 3

    .prologue
    .line 324
    :try_start_0
    sget v1, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v1, :cond_0

    const-string v1, "SkyCusService"

    const-string v2, "showDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/bb_sz/pay/kefu/CusService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/bb_sz/pay/kefu/CusService$7;

    invoke-direct {v2, p0}, Lcom/bb_sz/pay/kefu/CusService$7;-><init>(Lcom/bb_sz/pay/kefu/CusService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private showIcon()V
    .locals 3

    .prologue
    .line 292
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/bb_sz/pay/kefu/CusService;->isShowIcon:Z

    .line 293
    sget v1, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v1, :cond_0

    const-string v1, "SkyCusService"

    const-string v2, "showIcon"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_0
    iget-object v1, p0, Lcom/bb_sz/pay/kefu/CusService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/bb_sz/pay/kefu/CusService$5;

    invoke-direct {v2, p0}, Lcom/bb_sz/pay/kefu/CusService$5;-><init>(Lcom/bb_sz/pay/kefu/CusService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateViewPosition(FF)V
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 439
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowParamIcon:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v2, v2

    add-float/2addr v2, p1

    iget v3, p0, Lcom/bb_sz/pay/kefu/CusService;->mTouchStartX:F

    sub-float/2addr v2, v3

    float-to-int v0, v2

    .line 440
    .local v0, "xx":I
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowParamIcon:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v2, v2

    add-float/2addr v2, p2

    iget v3, p0, Lcom/bb_sz/pay/kefu/CusService;->mTouchStartY:F

    sub-float/2addr v2, v3

    float-to-int v1, v2

    .line 443
    .local v1, "yy":I
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowParamIcon:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sub-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowParamIcon:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-gtz v2, :cond_1

    .line 459
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    const/16 v2, 0x32

    if-lt v1, v2, :cond_0

    .line 449
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/bb_sz/pay/kefu/CusService;->lastUpdateTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bb_sz/pay/kefu/CusService;->lastUpdateTime:J

    goto :goto_0

    .line 454
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/bb_sz/pay/kefu/CusService;->lastUpdateTime:J

    .line 455
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowParamIcon:Landroid/view/WindowManager$LayoutParams;

    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 456
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowParamIcon:Landroid/view/WindowManager$LayoutParams;

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 457
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/bb_sz/pay/kefu/CusService;->mDView:Landroid/view/View;

    iget-object v4, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowParamIcon:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 458
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/bb_sz/pay/kefu/CusService;->isMoved:Z

    goto :goto_0
.end method


# virtual methods
.method public onDestroy()V
    .locals 2

    .prologue
    .line 377
    const/4 v0, 0x0

    sput-object v0, Lcom/bb_sz/pay/kefu/CusService;->mInstance:Lcom/bb_sz/pay/kefu/CusService;

    .line 378
    sget v0, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v0, :cond_0

    const-string v0, "SkyCusService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 383
    :try_start_0
    sget v1, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v1, :cond_0

    const-string v1, "SkyCusService"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_0
    iget-boolean v1, p0, Lcom/bb_sz/pay/kefu/CusService;->isShowIcon:Z

    if-eqz v1, :cond_1

    .line 385
    iget-object v1, p0, Lcom/bb_sz/pay/kefu/CusService;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/bb_sz/pay/kefu/CusService;->mDView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :cond_1
    :goto_0
    return-void

    .line 386
    :catch_0
    move-exception v0

    .line 387
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x3e8

    .line 354
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 355
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mHandler:Landroid/os/Handler;

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->resumeRun:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 358
    new-instance v0, Lcom/bb_sz/pay/kefu/CusService$9;

    invoke-direct {v0, p0}, Lcom/bb_sz/pay/kefu/CusService$9;-><init>(Lcom/bb_sz/pay/kefu/CusService;)V

    iput-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->resumeRun:Ljava/lang/Runnable;

    .line 370
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bb_sz/pay/kefu/CusService;->resumeRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 374
    :goto_0
    return-void

    .line 372
    :cond_1
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CusService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bb_sz/pay/kefu/CusService;->resumeRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
