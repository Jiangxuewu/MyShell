.class public Lcom/bb_sz/pay/kefu/CSResultView;
.super Landroid/widget/FrameLayout;
.source "CSResultView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bb_sz/pay/kefu/CSResultView$IResultListener;
    }
.end annotation


# instance fields
.field private curSelType:I

.field private listener:Lcom/bb_sz/pay/kefu/CSResultView$IResultListener;

.field private mHandler:Landroid/os/Handler;

.field private selectOneRun:Ljava/lang/Runnable;

.field private solve:Lcom/bb_sz/pay/kefu/ResultBtnView;

.field private solve1:Lcom/bb_sz/pay/kefu/ResultBtnView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bb_sz/pay/kefu/CSResultView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bb_sz/pay/kefu/CSResultView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/bb_sz/pay/kefu/CSResultView;->curSelType:I

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/bb_sz/pay/kefu/CSResultView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/bb_sz/pay/kefu/CSResultView;)I
    .locals 1
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/CSResultView;

    .prologue
    .line 25
    iget v0, p0, Lcom/bb_sz/pay/kefu/CSResultView;->curSelType:I

    return v0
.end method

.method static synthetic access$002(Lcom/bb_sz/pay/kefu/CSResultView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/CSResultView;
    .param p1, "x1"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/bb_sz/pay/kefu/CSResultView;->curSelType:I

    return p1
.end method

.method static synthetic access$100(Lcom/bb_sz/pay/kefu/CSResultView;)Lcom/bb_sz/pay/kefu/ResultBtnView;
    .locals 1
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/CSResultView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSResultView;->solve:Lcom/bb_sz/pay/kefu/ResultBtnView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bb_sz/pay/kefu/CSResultView;)Lcom/bb_sz/pay/kefu/ResultBtnView;
    .locals 1
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/CSResultView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSResultView;->solve1:Lcom/bb_sz/pay/kefu/ResultBtnView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bb_sz/pay/kefu/CSResultView;)V
    .locals 0
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/CSResultView;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/bb_sz/pay/kefu/CSResultView;->notifySelectOne()V

    return-void
.end method

.method static synthetic access$400(Lcom/bb_sz/pay/kefu/CSResultView;)Lcom/bb_sz/pay/kefu/CSResultView$IResultListener;
    .locals 1
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/CSResultView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSResultView;->listener:Lcom/bb_sz/pay/kefu/CSResultView$IResultListener;

    return-object v0
.end method

