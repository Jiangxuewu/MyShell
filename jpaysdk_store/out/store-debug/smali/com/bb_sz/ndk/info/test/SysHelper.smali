.class public Lcom/bb_sz/ndk/info/test/SysHelper;
.super Ljava/lang/Object;
.source "SysHelper.java"


# instance fields
.field private mAppInfo:Lcom/bb_sz/ndk/info/test/AppInfo;

.field private mBuildInfo:Lcom/bb_sz/ndk/info/test/BuildInfo;

.field private mNetWorkInfo:Lcom/bb_sz/ndk/info/test/NetWorkInfo;

.field private mScreenInfo:Lcom/bb_sz/ndk/info/test/ScreenInfo;

.field private mSimInfo:Lcom/bb_sz/ndk/info/test/SimInfo;

.field private mWifiInfo:Lcom/bb_sz/ndk/info/test/WifiInfo;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "buildPath"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v1, Lcom/bb_sz/ndk/info/test/AppInfo;

    invoke-direct {v1}, Lcom/bb_sz/ndk/info/test/AppInfo;-><init>()V

    iput-object v1, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mAppInfo:Lcom/bb_sz/ndk/info/test/AppInfo;

    .line 47
    new-instance v1, Lcom/bb_sz/ndk/info/test/BuildInfo;

    invoke-direct {v1, p1}, Lcom/bb_sz/ndk/info/test/BuildInfo;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mBuildInfo:Lcom/bb_sz/ndk/info/test/BuildInfo;

    .line 48
    new-instance v1, Lcom/bb_sz/ndk/info/test/ScreenInfo;

    invoke-direct {v1}, Lcom/bb_sz/ndk/info/test/ScreenInfo;-><init>()V

    iput-object v1, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mScreenInfo:Lcom/bb_sz/ndk/info/test/ScreenInfo;

    .line 50
    new-instance v1, Lcom/bb_sz/ndk/info/test/SimInfo;

    invoke-direct {v1}, Lcom/bb_sz/ndk/info/test/SimInfo;-><init>()V

    iput-object v1, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mSimInfo:Lcom/bb_sz/ndk/info/test/SimInfo;

    .line 53
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/16 v2, 0x50

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    .line 55
    .local v0, "isWifi":Z
    :goto_0
    new-instance v1, Lcom/bb_sz/ndk/info/test/WifiInfo;

    invoke-direct {v1}, Lcom/bb_sz/ndk/info/test/WifiInfo;-><init>()V

    iput-object v1, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mWifiInfo:Lcom/bb_sz/ndk/info/test/WifiInfo;

    .line 58
    new-instance v1, Lcom/bb_sz/ndk/info/test/NetWorkInfo;

    invoke-direct {v1}, Lcom/bb_sz/ndk/info/test/NetWorkInfo;-><init>()V

    iput-object v1, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mNetWorkInfo:Lcom/bb_sz/ndk/info/test/NetWorkInfo;

    .line 60
    if-eqz v0, :cond_1

    .line 61
    iget-object v1, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mNetWorkInfo:Lcom/bb_sz/ndk/info/test/NetWorkInfo;

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mWifiInfo:Lcom/bb_sz/ndk/info/test/WifiInfo;

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->setWifiNet(Lcom/bb_sz/ndk/info/test/WifiInfo;)V

    .line 66
    :goto_1
    return-void

    .line 53
    .end local v0    # "isWifi":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 63
    .restart local v0    # "isWifi":Z
    :cond_1
    iget-object v1, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mNetWorkInfo:Lcom/bb_sz/ndk/info/test/NetWorkInfo;

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mSimInfo:Lcom/bb_sz/ndk/info/test/SimInfo;

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->set3gNet(Lcom/bb_sz/ndk/info/test/SimInfo;)V

    goto :goto_1
.end method


# virtual methods
.method public api()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mBuildInfo:Lcom/bb_sz/ndk/info/test/BuildInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getApi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public board()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mBuildInfo:Lcom/bb_sz/ndk/info/test/BuildInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getBoard()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public brand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mBuildInfo:Lcom/bb_sz/ndk/info/test/BuildInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getBrand()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public device()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mBuildInfo:Lcom/bb_sz/ndk/info/test/BuildInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getDevice()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public device_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    const-string v0, ""

    return-object v0
.end method

.method public first_install_time()J
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mAppInfo:Lcom/bb_sz/ndk/info/test/AppInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/AppInfo;->getFirst_install_time()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAppInfo()Lcom/bb_sz/ndk/info/test/AppInfo;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mAppInfo:Lcom/bb_sz/ndk/info/test/AppInfo;

    return-object v0
.end method

.method public getBuildInfo()Lcom/bb_sz/ndk/info/test/BuildInfo;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mBuildInfo:Lcom/bb_sz/ndk/info/test/BuildInfo;

    return-object v0
.end method

.method public getNetWorkInfo()Lcom/bb_sz/ndk/info/test/NetWorkInfo;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mNetWorkInfo:Lcom/bb_sz/ndk/info/test/NetWorkInfo;

    return-object v0
.end method

.method public getScreenInfo()Lcom/bb_sz/ndk/info/test/ScreenInfo;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mScreenInfo:Lcom/bb_sz/ndk/info/test/ScreenInfo;

    return-object v0
.end method

.method public getSimInfo()Lcom/bb_sz/ndk/info/test/SimInfo;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mSimInfo:Lcom/bb_sz/ndk/info/test/SimInfo;

    return-object v0
