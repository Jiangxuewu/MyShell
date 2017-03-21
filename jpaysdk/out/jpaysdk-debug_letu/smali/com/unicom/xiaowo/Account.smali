.class public Lcom/unicom/xiaowo/Account;
.super Ljava/lang/Object;


# static fields
.field public static final API_VERSION:I = 0x3

.field public static final CODE_ANDROID_SDK_VERSION_TOOOLD:I = -0x7

.field public static final CODE_BUSY:I = -0x2

.field public static final CODE_FAILURE:I = -0x1

.field public static final CODE_INSUFFICIENT_FUNDS:I = -0x69

.field public static final CODE_NOT_CORRECTLY_INITED:I = -0x3

.field public static final CODE_NO_ACCOUNT:I = -0x5

.field public static final CODE_REFRESH_TOKEN_NOT_FOUND:I = -0x65

.field public static final CODE_SUCCESS:I = 0x0

.field public static final CODE_USER_CANCELED:I = -0x4

.field public static final CODE_USER_ORDER_BIZ_NOT_FOUND:I = -0x6

.field public static final MSG_ACCOUNT_SWITCH_IND:I = 0x2713

.field public static final MSG_ERROR_IND:I = 0x3f0

.field public static final MSG_LOGIN_RESULT:I = 0x2711

.field public static final MSG_LOGOUT_IND:I = 0x2712

.field public static final MSG_LOGOUT_RESULT:I = 0x3ef

.field public static final MSG_REFRESH_ACCESS_TOKEN:I = 0x3ec

.field public static final MSG_REFRESH_POINT:I = 0x3ee

.field public static final MSG_WOPAYVERIFY_RESULT:I = 0x3ed

.field public static final SCREEN_ORIENTATION_AUTO:I = 0x0

.field public static final SCREEN_ORIENTATION_LANDSCAPE:I = 0x2

.field public static final SCREEN_ORIENTATION_PORTRAIT:I = 0x1

.field public static final SCREEN_ORIENTATION_SENSOR_LANDSCAPE:I = 0x4

.field public static final SCREEN_ORIENTATION_SENSOR_PORTRAIT:I = 0x3

.field private static s_instance:Lcom/unicom/xiaowo/Account;

.field private static s_lock:Ljava/lang/String;


# instance fields
.field private mAccountStatusChangedHandler:Landroid/os/Handler;

.field private mClientId:Ljava/lang/String;

.field private mClientInitResultListener:Lcom/unicom/xiaowo/Account$OnInitResultListener;

.field private mClientKey:Ljava/lang/String;

.field private mClientOnAccountStatusChangedListener:Lcom/unicom/xiaowo/Account$OnAccountStatusChangedListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInitState:Lcom/unicom/xiaowo/Account$InitState;

.field private mInnerStub:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    return-void
.end method

.method static synthetic access$000(Lcom/unicom/xiaowo/Account;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic access$100(Lcom/unicom/xiaowo/Account;)Lcom/unicom/xiaowo/Account$OnInitResultListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic access$102(Lcom/unicom/xiaowo/Account;Lcom/unicom/xiaowo/Account$OnInitResultListener;)Lcom/unicom/xiaowo/Account$OnInitResultListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic access$200(Lcom/unicom/xiaowo/Account;)Lcom/unicom/xiaowo/Account$OnAccountStatusChangedListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private callInnerMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private callInnerMethod(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private callLocalActivityMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private callLocalActivityMethod_self(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private callLocalServiceMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private callLocalServiceMethod_self(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private destroyInnerStub()V
    .locals 0

    return-void
.end method

.method private doInit(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unicom/xiaowo/Account$OnInitResultListener;)V
    .locals 0

    return-void
.end method

.method private getAccountContextInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance()Lcom/unicom/xiaowo/Account;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getJSONValueInt(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private static getJSONValueString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private static getJSONValueString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private notifyClientInitResult(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method private parseClientInfo(Ljava/lang/String;)Lcom/unicom/xiaowo/Account$ClientInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private parseUserInfo(Ljava/lang/String;)Lcom/unicom/xiaowo/Account$UserInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private registerASCListener()V
    .locals 0

    return-void
.end method

.method private setInitState(Lcom/unicom/xiaowo/Account$InitState;)V
    .locals 0

    return-void
.end method

.method private startInnerStub()V
    .locals 0

    return-void
.end method

.method private verifyText(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public closeFloatView(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public enterUsercenter(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public exitSDK()V
    .locals 0

    return-void
.end method

.method public getClientInfo()Lcom/unicom/xiaowo/Account$ClientInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentUserInfo()Lcom/unicom/xiaowo/Account$UserInfo;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreenOrientation()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/unicom/xiaowo/Account$OnInitResultListener;)V
    .locals 0

    return-void
.end method

.method public isLoggined()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadLocalActivity(Landroid/app/Activity;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public loadLocalService(Landroid/app/Service;I)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public login(Landroid/content/Context;Lcom/unicom/xiaowo/Account$OnLoginResultListener;)V
    .locals 0

    return-void
.end method

.method public login(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public logout(Landroid/content/Context;Lcom/unicom/xiaowo/Account$OnLogoutResultListener;)V
    .locals 0

    return-void
.end method

.method public refreshAccessToken(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public refreshPoint(Landroid/os/Handler;)V
    .locals 0

    return-void
.end method

.method public setAccountStatusChangedListener(Lcom/unicom/xiaowo/Account$OnAccountStatusChangedListener;)V
    .locals 0

    return-void
.end method

.method public setScreenOrientation(I)V
    .locals 0

    return-void
.end method

.method public showFloatView(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public switchAccount(Landroid/content/Context;Lcom/unicom/xiaowo/Account$OnSwitchAccountResultListener;)V
    .locals 0

    return-void
.end method

.method public verifyAccountForWoPay(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0

    return-void
.end method
