.class public Lcom/bb_sz/pay/kefu/IssusView;
.super Landroid/widget/LinearLayout;
.source "IssusView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bb_sz/pay/kefu/IssusView$ISelListener;
    }
.end annotation


# instance fields
.field private btnListener:Landroid/view/View$OnClickListener;

.field private btnNor:Landroid/widget/ImageView;

.field private btnSel:Landroid/widget/ImageView;

.field private index:I

.field private listener:Lcom/bb_sz/pay/kefu/IssusView$ISelListener;

.field private selected:Z

.field private txt:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bb_sz/pay/kefu/IssusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bb_sz/pay/kefu/IssusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput-boolean v0, p0, Lcom/bb_sz/pay/kefu/IssusView;->selected:Z

    .line 26
    iput v0, p0, Lcom/bb_sz/pay/kefu/IssusView;->index:I

    .line 27
    new-instance v0, Lcom/bb_sz/pay/kefu/IssusView$1;

    invoke-direct {v0, p0}, Lcom/bb_sz/pay/kefu/IssusView$1;-><init>(Lcom/bb_sz/pay/kefu/IssusView;)V

    iput-object v0, p0, Lcom/bb_sz/pay/kefu/IssusView;->btnListener:Landroid/view/View$OnClickListener;

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/bb_sz/pay/kefu/IssusView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/bb_sz/pay/kefu/IssusView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/IssusView;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/bb_sz/pay/kefu/IssusView;->selected:Z

    return v0
.end method

.method static synthetic access$100(Lcom/bb_sz/pay/kefu/IssusView;)V
    .locals 0
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/IssusView;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/bb_sz/pay/kefu/IssusView;->notifyOther()V

    return-void
.end method

