.class public Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# instance fields
.field private _id:Ljava/lang/String;

.field private android_id:Ljava/lang/String;

.field private api:Ljava/lang/String;

.field private board:Ljava/lang/String;

.field private brand:Ljava/lang/String;

.field private cpuabi:Ljava/lang/String;

.field private cpuabi2:Ljava/lang/String;

.field private density:F

.field private device:Ljava/lang/String;

.field private dpi:I

.field private first_install_time:Ljava/lang/String;

.field private hardware:Ljava/lang/String;

.field private height:I

.field private id:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private ip:Ljava/lang/String;

.field private line1_number:Ljava/lang/String;

.field private mac:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private net_extrainfo:Ljava/lang/String;

.field private net_subtype:I

.field private net_subtype_name:Ljava/lang/String;

.field private net_type:I

.field private net_type_name:Ljava/lang/String;

.field private network_country_iso:Ljava/lang/String;

.field private network_operator:Ljava/lang/String;

.field private network_operator_name:Ljava/lang/String;

.field private network_type:I

.field private product:Ljava/lang/String;

.field private serial:Ljava/lang/String;

.field private sim_country_iso:Ljava/lang/String;

.field private sim_operator:Ljava/lang/String;

.field private sim_operator_name:Ljava/lang/String;

.field private sim_serial_number:Ljava/lang/String;

.field private sim_state:Ljava/lang/String;

.field private ssid:Ljava/lang/String;

.field private subscriber_id:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "cn"

    iput-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->sim_country_iso:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAndroid_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->android_id:Ljava/lang/String;

    return-object v0
.end method

.method public getApi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->api:Ljava/lang/String;

    return-object v0
.end method

.method public getBoard()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->board:Ljava/lang/String;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuabi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->cpuabi:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuabi2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->cpuabi2:Ljava/lang/String;

    return-object v0
.end method

.method public getDensity()F
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->density:F

    return v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getDpi()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->dpi:I

    return v0
.end method

.method public getFirst_install_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->first_install_time:Ljava/lang/String;

    return-object v0
.end method

.method public getHardware()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->hardware:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getIp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 358
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->ip:Ljava/lang/String;

    return-object v0
.end method

.method public getLine1_number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->line1_number:Ljava/lang/String;

    return-object v0
.end method

.method public getMac()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->mac:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getNet_extrainfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->net_extrainfo:Ljava/lang/String;

    return-object v0
.end method

.method public getNet_subtype()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->net_subtype:I

    return v0
.end method

.method public getNet_subtype_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->net_subtype_name:Ljava/lang/String;

    return-object v0
.end method

.method public getNet_type()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->net_type:I

    return v0
.end method

.method public getNet_type_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->net_type_name:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork_country_iso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->network_country_iso:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork_operator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->network_operator:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork_operator_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->network_operator_name:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork_type()I
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->network_type:I

    return v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->product:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->serial:Ljava/lang/String;

    return-object v0
.end method

.method public getSim_country_iso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->sim_country_iso:Ljava/lang/String;

    return-object v0
.end method

.method public getSim_operator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->sim_operator:Ljava/lang/String;

    return-object v0
.end method

.method public getSim_operator_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->sim_operator_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSim_serial_number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->sim_serial_number:Ljava/lang/String;

    return-object v0
.end method

.method public getSim_state()Ljava/lang/String;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->sim_state:Ljava/lang/String;

    return-object v0
.end method

.method public getSsid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->ssid:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriber_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->subscriber_id:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->width:I

    return v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 382
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setId(Ljava/lang/String;)V

    .line 383
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setModel(Ljava/lang/String;)V

    .line 384
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setSerial(Ljava/lang/String;)V

    .line 385
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setVersion(Ljava/lang/String;)V

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setApi(Ljava/lang/String;)V

    .line 387
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setManufacturer(Ljava/lang/String;)V

    .line 388
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setBrand(Ljava/lang/String;)V

    .line 389
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setProduct(Ljava/lang/String;)V

    .line 390
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setDevice(Ljava/lang/String;)V

    .line 391
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setBoard(Ljava/lang/String;)V

    .line 392
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setHardware(Ljava/lang/String;)V

    .line 393
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setCpuabi(Ljava/lang/String;)V

    .line 394
    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->setCpuabi2(Ljava/lang/String;)V

    .line 395
    return-void
.end method

.method public setAndroid_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "android_id"    # Ljava/lang/String;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->android_id:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setApi(Ljava/lang/String;)V
    .locals 0
    .param p1, "api"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->api:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setBoard(Ljava/lang/String;)V
    .locals 0
    .param p1, "board"    # Ljava/lang/String;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->board:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0
    .param p1, "brand"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->brand:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setCpuabi(Ljava/lang/String;)V
    .locals 0
    .param p1, "cpuabi"    # Ljava/lang/String;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->cpuabi:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public setCpuabi2(Ljava/lang/String;)V
    .locals 0
    .param p1, "cpuabi2"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->cpuabi2:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public setDensity(F)V
    .locals 0
    .param p1, "density"    # F

    .prologue
    .line 226
    iput p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->density:F

    .line 227
    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->device:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public setDpi(I)V
    .locals 0
    .param p1, "dpi"    # I

    .prologue
    .line 218
    iput p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->dpi:I

    .line 219
    return-void
