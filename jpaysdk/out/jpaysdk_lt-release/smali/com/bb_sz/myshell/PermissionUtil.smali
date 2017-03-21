.class public Lcom/bb_sz/myshell/PermissionUtil;
.super Ljava/lang/Object;


# static fields
.field private static final REQUEST_CODE_CHECK_PERMISSION:I = 0x9


# instance fields
.field private mCheckPermissionCallback:Lcom/bb_sz/myshell/PermissionUtil$OnCheckPermissionCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private test()V
    .locals 0

    return-void
.end method

.method private varargs verifyPermissions([I)Z
    .locals 4

    const/4 v0, 0x0

    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, p1, v1

    if-eqz v3, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/bb_sz/myshell/PermissionUtil;->mCheckPermissionCallback:Lcom/bb_sz/myshell/PermissionUtil$OnCheckPermissionCallback;

    if-eqz v0, :cond_0

    invoke-direct {p0, p3}, Lcom/bb_sz/myshell/PermissionUtil;->verifyPermissions([I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bb_sz/myshell/PermissionUtil;->mCheckPermissionCallback:Lcom/bb_sz/myshell/PermissionUtil$OnCheckPermissionCallback;

    invoke-interface {v0}, Lcom/bb_sz/myshell/PermissionUtil$OnCheckPermissionCallback;->requestPermissionSuccess()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bb_sz/myshell/PermissionUtil;->mCheckPermissionCallback:Lcom/bb_sz/myshell/PermissionUtil$OnCheckPermissionCallback;

    invoke-interface {v0}, Lcom/bb_sz/myshell/PermissionUtil$OnCheckPermissionCallback;->requestPermissionFailed()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public requestPermission(Landroid/app/Activity;[Ljava/lang/String;Lcom/bb_sz/myshell/PermissionUtil$OnCheckPermissionCallback;)V
    .locals 6

    const/4 v0, 0x0

    iput-object p3, p0, Lcom/bb_sz/myshell/PermissionUtil;->mCheckPermissionCallback:Lcom/bb_sz/myshell/PermissionUtil$OnCheckPermissionCallback;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_4

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    array-length v3, p2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, p2, v1

    invoke-virtual {p1, v4}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-int/lit8 v2, v1, 0x1

    aput-object v0, v3, v1

    move v1, v2

    goto :goto_1

    :cond_2
    const/16 v0, 0x9

    invoke-virtual {p1, v3, v0}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    :goto_2
    return-void

    :cond_3
    invoke-interface {p3}, Lcom/bb_sz/myshell/PermissionUtil$OnCheckPermissionCallback;->requestPermissionSuccess()V

    goto :goto_2

    :cond_4
    invoke-interface {p3}, Lcom/bb_sz/myshell/PermissionUtil$OnCheckPermissionCallback;->requestPermissionSuccess()V

    goto :goto_2
.end method
