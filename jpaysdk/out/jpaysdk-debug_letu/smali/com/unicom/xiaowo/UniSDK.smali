.class public Lcom/unicom/xiaowo/UniSDK;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unicom/xiaowo/UniSDK$UnisdkInitResultListener;
    }
.end annotation


# static fields
.field public static final CANCEL:I = 0x3

.field public static final FAILED:I = 0x2

.field public static final SUCCESS:I = 0x1

.field private static instance:Lcom/unicom/xiaowo/UniSDK;


# instance fields
.field private isInit:Z

.field private mInitListener:Lcom/unicom/xiaowo/UniSDK$UnisdkInitResultListener;


# direct methods
.method private constructor <init>()V
    .locals 0

    return-void
.end method

.method private checkPermission(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private checkSecurityActivity(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private checkService(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getInstance()Lcom/unicom/xiaowo/UniSDK;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method private isSDKProcess(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isValidCallStack(Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public initSDK(Landroid/content/Context;Lcom/unicom/xiaowo/UniSDK$UnisdkInitResultListener;)V
    .locals 0

    return-void
.end method

.method public isInit()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
