.class Lcom/bb_sz/myshell/MainActivity$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/bb_sz/myshell/PermissionUtil$OnCheckPermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bb_sz/myshell/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bb_sz/myshell/MainActivity;


# direct methods
.method constructor <init>(Lcom/bb_sz/myshell/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bb_sz/myshell/MainActivity;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/bb_sz/myshell/MainActivity$1;->this$0:Lcom/bb_sz/myshell/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public requestPermissionFailed()V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public requestPermissionSuccess()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method
