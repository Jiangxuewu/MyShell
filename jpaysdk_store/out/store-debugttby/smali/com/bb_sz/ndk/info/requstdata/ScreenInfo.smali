.class public Lcom/bb_sz/ndk/info/requstdata/ScreenInfo;
.super Ljava/lang/Object;
.source "ScreenInfo.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private density:F

.field private dpi:I

.field private height:I

.field private width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDensity()F
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/bb_sz/ndk/info/requstdata/ScreenInfo;->density:F

    return v0
.end method

.method public getDpi()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/bb_sz/ndk/info/requstdata/ScreenInfo;->dpi:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/bb_sz/ndk/info/requstdata/ScreenInfo;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/bb_sz/ndk/info/requstdata/ScreenInfo;->width:I

    return v0
.end method

.method public setDensity(F)V
    .locals 0
    .param p1, "density"    # F

    .prologue
    .line 51
    iput p1, p0, Lcom/bb_sz/ndk/info/requstdata/ScreenInfo;->density:F

    .line 52
    return-void
.end method

.method public setDpi(I)V
    .locals 0
    .param p1, "dpi"    # I

    .prologue
    .line 43
    iput p1, p0, Lcom/bb_sz/ndk/info/requstdata/ScreenInfo;->dpi:I

    .line 44
    return-void
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/bb_sz/ndk/info/requstdata/ScreenInfo;->height:I

    .line 36
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/bb_sz/ndk/info/requstdata/ScreenInfo;->width:I

    .line 28
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 55
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "refresh.height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bb_sz/ndk/info/requstdata/ScreenInfo;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 56
    const-string v1, "refresh.width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bb_sz/ndk/info/requstdata/ScreenInfo;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 57
    const-string v1, "refresh.dpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bb_sz/ndk/info/requstdata/ScreenInfo;->dpi:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 58
    const-string v1, "refresh.density="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bb_sz/ndk/info/requstdata/ScreenInfo;->density:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 59
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
