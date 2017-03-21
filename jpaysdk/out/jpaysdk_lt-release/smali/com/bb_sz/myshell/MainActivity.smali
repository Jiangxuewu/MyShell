.class public Lcom/bb_sz/myshell/MainActivity;
.super Landroid/app/Activity;


# instance fields
.field mPermissionUtil:Lcom/bb_sz/myshell/PermissionUtil;

.field tickView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bb_sz/myshell/MainActivity;->tickView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bb_sz/myshell/MainActivity;->tickView:Landroid/widget/TextView;

    const-string v1, "hello shell."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bb_sz/myshell/MainActivity;->tickView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/bb_sz/myshell/MainActivity;->setContentView(Landroid/view/View;)V

    new-instance v0, Lcom/bb_sz/myshell/PermissionUtil;

    invoke-direct {v0}, Lcom/bb_sz/myshell/PermissionUtil;-><init>()V

    iput-object v0, p0, Lcom/bb_sz/myshell/MainActivity;->mPermissionUtil:Lcom/bb_sz/myshell/PermissionUtil;

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.READ_PHONE_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "android.permission.CALL_PHONE"

    aput-object v2, v0, v1

    iget-object v1, p0, Lcom/bb_sz/myshell/MainActivity;->mPermissionUtil:Lcom/bb_sz/myshell/PermissionUtil;

    new-instance v2, Lcom/bb_sz/myshell/MainActivity$1;

    invoke-direct {v2, p0}, Lcom/bb_sz/myshell/MainActivity$1;-><init>(Lcom/bb_sz/myshell/MainActivity;)V

    invoke-virtual {v1, p0, v0, v2}, Lcom/bb_sz/myshell/PermissionUtil;->requestPermission(Landroid/app/Activity;[Ljava/lang/String;Lcom/bb_sz/myshell/PermissionUtil$OnCheckPermissionCallback;)V

    invoke-static {p0}, Lcom/bb_sz/pay/Main;->onCreate(Landroid/app/Activity;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    invoke-static {p0}, Lcom/bb_sz/pay/Main;->onDestroy(Landroid/app/Activity;)V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    invoke-static {p0}, Lcom/bb_sz/pay/Main;->onPause(Landroid/app/Activity;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    iget-object v0, p0, Lcom/bb_sz/myshell/MainActivity;->mPermissionUtil:Lcom/bb_sz/myshell/PermissionUtil;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bb_sz/myshell/MainActivity;->mPermissionUtil:Lcom/bb_sz/myshell/PermissionUtil;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bb_sz/myshell/PermissionUtil;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    invoke-static {p0}, Lcom/bb_sz/pay/Main;->onResume(Landroid/app/Activity;)V

    return-void
.end method
