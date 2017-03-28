.class final Lcom/bb_sz/pay/umeng/UMengUtil$1;
.super Ljava/lang/Object;
.source "UMengUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bb_sz/pay/umeng/UMengUtil;->refresh(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/bb_sz/pay/umeng/UMengUtil$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 53
    # getter for: Lcom/bb_sz/pay/umeng/UMengUtil;->isInit:Z
    invoke-static {}, Lcom/bb_sz/pay/umeng/UMengUtil;->access$000()Z

    move-result v0

    if-nez v0, :cond_1

    .line 54
    sget-object v0, Lcom/bb_sz/pay/umeng/UMengUtil;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/bb_sz/pay/umeng/UMengUtil$1;->val$context:Landroid/content/Context;

    sput-object v0, Lcom/bb_sz/pay/umeng/UMengUtil;->mContext:Landroid/content/Context;

    .line 57
    :cond_0
    sget-object v0, Lcom/bb_sz/pay/umeng/UMengUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bb_sz/pay/umeng/UMengUtil;->init(Landroid/content/Context;)V

    .line 58
    sget-object v0, Lcom/bb_sz/pay/umeng/UMengUtil;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bb_sz/pay/umeng/UMengUtil;->onResume(Landroid/content/Context;)V

    .line 60
    :cond_1
    return-void
.end method