.end method

.method public setFirst_install_time(Ljava/lang/String;)V
    .locals 0
    .param p1, "first_install_time"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->first_install_time:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setHardware(Ljava/lang/String;)V
    .locals 0
    .param p1, "hardware"    # Ljava/lang/String;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->hardware:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 210
    iput p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->height:I

    .line 211
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->id:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0
    .param p1, "imei"    # Ljava/lang/String;

    .prologue
    .line 194
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->imei:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setIp(Ljava/lang/String;)V
    .locals 0
    .param p1, "ip"    # Ljava/lang/String;

    .prologue
    .line 362
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->ip:Ljava/lang/String;

    .line 363
    return-void
.end method

.method public setLine1_number(Ljava/lang/String;)V
    .locals 0
    .param p1, "line1_number"    # Ljava/lang/String;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->line1_number:Ljava/lang/String;

    .line 323
    return-void
.end method

.method public setMac(Ljava/lang/String;)V
    .locals 0
    .param p1, "mac"    # Ljava/lang/String;

    .prologue
    .line 370
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->mac:Ljava/lang/String;

    .line 371
    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0
    .param p1, "manufacturer"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->manufacturer:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->model:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setNet_extrainfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "net_extrainfo"    # Ljava/lang/String;

    .prologue
    .line 234
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->net_extrainfo:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public setNet_subtype(I)V
    .locals 0
    .param p1, "net_subtype"    # I

    .prologue
    .line 242
    iput p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->net_subtype:I

    .line 243
    return-void
.end method

.method public setNet_subtype_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "net_subtype_name"    # Ljava/lang/String;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->net_subtype_name:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public setNet_type(I)V
    .locals 0
    .param p1, "net_type"    # I

    .prologue
    .line 258
    iput p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->net_type:I

    .line 259
    return-void
.end method

.method public setNet_type_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "net_type_name"    # Ljava/lang/String;

    .prologue
    .line 266
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->net_type_name:Ljava/lang/String;

    .line 267
    return-void
.end method

.method public setNetwork_country_iso(Ljava/lang/String;)V
    .locals 0
    .param p1, "network_country_iso"    # Ljava/lang/String;

    .prologue
    .line 330
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->network_country_iso:Ljava/lang/String;

    .line 331
    return-void
.end method

.method public setNetwork_operator(Ljava/lang/String;)V
    .locals 0
    .param p1, "network_operator"    # Ljava/lang/String;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->network_operator:Ljava/lang/String;

    .line 339
    return-void
.end method

.method public setNetwork_operator_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "network_operator_name"    # Ljava/lang/String;

    .prologue
    .line 346
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->network_operator_name:Ljava/lang/String;

    .line 347
    return-void
.end method

.method public setNetwork_type(I)V
    .locals 0
    .param p1, "network_type"    # I

    .prologue
    .line 354
    iput p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->network_type:I

    .line 355
    return-void
.end method

.method public setProduct(Ljava/lang/String;)V
    .locals 0
    .param p1, "product"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->product:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setSerial(Ljava/lang/String;)V
    .locals 0
    .param p1, "serial"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->serial:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setSim_country_iso(Ljava/lang/String;)V
    .locals 0
    .param p1, "sim_country_iso"    # Ljava/lang/String;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->sim_country_iso:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public setSim_operator(Ljava/lang/String;)V
    .locals 0
    .param p1, "sim_operator"    # Ljava/lang/String;

    .prologue
    .line 282
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->sim_operator:Ljava/lang/String;

    .line 283
    return-void
.end method

.method public setSim_operator_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "sim_operator_name"    # Ljava/lang/String;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->sim_operator_name:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setSim_serial_number(Ljava/lang/String;)V
    .locals 0
    .param p1, "sim_serial_number"    # Ljava/lang/String;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->sim_serial_number:Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setSim_state(Ljava/lang/String;)V
    .locals 0
    .param p1, "sim_state"    # Ljava/lang/String;

    .prologue
    .line 306
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->sim_state:Ljava/lang/String;

    .line 307
    return-void
.end method

.method public setSsid(Ljava/lang/String;)V
    .locals 0
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 378
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->ssid:Ljava/lang/String;

    .line 379
    return-void
.end method

.method public setSubscriber_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "subscriber_id"    # Ljava/lang/String;

    .prologue
    .line 314
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->subscriber_id:Ljava/lang/String;

    .line 315
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->version:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 202
    iput p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->width:I

    .line 203
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/DeviceInfo;->_id:Ljava/lang/String;

    .line 67
    return-void
.end method
