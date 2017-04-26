.class public Lcom/bb_sz/ndk/info/test/BuildInfo;
.super Ljava/lang/Object;
.source "BuildInfo.java"


# instance fields
.field Huawei:[Ljava/lang/String;

.field Lenovo:[Ljava/lang/String;

.field Letv:[Ljava/lang/String;

.field OPPO:[Ljava/lang/String;

.field Xiaomi:[Ljava/lang/String;

.field ZTE:[Ljava/lang/String;

.field private android_id:Ljava/lang/String;

.field private api:Ljava/lang/String;

.field private board:Ljava/lang/String;

.field private brand:Ljava/lang/String;

.field brands:[Ljava/lang/String;

.field private cpuabi:Ljava/lang/String;

.field private cpuabi2:Ljava/lang/String;

.field private device:Ljava/lang/String;

.field private hardware:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private imei:Ljava/lang/String;

.field private manufacturer:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private product:Ljava/lang/String;

.field samsung:[Ljava/lang/String;

.field sdk_version:[Ljava/lang/String;

.field private serial:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "5.0.1"

    aput-object v1, v0, v3

    const-string v1, "5.1.1"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->sdk_version:[Ljava/lang/String;

    .line 33
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "samsung"

    aput-object v1, v0, v3

    const-string v1, "ZTE"

    aput-object v1, v0, v4

    const-string v1, "Xiaomi"

    aput-object v1, v0, v5

    const-string v1, "Lenovo"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "Huawei"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Letv"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "OPPO"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->brands:[Ljava/lang/String;

    .line 34
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "GT-I9300"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->samsung:[Ljava/lang/String;

    .line 35
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "zte q505t"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->ZTE:[Ljava/lang/String;

    .line 36
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "HM 1STD"

    aput-object v1, v0, v3

    const-string v1, "MI 2"

    aput-object v1, v0, v4

    const-string v1, "HM NOTE 1LTE"

    aput-object v1, v0, v5

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->Xiaomi:[Ljava/lang/String;

    .line 37
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Lenovo A808t"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->Lenovo:[Ljava/lang/String;

    .line 38
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "P7-L00"

    aput-object v1, v0, v3

    const-string v1, "P6-T00"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->Huawei:[Ljava/lang/String;

    .line 39
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "Letv X600"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->Letv:[Ljava/lang/String;

    .line 40
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "oppo N1T"

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->OPPO:[Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->createBuildInfo()V

    .line 65
    return-void
.end method

.method private createId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->model:Ljava/lang/String;

    iget-object v1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->brand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->model:Ljava/lang/String;

    iget-object v1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->brand:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->model:Ljava/lang/String;

    iget-object v1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->brand:Ljava/lang/String;

    .line 155
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    invoke-direct {p0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->createSerial()Ljava/lang/String;

    move-result-object v0

    .line 158
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->brand:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private createSerial()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x9

    .line 162
    const/16 v1, 0x24

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "a"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "b"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "c"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "d"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "e"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "f"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "g"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "i"

    aput-object v2, v0, v1

    const-string v1, "j"

    aput-object v1, v0, v3

    const/16 v1, 0xa

    const-string v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "A"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "U"

    aput-object v2, v0, v1

    .line 166
    .local v0, "z":[Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const v3, 0x186a0

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAndroidId()Ljava/lang/String;
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 193
    const/4 v5, 0x6

    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "a"

    aput-object v5, v4, v7

    const-string v5, "b"

    aput-object v5, v4, v8

    const-string v5, "c"

    aput-object v5, v4, v9

    const-string v5, "d"

    aput-object v5, v4, v10

    const-string v5, "e"

    aput-object v5, v4, v11

    const/4 v5, 0x5

    const-string v6, "f"

    aput-object v6, v4, v5

    .line 194
    .local v4, "word":[Ljava/lang/String;
    const/16 v5, 0xa

    new-array v2, v5, [Ljava/lang/String;

    const-string v5, "0"

    aput-object v5, v2, v7

    const-string v5, "1"

    aput-object v5, v2, v8

    const-string v5, "2"

    aput-object v5, v2, v9

    const-string v5, "3"

    aput-object v5, v2, v10

    const-string v5, "4"

    aput-object v5, v2, v11

    const/4 v5, 0x5

    const-string v6, "5"

    aput-object v6, v2, v5

    const/4 v5, 0x6

    const-string v6, "6"

    aput-object v6, v2, v5

    const/4 v5, 0x7

    const-string v6, "7"

    aput-object v6, v2, v5

    const/16 v5, 0x8

    const-string v6, "8"

    aput-object v6, v2, v5

    const/16 v5, 0x9

    const-string v6, "9"

    aput-object v6, v2, v5

    .line 195
    .local v2, "number":[Ljava/lang/String;
    const/16 v5, 0x10

    new-array v1, v5, [Ljava/lang/String;

    const-string v5, "0"

    aput-object v5, v1, v7

    const-string v5, "1"

    aput-object v5, v1, v8

    const-string v5, "2"

    aput-object v5, v1, v9

    const-string v5, "3"

    aput-object v5, v1, v10

    const-string v5, "4"

    aput-object v5, v1, v11

    const/4 v5, 0x5

    const-string v6, "5"

    aput-object v6, v1, v5

    const/4 v5, 0x6

    const-string v6, "6"

    aput-object v6, v1, v5

    const/4 v5, 0x7

    const-string v6, "7"

    aput-object v6, v1, v5

    const/16 v5, 0x8

    const-string v6, "8"

    aput-object v6, v1, v5

    const/16 v5, 0x9

    const-string v6, "9"

    aput-object v6, v1, v5

    const/16 v5, 0xa

    const-string v6, "a"

    aput-object v6, v1, v5

    const/16 v5, 0xb

    const-string v6, "b"

    aput-object v6, v1, v5

    const/16 v5, 0xc

    const-string v6, "c"

    aput-object v6, v1, v5

    const/16 v5, 0xd

    const-string v6, "d"

    aput-object v6, v1, v5

    const/16 v5, 0xe

    const-string v6, "e"

    aput-object v6, v1, v5

    const/16 v5, 0xf

    const-string v6, "f"

    aput-object v6, v1, v5

    .line 197
    .local v1, "mac":[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 198
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v5, 0x10

    if-ge v0, v5, :cond_1

    .line 199
    rem-int/lit8 v5, v0, 0x2

    if-nez v5, :cond_0

    .line 200
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    const/16 v6, 0xa

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 198
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_0
    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    array-length v6, v1

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    aget-object v5, v1, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 205
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private getImeiStart()Ljava/lang/String;
    .locals 4

    .prologue
    .line 116
    const-string v0, "GT-I9300"

    iget-object v1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "3555330510"

    .line 137
    :goto_0
    return-object v0

    .line 118
    :cond_0
    const-string v0, "zte q505t"

    iget-object v1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    const-string v0, "8645900228"

    goto :goto_0

    .line 120
    :cond_1
    const-string v0, "HM 1STD"

    iget-object v1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    const-string v0, "8658550209"

    goto :goto_0

    .line 122
    :cond_2
    const-string v0, "MI 2"

    iget-object v1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    const-string v0, "8696300138"

    goto :goto_0

    .line 124
    :cond_3
    const-string v0, "HM NOTE 1LTE"

    iget-object v1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 125
    const-string v0, "8667130217"

    goto :goto_0

    .line 126
    :cond_4
    const-string v0, "Lenovo A808t"

    iget-object v1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 127
    const-string v0, "8647830212"

    goto :goto_0

    .line 128
    :cond_5
    const-string v0, "P7-L00"

    iget-object v1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 129
    const-string v0, "3574580408"

    goto :goto_0

    .line 130
    :cond_6
    const-string v0, "P6-T00"

    iget-object v1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 131
    const-string v0, "8610220066"

    goto :goto_0

    .line 132
    :cond_7
    const-string v0, "Letv X600"

    iget-object v1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 133
    const-string v0, "8678770201"

    goto :goto_0

    .line 134
    :cond_8
    const-string v0, "oppo N1T"

    iget-object v1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->model:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 135
    const-string v0, "8629090270"

    goto :goto_0

    .line 137
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    const-wide/16 v2, 0x5

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0
.end method

.method private getRanImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    invoke-direct {p0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getImeiStart()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getRanImei(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRanImei(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "stf"    # Ljava/lang/String;

    .prologue
    .line 146
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, "sb":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    rsub-int/lit8 v2, v2, 0xf

    if-ge v0, v2, :cond_0

    .line 148
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getSDKAPI()I
    .locals 4

    .prologue
    const/16 v0, 0xf

    .line 68
    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->version:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 89
    :goto_1
    :pswitch_0
    return v0

    .line 68
    :sswitch_0
    const-string v3, "4.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v3, "4.0.3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "4.1.2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "4.1.1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "4.2.1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v3, "4.3.1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v3, "4.4.2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_7
    const-string v3, "4.4.4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto :goto_0

    :sswitch_8
    const-string v3, "5.0.1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_9
    const-string v3, "5.1.2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x9

    goto :goto_0

    :sswitch_a
    const-string v3, "5.1.1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    .line 70
    :pswitch_1
    const/16 v0, 0xe

    goto :goto_1

    .line 75
    :pswitch_2
    const/16 v0, 0x10

    goto :goto_1

    .line 77
    :pswitch_3
    const/16 v0, 0x11

    goto :goto_1

    .line 79
    :pswitch_4
    const/16 v0, 0x12

    goto :goto_1

    .line 82
    :pswitch_5
    const/16 v0, 0x13

    goto :goto_1

    .line 84
    :pswitch_6
    const/16 v0, 0x15

    goto/16 :goto_1

    .line 87
    :pswitch_7
    const/16 v0, 0x16

    goto/16 :goto_1

    .line 68
    :sswitch_data_0
    .sparse-switch
        0xc8f6 -> :sswitch_0
        0x2f2693b -> :sswitch_1
        0x2f26cfa -> :sswitch_3
        0x2f26cfb -> :sswitch_2
        0x2f270bb -> :sswitch_4
        0x2f2747c -> :sswitch_5
        0x2f2783e -> :sswitch_6
        0x2f27840 -> :sswitch_7
        0x30080ba -> :sswitch_8
        0x300847b -> :sswitch_a
        0x300847c -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private selectModel()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 170
    iget-object v1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->brand:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return-object v0

    .line 173
    :cond_1
    const-string v1, "samsung"

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->brand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->samsung:[Ljava/lang/String;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->samsung:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0

    .line 175
    :cond_2
    const-string v1, "ZTE"

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->brand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 176
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->ZTE:[Ljava/lang/String;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->ZTE:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0

    .line 177
    :cond_3
    const-string v1, "Xiaomi"

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->brand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 178
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->Xiaomi:[Ljava/lang/String;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->Xiaomi:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0

    .line 179
    :cond_4
    const-string v1, "Lenovo"

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->brand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 180
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->Lenovo:[Ljava/lang/String;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->Lenovo:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    goto :goto_0

    .line 181
    :cond_5
    const-string v1, "Huawei"

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->brand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 182
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->Huawei:[Ljava/lang/String;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->Huawei:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 183
    :cond_6
    const-string v1, "Letv"

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->brand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 184
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->Letv:[Ljava/lang/String;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->Letv:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    goto/16 :goto_0

    .line 185
    :cond_7
    const-string v1, "OPPO"

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->brand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->OPPO:[Ljava/lang/String;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->OPPO:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public createBuildInfo()V
    .locals 3

    .prologue
    .line 94
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->sdk_version:[Ljava/lang/String;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->sdk_version:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->setVersion(Ljava/lang/String;)V

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getSDKAPI()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->setApi(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->brands:[Ljava/lang/String;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->brands:[Ljava/lang/String;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->setBrand(Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->selectModel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->setModel(Ljava/lang/String;)V

    .line 100
    invoke-direct {p0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->createId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->setId(Ljava/lang/String;)V

    .line 101
    invoke-direct {p0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->createSerial()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->setSerial(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->model:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->setManufacturer(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->model:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->setProduct(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->model:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->setDevice(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->model:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->setBoard(Ljava/lang/String;)V

    .line 106
    const-string v0, "armeabi-v7"

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->setCpuabi(Ljava/lang/String;)V

    .line 107
    const-string v0, "armeabi"

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->setCpuabi2(Ljava/lang/String;)V

    .line 108
    const-string v0, "qcom"

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->setHardware(Ljava/lang/String;)V

    .line 110
    invoke-static {}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getAndroidId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->setAndroid_id(Ljava/lang/String;)V

    .line 112
    invoke-direct {p0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->getRanImei()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bb_sz/ndk/info/test/BuildInfo;->setImei(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public getAndroid_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->android_id:Ljava/lang/String;

    return-object v0
.end method

.method public getApi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->api:Ljava/lang/String;

    return-object v0
.end method

.method public getBoard()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->board:Ljava/lang/String;

    return-object v0
.end method

.method public getBrand()Ljava/lang/String;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->brand:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuabi()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->cpuabi:Ljava/lang/String;

    return-object v0
.end method

.method public getCpuabi2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->cpuabi2:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getHardware()Ljava/lang/String;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->hardware:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->imei:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->manufacturer:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getProduct()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->product:Ljava/lang/String;

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->serial:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setAndroid_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "android_id"    # Ljava/lang/String;

    .prologue
    .line 265
    iput-object p1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->android_id:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public setApi(Ljava/lang/String;)V
    .locals 0
    .param p1, "api"    # Ljava/lang/String;

    .prologue
    .line 285
    iput-object p1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->api:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setBoard(Ljava/lang/String;)V
    .locals 0
    .param p1, "board"    # Ljava/lang/String;

    .prologue
    .line 305
    iput-object p1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->board:Ljava/lang/String;

    .line 306
    return-void
.end method

.method public setBrand(Ljava/lang/String;)V
    .locals 0
    .param p1, "brand"    # Ljava/lang/String;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->brand:Ljava/lang/String;

    .line 294
    return-void
.end method

.method public setCpuabi(Ljava/lang/String;)V
    .locals 0
    .param p1, "cpuabi"    # Ljava/lang/String;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->cpuabi:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public setCpuabi2(Ljava/lang/String;)V
    .locals 0
    .param p1, "cpuabi2"    # Ljava/lang/String;

    .prologue
    .line 317
    iput-object p1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->cpuabi2:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->device:Ljava/lang/String;

    .line 302
    return-void
.end method

.method public setHardware(Ljava/lang/String;)V
    .locals 0
    .param p1, "hardware"    # Ljava/lang/String;

    .prologue
    .line 309
    iput-object p1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->hardware:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 269
    iput-object p1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->id:Ljava/lang/String;

    .line 270
    return-void
.end method

.method public setImei(Ljava/lang/String;)V
    .locals 0
    .param p1, "imei"    # Ljava/lang/String;

    .prologue
    .line 325
    iput-object p1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->imei:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public setManufacturer(Ljava/lang/String;)V
    .locals 0
    .param p1, "manufacturer"    # Ljava/lang/String;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->manufacturer:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/String;

    .prologue
    .line 273
    iput-object p1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->model:Ljava/lang/String;

    .line 274
    return-void
.end method

.method public setProduct(Ljava/lang/String;)V
    .locals 0
    .param p1, "product"    # Ljava/lang/String;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->product:Ljava/lang/String;

    .line 298
    return-void
.end method

.method public setSerial(Ljava/lang/String;)V
    .locals 0
    .param p1, "serial"    # Ljava/lang/String;

    .prologue
    .line 277
    iput-object p1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->serial:Ljava/lang/String;

    .line 278
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 281
    iput-object p1, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->version:Ljava/lang/String;

    .line 282
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 45
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "refresh.id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    const-string v1, "refresh.model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->model:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 47
    const-string v1, "refresh.serial="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->serial:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 48
    const-string v1, "refresh.version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->version:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    const-string v1, "refresh.api="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->api:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    const-string v1, "refresh.manufacturer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->manufacturer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 51
    const-string v1, "refresh.brand="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->brand:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 52
    const-string v1, "refresh.product="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->product:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 53
    const-string v1, "refresh.device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->device:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    const-string v1, "refresh.board="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->board:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    const-string v1, "refresh.hardware="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->hardware:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    const-string v1, "refresh.cpuabi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->cpuabi:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v1, "refresh.cpuabi2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->cpuabi2:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    const-string v1, "refresh.android_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->android_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    const-string v1, "refresh.device_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/test/BuildInfo;->imei:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
