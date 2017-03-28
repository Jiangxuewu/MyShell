.class public Lcom/bb_sz/pay/LeTuApi;
.super Ljava/lang/Object;
.source "LeTuApi.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SKYLT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static _charge(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jpay/sdk/IChargeResult;)I
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "price"    # Ljava/lang/String;
    .param p2, "uniqueid"    # Ljava/lang/String;
    .param p3, "cpserverparam"    # Ljava/lang/String;
    .param p4, "feeName"    # Ljava/lang/String;
    .param p5, "feeDesc"    # Ljava/lang/String;
    .param p6, "chargeResultCb"    # Lcom/jpay/sdk/IChargeResult;

    .prologue
    .line 33
    const-string v0, "{$PAYFIRSTKEY$}"

    const-string v1, "LeTuPayFirst"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    const-string v0, "SKYLT"

    const-string v1, "LeTu First pay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    new-instance v0, Lcom/bb_sz/pay/LeTuApi$1;

    move-object v1, p6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/bb_sz/pay/LeTuApi$1;-><init>(Lcom/jpay/sdk/IChargeResult;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p4, v0}, Lcom/bb_sz/pay/LeTuApi;->charge(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)I

    .line 78
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 65
    :cond_0
    const-string v0, "SKYLT"

    const-string v1, "Jpay First pay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static {}, Lcom/jpay/sdk/JPay;->getInstance()Lcom/jpay/sdk/JPay;

    move-result-object v0

    new-instance v7, Lcom/bb_sz/pay/LeTuApi$2;

    invoke-direct {v7, p6, p0, p4}, Lcom/bb_sz/pay/LeTuApi$2;-><init>(Lcom/jpay/sdk/IChargeResult;Landroid/app/Activity;Ljava/lang/String;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/jpay/sdk/JPay;->charge(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/jpay/sdk/IChargeResult;)V

    goto :goto_0
.end method

.method private static charge(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)I
    .locals 9
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "feeName"    # Ljava/lang/String;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 83
    invoke-static {}, Lcom/lyhtgh/pay/SdkPayServer;->getInstance()Lcom/lyhtgh/pay/SdkPayServer;

    move-result-object v0

    const-string v3, "wGbkz?Qud*t?UqDW"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BY"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "{$CID$}"

    invoke-static {p1}, Lcom/bb_sz/pay/LeTuApi;->getPayPoint(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v0 .. v7}, Lcom/lyhtgh/pay/SdkPayServer;->startSdkSmsPay(Landroid/app/Activity;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 84
    .local v8, "i":I
    const-string v0, "SKYLT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LeTu pay i = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    return v8
.end method

.method public static charge(Landroid/app/Activity;Ljava/lang/String;Lcom/jpay/sdk/IChargeResult;)I
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "feeName"    # Ljava/lang/String;
    .param p2, "chargeResultCb"    # Lcom/jpay/sdk/IChargeResult;

    .prologue
    .line 89
    new-instance v0, Lcom/bb_sz/pay/LeTuApi$3;

    invoke-direct {v0, p2}, Lcom/bb_sz/pay/LeTuApi$3;-><init>(Lcom/jpay/sdk/IChargeResult;)V

    invoke-static {p0, p1, v0}, Lcom/bb_sz/pay/LeTuApi;->charge(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Handler;)I

    move-result v0

    return v0
.end method

.method private static getPayPoint(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "feeName"    # Ljava/lang/String;

    .prologue
    .line 123
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 143
    :goto_0
    return-object v0

    .line 124
    :cond_0
    const-string v0, "\u91d1\u5e01\u5927\u6298\u6263"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    const-string v0, "1"

    goto :goto_0

    .line 126
    :cond_1
    const-string v0, "\u5168\u90e8\u9886\u53d6"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    const-string v0, "2"

    goto :goto_0

    .line 128
    :cond_2
    const-string v0, "\u9ad8\u7206\u9c7c\u96f7"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 129
    const-string v0, "3"

    goto :goto_0

    .line 130
    :cond_3
    const-string v0, "\u65b0\u9c9c\u9c7c\u9975"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 131
    const-string v0, "4"

    goto :goto_0

    .line 132
    :cond_4
    const-string v0, "\u80fd\u91cf\u70ae"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 133
    const-string v0, "5"

    goto :goto_0

    .line 134
    :cond_5
    const-string v0, "\u6fc0\u5149\u70ae"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 135
    const-string v0, "6"

    goto :goto_0

    .line 136
    :cond_6
    const-string v0, "\u91d1\u5e01\u9c7c\u793c\u5305"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 137
    const-string v0, "7"

    goto :goto_0

    .line 138
    :cond_7
    const-string v0, "\u81f3\u5c0a\u5927\u793c\u5305"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 139
    const-string v0, "8"

    goto :goto_0

    .line 140
    :cond_8
    const-string v0, "\u5347\u7ea7\u793c\u5305"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 141
    const-string v0, "10"

    goto :goto_0

    .line 143
    :cond_9
    const-string v0, "10"

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    new-instance v1, Lcom/lyhtgh/pay/application/PayApplication;

    invoke-direct {v1}, Lcom/lyhtgh/pay/application/PayApplication;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lyhtgh/pay/application/PayApplication;->a(Landroid/content/Context;)V

    .line 28
    invoke-static {}, Lcom/lyhtgh/pay/SdkPayServer;->getInstance()Lcom/lyhtgh/pay/SdkPayServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/lyhtgh/pay/SdkPayServer;->initSdkPayServer()I

    move-result v0

    .line 29
    .local v0, "lt":I
    const-string v1, "SKYLT"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LeTu init lt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method
