.class public Lcom/lyhtgh/pay/wostore/WoStorePayRet;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/unicom/xiaowo/Pay$UnipayPayResultListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public PayResult(Ljava/lang/String;IILjava/lang/String;)V
    .locals 3

    .prologue
    .line 55
    sget-object v0, Lcom/lyhtgh/pay/wostore/WoStoreServer;->mWoStoreResultHandle:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 56
    const v1, 0xd903

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 57
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 59
    sget-object v1, Lcom/lyhtgh/pay/wostore/WoStoreServer;->mWoStoreResultHandle:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 60
    return-void
.end method
