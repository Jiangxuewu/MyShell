.class public Lcom/lyhtgh/pay/wostore/WoStoreServer;
.super Ljava/lang/Object;


# static fields
.field public static mWoStoreResultHandle:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/lyhtgh/pay/wostore/WoStoreServer;->mWoStoreResultHandle:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public startWoStorServer(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIILandroid/os/Handler;)V
    .locals 12

    sput-object p14, Lcom/lyhtgh/pay/wostore/WoStoreServer;->mWoStoreResultHandle:Landroid/os/Handler;

    invoke-static {}, Lcom/unicom/xiaowo/Pay;->getInstance()Lcom/unicom/xiaowo/Pay;

    move-result-object v0

    new-instance v11, Lcom/lyhtgh/pay/wostore/WoStorePayRet;

    invoke-direct {v11}, Lcom/lyhtgh/pay/wostore/WoStorePayRet;-><init>()V

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    invoke-virtual/range {v0 .. v11}, Lcom/unicom/xiaowo/Pay;->payChannel(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/unicom/xiaowo/Pay$UnipayPayResultListener;)V

    return-void
.end method
