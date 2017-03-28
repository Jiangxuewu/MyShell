.class public Lcom/bb_sz/pay/kefu/ResultBtnView;
.super Landroid/widget/LinearLayout;
.source "ResultBtnView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bb_sz/pay/kefu/ResultBtnView$ISelListener;
    }
.end annotation


# instance fields
.field private btnListener:Landroid/view/View$OnClickListener;

.field private btnNor:Landroid/widget/ImageView;

.field private btnSel:Landroid/widget/ImageView;

.field private listener:Lcom/bb_sz/pay/kefu/ResultBtnView$ISelListener;

.field private selected:Z

.field private txt:Landroid/widget/ImageView;

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bb_sz/pay/kefu/ResultBtnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bb_sz/pay/kefu/ResultBtnView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    iput-boolean v0, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->selected:Z

    .line 26
    iput v0, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->type:I

    .line 27
    new-instance v0, Lcom/bb_sz/pay/kefu/ResultBtnView$1;

    invoke-direct {v0, p0}, Lcom/bb_sz/pay/kefu/ResultBtnView$1;-><init>(Lcom/bb_sz/pay/kefu/ResultBtnView;)V

    iput-object v0, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->btnListener:Landroid/view/View$OnClickListener;

    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/bb_sz/pay/kefu/ResultBtnView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/bb_sz/pay/kefu/ResultBtnView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/ResultBtnView;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->selected:Z

    return v0
.end method

.method static synthetic access$100(Lcom/bb_sz/pay/kefu/ResultBtnView;)V
    .locals 0
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/ResultBtnView;

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/bb_sz/pay/kefu/ResultBtnView;->notifyOther()V

    return-void
.end method

