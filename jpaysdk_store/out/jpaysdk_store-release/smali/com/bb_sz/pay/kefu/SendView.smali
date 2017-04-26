.class public Lcom/bb_sz/pay/kefu/SendView;
.super Landroid/widget/LinearLayout;
.source "SendView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bb_sz/pay/kefu/SendView$ISendListener;
    }
.end annotation


# instance fields
.field private et:Landroid/widget/EditText;

.field private listener:Lcom/bb_sz/pay/kefu/SendView$ISendListener;

.field private mHandler:Landroid/os/Handler;

.field p:Ljava/util/regex/Pattern;

.field private phoneErrorRun:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bb_sz/pay/kefu/SendView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bb_sz/pay/kefu/SendView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const-string v0, "^((13\\d{9}$)|(15[0,1,2,3,5,6,7,8,9]\\d{8}$)|(18[0,2,5,6,7,8,9]\\d{8}$)|(147\\d{8})$|(17\\d{9})$)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/bb_sz/pay/kefu/SendView;->p:Ljava/util/regex/Pattern;

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/bb_sz/pay/kefu/SendView;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lcom/bb_sz/pay/kefu/SendView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/SendView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/SendView;->et:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/bb_sz/pay/kefu/SendView;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/SendView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/SendView;->isPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/bb_sz/pay/kefu/SendView;)V
    .locals 0
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/SendView;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/bb_sz/pay/kefu/SendView;->notifyPhoneError()V

    return-void
.end method

.method static synthetic access$300(Lcom/bb_sz/pay/kefu/SendView;)Lcom/bb_sz/pay/kefu/SendView$ISendListener;
    .locals 1
    .param p0, "x0"    # Lcom/bb_sz/pay/kefu/SendView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/SendView;->listener:Lcom/bb_sz/pay/kefu/SendView$ISendListener;

    return-object v0
.end method

