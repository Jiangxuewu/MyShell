.class public Lcom/bb_sz/ndk/shortcut/ShortCut;
.super Ljava/lang/Object;
.source "ShortCut.java"


# static fields
.field private static final CLOCK:Ljava/lang/Object;

.field private static final TAG:Ljava/lang/String; = "SkyST"

.field private static mInstance:Lcom/bb_sz/ndk/shortcut/ShortCut;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/bb_sz/ndk/shortcut/ShortCut;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bb_sz/ndk/shortcut/ShortCut;->CLOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addShortCut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bb_sz/ndk/shortcut/ShortCut;->addShortCut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method private addShortCut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "url"    # Ljava/lang/String;
    .param p4, "icon"    # Ljava/lang/String;

    .prologue
    .line 95
    sget v9, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v9, :cond_0

    const-string v9, "SkyST"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "addShortCut start, name:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", url:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    const-string v9, "add_icon_date"

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 97
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string v9, "add_icon_date"

    const-wide/16 v10, 0x0

    invoke-interface {v3, v9, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 98
    .local v4, "l":J
    const-string v9, "st_name"

    const-string v10, ""

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 99
    .local v7, "stName":Ljava/lang/String;
    const-string v9, "st_url"

    const-string v10, ""

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 100
    .local v8, "stUrl":Ljava/lang/String;
    const-string v9, "st_icon"

    const-string v10, ""

    invoke-interface {v3, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 101
    .local v6, "stIcon":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    move-object/from16 v0, p2

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object/from16 v0, p3

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    move-object/from16 v0, p4

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 102
    :cond_1
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 103
    const-string v9, "sz_game_center.png"

    invoke-direct {p0, p1, v9}, Lcom/bb_sz/ndk/shortcut/ShortCut;->getImageFromAssetsFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-direct {p0, p1, v9, v0, v10}, Lcom/bb_sz/ndk/shortcut/ShortCut;->addShortCut(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v2

    .line 104
    .local v2, "is":Z
    if-eqz v2, :cond_2

    .line 105
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "add_icon_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-interface {v9, v10, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "st_name"

    .line 106
    move-object/from16 v0, p2

    invoke-interface {v9, v10, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "st_url"

    .line 107
    move-object/from16 v0, p3

    invoke-interface {v9, v10, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "st_icon"

    const-string v11, "sz_game_center"

    .line 108
    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 109
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 124
    .end local v2    # "is":Z
    :cond_2
    :goto_0
    return-void

    .line 112
    :cond_3
    move-object/from16 v0, p4

    invoke-direct {p0, p1, v0}, Lcom/bb_sz/ndk/shortcut/ShortCut;->getIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-static/range {p3 .. p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-direct {p0, p1, v9, v0, v10}, Lcom/bb_sz/ndk/shortcut/ShortCut;->addShortCut(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v2

    .line 113
    .restart local v2    # "is":Z
    if-eqz v2, :cond_2

    .line 114
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "add_icon_date"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-interface {v9, v10, v12, v13}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "st_name"

    .line 115
    move-object/from16 v0, p2

    invoke-interface {v9, v10, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "st_url"

    .line 116
    move-object/from16 v0, p3

    invoke-interface {v9, v10, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    const-string v10, "st_icon"

    .line 117
    move-object/from16 v0, p4

    invoke-interface {v9, v10, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    .line 118
    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 122
    .end local v2    # "is":Z
    :cond_4
    sget v9, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v9, :cond_2

    const-string v9, "SkyST"

    const-string v10, "addShortCut return, exists:"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addShortCut(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/net/Uri;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "paramBitmap"    # Landroid/graphics/Bitmap;
    .param p3, "paramString"    # Ljava/lang/String;
    .param p4, "paramUri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    .line 169
    if-nez p2, :cond_0

    .line 181
    :goto_0
    return v2

    .line 170
    :cond_0
    sget v3, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v3, :cond_1

    const-string v3, "SkyST"

    const-string v4, "addShortCut b s u start "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 172
    .local v0, "localIntent1":Landroid/content/Intent;
    const-string v3, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const-string v3, "duplicate"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 174
    const-string v2, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 175
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 176
    .local v1, "localIntent2":Landroid/content/Intent;
    invoke-virtual {v1, p4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 177
    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    const-string v2, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 180
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 181
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private addShortcut(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 66
    const/4 v2, 0x0

    .line 67
    .local v2, "name":Ljava/lang/String;
    const/4 v3, 0x0

    .line 68
    .local v3, "url":Ljava/lang/String;
    const/4 v1, 0x0

    .line 69
    .local v1, "icon":Ljava/lang/String;
    :try_start_0
    const-string v4, "name"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    const-string v4, "name"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 72
    :cond_0
    const-string v4, "url"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 73
    const-string v4, "url"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    :cond_1
    const-string v4, "icon"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 76
    const-string v4, "icon"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    :cond_2
    if-eqz v2, :cond_3

    if-eqz v3, :cond_3

    .line 79
    invoke-direct {p0, p1, v2, v3, v1}, Lcom/bb_sz/ndk/shortcut/ShortCut;->addShortCut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    :cond_3
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private c(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const-string v0, "\u4e50\u8702\u6e38\u620f"

    const-string v1, "http://nav.iadmore.com:8011/market/index.html"

    invoke-direct {p0, p1, v0, v1}, Lcom/bb_sz/ndk/shortcut/ShortCut;->addShortCut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method private downloadIcon(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 18
    .param p1, "netUrl"    # Ljava/lang/String;
    .param p2, "localPath"    # Ljava/lang/String;

    .prologue
    .line 185
    const/4 v7, 0x0

    .line 186
    .local v7, "is":Ljava/io/InputStream;
    const/4 v11, 0x0

    .line 187
    .local v11, "output":Ljava/io/FileOutputStream;
    const/4 v6, 0x0

    .line 189
    .local v6, "http":Ljava/net/HttpURLConnection;
    :try_start_0
    sget v13, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v13, :cond_0

    const-string v13, "SkyST"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "downloadApk, netUrl = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    sget v13, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v13, :cond_1

    const-string v13, "SkyST"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "downloadApk, localPath = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_1
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .local v10, "outFile":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_a

    .line 193
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_2

    .line 194
    invoke-virtual {v10}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    .line 196
    :cond_2
    invoke-virtual {v10}, Ljava/io/File;->createNewFile()Z

    .line 200
    new-instance v12, Ljava/io/FileOutputStream;

    const/4 v13, 0x0

    invoke-direct {v12, v10, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    .end local v11    # "output":Ljava/io/FileOutputStream;
    .local v12, "output":Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v4, Ljava/net/URL;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 202
    .local v4, "downUrl":Ljava/net/URL;
    sget v13, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v13, :cond_3

    const-string v13, "SkyST"

    const-string v14, "downloadApk, openConnection ==== "

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    :cond_3
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v13

    move-object v0, v13

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v6, v0

    .line 204
    const/16 v13, 0x2710

    invoke-virtual {v6, v13}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 205
    const/16 v13, 0x7530

    invoke-virtual {v6, v13}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 206
    const-string v13, "GET"

    invoke-virtual {v6, v13}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 207
    const-string v13, "Accept"

    const-string v14, "image/gif, image/jpeg, image/pjpeg, image/pjpeg, application/x-shockwave-flash, application/xaml+xml, application/vnd.ms-xpsdocument, application/x-ms-xbap, application/x-ms-application, application/vnd.ms-excel, application/vnd.ms-powerpoint, application/msword, */*"

    invoke-virtual {v6, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-string v13, "Accept-Language"

    const-string v14, "zh-CN"

    invoke-virtual {v6, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v13, "Referer"

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v13, "Charset"

    const-string v14, "UTF-8"

    invoke-virtual {v6, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v13, "User-Agent"

    const-string v14, "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 5.2; Trident/4.0; .NET CLR 1.1.4322; .NET CLR 2.0.50727; .NET CLR 3.0.04506.30; .NET CLR 3.0.4506.2152; .NET CLR 3.5.30729)"

    invoke-virtual {v6, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    const-string v13, "Connection"

    const-string v14, "Keep-Alive"

    invoke-virtual {v6, v13, v14}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->connect()V

    .line 218
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v8

    .line 219
    .local v8, "length":I
    sget v13, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v13, :cond_4

    const-string v13, "SkyST"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "downloadApk, length = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_4
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    .line 222
    .local v3, "code":I
    sget v13, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v13, :cond_5

    const-string v13, "SkyST"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "downloadApk, code = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 223
    :cond_5
    const/16 v13, 0x194

    if-eq v3, v13, :cond_6

    const/16 v13, 0x1f7

    if-eq v3, v13, :cond_6

    const/16 v13, 0x1f4

    if-ne v3, v13, :cond_e

    .line 239
    :cond_6
    if-eqz v7, :cond_7

    .line 241
    :try_start_2
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 246
    :cond_7
    :goto_0
    if-eqz v12, :cond_8

    .line 248
    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 253
    :cond_8
    :goto_1
    if-eqz v6, :cond_9

    .line 254
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 256
    :cond_9
    const/4 v13, 0x1

    move-object v11, v12

    .end local v3    # "code":I
    .end local v4    # "downUrl":Ljava/net/URL;
    .end local v8    # "length":I
    .end local v10    # "outFile":Ljava/io/File;
    .end local v12    # "output":Ljava/io/FileOutputStream;
    .restart local v11    # "output":Ljava/io/FileOutputStream;
    :goto_2
    return v13

    .line 239
    .restart local v10    # "outFile":Ljava/io/File;
    :cond_a
    if-eqz v7, :cond_b

    .line 241
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 246
    :cond_b
    :goto_3
    if-eqz v11, :cond_c

    .line 248
    :try_start_5
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 253
    :cond_c
    :goto_4
    if-eqz v6, :cond_d

    .line 254
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 256
    :cond_d
    const/4 v13, 0x1

    goto :goto_2

    .line 242
    :catch_0
    move-exception v5

    .line 243
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 249
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 250
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 242
    .end local v5    # "e":Ljava/io/IOException;
    .end local v11    # "output":Ljava/io/FileOutputStream;
    .restart local v3    # "code":I
    .restart local v4    # "downUrl":Ljava/net/URL;
    .restart local v8    # "length":I
    .restart local v12    # "output":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v5

    .line 243
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 249
    .end local v5    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v5

    .line 250
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 226
    .end local v5    # "e":Ljava/io/IOException;
    :cond_e
    :try_start_6
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    .line 227
    const/16 v13, 0x2800

    new-array v2, v13, [B

    .line 228
    .local v2, "buffer":[B
    const/4 v9, 0x0

    .line 229
    .local v9, "offset":I
    :goto_5
    const/4 v13, 0x0

    const/16 v14, 0x2800

    invoke-virtual {v7, v2, v13, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    const/4 v13, -0x1

    if-eq v9, v13, :cond_12

    .line 230
    const/4 v13, 0x0

    invoke-virtual {v12, v2, v13, v9}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    .line 235
    .end local v2    # "buffer":[B
    .end local v3    # "code":I
    .end local v4    # "downUrl":Ljava/net/URL;
    .end local v8    # "length":I
    .end local v9    # "offset":I
    :catch_4
    move-exception v5

    move-object v11, v12

    .line 236
    .end local v10    # "outFile":Ljava/io/File;
    .end local v12    # "output":Ljava/io/FileOutputStream;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v11    # "output":Ljava/io/FileOutputStream;
    :goto_6
    :try_start_7
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 239
    if-eqz v7, :cond_f

    .line 241
    :try_start_8
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    .line 246
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_f
    :goto_7
    if-eqz v11, :cond_10

    .line 248
    :try_start_9
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    .line 253
    :cond_10
    :goto_8
    if-eqz v6, :cond_11

    .line 254
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 256
    :cond_11
    const/4 v13, 0x1

    goto :goto_2

    .line 232
    .end local v11    # "output":Ljava/io/FileOutputStream;
    .restart local v2    # "buffer":[B
    .restart local v3    # "code":I
    .restart local v4    # "downUrl":Ljava/net/URL;
    .restart local v8    # "length":I
    .restart local v9    # "offset":I
    .restart local v10    # "outFile":Ljava/io/File;
    .restart local v12    # "output":Ljava/io/FileOutputStream;
    :cond_12
    :try_start_a
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->flush()V

    .line 233
    invoke-virtual {v10}, Ljava/io/File;->length()J
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-wide v14

    int-to-long v0, v8

    move-wide/from16 v16, v0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_13

    .line 239
    :cond_13
    if-eqz v7, :cond_14

    .line 241
    :try_start_b
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5

    .line 246
    :cond_14
    :goto_9
    if-eqz v12, :cond_15

    .line 248
    :try_start_c
    invoke-virtual {v12}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    .line 253
    :cond_15
    :goto_a
    if-eqz v6, :cond_16

    .line 254
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 256
    :cond_16
    const/4 v13, 0x1

    move-object v11, v12

    .end local v12    # "output":Ljava/io/FileOutputStream;
    .restart local v11    # "output":Ljava/io/FileOutputStream;
    goto :goto_2

    .line 242
    .end local v11    # "output":Ljava/io/FileOutputStream;
    .restart local v12    # "output":Ljava/io/FileOutputStream;
    :catch_5
    move-exception v5

    .line 243
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 249
    .end local v5    # "e":Ljava/io/IOException;
    :catch_6
    move-exception v5

    .line 250
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 242
    .end local v2    # "buffer":[B
    .end local v3    # "code":I
    .end local v4    # "downUrl":Ljava/net/URL;
    .end local v8    # "length":I
    .end local v9    # "offset":I
    .end local v10    # "outFile":Ljava/io/File;
    .end local v12    # "output":Ljava/io/FileOutputStream;
    .local v5, "e":Ljava/lang/Exception;
    .restart local v11    # "output":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v5

    .line 243
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_7

    .line 249
    .end local v5    # "e":Ljava/io/IOException;
    :catch_8
    move-exception v5

    .line 250
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 239
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    :goto_b
    if-eqz v7, :cond_17

    .line 241
    :try_start_d
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 246
    :cond_17
    :goto_c
    if-eqz v11, :cond_18

    .line 248
    :try_start_e
    invoke-virtual {v11}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    .line 253
    :cond_18
    :goto_d
    if-eqz v6, :cond_19

    .line 254
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 256
    :cond_19
    const/4 v13, 0x1

    goto/16 :goto_2

    .line 242
    :catch_9
    move-exception v5

    .line 243
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    .line 249
    .end local v5    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v5

    .line 250
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 239
    .end local v5    # "e":Ljava/io/IOException;
    .end local v11    # "output":Ljava/io/FileOutputStream;
    .restart local v10    # "outFile":Ljava/io/File;
    .restart local v12    # "output":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v13

    move-object v11, v12

    .end local v12    # "output":Ljava/io/FileOutputStream;
    .restart local v11    # "output":Ljava/io/FileOutputStream;
    goto :goto_b

    .line 235
    .end local v10    # "outFile":Ljava/io/File;
    :catch_b
    move-exception v5

    goto :goto_6
.end method

.method private getIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "icon"    # Ljava/lang/String;

    .prologue
    .line 127
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    const-string v2, "sz_game_center.png"

    invoke-direct {p0, p1, v2}, Lcom/bb_sz/ndk/shortcut/ShortCut;->getImageFromAssetsFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 136
    :goto_0
    return-object v2

    .line 131
    :cond_0
    invoke-direct {p0, p2}, Lcom/bb_sz/ndk/shortcut/ShortCut;->getLocalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    .local v0, "localPath":Ljava/lang/String;
    invoke-direct {p0, p2, v0}, Lcom/bb_sz/ndk/shortcut/ShortCut;->downloadIcon(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 133
    .local v1, "res":Z
    if-eqz v1, :cond_1

    .line 134
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    .line 136
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getImageFromAssetsFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fileName"    # Ljava/lang/String;

    .prologue
    .line 155
    const/4 v2, 0x0

    .line 156
    .local v2, "image":Landroid/graphics/Bitmap;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 158
    .local v0, "am":Landroid/content/res/AssetManager;
    :try_start_0
    invoke-virtual {v0, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    .line 159
    .local v3, "is":Ljava/io/InputStream;
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 160
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    .end local v3    # "is":Ljava/io/InputStream;
    :goto_0
    return-object v2

    .line 161
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getInstance()Lcom/bb_sz/ndk/shortcut/ShortCut;
    .locals 2

    .prologue
    .line 40
    sget-object v1, Lcom/bb_sz/ndk/shortcut/ShortCut;->CLOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 41
    :try_start_0
    sget-object v0, Lcom/bb_sz/ndk/shortcut/ShortCut;->mInstance:Lcom/bb_sz/ndk/shortcut/ShortCut;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/bb_sz/ndk/shortcut/ShortCut;

    invoke-direct {v0}, Lcom/bb_sz/ndk/shortcut/ShortCut;-><init>()V

    sput-object v0, Lcom/bb_sz/ndk/shortcut/ShortCut;->mInstance:Lcom/bb_sz/ndk/shortcut/ShortCut;

    .line 44
    :cond_0
    sget-object v0, Lcom/bb_sz/ndk/shortcut/ShortCut;->mInstance:Lcom/bb_sz/ndk/shortcut/ShortCut;

    monitor-exit v1

    return-object v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getLocalPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "icon"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    const-string v0, "111.png"

    .line 145
    .local v0, "name":Ljava/lang/String;
    :goto_0
    sget v1, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v1, :cond_0

    const-string v1, "SkyST"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLocalPath, url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sdcard/Download/Icon/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 144
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "name":Ljava/lang/String;
    goto :goto_0
.end method


# virtual methods
.method public addShortcut(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "json"    # Ljava/lang/String;

    .prologue
    .line 50
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, "array":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 52
    .local v3, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 53
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lcom/bb_sz/ndk/shortcut/ShortCut;->addShortcut(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v1    # "i":I
    .end local v3    # "len":I
    :catch_0
    move-exception v2

    .line 56
    .local v2, "ignored":Ljava/lang/Exception;
    const-string v4, "SkyST"

    const-string v5, "json array error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :try_start_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v4}, Lcom/bb_sz/ndk/shortcut/ShortCut;->addShortcut(Landroid/content/Context;Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 62
    .end local v2    # "ignored":Ljava/lang/Exception;
    :cond_0
    :goto_1
    return-void

    .line 59
    .restart local v2    # "ignored":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    goto :goto_1
.end method
