.class public Lcom/unicom/xiaowo/Account$ClientInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unicom/xiaowo/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ClientInfo"
.end annotation


# instance fields
.field private clientId:Ljava/lang/String;

.field private clientKey:Ljava/lang/String;

.field final synthetic this$0:Lcom/unicom/xiaowo/Account;


# direct methods
.method public constructor <init>(Lcom/unicom/xiaowo/Account;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getClientId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getClientKey()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setClientId(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setClientKey(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
