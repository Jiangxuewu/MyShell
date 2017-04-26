.class public Lcom/bb_sz/ndk/onetotwo/Model;
.super Ljava/lang/Object;
.source "Model.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;
    }
.end annotation


# instance fields
.field public code:I

.field public msg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 19
    .local v6, "object":Lorg/json/JSONObject;
    const-string v7, "code"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 20
    const-string v7, "code"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lcom/bb_sz/ndk/onetotwo/Model;->code:I

    .line 22
    :cond_0
    iget v7, p0, Lcom/bb_sz/ndk/onetotwo/Model;->code:I

    if-eqz v7, :cond_2

    .line 41
    .end local v6    # "object":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 25
    .restart local v6    # "object":Lorg/json/JSONObject;
    :cond_2
    const-string v7, "msg"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 26
    const-string v7, "msg"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 27
    .local v0, "array":Lorg/json/JSONArray;
    if-eqz v0, :cond_1

    .line 28
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 29
    .local v5, "len":I
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/bb_sz/ndk/onetotwo/Model;->msg:Ljava/util/List;

    .line 30
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v5, :cond_1

    .line 31
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 32
    .local v4, "itemObj":Lorg/json/JSONObject;
    if-eqz v4, :cond_3

    .line 33
    new-instance v1, Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;

    invoke-direct {v1, v4}, Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;-><init>(Lorg/json/JSONObject;)V

    .line 34
    .local v1, "bean":Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;
    iget-object v7, p0, Lcom/bb_sz/ndk/onetotwo/Model;->msg:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    .end local v1    # "bean":Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 38
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v4    # "itemObj":Lorg/json/JSONObject;
    .end local v5    # "len":I
    .end local v6    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    .line 39
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
