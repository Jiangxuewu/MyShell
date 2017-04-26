.class public Lcom/bb_sz/pay/kefu/CSDialogView;
.super Landroid/widget/FrameLayout;
.source "CSDialogView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bb_sz/pay/kefu/CSDialogView$IItemListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SkyCSDView"


# instance fields
.field public curSelIndex:I

.field private et:Lcom/bb_sz/pay/kefu/SendView;

.field private item1:Lcom/bb_sz/pay/kefu/IssusView;

.field private item2:Lcom/bb_sz/pay/kefu/IssusView;

.field private item3:Lcom/bb_sz/pay/kefu/IssusView;

.field private listener:Lcom/bb_sz/pay/kefu/CSDialogView$IItemListener;

.field private mHandler:Landroid/os/Handler;

.field private mResultView:Lcom/bb_sz/pay/kefu/CSResultView;

.field private notifySelectIssusRun:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bb_sz/pay/kefu/CSDialogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bb_sz/pay/kefu/CSDialogView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->curSelIndex:I

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/bb_sz/pay/kefu/CSDialogView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/bb_sz/pay/kefu/CSDialogView;)V
    .locals 0
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/CSDialogView;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/bb_sz/pay/kefu/CSDialogView;->notifySelectIssus()V

    return-void
.end method

.method static synthetic access$100(Lcom/bb_sz/pay/kefu/CSDialogView;)Lcom/bb_sz/pay/kefu/CSDialogView$IItemListener;
    .locals 1
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/CSDialogView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->listener:Lcom/bb_sz/pay/kefu/CSDialogView$IItemListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/bb_sz/pay/kefu/CSDialogView;)Lcom/bb_sz/pay/kefu/IssusView;
    .locals 1
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/CSDialogView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->item1:Lcom/bb_sz/pay/kefu/IssusView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/bb_sz/pay/kefu/CSDialogView;)Lcom/bb_sz/pay/kefu/IssusView;
    .locals 1
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/CSDialogView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->item2:Lcom/bb_sz/pay/kefu/IssusView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/bb_sz/pay/kefu/CSDialogView;)Lcom/bb_sz/pay/kefu/IssusView;
    .locals 1
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/CSDialogView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->item3:Lcom/bb_sz/pay/kefu/IssusView;

    return-object v0
.end method

