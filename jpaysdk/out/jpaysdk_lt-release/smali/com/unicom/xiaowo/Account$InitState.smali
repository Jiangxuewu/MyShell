.class final enum Lcom/unicom/xiaowo/Account$InitState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unicom/xiaowo/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "InitState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/unicom/xiaowo/Account$InitState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/unicom/xiaowo/Account$InitState;

.field public static final enum IDLE:Lcom/unicom/xiaowo/Account$InitState;

.field public static final enum INITED:Lcom/unicom/xiaowo/Account$InitState;

.field public static final enum INITING:Lcom/unicom/xiaowo/Account$InitState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/unicom/xiaowo/Account$InitState;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public static values()[Lcom/unicom/xiaowo/Account$InitState;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
