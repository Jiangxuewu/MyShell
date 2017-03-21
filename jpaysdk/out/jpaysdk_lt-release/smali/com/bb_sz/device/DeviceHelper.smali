.class public Lcom/bb_sz/device/DeviceHelper;
.super Ljava/lang/Object;


# static fields
.field private static Access:Ljava/lang/String;

.field private static AppVersion:Ljava/lang/String;

.field private static Board:Ljava/lang/String;

.field private static Brand:Ljava/lang/String;

.field private static Carrier:Ljava/lang/String;

.field private static Country:Ljava/lang/String;

.field private static Cpu:Ljava/lang/String;

.field private static DeviceId:Ljava/lang/String;

.field private static GpuRender:Ljava/lang/String;

.field private static GpuVender:Ljava/lang/String;

.field private static IdMd5:Ljava/lang/String;

.field private static Language:Ljava/lang/String;

.field private static Mac:Ljava/lang/String;

.field private static Manufacturer:Ljava/lang/String;

.field private static Manuid:Ljava/lang/String;

.field private static Manutime:J

.field private static Model:Ljava/lang/String;

.field private static Name:Ljava/lang/String;

.field private static OsVersion:Ljava/lang/String;

.field private static Package:Ljava/lang/String;

.field private static Resolution:Ljava/lang/String;

.field private static SubAccess:Ljava/lang/String;

.field private static Timezone:I

.field private static VersionCode:Ljava/lang/String;


# instance fields
.field public test:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/bb_sz/device/DeviceConfig;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bb_sz/device/DeviceHelper;->DeviceId:Ljava/lang/String;

    invoke-static {p1}, Lcom/bb_sz/device/DeviceConfig;->getDeviceIdMD5(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bb_sz/device/DeviceHelper;->IdMd5:Ljava/lang/String;

    invoke-static {p1}, Lcom/bb_sz/device/DeviceConfig;->getMac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bb_sz/device/DeviceHelper;->Mac:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/bb_sz/device/DeviceHelper;->Model:Ljava/lang/String;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sput-object v0, Lcom/bb_sz/device/DeviceHelper;->OsVersion:Ljava/lang/String;

    invoke-static {p1}, Lcom/bb_sz/device/DeviceConfig;->getResolution(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bb_sz/device/DeviceHelper;->Resolution:Ljava/lang/String;

    invoke-static {}, Lcom/bb_sz/device/DeviceConfig;->getCPU()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bb_sz/device/DeviceHelper;->Cpu:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    sput-object v0, Lcom/bb_sz/device/DeviceHelper;->Board:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sput-object v0, Lcom/bb_sz/device/DeviceHelper;->Brand:Ljava/lang/String;

    sget-wide v0, Landroid/os/Build;->TIME:J

    sput-wide v0, Lcom/bb_sz/device/DeviceHelper;->Manutime:J

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sput-object v0, Lcom/bb_sz/device/DeviceHelper;->Manufacturer:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    sput-object v0, Lcom/bb_sz/device/DeviceHelper;->Manuid:Ljava/lang/String;

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sput-object v0, Lcom/bb_sz/device/DeviceHelper;->Name:Ljava/lang/String;

    invoke-static {p1}, Lcom/bb_sz/device/DeviceConfig;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bb_sz/device/DeviceHelper;->AppVersion:Ljava/lang/String;

    invoke-static {p1}, Lcom/bb_sz/device/DeviceConfig;->getAppVersionCode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bb_sz/device/DeviceHelper;->VersionCode:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bb_sz/device/DeviceHelper;->Package:Ljava/lang/String;

    invoke-static {p1}, Lcom/bb_sz/device/DeviceConfig;->getTimeZone(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/bb_sz/device/DeviceHelper;->Timezone:I

    invoke-static {p1}, Lcom/bb_sz/device/DeviceConfig;->getLocaleInfo(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v2

    sput-object v1, Lcom/bb_sz/device/DeviceHelper;->Country:Ljava/lang/String;

    aget-object v0, v0, v3

    sput-object v0, Lcom/bb_sz/device/DeviceHelper;->Language:Ljava/lang/String;

    invoke-static {p1}, Lcom/bb_sz/device/DeviceConfig;->getNetworkAccessMode(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v2

    sput-object v1, Lcom/bb_sz/device/DeviceHelper;->Access:Ljava/lang/String;

    aget-object v0, v0, v3

    sput-object v0, Lcom/bb_sz/device/DeviceHelper;->SubAccess:Ljava/lang/String;

    invoke-static {p1}, Lcom/bb_sz/device/DeviceConfig;->getOperator(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bb_sz/device/DeviceHelper;->Carrier:Ljava/lang/String;

    return-void
.end method

.method public static getAccess()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bb_sz/device/DeviceHelper;->Access:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bb_sz/device/DeviceHelper;->AppVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getBoard()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bb_sz/device/DeviceHelper;->Board:Ljava/lang/String;

    return-object v0
.end method

.method public static getBrand()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bb_sz/device/DeviceHelper;->Brand:Ljava/lang/String;

    return-object v0
.end method

.method public static getCarrier()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bb_sz/device/DeviceHelper;->Carrier:Ljava/lang/String;

    return-object v0
.end method

.method public static getCountry()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bb_sz/device/DeviceHelper;->Country:Ljava/lang/String;

    return-object v0
.end method

.method public static getCpu()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bb_sz/device/DeviceHelper;->Cpu:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceId()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bb_sz/device/DeviceHelper;->DeviceId:Ljava/lang/String;

    return-object v0
.end method

.method public static getGpuRender()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bb_sz/device/DeviceHelper;->GpuRender:Ljava/lang/String;

    return-object v0
.end method

.method public static getGpuVender()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bb_sz/device/DeviceHelper;->GpuVender:Ljava/lang/String;

    return-object v0
.end method

.method public static getIdMd5()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bb_sz/device/DeviceHelper;->IdMd5:Ljava/lang/String;

    return-object v0
.end method

.method public static getLanguage()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bb_sz/device/DeviceHelper;->Language:Ljava/lang/String;

    return-object v0
.end method

.method public static getMac()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bb_sz/device/DeviceHelper;->Mac:Ljava/lang/String;

    return-object v0
.end method

.method public static getManufacturer()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bb_sz/device/DeviceHelper;->Manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public static getManuid()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bb_sz/device/DeviceHelper;->Manuid:Ljava/lang/String;

    return-object v0
.end method

.method public static getManutime()J
    .locals 2

    sget-wide v0, Lcom/bb_sz/device/DeviceHelper;->Manutime:J

    return-wide v0
.end method

.method public static getModel()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bb_sz/device/DeviceHelper;->Model:Ljava/lang/String;

    return-object v0
.end method

.method public static getName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bb_sz/device/DeviceHelper;->Name:Ljava/lang/String;

    return-object v0
.end method

.method public static getOsVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bb_sz/device/DeviceHelper;->OsVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getPackage()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bb_sz/device/DeviceHelper;->Package:Ljava/lang/String;

    return-object v0
.end method

.method public static getResolution()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bb_sz/device/DeviceHelper;->Resolution:Ljava/lang/String;

    return-object v0
.end method

.method public static getSubAccess()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bb_sz/device/DeviceHelper;->SubAccess:Ljava/lang/String;

    return-object v0
.end method

.method public static getTimezone()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    sget v2, Lcom/bb_sz/device/DeviceHelper;->Timezone:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionCode()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bb_sz/device/DeviceHelper;->VersionCode:Ljava/lang/String;

    return-object v0
.end method