.method private getBtnNorWH(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 199
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 200
    const/high16 v0, 0x41d00000    # 26.0f

    .line 202
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
    .line 207
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 208
    const/high16 v0, 0x41a80000    # 21.0f

    .line 210
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x41e00000    # 28.0f

    goto :goto_0
.end method

.method private getSolveH(Landroid/content/Context;I)F
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const/high16 v1, 0x41c00000    # 24.0f

    const/high16 v0, 0x41900000    # 18.0f

    .line 215
    if-nez p2, :cond_2

    .line 216
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_1

    .line 228
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 219
    goto :goto_0

    .line 221
    :cond_2
    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    .line 222
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 225
    goto :goto_0

    .line 228
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSolveW(Landroid/content/Context;I)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    .line 180
    if-nez p2, :cond_1

    .line 181
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 182
    const/high16 v0, 0x422a0000    # 42.5f

    .line 193
    :goto_0
    return v0

    .line 184
    :cond_0
    const v0, 0x42626666    # 56.6f

    goto :goto_0

    .line 186
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 187
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_2

    .line 188
    const/high16 v0, 0x42300000    # 44.0f

    goto :goto_0

    .line 190
    :cond_2
    const v0, 0x426a6666    # 58.6f

    goto :goto_0

    .line 193
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 59
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/bb_sz/pay/kefu/ResultBtnView;->setOrientation(I)V

    .line 60
    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/bb_sz/pay/kefu/ResultBtnView;->setGravity(I)V

    .line 62
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->btnNor:Landroid/widget/ImageView;

    .line 63
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->btnSel:Landroid/widget/ImageView;

    .line 64
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->txt:Landroid/widget/ImageView;

    .line 65
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->btnNor:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->btnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->btnSel:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->btnListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 70
    .local v1, "fl":Landroid/widget/FrameLayout;
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->btnNor:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 71
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->btnSel:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 74
    invoke-direct {p0}, Lcom/bb_sz/pay/kefu/ResultBtnView;->setBtnNor()V

    .line 75
    invoke-direct {p0}, Lcom/bb_sz/pay/kefu/ResultBtnView;->setBtnSel()V

    .line 77
    invoke-virtual {p0, v1}, Lcom/bb_sz/pay/kefu/ResultBtnView;->addView(Landroid/view/View;)V

    .line 79
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 80
    .local v0, "bank":Landroid/view/View;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x40a00000    # 5.0f

    invoke-static {p1, v3}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/bb_sz/pay/kefu/ResultBtnView;->addView(Landroid/view/View;)V

    .line 83
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->txt:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Lcom/bb_sz/pay/kefu/ResultBtnView;->addView(Landroid/view/View;)V

    .line 85
    invoke-direct {p0}, Lcom/bb_sz/pay/kefu/ResultBtnView;->update()V

    .line 86
    return-void
.end method

.method private notifyOther()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->listener:Lcom/bb_sz/pay/kefu/ResultBtnView$ISelListener;

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->listener:Lcom/bb_sz/pay/kefu/ResultBtnView$ISelListener;

    iget v1, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->type:I

    invoke-interface {v0, v1}, Lcom/bb_sz/pay/kefu/ResultBtnView$ISelListener;->selected(I)V

    .line 42
    :cond_0
    return-void
.end method

.method private setBtnNor()V
    .locals 7

    .prologue
    .line 127
    const/4 v2, 0x0

    .line 129
    .local v2, "in":Ljava/io/InputStream;
    const-string v3, "cs_res/cs_checkbox_normal.png"

    .line 131
    .local v3, "name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/ResultBtnView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 135
    :goto_0
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 136
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->btnNor:Landroid/widget/ImageView;

    if-nez v5, :cond_1

    .line 144
    :cond_0
    :goto_1
    return-void

    .line 132
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 137
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/ResultBtnView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/ResultBtnView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/bb_sz/pay/kefu/ResultBtnView;->getBtnNorWH(Landroid/content/Context;)F

    move-result v6

    invoke-static {v5, v6}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v4

    .line 139
    .local v4, "wh":I
    iget-object v5, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->btnNor:Landroid/widget/ImageView;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    if-eqz v0, :cond_0

    .line 142
    iget-object v5, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->btnNor:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private setBtnSel()V
    .locals 8

    .prologue
    .line 104
    const/4 v3, 0x0

    .line 106
    .local v3, "in":Ljava/io/InputStream;
    const-string v4, "cs_res/cs_checkbox_selected.png"

    .line 108
    .local v4, "name":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/ResultBtnView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 112
    :goto_0
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 115
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->btnSel:Landroid/widget/ImageView;

    if-nez v6, :cond_1

    .line 124
    :cond_0
    :goto_1
    return-void

    .line 109
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 110
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 116
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_1
    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/ResultBtnView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/ResultBtnView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/bb_sz/pay/kefu/ResultBtnView;->getBtnSelWH(Landroid/content/Context;)F

    move-result v7

    invoke-static {v6, v7}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 117
    .local v5, "wh":I
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 118
    .local v2, "flp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v6, 0x11

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 119
    iget-object v6, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->btnSel:Landroid/widget/ImageView;

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    if-eqz v0, :cond_0

    .line 122
    iget-object v6, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->btnSel:Landroid/widget/ImageView;

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method private update()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/bb_sz/pay/kefu/ResultBtnView;->updateBtn()V

    .line 95
    return-void
.end method

.method private updateBtn()V
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->btnSel:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->btnSel:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->selected:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 101
    :cond_0
    return-void

    .line 99
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method public setSelListener(Lcom/bb_sz/pay/kefu/ResultBtnView$ISelListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/bb_sz/pay/kefu/ResultBtnView$ISelListener;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->listener:Lcom/bb_sz/pay/kefu/ResultBtnView$ISelListener;

    .line 234
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .prologue
    .line 89
    iput-boolean p1, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->selected:Z

    .line 90
    invoke-direct {p0}, Lcom/bb_sz/pay/kefu/ResultBtnView;->update()V

    .line 91
    return-void
.end method

.method public setType(I)V
    .locals 9
    .param p1, "type"    # I

    .prologue
    .line 150
    iput p1, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->type:I

    .line 152
    if-nez p1, :cond_1

    .line 153
    const-string v3, "cs_res/cs_resolved.png"

    .line 159
    .local v3, "name":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    .line 162
    .local v2, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/ResultBtnView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 167
    :goto_1
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 169
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v4, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->txt:Landroid/widget/ImageView;

    if-nez v4, :cond_2

    .line 177
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    .end local v2    # "in":Ljava/io/InputStream;
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 154
    :cond_1
    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 155
    const-string v3, "cs_res/cs_not_resolved.png"

    .restart local v3    # "name":Ljava/lang/String;
    goto :goto_0

    .line 163
    .restart local v2    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 164
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 171
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "bmp":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v4, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->txt:Landroid/widget/ImageView;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/ResultBtnView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/ResultBtnView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {p0, v7, p1}, Lcom/bb_sz/pay/kefu/ResultBtnView;->getSolveW(Landroid/content/Context;I)F

    move-result v7

    invoke-static {v6, v7}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v6

    .line 172
    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/ResultBtnView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/ResultBtnView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {p0, v8, p1}, Lcom/bb_sz/pay/kefu/ResultBtnView;->getSolveH(Landroid/content/Context;I)F

    move-result v8

    invoke-static {v7, v8}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 171
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    if-eqz v0, :cond_0

    .line 175
    iget-object v4, p0, Lcom/bb_sz/pay/kefu/ResultBtnView;->txt:Landroid/widget/ImageView;

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2
.end method