.method private addBg(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 192
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 193
    .local v0, "bgView":Landroid/widget/ImageView;
    const/4 v3, 0x0

    .line 195
    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "cs_res/cs_issus_result_bg.png"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 199
    :goto_0
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 200
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 201
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 203
    :cond_0
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    sget v5, Lcom/bb_sz/pay/kefu/CusService;->WD:F

    invoke-static {p1, v5}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v5

    sget v6, Lcom/bb_sz/pay/kefu/CusService;->HD:F

    invoke-static {p1, v6}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v4}, Lcom/bb_sz/pay/kefu/CSResultView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    return-void

    .line 196
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 197
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private addDelIcon(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 141
    .local v1, "del":Landroid/widget/ImageView;
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CSResultView;->getDelWH(Landroid/content/Context;)F

    move-result v6

    invoke-static {p1, v6}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 142
    .local v5, "wh":I
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 143
    .local v3, "flp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v6, 0x35

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 144
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CSResultView;->getDelTopMargin(Landroid/content/Context;)F

    move-result v6

    invoke-static {p1, v6}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 145
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CSResultView;->getDelRightMargin(Landroid/content/Context;)F

    move-result v6

    invoke-static {p1, v6}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 146
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    new-instance v6, Lcom/bb_sz/pay/kefu/CSResultView$3;

    invoke-direct {v6, p0}, Lcom/bb_sz/pay/kefu/CSResultView$3;-><init>(Lcom/bb_sz/pay/kefu/CSResultView;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    const/4 v4, 0x0

    .line 163
    .local v4, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "cs_res/cs_del_icon.png"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 167
    :goto_0
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 168
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 171
    :cond_0
    invoke-virtual {p0, v1}, Lcom/bb_sz/pay/kefu/CSResultView;->addView(Landroid/view/View;)V

    .line 172
    return-void

    .line 164
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 165
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private addResultBtn(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 100
    new-instance v4, Lcom/bb_sz/pay/kefu/ResultBtnView;

    invoke-direct {v4, p1}, Lcom/bb_sz/pay/kefu/ResultBtnView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/bb_sz/pay/kefu/CSResultView;->solve:Lcom/bb_sz/pay/kefu/ResultBtnView;

    .line 101
    iget-object v4, p0, Lcom/bb_sz/pay/kefu/CSResultView;->solve:Lcom/bb_sz/pay/kefu/ResultBtnView;

    invoke-virtual {v4, v5}, Lcom/bb_sz/pay/kefu/ResultBtnView;->setType(I)V

    .line 102
    new-instance v4, Lcom/bb_sz/pay/kefu/ResultBtnView;

    invoke-direct {v4, p1}, Lcom/bb_sz/pay/kefu/ResultBtnView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/bb_sz/pay/kefu/CSResultView;->solve1:Lcom/bb_sz/pay/kefu/ResultBtnView;

    .line 103
    iget-object v4, p0, Lcom/bb_sz/pay/kefu/CSResultView;->solve1:Lcom/bb_sz/pay/kefu/ResultBtnView;

    invoke-virtual {v4, v6}, Lcom/bb_sz/pay/kefu/ResultBtnView;->setType(I)V

    .line 105
    new-instance v3, Lcom/bb_sz/pay/kefu/CSResultView$2;

    invoke-direct {v3, p0}, Lcom/bb_sz/pay/kefu/CSResultView$2;-><init>(Lcom/bb_sz/pay/kefu/CSResultView;)V

    .line 114
    .local v3, "resultListener":Lcom/bb_sz/pay/kefu/ResultBtnView$ISelListener;
    iget-object v4, p0, Lcom/bb_sz/pay/kefu/CSResultView;->solve:Lcom/bb_sz/pay/kefu/ResultBtnView;

    invoke-virtual {v4, v3}, Lcom/bb_sz/pay/kefu/ResultBtnView;->setSelListener(Lcom/bb_sz/pay/kefu/ResultBtnView$ISelListener;)V

    .line 115
    iget-object v4, p0, Lcom/bb_sz/pay/kefu/CSResultView;->solve1:Lcom/bb_sz/pay/kefu/ResultBtnView;

    invoke-virtual {v4, v3}, Lcom/bb_sz/pay/kefu/ResultBtnView;->setSelListener(Lcom/bb_sz/pay/kefu/ResultBtnView$ISelListener;)V

    .line 117
    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 118
    .local v2, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 119
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 122
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CSResultView;->getResultBtnH(Landroid/content/Context;)F

    move-result v5

    invoke-static {p1, v5}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v1, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 123
    .local v1, "flp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x50

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 124
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CSResultView;->getResultBtnBottomMargin(Landroid/content/Context;)F

    move-result v4

    invoke-static {p1, v4}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v4

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 126
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    iget-object v4, p0, Lcom/bb_sz/pay/kefu/CSResultView;->solve:Lcom/bb_sz/pay/kefu/ResultBtnView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 130
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 131
    .local v0, "bank":Landroid/view/View;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CSResultView;->getResultBankW(Landroid/content/Context;)F

    move-result v5

    invoke-static {p1, v5}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 134
    iget-object v4, p0, Lcom/bb_sz/pay/kefu/CSResultView;->solve1:Lcom/bb_sz/pay/kefu/ResultBtnView;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    invoke-virtual {p0, v2}, Lcom/bb_sz/pay/kefu/CSResultView;->addView(Landroid/view/View;)V

    .line 137
    return-void
.end method

.method private addTel(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 64
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 65
    .local v4, "tel":Landroid/widget/ImageView;
    new-instance v5, Lcom/bb_sz/pay/kefu/CSResultView$1;

    invoke-direct {v5, p0, p1}, Lcom/bb_sz/pay/kefu/CSResultView$1;-><init>(Lcom/bb_sz/pay/kefu/CSResultView;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CSResultView;->getTelW(Landroid/content/Context;)F

    move-result v5

    invoke-static {p1, v5}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CSResultView;->getTelH(Landroid/content/Context;)F

    move-result v6

    invoke-static {p1, v6}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 80
    .local v2, "flp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x51

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 81
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CSResultView;->getTelBotMargin(Landroid/content/Context;)F

    move-result v5

    invoke-static {p1, v5}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 82
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    const/4 v3, 0x0

    .line 87
    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "cs_res/cs_telephone.png"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 91
    :goto_0
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 92
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 96
    :cond_0
    invoke-virtual {p0, v4}, Lcom/bb_sz/pay/kefu/CSResultView;->addView(Landroid/view/View;)V

    .line 97
    return-void

    .line 88
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getDelRightMargin(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 239
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 240
    const/high16 v0, 0x40a00000    # 5.0f

    .line 242
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    goto :goto_0
.end method

.method private getDelTopMargin(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 247
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 248
    const/high16 v0, 0x40a00000    # 5.0f

    .line 250
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    goto :goto_0
.end method

.method private getDelWH(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 231
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 232
    const/high16 v0, 0x41880000    # 17.0f

    .line 234
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x41b00000    # 22.0f

    goto :goto_0
.end method

.method private getResultBankW(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 207
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 208
    const/high16 v0, 0x41a00000    # 20.0f

    .line 210
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x42480000    # 50.0f

    goto :goto_0
.end method

.method private getResultBtnBottomMargin(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 216
    const/high16 v0, 0x42340000    # 45.0f

    .line 218
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x42700000    # 60.0f

    goto :goto_0
.end method

.method private getResultBtnH(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 224
    const/high16 v0, 0x41d00000    # 26.0f

    .line 226
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x420a0000    # 34.5f

    goto :goto_0
.end method

.method private getTelBotMargin(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 271
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 272
    const/high16 v0, 0x41300000    # 11.0f

    .line 274
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x41900000    # 18.0f

    goto :goto_0
.end method

.method private getTelH(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 263
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 264
    const/high16 v0, 0x41780000    # 15.5f

    .line 266
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x41a80000    # 21.0f

    goto :goto_0
.end method

.method private getTelW(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 255
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 256
    const v0, 0x431d8000    # 157.5f

    .line 258
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x43520000    # 210.0f

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CSResultView;->addBg(Landroid/content/Context;)V

    .line 51
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CSResultView;->addDelIcon(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CSResultView;->addResultBtn(Landroid/content/Context;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CSResultView;->addTel(Landroid/content/Context;)V

    .line 60
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/CSResultView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/bb_sz/pay/kefu/CusService;->WD:F

    invoke-static {v1, v2}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/CSResultView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/bb_sz/pay/kefu/CusService;->HD:F

    invoke-static {v2, v3}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/bb_sz/pay/kefu/CSResultView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    return-void
.end method

.method private notifySelectOne()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSResultView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 176
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bb_sz/pay/kefu/CSResultView;->mHandler:Landroid/os/Handler;

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSResultView;->selectOneRun:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 179
    new-instance v0, Lcom/bb_sz/pay/kefu/CSResultView$4;

    invoke-direct {v0, p0}, Lcom/bb_sz/pay/kefu/CSResultView$4;-><init>(Lcom/bb_sz/pay/kefu/CSResultView;)V

    iput-object v0, p0, Lcom/bb_sz/pay/kefu/CSResultView;->selectOneRun:Ljava/lang/Runnable;

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSResultView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bb_sz/pay/kefu/CSResultView;->selectOneRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 189
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 283
    const/4 v0, -0x1

    iput v0, p0, Lcom/bb_sz/pay/kefu/CSResultView;->curSelType:I

    .line 284
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSResultView;->solve:Lcom/bb_sz/pay/kefu/ResultBtnView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSResultView;->solve:Lcom/bb_sz/pay/kefu/ResultBtnView;

    invoke-virtual {v0, v1}, Lcom/bb_sz/pay/kefu/ResultBtnView;->setSelected(Z)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSResultView;->solve1:Lcom/bb_sz/pay/kefu/ResultBtnView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSResultView;->solve1:Lcom/bb_sz/pay/kefu/ResultBtnView;

    invoke-virtual {v0, v1}, Lcom/bb_sz/pay/kefu/ResultBtnView;->setSelected(Z)V

    .line 286
    :cond_1
    return-void
.end method

.method public setResultListener(Lcom/bb_sz/pay/kefu/CSResultView$IResultListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/bb_sz/pay/kefu/CSResultView$IResultListener;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/bb_sz/pay/kefu/CSResultView;->listener:Lcom/bb_sz/pay/kefu/CSResultView$IResultListener;

    .line 280
    return-void
.end method
