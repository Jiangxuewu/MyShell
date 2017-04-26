.class public Lcom/bb_sz/ndk/info/requstdata/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# instance fields
.field private _id:Ljava/lang/String;

.field private first_install_time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFirst_install_time()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/AppInfo;->first_install_time:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/AppInfo;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public setFirst_install_time(Ljava/lang/String;)V
    .locals 0
    .param p1, "first_install_time"    # Ljava/lang/String;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/AppInfo;->first_install_time:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public set_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "_id"    # Ljava/lang/String;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/AppInfo;->_id:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refresh.first_install_time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bb_sz/ndk/info/requstdata/AppInfo;->first_install_time:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