.method private getBtnNorWH(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 214
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 215
    const/high16 v0, 0x41d00000    # 26.0f

    .line 217
    :goto_0
    return v0

    :cond_0
    const v0, 0x420a6666    # 34.6f

    goto :goto_0
.end method

.method private getBtnSelWH(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 223
    const/high16 v0, 0x41a80000    # 21.0f

    .line 225
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x41e00000    # 28.0f

    goto :goto_0
.end method

.method private getCusPaddingLeft(Landroid/content/Context;)I
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 95
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 96
    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {p1, v0}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v0

    .line 98
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x42a00000    # 80.0f

    invoke-static {p1, v0}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v0

    goto :goto_0
.end method

.method private getIssusH(Landroid/content/Context;I)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "i"    # I

    .prologue
    .line 125
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const/high16 v0, 0x41480000    # 12.5f

    .line 128
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x41600000    # 14.0f

    goto :goto_0
.end method

.method private getIssusW(Landroid/content/Context;I)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "i"    # I

    .prologue
    .line 132
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 133
    packed-switch p2, :pswitch_data_0

    .line 140
    const/high16 v0, 0x433f0000    # 191.0f

    .line 150
    :goto_0
    return v0

    .line 135
    :pswitch_0
    const/high16 v0, 0x432b0000    # 171.0f

    goto :goto_0

    .line 137
    :pswitch_1
    const/high16 v0, 0x43210000    # 161.0f

    goto :goto_0

    .line 143
    :cond_0
    packed-switch p2, :pswitch_data_1

    .line 150
    const/high16 v0, 0x437f0000    # 255.0f

    goto :goto_0

    .line 145
    :pswitch_2
    const/high16 v0, 0x43640000    # 228.0f

    goto :goto_0

    .line 147
    :pswitch_3
    const/high16 v0, 0x43570000    # 215.0f

    goto :goto_0

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 143
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-virtual {p0, v3}, Lcom/bb_sz/pay/kefu/IssusView;->setOrientation(I)V

    .line 59
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/bb_sz/pay/kefu/IssusView;->setGravity(I)V

    .line 60
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/IssusView;->getCusPaddingLeft(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {p0, v2, v3, v3, v3}, Lcom/bb_sz/pay/kefu/IssusView;->setPadding(IIII)V

    .line 62
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/bb_sz/pay/kefu/IssusView;->btnNor:Landroid/widget/ImageView;

    .line 63
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/bb_sz/pay/kefu/IssusView;->btnSel:Landroid/widget/ImageView;

    .line 64
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/bb_sz/pay/kefu/IssusView;->txt:Landroid/widget/ImageView;

    .line 65
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/IssusView;->btnNor:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/bb_sz/pay/kefu/IssusView;->btnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/IssusView;->btnSel:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/bb_sz/pay/kefu/IssusView;->btnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 76
    .local v1, "fl":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/IssusView;->btnNor:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 77
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/IssusView;->btnSel:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 80
    invoke-direct {p0}, Lcom/bb_sz/pay/kefu/IssusView;->setBtnNor()V

    .line 81
    invoke-direct {p0}, Lcom/bb_sz/pay/kefu/IssusView;->setBtnSel()V

    .line 83
    invoke-virtual {p0, v1}, Lcom/bb_sz/pay/kefu/IssusView;->addView(Landroid/view/View;)V

    .line 85
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 86
    .local v0, "bank":Landroid/view/View;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {p1, v3}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    invoke-virtual {p0, v0}, Lcom/bb_sz/pay/kefu/IssusView;->addView(Landroid/view/View;)V

    .line 89
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/IssusView;->txt:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/bb_sz/pay/kefu/IssusView;->addView(Landroid/view/View;)V

    .line 91
    invoke-direct {p0}, Lcom/bb_sz/pay/kefu/IssusView;->update()V

    .line 92
    return-void
.end method

.method private notifyOther()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/IssusView;->listener:Lcom/bb_sz/pay/kefu/IssusView$ISelListener;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/IssusView;->listener:Lcom/bb_sz/pay/kefu/IssusView$ISelListener;

    iget v1, p0, Lcom/bb_sz/pay/kefu/IssusView;->index:I

    invoke-interface {v0, v1}, Lcom/bb_sz/pay/kefu/IssusView$ISelListener;->selected(I)V

    .line 42
    :cond_0
    return-void
.end method

.method private setBtnNor()V
    .locals 8

    .prologue
    .line 193
    const/4 v3, 0x0

    .line 195
    .local v3, "in":Ljava/io/InputStream;
    const-string v4, "cs_res/cs_checkbox_normal.png"

    .line 197
    .local v4, "name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/IssusView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 201
    :goto_0
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 203
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/bb_sz/pay/kefu/IssusView;->btnNor:Landroid/widget/ImageView;

    if-nez v6, :cond_1

    .line 211
    :cond_0
    :goto_1
    return-void

    .line 198
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 204
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/IssusView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/IssusView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/bb_sz/pay/kefu/IssusView;->getBtnNorWH(Landroid/content/Context;)F

    move-result v7

    invoke-static {v6, v7}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 205
    .local v5, "wh":I
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 206
    .local v2, "flp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v6, p0, Lcom/bb_sz/pay/kefu/IssusView;->btnNor:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    if-eqz v0, :cond_0

    .line 209
    iget-object v6, p0, Lcom/bb_sz/pay/kefu/IssusView;->btnNor:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private setBtnSel()V
    .locals 8

    .prologue
    .line 172
    const/4 v3, 0x0

    .line 174
    .local v3, "in":Ljava/io/InputStream;
    const-string v4, "cs_res/cs_checkbox_selected.png"

    .line 176
    .local v4, "name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/IssusView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 180
    :goto_0
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 181
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/bb_sz/pay/kefu/IssusView;->btnSel:Landroid/widget/ImageView;

    if-nez v6, :cond_1

    .line 190
    :cond_0
    :goto_1
    return-void

    .line 177
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 178
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 182
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/IssusView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/IssusView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/bb_sz/pay/kefu/IssusView;->getBtnSelWH(Landroid/content/Context;)F

    move-result v7

    invoke-static {v6, v7}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 183
    .local v5, "wh":I
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 184
    .local v2, "flp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v6, 0x11

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 185
    iget-object v6, p0, Lcom/bb_sz/pay/kefu/IssusView;->btnSel:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    if-eqz v0, :cond_0

    .line 188
    iget-object v6, p0, Lcom/bb_sz/pay/kefu/IssusView;->btnSel:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private update()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/bb_sz/pay/kefu/IssusView;->updateBtn()V

    .line 163
    return-void
.end method

.method private updateBtn()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/IssusView;->btnSel:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 167
    iget-object v1, p0, Lcom/bb_sz/pay/kefu/IssusView;->btnSel:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/bb_sz/pay/kefu/IssusView;->selected:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 169
    :cond_0
    return-void

    .line 167
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public setIssus(I)V
    .locals 8
    .param p1, "i"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/bb_sz/pay/kefu/IssusView;->index:I

    .line 104
    const/4 v2, 0x0

    .line 107
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/IssusView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cs_res/cs_issus_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 112
    :goto_0
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 114
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/bb_sz/pay/kefu/IssusView;->txt:Landroid/widget/ImageView;

    if-nez v3, :cond_1

    .line 122
    :cond_0
    :goto_1
    return-void

    .line 108
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 109
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 116
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_1
    iget-object v3, p0, Lcom/bb_sz/pay/kefu/IssusView;->txt:Landroid/widget/ImageView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/IssusView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/IssusView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6, p1}, Lcom/bb_sz/pay/kefu/IssusView;->getIssusW(Landroid/content/Context;I)F

    move-result v6

    invoke-static {v5, v6}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 117
    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/IssusView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/IssusView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p0, v7, p1}, Lcom/bb_sz/pay/kefu/IssusView;->getIssusH(Landroid/content/Context;I)F

    move-result v7

    invoke-static {v6, v7}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 116
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    if-eqz v0, :cond_0

    .line 120
    iget-object v3, p0, Lcom/bb_sz/pay/kefu/IssusView;->txt:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public setSelListner(Lcom/bb_sz/pay/kefu/IssusView$ISelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/bb_sz/pay/kefu/IssusView$ISelListener;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/bb_sz/pay/kefu/IssusView;->listener:Lcom/bb_sz/pay/kefu/IssusView$ISelListener;

    .line 231
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 157
    iput-boolean p1, p0, Lcom/bb_sz/pay/kefu/IssusView;->selected:Z

    .line 158
    invoke-direct {p0}, Lcom/bb_sz/pay/kefu/IssusView;->update()V

    .line 159
    return-void
.end method