.method private addBg(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 251
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 252
    .local v0, "bgView":Landroid/widget/ImageView;
    const/4 v3, 0x0

    .line 254
    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "cs_res/cs_issus_bg.png"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 258
    :goto_0
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 259
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_0

    .line 260
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 262
    :cond_0
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    sget v5, Lcom/bb_sz/pay/kefu/CusService;->WD:F

    invoke-direct {p0, p1, v5}, Lcom/bb_sz/pay/kefu/CSDialogView;->dip2px(Landroid/content/Context;F)I

    move-result v5

    sget v6, Lcom/bb_sz/pay/kefu/CusService;->HD:F

    invoke-direct {p0, p1, v6}, Lcom/bb_sz/pay/kefu/CSDialogView;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v4}, Lcom/bb_sz/pay/kefu/CSDialogView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    return-void

    .line 255
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 256
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private addDelIcon(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 170
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 171
    .local v1, "del":Landroid/widget/ImageView;
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CSDialogView;->getDelWH(Landroid/content/Context;)F

    move-result v6

    invoke-static {p1, v6}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 172
    .local v5, "wh":I
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 173
    .local v3, "flp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v6, 0x35

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 174
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CSDialogView;->getDelTopMargin(Landroid/content/Context;)F

    move-result v6

    invoke-static {p1, v6}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 175
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CSDialogView;->getDelRightMargin(Landroid/content/Context;)F

    move-result v6

    invoke-static {p1, v6}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v6

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 176
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    new-instance v6, Lcom/bb_sz/pay/kefu/CSDialogView$4;

    invoke-direct {v6, p0}, Lcom/bb_sz/pay/kefu/CSDialogView$4;-><init>(Lcom/bb_sz/pay/kefu/CSDialogView;)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const/4 v4, 0x0

    .line 188
    .local v4, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    const-string v7, "cs_res/cs_del_icon.png"

    invoke-virtual {v6, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 192
    :goto_0
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 193
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 196
    :cond_0
    invoke-virtual {p0, v1}, Lcom/bb_sz/pay/kefu/CSDialogView;->addView(Landroid/view/View;)V

    .line 197
    return-void

    .line 189
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 190
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private addEditTextSendBtn(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    new-instance v1, Lcom/bb_sz/pay/kefu/SendView;

    invoke-direct {v1, p1}, Lcom/bb_sz/pay/kefu/SendView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->et:Lcom/bb_sz/pay/kefu/SendView;

    .line 107
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v1, Lcom/bb_sz/pay/kefu/CusService;->WD:F

    invoke-static {p1, v1}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CSDialogView;->getSendViewH(Landroid/content/Context;)F

    move-result v2

    invoke-static {p1, v2}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 108
    .local v0, "flp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 109
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CSDialogView;->getSendViewBotMargin(Landroid/content/Context;)F

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/bb_sz/pay/kefu/CSDialogView;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 110
    iget-object v1, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->et:Lcom/bb_sz/pay/kefu/SendView;

    invoke-virtual {v1, v0}, Lcom/bb_sz/pay/kefu/SendView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    iget-object v1, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->et:Lcom/bb_sz/pay/kefu/SendView;

    new-instance v2, Lcom/bb_sz/pay/kefu/CSDialogView$2;

    invoke-direct {v2, p0, p1}, Lcom/bb_sz/pay/kefu/CSDialogView$2;-><init>(Lcom/bb_sz/pay/kefu/CSDialogView;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lcom/bb_sz/pay/kefu/SendView;->setSendListener(Lcom/bb_sz/pay/kefu/SendView$ISendListener;)V

    .line 126
    iget-object v1, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->et:Lcom/bb_sz/pay/kefu/SendView;

    invoke-virtual {p0, v1}, Lcom/bb_sz/pay/kefu/CSDialogView;->addView(Landroid/view/View;)V

    .line 127
    return-void
.end method

.method private addIssus(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x1

    .line 201
    new-instance v4, Lcom/bb_sz/pay/kefu/IssusView;

    invoke-direct {v4, p1}, Lcom/bb_sz/pay/kefu/IssusView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->item1:Lcom/bb_sz/pay/kefu/IssusView;

    .line 202
    iget-object v4, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->item1:Lcom/bb_sz/pay/kefu/IssusView;

    invoke-virtual {v4, v6}, Lcom/bb_sz/pay/kefu/IssusView;->setIssus(I)V

    .line 203
    new-instance v4, Lcom/bb_sz/pay/kefu/IssusView;

    invoke-direct {v4, p1}, Lcom/bb_sz/pay/kefu/IssusView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->item2:Lcom/bb_sz/pay/kefu/IssusView;

    .line 204
    iget-object v4, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->item2:Lcom/bb_sz/pay/kefu/IssusView;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/bb_sz/pay/kefu/IssusView;->setIssus(I)V

    .line 205
    new-instance v4, Lcom/bb_sz/pay/kefu/IssusView;

    invoke-direct {v4, p1}, Lcom/bb_sz/pay/kefu/IssusView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->item3:Lcom/bb_sz/pay/kefu/IssusView;

    .line 206
    iget-object v4, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->item3:Lcom/bb_sz/pay/kefu/IssusView;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/bb_sz/pay/kefu/IssusView;->setIssus(I)V

    .line 208
    new-instance v2, Lcom/bb_sz/pay/kefu/CSDialogView$5;

    invoke-direct {v2, p0}, Lcom/bb_sz/pay/kefu/CSDialogView$5;-><init>(Lcom/bb_sz/pay/kefu/CSDialogView;)V

    .line 219
    .local v2, "issusSelListener":Lcom/bb_sz/pay/kefu/IssusView$ISelListener;
    iget-object v4, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->item1:Lcom/bb_sz/pay/kefu/IssusView;

    invoke-virtual {v4, v2}, Lcom/bb_sz/pay/kefu/IssusView;->setSelListner(Lcom/bb_sz/pay/kefu/IssusView$ISelListener;)V

    .line 220
    iget-object v4, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->item2:Lcom/bb_sz/pay/kefu/IssusView;

    invoke-virtual {v4, v2}, Lcom/bb_sz/pay/kefu/IssusView;->setSelListner(Lcom/bb_sz/pay/kefu/IssusView$ISelListener;)V

    .line 221
    iget-object v4, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->item3:Lcom/bb_sz/pay/kefu/IssusView;

    invoke-virtual {v4, v2}, Lcom/bb_sz/pay/kefu/IssusView;->setSelListner(Lcom/bb_sz/pay/kefu/IssusView$ISelListener;)V

    .line 224
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 225
    .local v3, "ll":Landroid/widget/LinearLayout;
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 226
    const/16 v4, 0x11

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 227
    iget-object v4, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->item1:Lcom/bb_sz/pay/kefu/IssusView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 229
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 230
    .local v0, "bank12":Landroid/view/View;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CSDialogView;->getIssusBankH(Landroid/content/Context;)F

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/bb_sz/pay/kefu/CSDialogView;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 231
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 232
    iget-object v4, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->item2:Lcom/bb_sz/pay/kefu/IssusView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 234
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 235
    .local v1, "bank23":Landroid/view/View;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CSDialogView;->getIssusBankH(Landroid/content/Context;)F

    move-result v5

    invoke-direct {p0, p1, v5}, Lcom/bb_sz/pay/kefu/CSDialogView;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 236
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 237
    iget-object v4, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->item3:Lcom/bb_sz/pay/kefu/IssusView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 239
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    sget v5, Lcom/bb_sz/pay/kefu/CusService;->WD:F

    invoke-direct {p0, p1, v5}, Lcom/bb_sz/pay/kefu/CSDialogView;->dip2px(Landroid/content/Context;F)I

    move-result v5

    sget v6, Lcom/bb_sz/pay/kefu/CusService;->HD:F

    invoke-direct {p0, p1, v6}, Lcom/bb_sz/pay/kefu/CSDialogView;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/bb_sz/pay/kefu/CSDialogView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    return-void
.end method

.method private addTel(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    new-instance v4, Landroid/widget/ImageView;

    invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 70
    .local v4, "tel":Landroid/widget/ImageView;
    new-instance v5, Lcom/bb_sz/pay/kefu/CSDialogView$1;

    invoke-direct {v5, p0, p1}, Lcom/bb_sz/pay/kefu/CSDialogView$1;-><init>(Lcom/bb_sz/pay/kefu/CSDialogView;Landroid/content/Context;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CSDialogView;->getTelW(Landroid/content/Context;)F

    move-result v5

    invoke-static {p1, v5}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CSDialogView;->getTelH(Landroid/content/Context;)F

    move-result v6

    invoke-static {p1, v6}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v2, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 85
    .local v2, "flp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v5, 0x51

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 86
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CSDialogView;->getTelBotMargin(Landroid/content/Context;)F

    move-result v5

    invoke-static {p1, v5}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 87
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    const/4 v3, 0x0

    .line 92
    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "cs_res/cs_telephone.png"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 96
    :goto_0
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 97
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 101
    :cond_0
    invoke-virtual {p0, v4}, Lcom/bb_sz/pay/kefu/CSDialogView;->addView(Landroid/view/View;)V

    .line 102
    return-void

    .line 93
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 94
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private dip2px(Landroid/content/Context;F)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dpValue"    # F

    .prologue
    .line 306
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 307
    .local v0, "scale":F
    mul-float v1, p2, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private getDelRightMargin(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 290
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 291
    const/high16 v0, 0x40a00000    # 5.0f

    .line 293
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
    .line 298
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 299
    const/high16 v0, 0x40a00000    # 5.0f

    .line 301
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
    .line 282
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 283
    const/high16 v0, 0x41880000    # 17.0f

    .line 285
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x41b00000    # 22.0f

    goto :goto_0
.end method

.method private getIssusBankH(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 243
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 244
    const/high16 v0, 0x40000000    # 2.0f

    .line 246
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x41000000    # 8.0f

    goto :goto_0
.end method

.method private getSendViewBotMargin(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 162
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 163
    const/high16 v0, 0x41a00000    # 20.0f

    .line 165
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x42140000    # 37.0f

    goto :goto_0
.end method

.method private getSendViewH(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 147
    const/high16 v0, 0x42200000    # 40.0f

    .line 149
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x42340000    # 45.0f

    goto :goto_0
.end method

.method private getTelBotMargin(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 154
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 155
    const/high16 v0, 0x41300000    # 11.0f

    .line 157
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
    .line 274
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 275
    const/high16 v0, 0x41780000    # 15.5f

    .line 277
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
    .line 266
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 267
    const v0, 0x431d8000    # 157.5f

    .line 269
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x43520000    # 210.0f

    goto :goto_0
.end method

.method private hideSomeView()V
    .locals 4

    .prologue
    .line 376
    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/CSDialogView;->getChildCount()I

    move-result v0

    .line 377
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 378
    invoke-virtual {p0, v1}, Lcom/bb_sz/pay/kefu/CSDialogView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 379
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->mResultView:Lcom/bb_sz/pay/kefu/CSResultView;

    if-eq v2, v3, :cond_0

    .line 380
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 377
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CSDialogView;->addBg(Landroid/content/Context;)V

    .line 55
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CSDialogView;->addIssus(Landroid/content/Context;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CSDialogView;->addDelIcon(Landroid/content/Context;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CSDialogView;->addEditTextSendBtn(Landroid/content/Context;)V

    .line 62
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/CSDialogView;->addTel(Landroid/content/Context;)V

    .line 64
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    sget v1, Lcom/bb_sz/pay/kefu/CusService;->WD:F

    invoke-direct {p0, p1, v1}, Lcom/bb_sz/pay/kefu/CSDialogView;->dip2px(Landroid/content/Context;F)I

    move-result v1

    sget v2, Lcom/bb_sz/pay/kefu/CusService;->HD:F

    invoke-direct {p0, p1, v2}, Lcom/bb_sz/pay/kefu/CSDialogView;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/bb_sz/pay/kefu/CSDialogView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    return-void
.end method

.method private notifySelectIssus()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 131
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->mHandler:Landroid/os/Handler;

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->notifySelectIssusRun:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 134
    new-instance v0, Lcom/bb_sz/pay/kefu/CSDialogView$3;

    invoke-direct {v0, p0}, Lcom/bb_sz/pay/kefu/CSDialogView$3;-><init>(Lcom/bb_sz/pay/kefu/CSDialogView;)V

    iput-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->notifySelectIssusRun:Ljava/lang/Runnable;

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->notifySelectIssusRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 143
    return-void
.end method

.method private px2dip(Landroid/content/Context;F)I
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pxValue"    # F

    .prologue
    .line 314
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 315
    .local v0, "scale":F
    div-float v1, p2, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private showSomeView()V
    .locals 4

    .prologue
    .line 386
    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/CSDialogView;->getChildCount()I

    move-result v0

    .line 387
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 388
    invoke-virtual {p0, v1}, Lcom/bb_sz/pay/kefu/CSDialogView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 389
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->mResultView:Lcom/bb_sz/pay/kefu/CSResultView;

    if-eq v2, v3, :cond_0

    .line 390
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 387
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 393
    .end local v2    # "view":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 323
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->mResultView:Lcom/bb_sz/pay/kefu/CSResultView;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->mResultView:Lcom/bb_sz/pay/kefu/CSResultView;

    invoke-virtual {v0}, Lcom/bb_sz/pay/kefu/CSResultView;->clear()V

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->et:Lcom/bb_sz/pay/kefu/SendView;

    if-eqz v0, :cond_1

    .line 327
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->et:Lcom/bb_sz/pay/kefu/SendView;

    invoke-virtual {v0}, Lcom/bb_sz/pay/kefu/SendView;->clear()V

    .line 329
    :cond_1
    iput v1, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->curSelIndex:I

    .line 330
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->item1:Lcom/bb_sz/pay/kefu/IssusView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->item1:Lcom/bb_sz/pay/kefu/IssusView;

    invoke-virtual {v0, v1}, Lcom/bb_sz/pay/kefu/IssusView;->setSelected(Z)V

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->item2:Lcom/bb_sz/pay/kefu/IssusView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->item2:Lcom/bb_sz/pay/kefu/IssusView;

    invoke-virtual {v0, v1}, Lcom/bb_sz/pay/kefu/IssusView;->setSelected(Z)V

    .line 332
    :cond_3
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->item3:Lcom/bb_sz/pay/kefu/IssusView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->item3:Lcom/bb_sz/pay/kefu/IssusView;

    invoke-virtual {v0, v1}, Lcom/bb_sz/pay/kefu/IssusView;->setSelected(Z)V

    .line 333
    :cond_4
    return-void
.end method

.method public setItemListener(Lcom/bb_sz/pay/kefu/CSDialogView$IItemListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/bb_sz/pay/kefu/CSDialogView$IItemListener;

    .prologue
    .line 319
    iput-object p1, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->listener:Lcom/bb_sz/pay/kefu/CSDialogView$IItemListener;

    .line 320
    return-void
.end method

.method public showDialog()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->mResultView:Lcom/bb_sz/pay/kefu/CSResultView;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->mResultView:Lcom/bb_sz/pay/kefu/CSResultView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bb_sz/pay/kefu/CSResultView;->setVisibility(I)V

    .line 339
    :cond_0
    invoke-direct {p0}, Lcom/bb_sz/pay/kefu/CSDialogView;->showSomeView()V

    .line 340
    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/CSDialogView;->invalidate()V

    .line 341
    return-void
.end method

.method public showResult()V
    .locals 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->mResultView:Lcom/bb_sz/pay/kefu/CSResultView;

    if-nez v0, :cond_0

    .line 345
    new-instance v0, Lcom/bb_sz/pay/kefu/CSResultView;

    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/CSDialogView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bb_sz/pay/kefu/CSResultView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->mResultView:Lcom/bb_sz/pay/kefu/CSResultView;

    .line 346
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->mResultView:Lcom/bb_sz/pay/kefu/CSResultView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bb_sz/pay/kefu/CSResultView;->setFocusable(Z)V

    .line 347
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->mResultView:Lcom/bb_sz/pay/kefu/CSResultView;

    new-instance v1, Lcom/bb_sz/pay/kefu/CSDialogView$6;

    invoke-direct {v1, p0}, Lcom/bb_sz/pay/kefu/CSDialogView$6;-><init>(Lcom/bb_sz/pay/kefu/CSDialogView;)V

    invoke-virtual {v0, v1}, Lcom/bb_sz/pay/kefu/CSResultView;->setResultListener(Lcom/bb_sz/pay/kefu/CSResultView$IResultListener;)V

    .line 365
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->mResultView:Lcom/bb_sz/pay/kefu/CSResultView;

    invoke-virtual {p0, v0}, Lcom/bb_sz/pay/kefu/CSDialogView;->addView(Landroid/view/View;)V

    .line 370
    :goto_0
    invoke-direct {p0}, Lcom/bb_sz/pay/kefu/CSDialogView;->hideSomeView()V

    .line 372
    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/CSDialogView;->invalidate()V

    .line 373
    return-void

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/CSDialogView;->mResultView:Lcom/bb_sz/pay/kefu/CSResultView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bb_sz/pay/kefu/CSResultView;->setVisibility(I)V

    goto :goto_0
.end method
