.class public Lcom/bb_sz/ndk/info/test/ScreenInfo;
.super Ljava/lang/Object;
.source "ScreenInfo.java"


# static fields
.field private static final h:[I

.field private static final w:[I


# instance fields
.field private density:F

.field private densityDpi:I

.field private height:I

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 14
    new-array v0, v3, [I

    const/16 v1, 0x2d0

    aput v1, v0, v2

    sput-object v0, Lcom/bb_sz/ndk/info/test/ScreenInfo;->w:[I

    .line 15
    new-array v0, v3, [I

    const/16 v1, 0x500

    aput v1, v0, v2

    sput-object v0, Lcom/bb_sz/ndk/info/test/ScreenInfo;->h:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sget-object v2, Lcom/bb_sz/ndk/info/test/ScreenInfo;->w:[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 33
    .local v0, "i":I
    sget-object v1, Lcom/bb_sz/ndk/info/test/ScreenInfo;->w:[I

    aget v1, v1, v0

    iput v1, p0, Lcom/bb_sz/ndk/info/test/ScreenInfo;->width:I

    .line 34
    sget-object v1, Lcom/bb_sz/ndk/info/test/ScreenInfo;->h:[I

    aget v1, v1, v0

    iput v1, p0, Lcom/bb_sz/ndk/info/test/ScreenInfo;->height:I

    .line 35
    const/16 v1, 0x140

    iput v1, p0, Lcom/bb_sz/ndk/info/test/ScreenInfo;->densityDpi:I

    .line 36
    const/high16 v1, 0x40000000    # 2.0f

    iput v1, p0, Lcom/bb_sz/ndk/info/test/ScreenInfo;->density:F

    .line 37
    return-void
.end method


# virtual methods
.method public getDensity()F
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/bb_sz/ndk/info/test/ScreenInfo;->density:F

    return v0
.end method

.method public getDensityDpi()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/bb_sz/ndk/info/test/ScreenInfo;->densityDpi:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/bb_sz/ndk/info/test/ScreenInfo;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 40
    iget v0, p0, Lcom/bb_sz/ndk/info/test/ScreenInfo;->width:I

    return v0
.end method

.method public setDensity(F)V
    .locals 0
    .param p1, "density"    # F

    .prologue
    .line 68
    iput p1, p0, Lcom/bb_sz/ndk/info/test/ScreenInfo;->density:F

    .line 69
    return-void
.end method

.method public setDensityDpi(I)V
    .locals 0
    .param p1, "densityDpi"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/bb_sz/ndk/info/test/ScreenInfo;->densityDpi:I

    .line 61
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/bb_sz/ndk/info/test/ScreenInfo;->height:I

    .line 53
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/bb_sz/ndk/info/test/ScreenInfo;->width:I

    .line 45
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 23
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 24
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "refresh.height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bb_sz/ndk/info/test/ScreenInfo;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 25
    const-string v1, "refresh.width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bb_sz/ndk/info/test/ScreenInfo;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    const-string v1, "refresh.densityDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bb_sz/ndk/info/test/ScreenInfo;->densityDpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    const-string v1, "refresh.density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bb_sz/ndk/info/test/ScreenInfo;->density:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
