.class Lcom/bb_sz/ndk/onetotwo/OTUtil$2;
.super Ljava/lang/Object;
.source "OTUtil.java"

# interfaces
.implements Lcom/bb_sz/ndk/onetotwo/ICountDown;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bb_sz/ndk/onetotwo/OTUtil;->_installApk(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bb_sz/ndk/onetotwo/OTUtil;


# direct methods
.method constructor <init>(Lcom/bb_sz/ndk/onetotwo/OTUtil;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bb_sz/ndk/onetotwo/OTUtil;

    .prologue
    .line 263
    iput-object p1, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil$2;->this$0:Lcom/bb_sz/ndk/onetotwo/OTUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public installed(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)V
    .locals 2
    .param p1, "item"    # Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;

    .prologue
    .line 271
    invoke-static {}, Lcom/bb_sz/ndk/Http;->getInstance()Lcom/bb_sz/ndk/Http;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, p1, v1}, Lcom/bb_sz/ndk/Http;->post(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;I)V

    .line 272
    return-void
.end method

.method public timeOut(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)V
    .locals 2
    .param p1, "item"    # Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;

    .prologue
    .line 266
    invoke-static {}, Lcom/bb_sz/ndk/Http;->getInstance()Lcom/bb_sz/ndk/Http;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, p1, v1}, Lcom/bb_sz/ndk/Http;->post(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;I)V

    .line 267
    return-void
.end method
