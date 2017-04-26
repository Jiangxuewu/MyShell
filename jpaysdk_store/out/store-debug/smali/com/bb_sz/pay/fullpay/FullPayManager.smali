.class public Lcom/bb_sz/pay/fullpay/FullPayManager;
.super Ljava/lang/Object;
.source "FullPayManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "SkyFullPay"

.field private static final debug:Z = true

.field private static mInstance:Lcom/bb_sz/pay/fullpay/FullPayManager;


# instance fields
.field private activity:Landroid/app/Activity;

.field private isShowed:Z

.field private lowScreen:Z

.field private mDView:Landroid/view/View;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mWindowManager:Landroid/view/WindowManager;

.field private mWindowParam:Landroid/view/WindowManager$LayoutParams;

.field private pkg:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->isShowed:Z

    .line 61
    return-void
.end method

.method static synthetic access$000(Lcom/bb_sz/pay/fullpay/FullPayManager;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/bb_sz/pay/fullpay/FullPayManager;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bb_sz/pay/fullpay/FullPayManager;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/bb_sz/pay/fullpay/FullPayManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/bb_sz/pay/fullpay/FullPayManager;->setIntValue(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/bb_sz/pay/fullpay/FullPayManager;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/bb_sz/pay/fullpay/FullPayManager;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bb_sz/pay/fullpay/FullPayManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/bb_sz/pay/fullpay/FullPayManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/fullpay/FullPayManager;->switchKey(Ljava/lang/String;)V

    return-void
.end method

.method private charge()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 325
    iget-object v0, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->activity:Landroid/app/Activity;

    const-string v1, "2000"

    const-string v4, "\u8d85\u7ea7\u5927\u793c\u53051927"

    new-instance v5, Lcom/bb_sz/pay/fullpay/FullPayManager$1;

    invoke-direct {v5, p0}, Lcom/bb_sz/pay/fullpay/FullPayManager$1;-><init>(Lcom/bb_sz/pay/fullpay/FullPayManager;)V

    move-object v3, v2

    invoke-static/range {v0 .. v5}, Lcom/bb_sz/pay/Api;->charge(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bb_sz/pay/IChargeResult;)V

    .line 342
    return-void
.end method

.method private close()V
    .locals 0

    .prologue
    .line 321
    invoke-virtual {p0}, Lcom/bb_sz/pay/fullpay/FullPayManager;->onPause()V

    .line 322
    return-void
.end method

.method private createView(Landroid/app/Activity;)Landroid/view/View;
    .locals 23
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 64
    new-instance v15, Landroid/widget/FrameLayout;

    move-object/from16 v0, p1

    invoke-direct {v15, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 65
    .local v15, "frameLayout":Landroid/widget/FrameLayout;
    new-instance v19, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x1

    invoke-direct/range {v19 .. v21}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    const/high16 v19, -0x10000

    move/from16 v0, v19

    invoke-virtual {v15, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 68
    new-instance v4, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 69
    .local v4, "bg":Landroid/widget/ImageView;
    new-instance v19, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x1

    invoke-direct/range {v19 .. v21}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    const/16 v17, 0x0

    .line 72
    .local v17, "in":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mScreenWidth:I

    move/from16 v19, v0

    const/16 v20, 0x280

    move/from16 v0, v19

    move/from16 v1, v20

    if-gt v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mScreenWidth:I

    move/from16 v19, v0

    const/16 v20, 0x1e0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    const/16 v19, 0x1

    :goto_0
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/bb_sz/pay/fullpay/FullPayManager;->lowScreen:Z

    .line 73
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/bb_sz/pay/fullpay/FullPayManager;->lowScreen:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    .line 74
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    const-string v20, "full_pay/bg_640.jpg"

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    .line 78
    :goto_1
    invoke-static/range {v17 .. v17}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 79
    .local v5, "bmp":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_6

    .line 80
    new-instance v19, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v19

    invoke-direct {v0, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    :goto_2
    const/16 v19, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 84
    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    new-instance v19, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, -0x1

    invoke-direct/range {v19 .. v21}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v15, v4, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    if-eqz v17, :cond_0

    .line 91
    :try_start_1
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8

    .line 97
    .end local v5    # "bmp":Landroid/graphics/Bitmap;
    :cond_0
    :goto_3
    new-instance v8, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 98
    .local v8, "content":Landroid/widget/ImageView;
    const/high16 v19, 0x43700000    # 240.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/bb_sz/pay/fullpay/FullPayManager;->dip2px(Landroid/content/Context;F)I

    move-result v10

    .line 99
    .local v10, "contentW":I
    const v19, 0x43938000    # 295.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/bb_sz/pay/fullpay/FullPayManager;->dip2px(Landroid/content/Context;F)I

    move-result v9

    .line 100
    .local v9, "contentH":I
    new-instance v12, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v12, v10, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 101
    .local v12, "fllp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v19, 0x11

    move/from16 v0, v19

    iput v0, v12, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 102
    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    const/16 v17, 0x0

    .line 105
    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    const-string v20, "full_pay/content.png"

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    .line 106
    invoke-static/range {v17 .. v17}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 107
    .restart local v5    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_8

    .line 108
    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 111
    :goto_4
    const/16 v19, 0x2

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 112
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    invoke-virtual {v15, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    if-eqz v17, :cond_1

    .line 119
    :try_start_3
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a

    .line 125
    .end local v5    # "bmp":Landroid/graphics/Bitmap;
    :cond_1
    :goto_5
    new-instance v6, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 126
    .local v6, "btn":Landroid/widget/ImageView;
    const/high16 v19, 0x42c90000    # 100.5f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/bb_sz/pay/fullpay/FullPayManager;->dip2px(Landroid/content/Context;F)I

    move-result v18

    .line 127
    .local v18, "width":I
    const/high16 v19, 0x420e0000    # 35.5f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/bb_sz/pay/fullpay/FullPayManager;->dip2px(Landroid/content/Context;F)I

    move-result v16

    .line 128
    .local v16, "height":I
    new-instance v13, Landroid/widget/FrameLayout$LayoutParams;

    move/from16 v0, v18

    move/from16 v1, v16

    invoke-direct {v13, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 129
    .local v13, "fllpbtn":Landroid/widget/FrameLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mScreenWidth:I

    move/from16 v19, v0

    sub-int v19, v19, v18

    div-int/lit8 v19, v19, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mScreenHeight:I

    move/from16 v20, v0

    sub-int v20, v20, v16

    div-int/lit8 v20, v20, 0x2

    const v21, 0x42d8999a    # 108.3f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/bb_sz/pay/fullpay/FullPayManager;->dip2px(Landroid/content/Context;F)I

    move-result v21

    add-int v20, v20, v21

    const/16 v21, 0x0

    const/16 v22, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-virtual {v13, v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 130
    invoke-virtual {v6, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    const/16 v17, 0x0

    .line 133
    :try_start_4
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    const-string v20, "full_pay/btn.png"

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    .line 134
    invoke-static/range {v17 .. v17}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 135
    .restart local v5    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_a

    .line 136
    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 139
    :goto_6
    const/16 v19, 0x3

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 140
    move-object/from16 v0, p0

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-virtual {v15, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 145
    if-eqz v17, :cond_2

    .line 147
    :try_start_5
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c

    .line 153
    .end local v5    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    :goto_7
    new-instance v7, Landroid/widget/ImageView;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 154
    .local v7, "close":Landroid/widget/ImageView;
    new-instance v14, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v19, 0x42000000    # 32.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/bb_sz/pay/fullpay/FullPayManager;->dip2px(Landroid/content/Context;F)I

    move-result v19

    const/high16 v20, 0x420c0000    # 35.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/bb_sz/pay/fullpay/FullPayManager;->dip2px(Landroid/content/Context;F)I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v14, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 155
    .local v14, "fllpclose":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v19, 0x5

    move/from16 v0, v19

    iput v0, v14, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 157
    const/high16 v19, 0x41c80000    # 25.0f

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/bb_sz/pay/fullpay/FullPayManager;->dip2px(Landroid/content/Context;F)I

    move-result v19

    move/from16 v0, v19

    iput v0, v14, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 159
    invoke-virtual {v7, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    const/16 v17, 0x0

    .line 162
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    const-string v20, "full_pay/guanbi.png"

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    .line 163
    invoke-static/range {v17 .. v17}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 164
    .restart local v5    # "bmp":Landroid/graphics/Bitmap;
    if-eqz v5, :cond_c

    .line 165
    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 168
    :goto_8
    const/16 v19, 0x4

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 169
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-virtual {v15, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 174
    if-eqz v17, :cond_3

    .line 176
    :try_start_7
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_e

    .line 182
    .end local v5    # "bmp":Landroid/graphics/Bitmap;
    :cond_3
    :goto_9
    return-object v15

    .line 72
    .end local v6    # "btn":Landroid/widget/ImageView;
    .end local v7    # "close":Landroid/widget/ImageView;
    .end local v8    # "content":Landroid/widget/ImageView;
    .end local v9    # "contentH":I
    .end local v10    # "contentW":I
    .end local v12    # "fllp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v13    # "fllpbtn":Landroid/widget/FrameLayout$LayoutParams;
    .end local v14    # "fllpclose":Landroid/widget/FrameLayout$LayoutParams;
    .end local v16    # "height":I
    .end local v18    # "width":I
    :cond_4
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 76
    :cond_5
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    const-string v20, "full_pay/bg_720.jpg"

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v17

    goto/16 :goto_1

    .line 82
    .restart local v5    # "bmp":Landroid/graphics/Bitmap;
    :cond_6
    const v19, 0x1080036

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 86
    .end local v5    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v11

    .line 87
    .local v11, "e":Ljava/io/IOException;
    :try_start_9
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 89
    if-eqz v17, :cond_0

    .line 91
    :try_start_a
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    goto/16 :goto_3

    .line 92
    :catch_1
    move-exception v19

    goto/16 :goto_3

    .line 89
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v19

    if-eqz v17, :cond_7

    .line 91
    :try_start_b
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    .line 93
    :cond_7
    :goto_a
    throw v19

    .line 110
    .restart local v5    # "bmp":Landroid/graphics/Bitmap;
    .restart local v8    # "content":Landroid/widget/ImageView;
    .restart local v9    # "contentH":I
    .restart local v10    # "contentW":I
    .restart local v12    # "fllp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_8
    const v19, 0x1080036

    :try_start_c
    move/from16 v0, v19

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto/16 :goto_4

    .line 114
    .end local v5    # "bmp":Landroid/graphics/Bitmap;
    :catch_2
    move-exception v11

    .line 115
    .restart local v11    # "e":Ljava/io/IOException;
    :try_start_d
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 117
    if-eqz v17, :cond_1

    .line 119
    :try_start_e
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_3

    goto/16 :goto_5

    .line 120
    :catch_3
    move-exception v19

    goto/16 :goto_5

    .line 117
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v19

    if-eqz v17, :cond_9

    .line 119
    :try_start_f
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 121
    :cond_9
    :goto_b
    throw v19

    .line 138
    .restart local v5    # "bmp":Landroid/graphics/Bitmap;
    .restart local v6    # "btn":Landroid/widget/ImageView;
    .restart local v13    # "fllpbtn":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v16    # "height":I
    .restart local v18    # "width":I
    :cond_a
    const v19, 0x1080036

    :try_start_10
    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    goto/16 :goto_6

    .line 142
    .end local v5    # "bmp":Landroid/graphics/Bitmap;
    :catch_4
    move-exception v11

    .line 143
    .restart local v11    # "e":Ljava/io/IOException;
    :try_start_11
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_2

    .line 145
    if-eqz v17, :cond_2

    .line 147
    :try_start_12
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_5

    goto/16 :goto_7

    .line 148
    :catch_5
    move-exception v19

    goto/16 :goto_7

    .line 145
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_2
    move-exception v19

    if-eqz v17, :cond_b

    .line 147
    :try_start_13
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_d

    .line 149
    :cond_b
    :goto_c
    throw v19

    .line 167
    .restart local v5    # "bmp":Landroid/graphics/Bitmap;
    .restart local v7    # "close":Landroid/widget/ImageView;
    .restart local v14    # "fllpclose":Landroid/widget/FrameLayout$LayoutParams;
    :cond_c
    const v19, 0x1080036

    :try_start_14
    move/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_6
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto/16 :goto_8

    .line 171
    .end local v5    # "bmp":Landroid/graphics/Bitmap;
    :catch_6
    move-exception v11

    .line 172
    .restart local v11    # "e":Ljava/io/IOException;
    :try_start_15
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 174
    if-eqz v17, :cond_3

    .line 176
    :try_start_16
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_7

    goto/16 :goto_9

    .line 177
    :catch_7
    move-exception v19

    goto/16 :goto_9

    .line 174
    .end local v11    # "e":Ljava/io/IOException;
    :catchall_3
    move-exception v19

    if-eqz v17, :cond_d

    .line 176
    :try_start_17
    invoke-virtual/range {v17 .. v17}, Ljava/io/InputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_f

    .line 178
    :cond_d
    :goto_d
    throw v19

    .line 92
    .end local v6    # "btn":Landroid/widget/ImageView;
    .end local v7    # "close":Landroid/widget/ImageView;
    .end local v8    # "content":Landroid/widget/ImageView;
    .end local v9    # "contentH":I
    .end local v10    # "contentW":I
    .end local v12    # "fllp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v13    # "fllpbtn":Landroid/widget/FrameLayout$LayoutParams;
    .end local v14    # "fllpclose":Landroid/widget/FrameLayout$LayoutParams;
    .end local v16    # "height":I
    .end local v18    # "width":I
    .restart local v5    # "bmp":Landroid/graphics/Bitmap;
    :catch_8
    move-exception v19

    goto/16 :goto_3

    .end local v5    # "bmp":Landroid/graphics/Bitmap;
    :catch_9
    move-exception v20

    goto :goto_a

    .line 120
    .restart local v5    # "bmp":Landroid/graphics/Bitmap;
    .restart local v8    # "content":Landroid/widget/ImageView;
    .restart local v9    # "contentH":I
    .restart local v10    # "contentW":I
    .restart local v12    # "fllp":Landroid/widget/FrameLayout$LayoutParams;
    :catch_a
    move-exception v19

    goto/16 :goto_5

    .end local v5    # "bmp":Landroid/graphics/Bitmap;
    :catch_b
    move-exception v20

    goto :goto_b

    .line 148
    .restart local v5    # "bmp":Landroid/graphics/Bitmap;
    .restart local v6    # "btn":Landroid/widget/ImageView;
    .restart local v13    # "fllpbtn":Landroid/widget/FrameLayout$LayoutParams;
    .restart local v16    # "height":I
    .restart local v18    # "width":I
    :catch_c
    move-exception v19

    goto/16 :goto_7

    .end local v5    # "bmp":Landroid/graphics/Bitmap;
    :catch_d
    move-exception v20

    goto :goto_c

    .line 177
    .restart local v5    # "bmp":Landroid/graphics/Bitmap;
    .restart local v7    # "close":Landroid/widget/ImageView;
    .restart local v14    # "fllpclose":Landroid/widget/FrameLayout$LayoutParams;
    :catch_e
    move-exception v19

    goto/16 :goto_9

    .end local v5    # "bmp":Landroid/graphics/Bitmap;
    :catch_f
    move-exception v20

    goto :goto_d
.end method

.method private dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dpValue"    # F

    .prologue
    .line 286
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 287
    .local v0, "scale":F
    mul-float v1, p2, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static getInstance()Lcom/bb_sz/pay/fullpay/FullPayManager;
    .locals 2

    .prologue
    .line 52
    const-string v1, "SkyFullPay"

    monitor-enter v1

    .line 53
    :try_start_0
    sget-object v0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mInstance:Lcom/bb_sz/pay/fullpay/FullPayManager;

    if-nez v0, :cond_0

    .line 54
    new-instance v0, Lcom/bb_sz/pay/fullpay/FullPayManager;

    invoke-direct {v0}, Lcom/bb_sz/pay/fullpay/FullPayManager;-><init>()V

    sput-object v0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mInstance:Lcom/bb_sz/pay/fullpay/FullPayManager;

    .line 56
    :cond_0
    sget-object v0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mInstance:Lcom/bb_sz/pay/fullpay/FullPayManager;

    monitor-exit v1

    return-object v0

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getIntValue(Ljava/lang/String;)I
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 315
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 317
    :goto_0
    return v1

    .line 316
    :cond_0
    iget-object v2, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->activity:Landroid/app/Activity;

    const-string v3, "pt_apk_sp"

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 317
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method private getScreenOrientation(Landroid/content/Context;)I
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 266
    iget v1, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mScreenWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mScreenHeight:I

    if-nez v1, :cond_1

    .line 267
    :cond_0
    if-eqz p1, :cond_1

    .line 268
    const-string v1, "window"

    .line 269
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 270
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mScreenWidth:I

    .line 271
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mScreenHeight:I

    .line 273
    const-string v1, "SkyFullPay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mScreenWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mScreenWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mScreenHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mScreenHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v1, "SkyFullPay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "480px = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/high16 v3, 0x43f00000    # 480.0f

    invoke-direct {p0, p1, v3}, Lcom/bb_sz/pay/fullpay/FullPayManager;->px2dip(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dp, 590px = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const v3, 0x44138000    # 590.0f

    invoke-direct {p0, p1, v3}, Lcom/bb_sz/pay/fullpay/FullPayManager;->px2dip(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_1
    iget v1, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mScreenWidth:I

    iget v2, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mScreenHeight:I

    if-le v1, v2, :cond_2

    .line 280
    const/4 v1, 0x1

    .line 282
    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private httpRequest()V
    .locals 2

    .prologue
    .line 346
    new-instance v0, Lcom/bb_sz/pay/fullpay/FullPayManager$2;

    invoke-direct {v0, p0}, Lcom/bb_sz/pay/fullpay/FullPayManager$2;-><init>(Lcom/bb_sz/pay/fullpay/FullPayManager;)V

    .line 374
    .local v0, "run":Ljava/lang/Runnable;
    invoke-static {}, Lcom/bb_sz/ndk/Http;->getInstance()Lcom/bb_sz/ndk/Http;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bb_sz/ndk/Http;->submit(Ljava/lang/Runnable;)V

    .line 375
    return-void
.end method

.method private initView(Landroid/app/Activity;)V
    .locals 4
    .param p1, "mContext"    # Landroid/app/Activity;

    .prologue
    const/4 v3, 0x0

    .line 186
    const-string v0, "SkyFullPay"

    const-string v1, "initView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    .line 188
    const-string v0, "window"

    .line 189
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mWindowManager:Landroid/view/WindowManager;

    .line 191
    :cond_0
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mWindowParam:Landroid/view/WindowManager$LayoutParams;

    .line 195
    iget-object v0, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mWindowParam:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 196
    iget-object v0, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mWindowParam:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 197
    iget-object v0, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mWindowParam:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mWindowParam:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 201
    iget-object v0, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mWindowParam:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mScreenWidth:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 202
    iget-object v0, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mWindowParam:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mScreenHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 205
    iget-object v0, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mWindowParam:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 206
    iget-object v0, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mWindowParam:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 207
    return-void
.end method

.method private initWH(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/fullpay/FullPayManager;->getScreenOrientation(Landroid/content/Context;)I

    .line 211
    return-void
.end method

.method private isOpen(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 409
    const/4 v0, 0x0

    .line 411
    .local v0, "isOpen":Z
    :try_start_0
    const-string v2, "asdfsdfasdf"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "full_full_pay"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    .line 414
    :goto_0
    const-string v1, "SkyFullPay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOpen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return v0

    :cond_0
    move v0, v1

    .line 411
    goto :goto_0

    .line 412
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private px2dip(Landroid/content/Context;F)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pxValue"    # F

    .prologue
    .line 291
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 292
    .local v0, "scale":F
    div-float v1, p2, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private setIntValue(Ljava/lang/String;I)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "i"    # I

    .prologue
    .line 309
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 312
    :goto_0
    return-void

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->activity:Landroid/app/Activity;

    const-string v2, "pt_apk_sp"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 311
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private setSwitchKey(I)V
    .locals 4
    .param p1, "value"    # I

    .prologue
    .line 420
    const-string v0, "SkyFullPay"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSwitchKey, value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    iget-object v0, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->activity:Landroid/app/Activity;

    const-string v1, "asdfsdfasdf"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "full_full_pay"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "full_full_pay_t"

    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 424
    :cond_0
    return-void
.end method

.method private switchKey(Ljava/lang/String;)V
    .locals 7
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 378
    const-string v4, "SkyFullPay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switchKey msg = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    if-eqz p1, :cond_0

    .line 382
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 383
    .local v1, "object":Lorg/json/JSONObject;
    const-string v4, "open"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 384
    const-string v4, "open"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 385
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_2

    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_2

    .line 386
    check-cast v3, Ljava/lang/Integer;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 387
    .local v2, "v":I
    const-string v4, "SkyFullPay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switchKey int v = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-direct {p0, v2}, Lcom/bb_sz/pay/fullpay/FullPayManager;->setSwitchKey(I)V

    .line 389
    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 406
    .end local v1    # "object":Lorg/json/JSONObject;
    .end local v2    # "v":I
    :cond_0
    :goto_0
    return-void

    .line 391
    .restart local v1    # "object":Lorg/json/JSONObject;
    .restart local v2    # "v":I
    :cond_1
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 396
    .end local v2    # "v":I
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_2
    if-eqz v3, :cond_0

    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 397
    check-cast v3, Ljava/lang/String;

    .end local v3    # "value":Ljava/lang/Object;
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 398
    .restart local v2    # "v":I
    const-string v4, "SkyFullPay"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "switchKey str v = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-direct {p0, v2}, Lcom/bb_sz/pay/fullpay/FullPayManager;->setSwitchKey(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 402
    .end local v1    # "object":Lorg/json/JSONObject;
    .end local v2    # "v":I
    :catch_0
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public init(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->pkg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 215
    const-string v0, "SkyFullPay"

    const-string v1, "CusService..error"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :goto_0
    return-void

    .line 218
    :cond_0
    const-string v0, "SkyFullPay"

    const-string v1, "FullPayManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    iput-object p1, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->activity:Landroid/app/Activity;

    .line 220
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/fullpay/FullPayManager;->initWH(Landroid/app/Activity;)V

    .line 222
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->pkg:Ljava/lang/String;

    .line 224
    invoke-direct {p0}, Lcom/bb_sz/pay/fullpay/FullPayManager;->httpRequest()V

    .line 226
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/fullpay/FullPayManager;->initView(Landroid/app/Activity;)V

    .line 228
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/fullpay/FullPayManager;->createView(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mDView:Landroid/view/View;

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 297
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 298
    .local v0, "tag":Ljava/lang/Object;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 299
    check-cast v0, Ljava/lang/Integer;

    .end local v0    # "tag":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 300
    invoke-direct {p0}, Lcom/bb_sz/pay/fullpay/FullPayManager;->close()V

    .line 305
    :cond_0
    :goto_0
    const-string v1, "SkyFullPay"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    return-void

    .line 302
    :cond_1
    invoke-direct {p0}, Lcom/bb_sz/pay/fullpay/FullPayManager;->charge()V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->activity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/bb_sz/pay/fullpay/FullPayManager;->isOpen(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 233
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mInstance:Lcom/bb_sz/pay/fullpay/FullPayManager;

    .line 234
    const-string v0, "SkyFullPay"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 238
    iget-object v1, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->activity:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/bb_sz/pay/fullpay/FullPayManager;->isOpen(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    :try_start_0
    const-string v1, "SkyFullPay"

    const-string v2, "onPause"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-boolean v1, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->isShowed:Z

    if-eqz v1, :cond_0

    .line 242
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->isShowed:Z

    .line 243
    iget-object v1, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mDView:Landroid/view/View;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 245
    :catch_0
    move-exception v0

    .line 246
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 251
    iget-object v1, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->activity:Landroid/app/Activity;

    invoke-direct {p0, v1}, Lcom/bb_sz/pay/fullpay/FullPayManager;->isOpen(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 253
    :cond_1
    :try_start_0
    const-string v1, "SkyFullPay"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v1, "full_pay_key"

    invoke-direct {p0, v1}, Lcom/bb_sz/pay/fullpay/FullPayManager;->getIntValue(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 255
    iget-boolean v1, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->isShowed:Z

    if-nez v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mDView:Landroid/view/View;

    iget-object v3, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->mWindowParam:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/bb_sz/pay/fullpay/FullPayManager;->isShowed:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 260
    :catch_0
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
