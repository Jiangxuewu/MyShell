.class public Lcom/bb_sz/ndk/info/test/NetWorkInfo;
.super Ljava/lang/Object;
.source "NetWorkInfo.java"


# instance fields
.field private net_extrainfo:Ljava/lang/String;

.field private net_subtype:I

.field private net_subtype_name:Ljava/lang/String;

.field private net_type:I

.field private net_type_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNet_extrainfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_extrainfo:Ljava/lang/String;

    return-object v0
.end method

.method public getNet_subtype()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_subtype:I

    return v0
.end method

.method public getNet_subtype_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_subtype_name:Ljava/lang/String;

    return-object v0
.end method

.method public getNet_type()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_type:I

    return v0
.end method

.method public getNet_type_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_type_name:Ljava/lang/String;

    return-object v0
.end method

.method public set3gNet(Lcom/bb_sz/ndk/info/test/SimInfo;)V
    .locals 1
    .param p1, "mSimInfo"    # Lcom/bb_sz/ndk/info/test/SimInfo;

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/bb_sz/ndk/info/test/SimInfo;->getNetwork_type()I

    move-result v0

    iput v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_subtype:I

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_type:I

    .line 77
    const-string v0, "mobile"

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_type_name:Ljava/lang/String;

    .line 78
    const-string v0, "3gnet"

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_extrainfo:Ljava/lang/String;

    .line 79
    iget v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_subtype:I

    packed-switch v0, :pswitch_data_0

    .line 132
    :goto_0
    return-void

    .line 81
    :pswitch_0
    const-string v0, "2gnet"

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_extrainfo:Ljava/lang/String;

    .line 82
    const-string v0, "GPRS"

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_subtype_name:Ljava/lang/String;

    goto :goto_0

    .line 85
    :pswitch_1
    const-string v0, "2gnet"

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_extrainfo:Ljava/lang/String;

    .line 86
    const-string v0, "EDGE"

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_subtype_name:Ljava/lang/String;

    goto :goto_0

    .line 89
    :pswitch_2
    const-string v0, "UMTS"

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_subtype_name:Ljava/lang/String;

    goto :goto_0

    .line 92
    :pswitch_3
    const-string v0, "CDMA"

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_subtype_name:Ljava/lang/String;

    .line 93
    const-string v0, "2gnet"

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_extrainfo:Ljava/lang/String;

    goto :goto_0

    .line 96
    :pswitch_4
    const-string v0, "EVDO_0"

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_subtype_name:Ljava/lang/String;

    goto :goto_0

    .line 99
    :pswitch_5
    const-string v0, "EVDO_A"

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_subtype_name:Ljava/lang/String;

    goto :goto_0

    .line 102
    :pswitch_6
    const-string v0, "1xRTT"

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_subtype_name:Ljava/lang/String;

    .line 103
    const-string v0, "2gnet"

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_extrainfo:Ljava/lang/String;

    goto :goto_0

    .line 106
    :pswitch_7
    const-string v0, "HSDPA"

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_subtype_name:Ljava/lang/String;

    goto :goto_0

    .line 109
    :pswitch_8
    const-string v0, "HSUPA"

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_subtype_name:Ljava/lang/String;

    goto :goto_0

    .line 112
    :pswitch_9
    const-string v0, "HSPA"

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_subtype_name:Ljava/lang/String;

    .line 113
    const-string v0, "2gnet"

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_extrainfo:Ljava/lang/String;

    goto :goto_0

    .line 116
    :pswitch_a
    const-string v0, "IDEN"

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_subtype_name:Ljava/lang/String;

    goto :goto_0

    .line 119
    :pswitch_b
    const-string v0, "EVDO_B"

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_subtype_name:Ljava/lang/String;

    goto :goto_0

    .line 122
    :pswitch_c
    const-string v0, "LTE"

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_subtype_name:Ljava/lang/String;

    goto :goto_0

    .line 125
    :pswitch_d
    const-string v0, "EHRPD"

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_subtype_name:Ljava/lang/String;

    goto :goto_0

    .line 128
    :pswitch_e
    const-string v0, "HSPAP"

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_subtype_name:Ljava/lang/String;

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public setNet_extrainfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "net_extrainfo"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_extrainfo:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setNet_subtype(I)V
    .locals 0
    .param p1, "net_subtype"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_subtype:I

    .line 48
    return-void
.end method

.method public setNet_subtype_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "net_subtype_name"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_subtype_name:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setNet_type(I)V
    .locals 0
    .param p1, "net_type"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_type:I

    .line 64
    return-void
.end method

.method public setNet_type_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "net_type_name"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_type_name:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setWifiNet(Lcom/bb_sz/ndk/info/test/WifiInfo;)V
    .locals 1
    .param p1, "mWifiInfo"    # Lcom/bb_sz/ndk/info/test/WifiInfo;

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/bb_sz/ndk/info/test/WifiInfo;->getSsid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_extrainfo:Ljava/lang/String;

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_subtype:I

    .line 137
    const-string v0, ""

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_subtype_name:Ljava/lang/String;

    .line 138
    const/4 v0, 0x1

    iput v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_type:I

    .line 139
    const-string v0, "WIFI"

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_type_name:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 26
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "refresh.net_extrainfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_extrainfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    const-string v1, "refresh.net_subtype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_subtype:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    const-string v1, "refresh.net_subtype_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_subtype_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 29
    const-string v1, "refresh.net_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 30
    const-string v1, "refresh.net_type_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->net_type_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
