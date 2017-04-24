.class public Lcom/bb_sz/ndk/App;
.super Ljava/lang/Object;
.source "App.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SkyApp"

.field public static debug:I

.field private static isNetDecision:Z

.field public static mContext:Landroid/content/Context;

.field private static mInstallReceiver:Lcom/bb_sz/ndk/receiver/InstallReceiver;

.field public static mUID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    sput-object v1, Lcom/bb_sz/ndk/App;->mContext:Landroid/content/Context;

    .line 36
    sput-object v1, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    .line 37
    const/4 v0, 0x0

    sput v0, Lcom/bb_sz/ndk/App;->debug:I

    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bb_sz/ndk/App;->isNetDecision:Z

    .line 40
    sput-object v1, Lcom/bb_sz/ndk/App;->mInstallReceiver:Lcom/bb_sz/ndk/receiver/InstallReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([B)V
    .locals 1
    .param p0, "data"    # [B

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/bb_sz/ndk/App;->a([BI)V

    .line 73
    return-void
.end method

.method public static a([BI)V
    .locals 6
    .param p0, "data"    # [B
    .param p1, "type"    # I

    .prologue
    .line 82
    invoke-static {p0}, Lcom/bb_sz/ndk/App;->aa([B)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "content":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 87
    :pswitch_0
    new-instance v2, Lcom/bb_sz/ndk/onetotwo/Model;

    invoke-direct {v2, v0}, Lcom/bb_sz/ndk/onetotwo/Model;-><init>(Ljava/lang/String;)V

    .line 88
    .local v2, "m":Lcom/bb_sz/ndk/onetotwo/Model;
    iget v3, v2, Lcom/bb_sz/ndk/onetotwo/Model;->code:I

    if-nez v3, :cond_0

    .line 91
    iget-object v3, v2, Lcom/bb_sz/ndk/onetotwo/Model;->msg:Ljava/util/List;

    if-eqz v3, :cond_0

    .line 92
    sget v3, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v3, :cond_2

    const-string v3, "SkyApp"

    const-string v4, "register InstallReceiver"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_2
    sget-object v3, Lcom/bb_sz/ndk/App;->mInstallReceiver:Lcom/bb_sz/ndk/receiver/InstallReceiver;

    if-nez v3, :cond_3

    .line 94
    new-instance v3, Lcom/bb_sz/ndk/receiver/InstallReceiver;

    invoke-direct {v3}, Lcom/bb_sz/ndk/receiver/InstallReceiver;-><init>()V

    sput-object v3, Lcom/bb_sz/ndk/App;->mInstallReceiver:Lcom/bb_sz/ndk/receiver/InstallReceiver;

    .line 95
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 96
    .local v1, "it":Landroid/content/IntentFilter;
    const-string v3, "package"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 97
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    sget-object v3, Lcom/bb_sz/ndk/App;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/bb_sz/ndk/App;->mInstallReceiver:Lcom/bb_sz/ndk/receiver/InstallReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 100
    .end local v1    # "it":Landroid/content/IntentFilter;
    :cond_3
    invoke-static {}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->getInstsance()Lcom/bb_sz/ndk/onetotwo/OTUtil;

    move-result-object v3

    sget-object v4, Lcom/bb_sz/ndk/App;->mContext:Landroid/content/Context;

    iget-object v5, v2, Lcom/bb_sz/ndk/onetotwo/Model;->msg:Ljava/util/List;

    invoke-virtual {v3, v4, v5}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->install(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_0

    .line 105
    .end local v2    # "m":Lcom/bb_sz/ndk/onetotwo/Model;
    :pswitch_1
    invoke-static {}, Lcom/bb_sz/ndk/shortcut/ShortCut;->getInstance()Lcom/bb_sz/ndk/shortcut/ShortCut;

    move-result-object v3

    sget-object v4, Lcom/bb_sz/ndk/App;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v0}, Lcom/bb_sz/ndk/shortcut/ShortCut;->addShortcut(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static aa([B)Ljava/lang/String;
    .locals 14
    .param p0, "data"    # [B

    .prologue
    .line 116
    :try_start_0
    sget v11, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v11, :cond_0

    const-string v12, "SkyApp"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "len:"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    if-nez p0, :cond_3

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :cond_0
    if-eqz p0, :cond_1

    array-length v11, p0

    if-nez v11, :cond_4

    :cond_1
    const/4 v2, 0x0

    .line 169
    :cond_2
    :goto_1
    return-object v2

    .line 116
    :cond_3
    array-length v11, p0

    goto :goto_0

    .line 118
    :cond_4
    const/4 v10, -0x1

    .line 119
    .local v10, "start":I
    const/4 v5, -0x2

    .line 120
    .local v5, "end":I
    array-length v9, p0

    .line 121
    .local v9, "len":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    if-ge v6, v9, :cond_7

    .line 122
    aget-byte v11, p0, v6

    const/16 v12, 0xd

    if-ne v11, v12, :cond_5

    add-int/lit8 v11, v6, 0x1

    if-ge v11, v9, :cond_5

    add-int/lit8 v11, v6, 0x1

    aget-byte v11, p0, v11

    const/16 v12, 0xa

    if-ne v11, v12, :cond_5

    .line 124
    add-int/lit8 v11, v6, 0x2

    if-ge v11, v9, :cond_5

    add-int/lit8 v11, v6, 0x2

    aget-byte v11, p0, v11

    const/16 v12, 0xd

    if-ne v11, v12, :cond_5

    add-int/lit8 v11, v6, 0x3

    if-ge v11, v9, :cond_5

    add-int/lit8 v11, v6, 0x3

    aget-byte v11, p0, v11

    const/16 v12, 0xa

    if-ne v11, v12, :cond_5

    .line 126
    const/4 v11, -0x1

    if-ne v10, v11, :cond_6

    .line 127
    add-int/lit8 v10, v6, 0x3

    .line 128
    sget v11, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v11, :cond_5

    const-string v11, "SkyApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "start is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 130
    :cond_6
    move v5, v6

    .line 131
    sget v11, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v11, :cond_7

    const-string v11, "SkyApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "end is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_7
    const/4 v2, 0x0

    .line 139
    .local v2, "content":Ljava/lang/String;
    if-gtz v5, :cond_8

    .line 140
    move v5, v9

    .line 141
    sget v11, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v11, :cond_8

    const-string v11, "SkyApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "end 2 is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_8
    sub-int v0, v5, v10

    .line 144
    .local v0, "cLen":I
    sget v11, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v11, :cond_9

    const-string v11, "SkyApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "c len is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_9
    if-lez v0, :cond_2

    .line 146
    new-array v1, v0, [B

    .line 147
    .local v1, "con":[B
    sget v11, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v11, :cond_a

    const-string v11, "SkyApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "con len is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_a
    const/4 v11, 0x0

    invoke-static {p0, v10, v1, v11, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :try_start_1
    new-instance v3, Ljava/lang/String;

    const-string v11, "utf-8"

    invoke-direct {v3, v1, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .end local v2    # "content":Ljava/lang/String;
    .local v3, "content":Ljava/lang/String;
    move-object v2, v3

    .line 154
    .end local v3    # "content":Ljava/lang/String;
    .restart local v2    # "content":Ljava/lang/String;
    :goto_3
    :try_start_2
    sget v11, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v11, :cond_b

    const-string v11, "SkyApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ":-1-:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_b
    if-eqz v2, :cond_2

    .line 157
    :cond_c
    :goto_4
    const-string v11, "{"

    invoke-virtual {v2, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    const-string v11, "}"

    invoke-virtual {v2, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 158
    :cond_d
    const-string v11, "{"

    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 159
    .local v8, "indexSt":I
    const-string v11, "}"

    invoke-virtual {v2, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    add-int/lit8 v7, v11, 0x1

    .line 160
    .local v7, "indexEt":I
    invoke-virtual {v2, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 161
    sget v11, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v11, :cond_c

    const-string v11, "SkyApp"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ":--:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    .line 166
    .end local v0    # "cLen":I
    .end local v1    # "con":[B
    .end local v2    # "content":Ljava/lang/String;
    .end local v5    # "end":I
    .end local v6    # "i":I
    .end local v7    # "indexEt":I
    .end local v8    # "indexSt":I
    .end local v9    # "len":I
    .end local v10    # "start":I
    :catch_0
    move-exception v4

    .line 167
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    const-string v2, ""

    goto/16 :goto_1

    .line 151
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v0    # "cLen":I
    .restart local v1    # "con":[B
    .restart local v2    # "content":Ljava/lang/String;
    .restart local v5    # "end":I
    .restart local v6    # "i":I
    .restart local v9    # "len":I
    .restart local v10    # "start":I
    :catch_1
    move-exception v4

    .line 152
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_3
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3
.end method

.method private static addReceiver()V
    .locals 4

    .prologue
    .line 56
    sget-object v0, Lcom/bb_sz/ndk/App;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/bb_sz/ndk/receiver/CSReceiver;

    invoke-direct {v1}, Lcom/bb_sz/ndk/receiver/CSReceiver;-><init>()V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "cs_notify_server"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 57
    return-void
.end method

.method protected static attachBaseContext(Landroid/content/Context;)V
    .locals 3
    .param p0, "base"    # Landroid/content/Context;

    .prologue
    .line 48
    sput-object p0, Lcom/bb_sz/ndk/App;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {p0}, Lcom/bb_sz/ndk/App;->b(Landroid/content/Context;)V

    .line 50
    sget v0, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v0, :cond_0

    const-string v0, "SkyApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    invoke-static {}, Lcom/bb_sz/ndk/App;->addReceiver()V

    .line 52
    const-string v0, "jpaysdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static b(Landroid/content/Context;)V
    .locals 18
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 173
    if-nez p0, :cond_1

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 175
    :cond_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v15

    const-string v16, "jpay_uid.txt"

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    .line 176
    .local v11, "is":Ljava/io/InputStream;
    invoke-virtual {v11}, Ljava/io/InputStream;->available()I

    move-result v5

    .line 177
    .local v5, "c":I
    new-array v4, v5, [B

    .line 178
    .local v4, "buffer":[B
    invoke-virtual {v11, v4}, Ljava/io/InputStream;->read([B)I

    .line 179
    new-instance v15, Ljava/lang/String;

    const-string v16, "utf-8"

    move-object/from16 v0, v16

    invoke-direct {v15, v4, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    sput-object v15, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    sget v15, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v16, 0x18

    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    .line 186
    const-string v15, "phone"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/TelephonyManager;

    .line 187
    .local v13, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v13, :cond_0

    .line 188
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v6

    .line 189
    .local v6, "deviceId":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 190
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&imei="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    .line 192
    :cond_2
    invoke-virtual {v13}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v8

    .line 193
    .local v8, "imsi":Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 194
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&imsi="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    .line 200
    .end local v6    # "deviceId":Ljava/lang/String;
    .end local v8    # "imsi":Ljava/lang/String;
    .end local v13    # "tm":Landroid/telephony/TelephonyManager;
    :cond_3
    :goto_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&model="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-object v16, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    .line 201
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&sdk="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    .line 203
    sget-object v15, Lcom/bb_sz/ndk/App;->mContext:Landroid/content/Context;

    const-string v16, "wifi"

    .line 204
    invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/WifiManager;

    .line 205
    .local v14, "wifi":Landroid/net/wifi/WifiManager;
    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v9

    .line 206
    .local v9, "info":Landroid/net/wifi/WifiInfo;
    const-string v12, ""

    .line 207
    .local v12, "macAddress":Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 208
    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v12

    .line 210
    :cond_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&macAddress="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    .line 212
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&ssid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v9}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/bb_sz/ndk/App;->string2Unicode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    .line 214
    sget-object v15, Lcom/bb_sz/ndk/App;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 215
    .local v10, "info2":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 216
    .local v3, "apkFile":Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    .local v2, "apk":Ljava/io/File;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&android_id="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v16

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    goto/16 :goto_0

    .line 180
    .end local v2    # "apk":Ljava/io/File;
    .end local v3    # "apkFile":Ljava/lang/String;
    .end local v4    # "buffer":[B
    .end local v5    # "c":I
    .end local v9    # "info":Landroid/net/wifi/WifiInfo;
    .end local v10    # "info2":Landroid/content/pm/ApplicationInfo;
    .end local v11    # "is":Ljava/io/InputStream;
    .end local v12    # "macAddress":Ljava/lang/String;
    .end local v14    # "wifi":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v7

    .line 181
    .local v7, "e":Ljava/io/IOException;
    const/4 v15, 0x0

    sput-object v15, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    goto/16 :goto_0

    .line 197
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v4    # "buffer":[B
    .restart local v5    # "c":I
    .restart local v11    # "is":Ljava/io/InputStream;
    :cond_5
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v16, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "&imei="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget v16, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    sput-object v15, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 247
    sget-object v3, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    if-eqz v3, :cond_0

    if-eqz p0, :cond_0

    sget-object v3, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-object v2

    .line 248
    :cond_1
    sget-object v3, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 249
    sget-object v3, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "maps":[Ljava/lang/String;
    array-length v4, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v0, v1, v3

    .line 251
    .local v0, "item":Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 252
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 250
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static native http(Ljava/lang/String;ILjava/lang/String;)[B
.end method

.method public static onCreate(Landroid/content/Context;)V
    .locals 1
    .param p0, "base"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-static {p0}, Lcom/bb_sz/ndk/App;->attachBaseContext(Landroid/content/Context;)V

    .line 61
    sget-boolean v0, Lcom/bb_sz/ndk/App;->isNetDecision:Z

    if-eqz v0, :cond_0

    .line 62
    const/4 v0, 0x0

    sput-boolean v0, Lcom/bb_sz/ndk/App;->isNetDecision:Z

    .line 63
    sget-object v0, Lcom/bb_sz/ndk/App;->mUID:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 64
    sget-object v0, Lcom/bb_sz/ndk/App;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bb_sz/ndk/payswitch/GameFreeSwitchRun;->start(Landroid/content/Context;)V

    .line 65
    sget-object v0, Lcom/bb_sz/ndk/App;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bb_sz/ndk/umswitch/UMSwitchRun;->start(Landroid/content/Context;)V

    .line 68
    :cond_0
    return-void
.end method

.method public static native post(Ljava/lang/String;ILjava/lang/String;)V
.end method

.method static string2Unicode(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x2

    .line 223
    :try_start_0
    new-instance v5, Ljava/lang/StringBuffer;

    const-string v8, ""

    invoke-direct {v5, v8}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 224
    .local v5, "out":Ljava/lang/StringBuffer;
    const-string v8, "unicode"

    invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 225
    .local v0, "bytes":[B
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_0
    array-length v8, v0

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_2

    .line 226
    const-string v8, "\\u"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 227
    add-int/lit8 v8, v2, 0x1

    aget-byte v8, v0, v8

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 228
    .local v6, "str":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, "j":I
    :goto_1
    if-ge v3, v9, :cond_0

    .line 229
    const-string v8, "0"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 228
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 231
    :cond_0
    aget-byte v8, v0, v2

    and-int/lit16 v8, v8, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    .line 232
    .local v7, "str1":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    .local v4, "k":I
    :goto_2
    if-ge v4, v9, :cond_1

    .line 233
    const-string v8, "0"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 232
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 235
    :cond_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 237
    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 239
    .end local v3    # "j":I
    .end local v4    # "k":I
    .end local v6    # "str":Ljava/lang/String;
    .end local v7    # "str1":Ljava/lang/String;
    :cond_2
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 242
    .end local v0    # "bytes":[B
    .end local v2    # "i":I
    .end local v5    # "out":Ljava/lang/StringBuffer;
    :goto_3
    return-object v8

    .line 240
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 242
    const/4 v8, 0x0

    goto :goto_3
.end method
