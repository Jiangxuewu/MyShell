.class public Lcom/unicom/xiaowo/IPflow;
.super Ljava/lang/Object;


# static fields
.field public static final MSG_REQUEST_ASK_FLOW_RESULT:I = 0x2

.field public static final MSG_REQUEST_ORDER_RESULT:I = 0x0

.field public static final MSG_REQUEST_UNORDER_RESULT:I = 0x1

.field public static final NO_ERROR:I = 0x1

.field private static mIcSys:Lcom/unicom/xiaowo/IPflow;


# instance fields
.field private mReflect:Lcom/unicom/xiaowo/inner/ReflectIpFlow;


# direct methods
.method private constructor <init>()V
    .locals 0

    return-void
.end method

.method public static getInstance()Lcom/unicom/xiaowo/IPflow;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getFlowOrder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public requestEncode(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public requestOrder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public requestUnorder(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    return-void
.end method
