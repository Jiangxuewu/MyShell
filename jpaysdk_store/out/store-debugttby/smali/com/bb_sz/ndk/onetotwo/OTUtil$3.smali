.class Lcom/bb_sz/ndk/onetotwo/OTUtil$3;
.super Ljava/lang/Object;
.source "OTUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bb_sz/ndk/onetotwo/OTUtil;->startCountDown(ILcom/bb_sz/ndk/onetotwo/Model$MsgBean;Lcom/bb_sz/ndk/onetotwo/ICountDown;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bb_sz/ndk/onetotwo/OTUtil;

.field final synthetic val$i:I

.field final synthetic val$iCountDown:Lcom/bb_sz/ndk/onetotwo/ICountDown;

.field final synthetic val$item:Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;


# direct methods
.method constructor <init>(Lcom/bb_sz/ndk/onetotwo/OTUtil;ILcom/bb_sz/ndk/onetotwo/Model$MsgBean;Lcom/bb_sz/ndk/onetotwo/ICountDown;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bb_sz/ndk/onetotwo/OTUtil;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil$3;->this$0:Lcom/bb_sz/ndk/onetotwo/OTUtil;

    iput p2, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil$3;->val$i:I

    iput-object p3, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil$3;->val$item:Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;

    iput-object p4, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil$3;->val$iCountDown:Lcom/bb_sz/ndk/onetotwo/ICountDown;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 291
    :try_start_0
    iget v1, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil$3;->val$i:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :goto_0
    iget-object v1, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil$3;->this$0:Lcom/bb_sz/ndk/onetotwo/OTUtil;

    iget-object v2, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil$3;->val$item:Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->isInstalled(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 296
    iget-object v1, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil$3;->val$iCountDown:Lcom/bb_sz/ndk/onetotwo/ICountDown;

    iget-object v2, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil$3;->val$item:Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;

    invoke-interface {v1, v2}, Lcom/bb_sz/ndk/onetotwo/ICountDown;->timeOut(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)V

    .line 300
    :goto_1
    return-void

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 298
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    iget-object v1, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil$3;->val$iCountDown:Lcom/bb_sz/ndk/onetotwo/ICountDown;

    iget-object v2, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil$3;->val$item:Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;

    invoke-interface {v1, v2}, Lcom/bb_sz/ndk/onetotwo/ICountDown;->installed(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)V

    goto :goto_1
.end method
