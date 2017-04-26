.class public Lcom/bb_sz/ndk/info/requstdata/BuildInfo;
.super Ljava/lang/Object;
.source "BuildInfo.java"


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

.field private hardware:Ljava/lang/String;

.field private height:I

.field private id:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private product:Ljava/lang/String;

.field private serial:Ljava/lang/String;

.field private version:Ljava/lang/String;

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    return-void
.end method


# virtual methods
.method public _toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 263
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "refresh.height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    const-string v1, "refresh.width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    const-string v1, "refresh.dpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->dpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    const-string v1, "refresh.density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->density:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAndroid_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->android_id:Ljava/lang/String;

    return-object v0
.end method

.method public getApi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->api:Ljava/lang/String;

    return-object v0
.end method

.method public getBoard()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->board:Ljava/lang/String;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuabi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->cpuabi:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuabi2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->cpuabi2:Ljava/lang/String;

    return-object v0
.end method

.method public getDensity()F
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->density:F

    return v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getDpi()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->dpi:I

    return v0
.end method

.method public getHardware()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->hardware:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 238
    iget v0, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->height:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->product:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->serial:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 230
    iget v0, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->width:I

    return v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 64
    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->setId(Ljava/lang/String;)V

    .line 65
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->setModel(Ljava/lang/String;)V

    .line 66
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->setSerial(Ljava/lang/String;)V

    .line 67
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->setVersion(Ljava/lang/String;)V

    .line 68
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

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->setApi(Ljava/lang/String;)V

    .line 69
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->setManufacturer(Ljava/lang/String;)V

    .line 70
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->setBrand(Ljava/lang/String;)V

    .line 71
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->setProduct(Ljava/lang/String;)V

    .line 72
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->setDevice(Ljava/lang/String;)V

    .line 73
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->setBoard(Ljava/lang/String;)V

    .line 74
    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->setHardware(Ljava/lang/String;)V

    .line 75
    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->setCpuabi(Ljava/lang/String;)V

    .line 76
    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->setCpuabi2(Ljava/lang/String;)V

    .line 77
    return-void
.end method

.method public setAndroid_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "android_id"    # Ljava/lang/String;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->android_id:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public setApi(Ljava/lang/String;)V
    .locals 0
    .param p1, "api"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->api:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setBoard(Ljava/lang/String;)V
    .locals 0
    .param p1, "board"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->board:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0
    .param p1, "brand"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->brand:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setCpuabi(Ljava/lang/String;)V
    .locals 0
    .param p1, "cpuabi"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->cpuabi:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setCpuabi2(Ljava/lang/String;)V
    .locals 0
    .param p1, "cpuabi2"    # Ljava/lang/String;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->cpuabi2:Ljava/lang/String;

    .line 189
    return-void
.end method

.method public setDensity(F)V
    .locals 0
    .param p1, "density"    # F

    .prologue
    .line 258
    iput p1, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->density:F

    .line 259
    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->device:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setDpi(I)V
    .locals 0
    .param p1, "dpi"    # I

    .prologue
    .line 250
    iput p1, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->dpi:I

    .line 251
    return-void
.end method

.method public setHardware(Ljava/lang/String;)V
    .locals 0
    .param p1, "hardware"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->hardware:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 242
    iput p1, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->height:I

    .line 243
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->id:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0
    .param p1, "imei"    # Ljava/lang/String;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->imei:Ljava/lang/String;

    .line 205
    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0
    .param p1, "manufacturer"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->manufacturer:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->model:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setProduct(Ljava/lang/String;)V
    .locals 0
    .param p1, "product"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->product:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setSerial(Ljava/lang/String;)V
    .locals 0
    .param p1, "serial"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->serial:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->version:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 234
    iput p1, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->width:I

    .line 235
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->_id:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 209
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 210
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "refresh.id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    const-string v1, "refresh.model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->model:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 212
    const-string v1, "refresh.serial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->serial:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 213
    const-string v1, "refresh.version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    const-string v1, "refresh.api="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->api:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 215
    const-string v1, "refresh.manufacturer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->manufacturer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 216
    const-string v1, "refresh.brand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->brand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 217
    const-string v1, "refresh.product="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->product:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 218
    const-string v1, "refresh.device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->device:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    const-string v1, "refresh.board="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->board:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    const-string v1, "refresh.hardware="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->hardware:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    const-string v1, "refresh.cpuabi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->cpuabi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 222
    const-string v1, "refresh.cpuabi2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->cpuabi2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    const-string v1, "refresh.android_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->android_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 224
    const-string v1, "refresh.imei="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->imei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 225
    invoke-virtual {p0}, Lcom/bb_sz/ndk/info/requstdata/BuildInfo;->_toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 226
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