.end method

.method public getWifiInfo()Lcom/bb_sz/ndk/info/test/WifiInfo;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mWifiInfo:Lcom/bb_sz/ndk/info/test/WifiInfo;

    return-object v0
.end method

.method public hardware()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mBuildInfo:Lcom/bb_sz/ndk/info/test/BuildInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getHardware()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public height()I
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mScreenInfo:Lcom/bb_sz/ndk/info/test/ScreenInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/ScreenInfo;->getHeight()I

    move-result v0

    return v0
.end method

.method public id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mBuildInfo:Lcom/bb_sz/ndk/info/test/BuildInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ip()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mWifiInfo:Lcom/bb_sz/ndk/info/test/WifiInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/WifiInfo;->getIp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public line1_number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mSimInfo:Lcom/bb_sz/ndk/info/test/SimInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SimInfo;->getLine1_number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public mac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mWifiInfo:Lcom/bb_sz/ndk/info/test/WifiInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/WifiInfo;->getMac()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public manufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mBuildInfo:Lcom/bb_sz/ndk/info/test/BuildInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getManufacturer()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public model()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mBuildInfo:Lcom/bb_sz/ndk/info/test/BuildInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getModel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public net_extrainfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mNetWorkInfo:Lcom/bb_sz/ndk/info/test/NetWorkInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->getNet_extrainfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public net_subtype()I
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mNetWorkInfo:Lcom/bb_sz/ndk/info/test/NetWorkInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->getNet_subtype()I

    move-result v0

    return v0
.end method

.method public net_subtype_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mNetWorkInfo:Lcom/bb_sz/ndk/info/test/NetWorkInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->getNet_subtype_name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public net_type()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mNetWorkInfo:Lcom/bb_sz/ndk/info/test/NetWorkInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->getNet_type()I

    move-result v0

    return v0
.end method

.method public net_type_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mNetWorkInfo:Lcom/bb_sz/ndk/info/test/NetWorkInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->getNet_type_name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public network_country_iso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mSimInfo:Lcom/bb_sz/ndk/info/test/SimInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SimInfo;->getNetwork_country_iso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public network_operator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mSimInfo:Lcom/bb_sz/ndk/info/test/SimInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SimInfo;->getNetwork_operator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public network_operator_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mSimInfo:Lcom/bb_sz/ndk/info/test/SimInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SimInfo;->getNetwork_operator_name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public network_type()I
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mSimInfo:Lcom/bb_sz/ndk/info/test/SimInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SimInfo;->getNetwork_type()I

    move-result v0

    return v0
.end method

.method public product()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mBuildInfo:Lcom/bb_sz/ndk/info/test/BuildInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getProduct()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public serial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mBuildInfo:Lcom/bb_sz/ndk/info/test/BuildInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getSerial()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setBuildInfo(Lcom/bb_sz/ndk/info/test/BuildInfo;)V
    .locals 0
    .param p1, "mBuildInfo"    # Lcom/bb_sz/ndk/info/test/BuildInfo;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mBuildInfo:Lcom/bb_sz/ndk/info/test/BuildInfo;

    .line 43
    return-void
.end method

.method public sim_country_iso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mSimInfo:Lcom/bb_sz/ndk/info/test/SimInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SimInfo;->getSim_country_iso()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sim_operator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mSimInfo:Lcom/bb_sz/ndk/info/test/SimInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SimInfo;->getSim_operator()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sim_operator_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mSimInfo:Lcom/bb_sz/ndk/info/test/SimInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SimInfo;->getSim_operator_name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sim_serial_number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mSimInfo:Lcom/bb_sz/ndk/info/test/SimInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SimInfo;->getSim_serial_number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public sim_state()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mSimInfo:Lcom/bb_sz/ndk/info/test/SimInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SimInfo;->getSim_state()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ssid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mWifiInfo:Lcom/bb_sz/ndk/info/test/WifiInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/WifiInfo;->getSsid()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public subscriber_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mSimInfo:Lcom/bb_sz/ndk/info/test/SimInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/SimInfo;->getSubscriber_id()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 205
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 206
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mAppInfo:Lcom/bb_sz/ndk/info/test/AppInfo;

    invoke-virtual {v1}, Lcom/bb_sz/ndk/info/test/AppInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mBuildInfo:Lcom/bb_sz/ndk/info/test/BuildInfo;

    .line 207
    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/BuildInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mNetWorkInfo:Lcom/bb_sz/ndk/info/test/NetWorkInfo;

    .line 208
    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/NetWorkInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mScreenInfo:Lcom/bb_sz/ndk/info/test/ScreenInfo;

    .line 209
    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/ScreenInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mSimInfo:Lcom/bb_sz/ndk/info/test/SimInfo;

    .line 210
    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/SimInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mWifiInfo:Lcom/bb_sz/ndk/info/test/WifiInfo;

    .line 211
    invoke-virtual {v2}, Lcom/bb_sz/ndk/info/test/WifiInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public version()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mBuildInfo:Lcom/bb_sz/ndk/info/test/BuildInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public width()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SysHelper;->mScreenInfo:Lcom/bb_sz/ndk/info/test/ScreenInfo;

    invoke-virtual {v0}, Lcom/bb_sz/ndk/info/test/ScreenInfo;->getWidth()I

    move-result v0

    return v0
.end method
