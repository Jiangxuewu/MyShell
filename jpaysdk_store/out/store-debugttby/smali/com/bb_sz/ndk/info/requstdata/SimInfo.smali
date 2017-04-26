.class public Lcom/bb_sz/ndk/info/requstdata/SimInfo;
.super Ljava/lang/Object;
.source "SimInfo.java"


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
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "cn"

    iput-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->sim_country_iso:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLine1_number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->line1_number:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork_country_iso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->network_country_iso:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork_operator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->network_operator:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork_operator_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->network_operator_name:Ljava/lang/String;

    return-object v0
.end method

.method public getNetwork_type()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->network_type:I

    return v0
.end method

.method public getSim_country_iso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->sim_country_iso:Ljava/lang/String;

    return-object v0
.end method

.method public getSim_operator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->sim_operator:Ljava/lang/String;

    return-object v0
.end method

.method public getSim_operator_name()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->sim_operator_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSim_serial_number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->sim_serial_number:Ljava/lang/String;

    return-object v0
.end method

.method public getSim_state()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->sim_state:Ljava/lang/String;

    return-object v0
.end method

.method public getSubscriber_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->subscriber_id:Ljava/lang/String;

    return-object v0
.end method

.method public setLine1_number(Ljava/lang/String;)V
    .locals 0
    .param p1, "line1_number"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->line1_number:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setNetwork_country_iso(Ljava/lang/String;)V
    .locals 0
    .param p1, "network_country_iso"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->network_country_iso:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setNetwork_operator(Ljava/lang/String;)V
    .locals 0
    .param p1, "network_operator"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->network_operator:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setNetwork_operator_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "network_operator_name"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->network_operator_name:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setNetwork_type(I)V
    .locals 0
    .param p1, "network_type"    # I

    .prologue
    .line 120
    iput p1, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->network_type:I

    .line 121
    return-void
.end method

.method public setSim_country_iso(Ljava/lang/String;)V
    .locals 0
    .param p1, "sim_country_iso"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->sim_country_iso:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setSim_operator(Ljava/lang/String;)V
    .locals 0
    .param p1, "sim_operator"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->sim_operator:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setSim_operator_name(Ljava/lang/String;)V
    .locals 0
    .param p1, "sim_operator_name"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->sim_operator_name:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setSim_serial_number(Ljava/lang/String;)V
    .locals 0
    .param p1, "sim_serial_number"    # Ljava/lang/String;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->sim_serial_number:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setSim_state(Ljava/lang/String;)V
    .locals 0
    .param p1, "sim_state"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->sim_state:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setSubscriber_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "subscriber_id"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->subscriber_id:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 125
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "refresh.sim_country_iso="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->sim_country_iso:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    const-string v1, "refresh.sim_operator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->sim_operator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    const-string v1, "refresh.sim_operator_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->sim_operator_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    const-string v1, "refresh.sim_serial_number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->sim_serial_number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 129
    const-string v1, "refresh.sim_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->sim_state:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 130
    const-string v1, "refresh.subscriber_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->subscriber_id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    const-string v1, "refresh.line1_number="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->line1_number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 132
    const-string v1, "refresh.network_country_iso="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->network_country_iso:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    const-string v1, "refresh.network_operator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->network_operator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    const-string v1, "refresh.network_operator_name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->network_operator_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    const-string v1, "refresh.network_type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/bb_sz/ndk/info/requstdata/SimInfo;->network_type:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
