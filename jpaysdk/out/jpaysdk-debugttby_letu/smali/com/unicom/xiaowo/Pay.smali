.class public Lcom/unicom/xiaowo/Pay;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unicom/xiaowo/Pay$UnipayCommandResultListener;,
        Lcom/unicom/xiaowo/Pay$UnipayExitListener;,
        Lcom/unicom/xiaowo/Pay$UnipayPauseListener;,
        Lcom/unicom/xiaowo/Pay$UnipayPayResultListener;
    }
.end annotation


# static fields
.field public static final CANCEL:I = 0x3

.field public static final CANCEL_CHANGECODE:I = 0x1d

.field public static final CANCEL_CHINAMOBILE:I = 0x1f

.field public static final CANCEL_FIRSTPAGE:I = 0x1a

.field public static final CANCEL_OTHERPAYPAGE:I = 0x1c

.field public static final CANCEL_VACPAYPAGE:I = 0x1b

.field public static final CANCEL_VACYZM:I = 0x1e

.field public static final DX_SMS_SEND:I = 0xd

.field public static final FAILED:I = 0x2

.field public static final MONTH_SEND:I = 0xb

.field public static SIMPLE:Ljava/lang/String; = null

.field public static final SMS_SEND:I = 0x5

.field public static final SUBCOMMIT_ANCI:I = 0x23

.field public static final SUBCOMMIT_BANKCARD:I = 0x25

.field public static final SUBCOMMIT_QQPAY:I = 0x27

.field public static final SUBCOMMIT_SZF:I = 0x18

.field public static final SUBCOMMIT_VAC:I = 0x14

.field public static final SUBCOMMIT_WEBALIPAY:I = 0x16

.field public static final SUBCOMMIT_WEIXINPAY:I = 0x26

.field public static SUBMONTH:Ljava/lang/String; = null

.field public static final SUCCESS:I = 0x1

.field public static final SUCCESS_EXCHANGECODE:I = 0x19

.field public static final SUCCESS_KALIPAY:I = 0x17

.field public static final SUCCESS_POINTPAY:I = 0x20

.field public static final SUCCESS_SMS:I = 0x15

.field public static final UNMONTH_SEND:I = 0xc

.field public static final UNSUBCOMMIT_ANCI:I = 0x24

.field public static UNSUBMONTH:Ljava/lang/String; = null

.field public static final VAC_SEND:I = 0x8

.field private static instance:Lcom/unicom/xiaowo/Pay;


# instance fields
.field private cmdListener:Lcom/unicom/xiaowo/Pay$UnipayCommandResultListener;

.field private isInitPayContext:Z

.field private mContext:Landroid/content/Context;

.field private mExitListener:Lcom/unicom/xiaowo/Pay$UnipayExitListener;

.field private mHandler:Landroid/os/Handler;

.field private mInitPayContext:Landroid/app/Activity;

.field private mInitPayContextListener:Lcom/unicom/xiaowo/Pay$UnipayPayResultListener;

.field private mPauseListener:Lcom/unicom/xiaowo/Pay$UnipayPauseListener;

.field private mPayListener:Lcom/unicom/xiaowo/Pay$UnipayPayResultListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    return-void
.end method

.method static synthetic access$000(Lcom/unicom/xiaowo/Pay;)Lcom/unicom/xiaowo/Pay$UnipayCommandResultListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic access$100(Lcom/unicom/xiaowo/Pay;)Lcom/unicom/xiaowo/Pay$UnipayPayResultListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic access$200(Lcom/unicom/xiaowo/Pay;)Lcom/unicom/xiaowo/Pay$UnipayExitListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic access$300(Lcom/unicom/xiaowo/Pay;)Lcom/unicom/xiaowo/Pay$UnipayPauseListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic access$400(Lcom/unicom/xiaowo/Pay;)Lcom/unicom/xiaowo/Pay$UnipayPayResultListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance()Lcom/unicom/xiaowo/Pay;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private initPayContextInner()V
    .locals 0

    return-void
.end method


# virtual methods
.method public customCommand(Landroid/content/Context;Ljava/lang/String;Lcom/unicom/xiaowo/Pay$UnipayCommandResultListener;)V
    .locals 0

    return-void
.end method

.method public exitSDK(Landroid/content/Context;Lcom/unicom/xiaowo/Pay$UnipayExitListener;)V
    .locals 0

    return-void
.end method

.method public getChannelID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initPayContext(Landroid/app/Activity;Lcom/unicom/xiaowo/Pay$UnipayPayResultListener;)V
    .locals 0

    return-void
.end method

.method public pay(Landroid/content/Context;Ljava/lang/String;Lcom/unicom/xiaowo/Pay$UnipayPayResultListener;)V
    .locals 0

    return-void
.end method

.method public pay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unicom/xiaowo/Pay$UnipayPayResultListener;)V
    .locals 0

    return-void
.end method

.method public payChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unicom/xiaowo/Pay$UnipayPayResultListener;)V
    .locals 0

    return-void
.end method

.method public payOnline(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unicom/xiaowo/Pay$UnipayPayResultListener;)V
    .locals 0

    return-void
.end method

.method public payOnlineAnyMoney(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unicom/xiaowo/Pay$UnipayPayResultListener;)V
    .locals 0

    return-void
.end method

.method public payOnlineWithWostre(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unicom/xiaowo/Pay$UnipayPayResultListener;)V
    .locals 0

    return-void
.end method
