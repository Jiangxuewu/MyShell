.class Lcom/bb_sz/ndk/onetotwo/OTUtil$1;
.super Ljava/lang/Object;
.source "OTUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bb_sz/ndk/onetotwo/OTUtil;->checkAndInstall(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bb_sz/ndk/onetotwo/OTUtil;

.field final synthetic val$curPkg:Ljava/lang/String;

.field final synthetic val$item:Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;


# direct methods
.method constructor <init>(Lcom/bb_sz/ndk/onetotwo/OTUtil;Ljava/lang/String;Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bb_sz/ndk/onetotwo/OTUtil;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil$1;->this$0:Lcom/bb_sz/ndk/onetotwo/OTUtil;

    iput-object p2, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil$1;->val$curPkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil$1;->val$item:Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 156
    :goto_0
    iget-object v1, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil$1;->val$curPkg:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil$1;->val$curPkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil$1;->this$0:Lcom/bb_sz/ndk/onetotwo/OTUtil;

    # invokes: Lcom/bb_sz/ndk/onetotwo/OTUtil;->getTopPkg()Ljava/lang/String;
    invoke-static {v2}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->access$000(Lcom/bb_sz/ndk/onetotwo/OTUtil;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    const-wide/16 v2, 0x3e8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 163
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v1, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil$1;->this$0:Lcom/bb_sz/ndk/onetotwo/OTUtil;

    iget-object v2, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil$1;->val$item:Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->_installApk(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)V

    .line 164
    return-void
.end method
