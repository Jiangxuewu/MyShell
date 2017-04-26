.class Lcom/bb_sz/pay/fullpay/FullPayManager$2;
.super Ljava/lang/Object;
.source "FullPayManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bb_sz/pay/fullpay/FullPayManager;->httpRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bb_sz/pay/fullpay/FullPayManager;


# direct methods
.method constructor <init>(Lcom/bb_sz/pay/fullpay/FullPayManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bb_sz/pay/fullpay/FullPayManager;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/bb_sz/pay/fullpay/FullPayManager$2;->this$0:Lcom/bb_sz/pay/fullpay/FullPayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 350
    iget-object v7, p0, Lcom/bb_sz/pay/fullpay/FullPayManager$2;->this$0:Lcom/bb_sz/pay/fullpay/FullPayManager;

    # getter for: Lcom/bb_sz/pay/fullpay/FullPayManager;->activity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/bb_sz/pay/fullpay/FullPayManager;->access$000(Lcom/bb_sz/pay/fullpay/FullPayManager;)Landroid/app/Activity;

    move-result-object v7

    const-string v8, "asdfsdfasdf"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 351
    .local v6, "sp":Landroid/content/SharedPreferences;
    const-string v7, "full_full_pay_t"

    const-wide/16 v8, 0x0

    invoke-interface {v6, v7, v8, v9}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 352
    .local v2, "lastTime":J
    const-string v7, "SkyFullPay"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lastTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v2

    const-wide/32 v10, 0x927c0

    cmp-long v7, v8, v10

    if-gez v7, :cond_0

    .line 372
    :goto_0
    return-void

    .line 357
    :cond_0
    const-string v1, "www.bb-sz.com"

    .line 358
    .local v1, "host":Ljava/lang/String;
    const/16 v4, 0x50

    .line 359
    .local v4, "port":I
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    .line 360
    .local v5, "sb":Ljava/lang/StringBuffer;
    const-string v7, "GET "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "http://www.bb-sz.com/ad/fullpay/get_switch.php?pkg="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/bb_sz/pay/fullpay/FullPayManager$2;->this$0:Lcom/bb_sz/pay/fullpay/FullPayManager;

    # getter for: Lcom/bb_sz/pay/fullpay/FullPayManager;->pkg:Ljava/lang/String;
    invoke-static {v9}, Lcom/bb_sz/pay/fullpay/FullPayManager;->access$200(Lcom/bb_sz/pay/fullpay/FullPayManager;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "&cid={$CID$}&t="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " HTTP/1.1"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    const-string v7, "Host: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    const-string v7, "User-Agent:XX_Shell_FP"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    const-string v7, "Accept-Language:zh-cn"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 364
    const-string v7, "Accept-Encoding:deflate"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    const-string v7, "Accept:*/*"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    const-string v7, "Connection:Keep-Alive"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    const-string v7, "Content-Type: application/x-www-form-urlencoded"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\r\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    const-string v7, "\r\n"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v4, v7}, Lcom/bb_sz/ndk/App;->http(Ljava/lang/String;ILjava/lang/String;)[B

    move-result-object v0

    .line 371
    .local v0, "data":[B
    iget-object v7, p0, Lcom/bb_sz/pay/fullpay/FullPayManager$2;->this$0:Lcom/bb_sz/pay/fullpay/FullPayManager;

    invoke-static {v0}, Lcom/bb_sz/ndk/App;->aa([B)Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/bb_sz/pay/fullpay/FullPayManager;->switchKey(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/bb_sz/pay/fullpay/FullPayManager;->access$300(Lcom/bb_sz/pay/fullpay/FullPayManager;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
