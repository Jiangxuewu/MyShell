.class public Lcom/ffcs/crypt/AuthSign;
.super Ljava/lang/Object;


# static fields
.field private static mloadSo:Z


# instance fields
.field private cs:Lcom/ffcs/crypt/CryptSign;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ffcs/crypt/AuthSign;->mloadSo:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/ffcs/crypt/CryptSign;

    invoke-direct {v0}, Lcom/ffcs/crypt/CryptSign;-><init>()V

    iput-object v0, p0, Lcom/ffcs/crypt/AuthSign;->cs:Lcom/ffcs/crypt/CryptSign;

    return-void
.end method


# virtual methods
.method public authSign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/ffcs/crypt/AuthSign;->mloadSo:Z

    if-nez v0, :cond_0

    invoke-static {p4}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ffcs/crypt/AuthSign;->mloadSo:Z

    :cond_0
    iget-object v0, p0, Lcom/ffcs/crypt/AuthSign;->cs:Lcom/ffcs/crypt/CryptSign;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ffcs/crypt/CryptSign;->authSign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public signAuth(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-boolean v0, Lcom/ffcs/crypt/AuthSign;->mloadSo:Z

    if-nez v0, :cond_0

    invoke-static {p4}, Ljava/lang/System;->load(Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/ffcs/crypt/AuthSign;->mloadSo:Z

    :cond_0
    iget-object v0, p0, Lcom/ffcs/crypt/AuthSign;->cs:Lcom/ffcs/crypt/CryptSign;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ffcs/crypt/CryptSign;->signAuth(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
