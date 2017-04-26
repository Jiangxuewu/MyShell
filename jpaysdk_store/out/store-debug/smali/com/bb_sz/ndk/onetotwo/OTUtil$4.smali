.class Lcom/bb_sz/ndk/onetotwo/OTUtil$4;
.super Ljava/lang/Object;
.source "OTUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bb_sz/ndk/onetotwo/OTUtil;->down(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bb_sz/ndk/onetotwo/OTUtil;

.field final synthetic val$item:Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;


# direct methods
.method constructor <init>(Lcom/bb_sz/ndk/onetotwo/OTUtil;Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bb_sz/ndk/onetotwo/OTUtil;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil$4;->this$0:Lcom/bb_sz/ndk/onetotwo/OTUtil;

    iput-object p2, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil$4;->val$item:Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 362
    iget-object v1, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil$4;->this$0:Lcom/bb_sz/ndk/onetotwo/OTUtil;

    iget-object v2, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil$4;->val$item:Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;

    # invokes: Lcom/bb_sz/ndk/onetotwo/OTUtil;->getLocalIconPath(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->access$100(Lcom/bb_sz/ndk/onetotwo/OTUtil;Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)Ljava/lang/String;

    move-result-object v0

    .line 363
    .local v0, "icon":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil$4;->this$0:Lcom/bb_sz/ndk/onetotwo/OTUtil;

    iget-object v2, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil$4;->val$item:Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->downloadIcon(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)V

    .line 366
    :cond_0
    iget-object v1, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil$4;->this$0:Lcom/bb_sz/ndk/onetotwo/OTUtil;

    iget-object v2, p0, Lcom/bb_sz/ndk/onetotwo/OTUtil$4;->val$item:Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;

    invoke-virtual {v1, v2}, Lcom/bb_sz/ndk/onetotwo/OTUtil;->downloadApk(Lcom/bb_sz/ndk/onetotwo/Model$MsgBean;)V

    .line 367
    return-void
.end method
