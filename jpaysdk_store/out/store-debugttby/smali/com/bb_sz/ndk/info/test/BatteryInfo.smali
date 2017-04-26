.class public Lcom/bb_sz/ndk/info/test/BatteryInfo;
.super Ljava/lang/Object;
.source "BatteryInfo.java"


# instance fields
.field public m_bPresent:Z

.field public m_iHealth:I

.field public m_iLevel:I

.field public m_iPlugged:I

.field public m_iScale:I

.field public m_iStatus:I

.field public m_iTemperature:I

.field public m_iVoltage:I

.field public m_szTechnology:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bb_sz/ndk/info/test/BatteryInfo;->m_bPresent:Z

    .line 9
    iput v1, p0, Lcom/bb_sz/ndk/info/test/BatteryInfo;->m_iHealth:I

    .line 10
    iput v1, p0, Lcom/bb_sz/ndk/info/test/BatteryInfo;->m_iLevel:I

    .line 11
    iput v1, p0, Lcom/bb_sz/ndk/info/test/BatteryInfo;->m_iPlugged:I

    .line 12
    iput v1, p0, Lcom/bb_sz/ndk/info/test/BatteryInfo;->m_iScale:I

    .line 13
    iput v1, p0, Lcom/bb_sz/ndk/info/test/BatteryInfo;->m_iStatus:I

    .line 14
    iput v1, p0, Lcom/bb_sz/ndk/info/test/BatteryInfo;->m_iTemperature:I

    .line 15
    iput v1, p0, Lcom/bb_sz/ndk/info/test/BatteryInfo;->m_iVoltage:I

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/BatteryInfo;->m_szTechnology:Ljava/lang/String;

    .line 20
    return-void
.end method


# virtual methods
.method public iGetLevel()I
    .locals 2

    .prologue
    .line 23
    iget v0, p0, Lcom/bb_sz/ndk/info/test/BatteryInfo;->m_iLevel:I

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcom/bb_sz/ndk/info/test/BatteryInfo;->m_iScale:I

    div-int/2addr v0, v1

    return v0
.end method

.method public iReadCurrent()I
    .locals 1

    .prologue
    .line 32
    const/4 v0, -0x1

    return v0
.end method

.method public szGetChargeStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/bb_sz/ndk/info/test/BatteryInfo;->m_iStatus:I

    packed-switch v0, :pswitch_data_0

    .line 47
    const-string v0, "\u672a\u77e5\u72b6\u6001"

    :goto_0
    return-object v0

    .line 39
    :pswitch_0
    const-string v0, "\u6b63\u5728\u5145\u7535"

    goto :goto_0

    .line 41
    :pswitch_1
    const-string v0, "\u6b63\u5728\u653e\u7535"

    goto :goto_0

    .line 43
    :pswitch_2
    const-string v0, "\u6ca1\u6709\u5145\u7535"

    goto :goto_0

    .line 45
    :pswitch_3
    const-string v0, "\u5df2\u7ecf\u5145\u6ee1"

    goto :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public szGetHealthStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/bb_sz/ndk/info/test/BatteryInfo;->m_iHealth:I

    packed-switch v0, :pswitch_data_0

    .line 66
    const-string v0, "\u672a\u77e5\u72b6\u6001"

    :goto_0
    return-object v0

    .line 54
    :pswitch_0
    const-string v0, "\u826f\u597d"

    goto :goto_0

    .line 56
    :pswitch_1
    const-string v0, "\u8fc7\u70ed"

    goto :goto_0

    .line 58
    :pswitch_2
    const-string v0, "\u62a5\u5e9f"

    goto :goto_0

    .line 60
    :pswitch_3
    const-string v0, "\u7535\u538b\u8fc7\u9ad8"

    goto :goto_0

    .line 62
    :pswitch_4
    const-string v0, "\u4e0d\u8be6\u7684\u9519\u8bef"

    goto :goto_0

    .line 64
    :pswitch_5
    const-string v0, "\u8fc7\u51b7"

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public szGetPowerSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/bb_sz/ndk/info/test/BatteryInfo;->m_iPlugged:I

    packed-switch v0, :pswitch_data_0

    .line 80
    :pswitch_0
    const-string v0, "\u672a\u77e5"

    .line 82
    :goto_0
    return-object v0

    .line 73
    :pswitch_1
    const-string v0, "\u7535\u6c60"

    goto :goto_0

    .line 75
    :pswitch_2
    const-string v0, "\u76f4\u6d41\u5145\u7535\u5668"

    goto :goto_0

    .line 77
    :pswitch_3
    const-string v0, "USB\u7aef\u53e3"

    goto :goto_0

    .line 82
    :pswitch_4
    const-string v0, "\u65e0\u7ebf\u5145\u7535"

    goto :goto_0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
