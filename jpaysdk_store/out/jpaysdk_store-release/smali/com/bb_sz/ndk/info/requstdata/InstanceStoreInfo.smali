.class public Lcom/bb_sz/ndk/info/requstdata/InstanceStoreInfo;
.super Ljava/lang/Object;
.source "InstanceStoreInfo.java"


# instance fields
.field private _id:I

.field private app_id:I

.field private build_id:I

.field private net_work_id:I

.field private screen_id:I

.field private sim_id:I

.field private wifi_id:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getApp_id()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/bb_sz/ndk/info/requstdata/InstanceStoreInfo;->app_id:I

    return v0
.end method

.method public getBuild_id()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/bb_sz/ndk/info/requstdata/InstanceStoreInfo;->build_id:I

    return v0
.end method

.method public getNet_work_id()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/bb_sz/ndk/info/requstdata/InstanceStoreInfo;->net_work_id:I

    return v0
.end method

.method public getScreen_id()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/bb_sz/ndk/info/requstdata/InstanceStoreInfo;->screen_id:I

    return v0
.end method

.method public getSim_id()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/bb_sz/ndk/info/requstdata/InstanceStoreInfo;->sim_id:I

    return v0
.end method

.method public getWifi_id()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/bb_sz/ndk/info/requstdata/InstanceStoreInfo;->wifi_id:I

    return v0
.end method

.method public get_id()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/bb_sz/ndk/info/requstdata/InstanceStoreInfo;->_id:I

    return v0
.end method

.method public setApp_id(I)V
    .locals 0
    .param p1, "app_id"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/bb_sz/ndk/info/requstdata/InstanceStoreInfo;->app_id:I

    .line 40
    return-void
.end method

.method public setBuild_id(I)V
    .locals 0
    .param p1, "build_id"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/bb_sz/ndk/info/requstdata/InstanceStoreInfo;->build_id:I

    .line 48
    return-void
.end method

.method public setNet_work_id(I)V
    .locals 0
    .param p1, "net_work_id"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/bb_sz/ndk/info/requstdata/InstanceStoreInfo;->net_work_id:I

    .line 56
    return-void
.end method

.method public setScreen_id(I)V
    .locals 0
    .param p1, "screen_id"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/bb_sz/ndk/info/requstdata/InstanceStoreInfo;->screen_id:I

    .line 64
    return-void
.end method

.method public setSim_id(I)V
    .locals 0
    .param p1, "sim_id"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/bb_sz/ndk/info/requstdata/InstanceStoreInfo;->sim_id:I

    .line 72
    return-void
.end method

.method public setWifi_id(I)V
    .locals 0
    .param p1, "wifi_id"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/bb_sz/ndk/info/requstdata/InstanceStoreInfo;->wifi_id:I

    .line 80
    return-void
.end method

.method public set_id(I)V
    .locals 0
    .param p1, "_id"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/bb_sz/ndk/info/requstdata/InstanceStoreInfo;->_id:I

    .line 32
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "refresh._id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bb_sz/ndk/info/requstdata/InstanceStoreInfo;->_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    const-string v1, "refresh.app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bb_sz/ndk/info/requstdata/InstanceStoreInfo;->app_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 87
    const-string v1, "refresh.build_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bb_sz/ndk/info/requstdata/InstanceStoreInfo;->build_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 88
    const-string v1, "refresh.net_work_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bb_sz/ndk/info/requstdata/InstanceStoreInfo;->net_work_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 89
    const-string v1, "refresh.screen_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bb_sz/ndk/info/requstdata/InstanceStoreInfo;->screen_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 90
    const-string v1, "refresh.sim_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bb_sz/ndk/info/requstdata/InstanceStoreInfo;->sim_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    const-string v1, "refresh.wifi_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bb_sz/ndk/info/requstdata/InstanceStoreInfo;->wifi_id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
