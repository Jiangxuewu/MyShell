.class public Lcom/bb_sz/ndk/info/requstdata/NetWorkInfo;
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
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNet_extrainfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/NetWorkInfo;->net_extrainfo:Ljava/lang/String;

    return-object v0
.end method

.method public getNet_subtype()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/bb_sz/ndk/info/requstdata/NetWorkInfo;->net_subtype:I

    return v0
.end method

.method public getNet_subtype_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/NetWorkInfo;->net_subtype_name:Ljava/lang/String;

    return-object v0
.end method

.method public getNet_type()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/bb_sz/ndk/info/requstdata/NetWorkInfo;->net_type:I

    return v0
.end method

.method public getNet_type_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/NetWorkInfo;->net_type_name:Ljava/lang/String;

    return-object v0
.end method

.method public setNet_extrainfo(Ljava/lang/String;)V
    .locals 0
    .param p1, "net_extrainfo"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/NetWorkInfo;->net_extrainfo:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setNet_subtype(I)V
    .locals 0
    .param p1, "net_subtype"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/bb_sz/ndk/info/requstdata/NetWorkInfo;->net_subtype:I

    .line 38
    return-void
.end method

.method public setNet_subtype_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "net_subtype_name"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/NetWorkInfo;->net_subtype_name:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setNet_type(I)V
    .locals 0
    .param p1, "net_type"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/bb_sz/ndk/info/requstdata/NetWorkInfo;->net_type:I

    .line 54
    return-void
.end method

.method public setNet_type_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "net_type_name"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/NetWorkInfo;->net_type_name:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 67
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "refresh.net_extrainfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/requstdata/NetWorkInfo;->net_extrainfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 68
    const-string v1, "refresh.net_subtype="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bb_sz/ndk/info/requstdata/NetWorkInfo;->net_subtype:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 69
    const-string v1, "refresh.net_subtype_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/requstdata/NetWorkInfo;->net_subtype_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    const-string v1, "refresh.net_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bb_sz/ndk/info/requstdata/NetWorkInfo;->net_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v1, "refresh.net_type_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/requstdata/NetWorkInfo;->net_type_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