.method private addBtn(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 77
    .local v1, "btn":Landroid/widget/ImageView;
    const/4 v3, 0x0

    .line 79
    .local v3, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/SendView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "cs_res/cs_send_btn.png"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 83
    :goto_0
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 84
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 87
    :cond_0
    new-instance v4, Lcom/bb_sz/pay/kefu/SendView$1;

    invoke-direct {v4, p0}, Lcom/bb_sz/pay/kefu/SendView$1;-><init>(Lcom/bb_sz/pay/kefu/SendView;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/SendView;->getSendBtnW(Landroid/content/Context;)F

    move-result v5

    invoke-static {p1, v5}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v5

    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/SendView;->getSendBtnH(Landroid/content/Context;)F

    move-result v6

    invoke-static {p1, v6}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    invoke-virtual {p0, v1}, Lcom/bb_sz/pay/kefu/SendView;->addView(Landroid/view/View;)V

    .line 108
    return-void

    .line 80
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v2

    .line 81
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private addEdit(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v7, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 139
    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 140
    .local v3, "fl":Landroid/widget/FrameLayout;
    new-instance v2, Landroid/widget/ImageView;

    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 141
    .local v2, "etbg":Landroid/widget/ImageView;
    const/4 v4, 0x0

    .line 143
    .local v4, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/bb_sz/pay/kefu/SendView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "cs_res/cs_edit_bg.png"

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 147
    :goto_0
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 148
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 149
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 152
    :cond_0
    new-instance v5, Landroid/widget/EditText;

    invoke-direct {v5, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/bb_sz/pay/kefu/SendView;->et:Landroid/widget/EditText;

    .line 153
    iget-object v5, p0, Lcom/bb_sz/pay/kefu/SendView;->et:Landroid/widget/EditText;

    invoke-virtual {v5, v10}, Landroid/widget/EditText;->setBackgroundColor(I)V

    .line 154
    iget-object v5, p0, Lcom/bb_sz/pay/kefu/SendView;->et:Landroid/widget/EditText;

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setTextColor(I)V

    .line 155
    iget-object v5, p0, Lcom/bb_sz/pay/kefu/SendView;->et:Landroid/widget/EditText;

    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/SendView;->getTextSize(Landroid/content/Context;)F

    move-result v6

    invoke-virtual {v5, v7, v6}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 156
    iget-object v5, p0, Lcom/bb_sz/pay/kefu/SendView;->et:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->setSingleLine()V

    .line 157
    iget-object v5, p0, Lcom/bb_sz/pay/kefu/SendView;->et:Landroid/widget/EditText;

    const-string v6, "\u5192\u9669\u8005\u628a\u60a8\u7684\u8054\u7cfb\u65b9\u5f0f\u7ed9\u6211\u4eec\u5427"

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v5, p0, Lcom/bb_sz/pay/kefu/SendView;->et:Landroid/widget/EditText;

    invoke-virtual {v5, v9}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 159
    iget-object v5, p0, Lcom/bb_sz/pay/kefu/SendView;->et:Landroid/widget/EditText;

    new-array v6, v7, [Landroid/text/InputFilter;

    new-instance v7, Landroid/text/InputFilter$LengthFilter;

    const/16 v8, 0xd

    invoke-direct {v7, v8}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v7, v6, v10

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 160
    iget-object v5, p0, Lcom/bb_sz/pay/kefu/SendView;->et:Landroid/widget/EditText;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setInputType(I)V

    .line 161
    iget-object v5, p0, Lcom/bb_sz/pay/kefu/SendView;->et:Landroid/widget/EditText;

    new-instance v6, Lcom/bb_sz/pay/kefu/SendView$3;

    invoke-direct {v6, p0}, Lcom/bb_sz/pay/kefu/SendView$3;-><init>(Lcom/bb_sz/pay/kefu/SendView;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 189
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 190
    iget-object v5, p0, Lcom/bb_sz/pay/kefu/SendView;->et:Landroid/widget/EditText;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 192
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/SendView;->getEditW(Landroid/content/Context;)F

    move-result v6

    invoke-static {p1, v6}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v6

    invoke-direct {v5, v6, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 194
    invoke-virtual {p0, v3}, Lcom/bb_sz/pay/kefu/SendView;->addView(Landroid/view/View;)V

    .line 195
    return-void

    .line 144
    .end local v0    # "bmp":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private getBankW(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 70
    const/high16 v0, 0x41200000    # 10.0f

    .line 72
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x41a00000    # 20.0f

    goto :goto_0
.end method

.method private getEditW(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 219
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 220
    const/high16 v0, 0x43440000    # 196.0f

    .line 222
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x43830000    # 262.0f

    goto :goto_0
.end method

.method private getSendBtnH(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 198
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 199
    const/high16 v0, 0x41a00000    # 20.0f

    .line 201
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x41d80000    # 27.0f

    goto :goto_0
.end method

.method private getSendBtnW(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 205
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 206
    const/high16 v0, 0x42580000    # 54.0f

    .line 208
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x42900000    # 72.0f

    goto :goto_0
.end method

.method private getTextSize(Landroid/content/Context;)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 212
    invoke-static {p1}, Lcom/bb_sz/pay/kefu/CusService;->getScreenOrientation(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 213
    const/high16 v0, 0x41200000    # 10.0f

    .line 215
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x41600000    # 14.0f

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 55
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/bb_sz/pay/kefu/SendView;->setOrientation(I)V

    .line 56
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/bb_sz/pay/kefu/SendView;->setGravity(I)V

    .line 58
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/SendView;->addEdit(Landroid/content/Context;)V

    .line 60
    new-instance v0, Landroid/view/View;

    invoke-direct {v0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 61
    .local v0, "bank":Landroid/view/View;
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/SendView;->getBankW(Landroid/content/Context;)F

    move-result v2

    invoke-static {p1, v2}, Lcom/bb_sz/pay/kefu/CusService;->dip2px(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    invoke-virtual {p0, v0}, Lcom/bb_sz/pay/kefu/SendView;->addView(Landroid/view/View;)V

    .line 65
    invoke-direct {p0, p1}, Lcom/bb_sz/pay/kefu/SendView;->addBtn(Landroid/content/Context;)V

    .line 66
    return-void
.end method

.method private isPhoneNumber(Ljava/lang/String;)Z
    .locals 3
    .param p1, "tel"    # Ljava/lang/String;

    .prologue
    .line 111
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 116
    :goto_0
    return v1

    .line 112
    :cond_0
    const-string v1, "-"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 115
    :cond_1
    iget-object v1, p0, Lcom/bb_sz/pay/kefu/SendView;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 116
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    goto :goto_0
.end method

.method private notifyPhoneError()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/SendView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bb_sz/pay/kefu/SendView;->mHandler:Landroid/os/Handler;

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/SendView;->phoneErrorRun:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 125
    new-instance v0, Lcom/bb_sz/pay/kefu/SendView$2;

    invoke-direct {v0, p0}, Lcom/bb_sz/pay/kefu/SendView$2;-><init>(Lcom/bb_sz/pay/kefu/SendView;)V

    iput-object v0, p0, Lcom/bb_sz/pay/kefu/SendView;->phoneErrorRun:Ljava/lang/Runnable;

    .line 134
    :cond_1
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/SendView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/bb_sz/pay/kefu/SendView;->phoneErrorRun:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/SendView;->et:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/bb_sz/pay/kefu/SendView;->et:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :cond_0
    return-void
.end method

.method public setSendListener(Lcom/bb_sz/pay/kefu/SendView$ISendListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/bb_sz/pay/kefu/SendView$ISendListener;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/bb_sz/pay/kefu/SendView;->listener:Lcom/bb_sz/pay/kefu/SendView$ISendListener;

    .line 227
    return-void
.end method
