.class public Lcom/bb_sz/myshell/PermissionUtil;
.super Ljava/lang/Object;
.source "PermissionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bb_sz/myshell/PermissionUtil$OnCheckPermissionCallback;
    }
.end annotation


# static fields
.field private static final REQUEST_CODE_CHECK_PERMISSION:I = 0x9


# instance fields
.field private mCheckPermissionCallback:Lcom/bb_sz/myshell/PermissionUtil$OnCheckPermissionCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private test()V
    .locals 0

    .prologue
    .line 49
    return-void
.end method

.method private varargs verifyPermissions([I)Z
    .locals 4
    .param p1, "grantResults"    # [I

    .prologue
    const/4 v1, 0x0

    .line 108
    array-length v3, p1

    move v2, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget v0, p1, v2

    .line 109
    .local v0, "result":I
    if-eqz v0, :cond_0

    .line 113
    .end local v0    # "result":I
    :goto_1
    return v1

    .line 108
    .restart local v0    # "result":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    .end local v0    # "result":I
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 94
    packed-switch p1, :pswitch_data_0

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 96
    :pswitch_0
    iget-object v0, p0, Lcom/bb_sz/myshell/PermissionUtil;->mCheckPermissionCallback:Lcom/bb_sz/myshell/PermissionUtil$OnCheckPermissionCallback;

    if-eqz v0, :cond_0

    .line 97
    invoke-direct {p0, p3}, Lcom/bb_sz/myshell/PermissionUtil;->verifyPermissions([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 98
    iget-object v0, p0, Lcom/bb_sz/myshell/PermissionUtil;->mCheckPermissionCallback:Lcom/bb_sz/myshell/PermissionUtil$OnCheckPermissionCallback;

    invoke-interface {v0}, Lcom/bb_sz/myshell/PermissionUtil$OnCheckPermissionCallback;->requestPermissionSuccess()V

    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/bb_sz/myshell/PermissionUtil;->mCheckPermissionCallback:Lcom/bb_sz/myshell/PermissionUtil$OnCheckPermissionCallback;

    invoke-interface {v0}, Lcom/bb_sz/myshell/PermissionUtil$OnCheckPermissionCallback;->requestPermissionFailed()V

    goto :goto_0

    .line 94
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public requestPermission(Landroid/app/Activity;[Ljava/lang/String;Lcom/bb_sz/myshell/PermissionUtil$OnCheckPermissionCallback;)V
    .locals 8
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "permission"    # [Ljava/lang/String;
    .param p3, "callback"    # Lcom/bb_sz/myshell/PermissionUtil$OnCheckPermissionCallback;

    .prologue
    .line 61
    iput-object p3, p0, Lcom/bb_sz/myshell/PermissionUtil;->mCheckPermissionCallback:Lcom/bb_sz/myshell/PermissionUtil$OnCheckPermissionCallback;

    .line 62
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_4

    .line 63
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v4, "permissionNeedApply":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v7, p2

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_1

    aget-object v2, p2, v6

    .line 65
    .local v2, "item":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    .line 66
    .local v5, "res":I
    if-eqz v5, :cond_0

    .line 67
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 70
    .end local v2    # "item":Ljava/lang/String;
    .end local v5    # "res":I
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 71
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v3, v6, [Ljava/lang/String;

    .line 72
    .local v3, "lastPermission":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 73
    .local v0, "i":I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 74
    .restart local v2    # "item":Ljava/lang/String;
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "i":I
    .local v1, "i":I
    aput-object v2, v3, v0

    move v0, v1

    .line 75
    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_1

    .line 76
    .end local v2    # "item":Ljava/lang/String;
    :cond_2
    const/16 v6, 0x9

    invoke-virtual {p1, v3, v6}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    .line 83
    .end local v0    # "i":I
    .end local v3    # "lastPermission":[Ljava/lang/String;
    .end local v4    # "permissionNeedApply":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_2
    return-void

    .line 78
    .restart local v4    # "permissionNeedApply":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    invoke-interface {p3}, Lcom/bb_sz/myshell/PermissionUtil$OnCheckPermissionCallback;->requestPermissionSuccess()V

    goto :goto_2

    .line 81
    .end local v4    # "permissionNeedApply":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {p3}, Lcom/bb_sz/myshell/PermissionUtil$OnCheckPermissionCallback;->requestPermissionSuccess()V

    goto :goto_2
.end method
