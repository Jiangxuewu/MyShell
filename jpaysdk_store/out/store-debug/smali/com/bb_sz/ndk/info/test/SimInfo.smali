.class public Lcom/bb_sz/ndk/info/test/SimInfo;
.super Ljava/lang/Object;
.source "SimInfo.java"


# static fields
.field private static final china_mobile:[Ljava/lang/String;

.field private static final china_railway:[Ljava/lang/String;

.field private static final china_telecom:[Ljava/lang/String;

.field private static final china_telecom_number:[Ljava/lang/String;

.field private static final china_unicom:[Ljava/lang/String;

.field private static final china_unicom_number:[Ljava/lang/String;


# instance fields
.field private line1_number:Ljava/lang/String;

.field private network_country_iso:Ljava/lang/String;

.field private network_operator:Ljava/lang/String;

.field private network_operator_name:Ljava/lang/String;

.field private network_type:I

.field private sim_country_iso:Ljava/lang/String;

.field private sim_operator:Ljava/lang/String;

.field private sim_operator_name:Ljava/lang/String;

.field private sim_serial_number:Ljava/lang/String;

.field private sim_state:Ljava/lang/String;

.field private subscriber_id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "00"

    aput-object v1, v0, v3

    const-string v1, "02"

    aput-object v1, v0, v4

    const-string v1, "07"

    aput-object v1, v0, v5

    sput-object v0, Lcom/bb_sz/ndk/info/test/SimInfo;->china_mobile:[Ljava/lang/String;

    .line 21
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "01"

    aput-object v1, v0, v3

    const-string v1, "06"

    aput-object v1, v0, v4

    sput-object v0, Lcom/bb_sz/ndk/info/test/SimInfo;->china_unicom:[Ljava/lang/String;

    .line 22
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "186"

    aput-object v1, v0, v3

    const-string v1, "185"

    aput-object v1, v0, v4

    const-string v1, "156"

    aput-object v1, v0, v5

    const-string v1, "155"

    aput-object v1, v0, v6

    const-string v1, "132"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "131"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "130"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bb_sz/ndk/info/test/SimInfo;->china_unicom_number:[Ljava/lang/String;

    .line 24
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "03"

    aput-object v1, v0, v3

    const-string v1, "05"

    aput-object v1, v0, v4

    const-string v1, "11"

    aput-object v1, v0, v5

    sput-object v0, Lcom/bb_sz/ndk/info/test/SimInfo;->china_telecom:[Ljava/lang/String;

    .line 25
    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "133"

    aput-object v1, v0, v3

    const-string v1, "153"

    aput-object v1, v0, v4

    const-string v1, "180"

    aput-object v1, v0, v5

    const-string v1, "189"

    aput-object v1, v0, v6

    sput-object v0, Lcom/bb_sz/ndk/info/test/SimInfo;->china_telecom_number:[Ljava/lang/String;

    .line 28
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "20"

    aput-object v1, v0, v3

    sput-object v0, Lcom/bb_sz/ndk/info/test/SimInfo;->china_railway:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v2, "cn"

    iput-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_country_iso:Ljava/lang/String;

    .line 64
    const-string v2, "cn"

    iput-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_country_iso:Ljava/lang/String;

    .line 65
    const-string v1, "00"

    .line 66
    .local v1, "mcc":Ljava/lang/String;
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 67
    .local v0, "i":I
    packed-switch v0, :pswitch_data_0

    .line 93
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "460"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_operator:Ljava/lang/String;

    .line 94
    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_operator:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/bb_sz/ndk/info/test/SimInfo;->getImsi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->subscriber_id:Ljava/lang/String;

    .line 95
    const-string v2, "5"

    iput-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_state:Ljava/lang/String;

    .line 98
    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_country_iso:Ljava/lang/String;

    iput-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->network_country_iso:Ljava/lang/String;

    .line 99
    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_operator:Ljava/lang/String;

    iput-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->network_operator:Ljava/lang/String;

    .line 100
    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_operator_name:Ljava/lang/String;

    iput-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->network_operator_name:Ljava/lang/String;

    .line 101
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->network_type:I

    .line 102
    return-void

    .line 69
    :pswitch_0
    sget-object v2, Lcom/bb_sz/ndk/info/test/SimInfo;->china_mobile:[Ljava/lang/String;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    sget-object v4, Lcom/bb_sz/ndk/info/test/SimInfo;->china_mobile:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v1, v2, v3

    .line 70
    const-string v2, ""

    iput-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->line1_number:Ljava/lang/String;

    .line 71
    const-string v2, "China Mobile"

    iput-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_operator_name:Ljava/lang/String;

    .line 72
    const-string v2, "1"

    invoke-direct {p0, v2}, Lcom/bb_sz/ndk/info/test/SimInfo;->getSimSerialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_serial_number:Ljava/lang/String;

    goto :goto_0

    .line 75
    :pswitch_1
    sget-object v2, Lcom/bb_sz/ndk/info/test/SimInfo;->china_unicom:[Ljava/lang/String;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    sget-object v4, Lcom/bb_sz/ndk/info/test/SimInfo;->china_unicom:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v1, v2, v3

    .line 76
    sget-object v2, Lcom/bb_sz/ndk/info/test/SimInfo;->china_unicom_number:[Ljava/lang/String;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    sget-object v4, Lcom/bb_sz/ndk/info/test/SimInfo;->china_unicom_number:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/bb_sz/ndk/info/test/SimInfo;->getPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->line1_number:Ljava/lang/String;

    .line 77
    const-string v2, "China Unicom"

    iput-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_operator_name:Ljava/lang/String;

    .line 78
    const-string v2, "1"

    invoke-direct {p0, v2}, Lcom/bb_sz/ndk/info/test/SimInfo;->getSimSerialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_serial_number:Ljava/lang/String;

    goto/16 :goto_0

    .line 81
    :pswitch_2
    sget-object v2, Lcom/bb_sz/ndk/info/test/SimInfo;->china_telecom:[Ljava/lang/String;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    sget-object v4, Lcom/bb_sz/ndk/info/test/SimInfo;->china_telecom:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v1, v2, v3

    .line 82
    sget-object v2, Lcom/bb_sz/ndk/info/test/SimInfo;->china_telecom_number:[Ljava/lang/String;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    sget-object v4, Lcom/bb_sz/ndk/info/test/SimInfo;->china_telecom_number:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v2, v2, v3

    invoke-direct {p0, v2}, Lcom/bb_sz/ndk/info/test/SimInfo;->getPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->line1_number:Ljava/lang/String;

    .line 83
    const-string v2, "China Telecom"

    iput-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_operator_name:Ljava/lang/String;

    .line 84
    const-string v2, "1"

    invoke-direct {p0, v2}, Lcom/bb_sz/ndk/info/test/SimInfo;->getSimSerialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_serial_number:Ljava/lang/String;

    goto/16 :goto_0

    .line 87
    :pswitch_3
    sget-object v2, Lcom/bb_sz/ndk/info/test/SimInfo;->china_railway:[Ljava/lang/String;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    sget-object v4, Lcom/bb_sz/ndk/info/test/SimInfo;->china_railway:[Ljava/lang/String;

    array-length v4, v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aget-object v1, v2, v3

    .line 88
    const-string v2, ""

    iput-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->line1_number:Ljava/lang/String;

    .line 89
    const-string v2, "China Railway"

    iput-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_operator_name:Ljava/lang/String;

    .line 90
    const-string v2, "1"

    invoke-direct {p0, v2}, Lcom/bb_sz/ndk/info/test/SimInfo;->getSimSerialNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_serial_number:Ljava/lang/String;

    goto/16 :goto_0

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getImsi(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "sim_operator"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0xa

    .line 119
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 120
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 121
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 112
    new-instance v1, Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+86"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 113
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0xb

    if-ge v0, v2, :cond_0

    .line 114
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getSimSerialNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 105
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0xb

    if-ge v0, v2, :cond_0

    .line 107
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 106
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getLine1_number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->line1_number:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork_country_iso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->network_country_iso:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork_operator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->network_operator:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork_operator_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->network_operator_name:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork_type()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->network_type:I

    return v0
.end method

.method public getSim_country_iso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_country_iso:Ljava/lang/String;

    return-object v0
.end method

.method public getSim_operator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_operator:Ljava/lang/String;

    return-object v0
.end method

.method public getSim_operator_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_operator_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSim_serial_number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_serial_number:Ljava/lang/String;

    return-object v0
.end method

.method public getSim_state()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_state:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriber_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->subscriber_id:Ljava/lang/String;

    return-object v0
.end method

.method public setLine1_number(Ljava/lang/String;)V
    .locals 0
    .param p1, "line1_number"    # Ljava/lang/String;

    .prologue
    .line 179
    iput-object p1, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->line1_number:Ljava/lang/String;

    .line 180
    return-void
.end method

.method public setNetwork_country_iso(Ljava/lang/String;)V
    .locals 0
    .param p1, "network_country_iso"    # Ljava/lang/String;

    .prologue
    .line 187
    iput-object p1, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->network_country_iso:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public setNetwork_operator(Ljava/lang/String;)V
    .locals 0
    .param p1, "network_operator"    # Ljava/lang/String;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->network_operator:Ljava/lang/String;

    .line 196
    return-void
.end method

.method public setNetwork_operator_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "network_operator_name"    # Ljava/lang/String;

    .prologue
    .line 203
    iput-object p1, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->network_operator_name:Ljava/lang/String;

    .line 204
    return-void
.end method

.method public setNetwork_type(I)V
    .locals 0
    .param p1, "network_type"    # I

    .prologue
    .line 211
    iput p1, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->network_type:I

    .line 212
    return-void
.end method

.method public setSim_country_iso(Ljava/lang/String;)V
    .locals 0
    .param p1, "sim_country_iso"    # Ljava/lang/String;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_country_iso:Ljava/lang/String;

    .line 132
    return-void
.end method

.method public setSim_operator(Ljava/lang/String;)V
    .locals 0
    .param p1, "sim_operator"    # Ljava/lang/String;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_operator:Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setSim_operator_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "sim_operator_name"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_operator_name:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public setSim_serial_number(Ljava/lang/String;)V
    .locals 0
    .param p1, "sim_serial_number"    # Ljava/lang/String;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_serial_number:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public setSim_state(Ljava/lang/String;)V
    .locals 0
    .param p1, "sim_state"    # Ljava/lang/String;

    .prologue
    .line 163
    iput-object p1, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_state:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setSubscriber_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "subscriber_id"    # Ljava/lang/String;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->subscriber_id:Ljava/lang/String;

    .line 172
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 49
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "refresh.sim_country_iso="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_country_iso:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    const-string v1, "refresh.sim_operator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_operator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    const-string v1, "refresh.sim_operator_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_operator_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    const-string v1, "refresh.sim_serial_number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_serial_number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    const-string v1, "refresh.sim_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->sim_state:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    const-string v1, "refresh.subscriber_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->subscriber_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    const-string v1, "refresh.line1_number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->line1_number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    const-string v1, "refresh.network_country_iso="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->network_country_iso:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v1, "refresh.network_operator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->network_operator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    const-string v1, "refresh.network_operator_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->network_operator_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v1, "refresh.network_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bb_sz/ndk/info/test/SimInfo;->network_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
