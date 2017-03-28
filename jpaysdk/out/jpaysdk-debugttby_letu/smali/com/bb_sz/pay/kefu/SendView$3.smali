.class Lcom/bb_sz/pay/kefu/SendView$3;
.super Ljava/lang/Object;
.source "SendView.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bb_sz/pay/kefu/SendView;->addEdit(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bb_sz/pay/kefu/SendView;


# direct methods
.method constructor <init>(Lcom/bb_sz/pay/kefu/SendView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bb_sz/pay/kefu/SendView;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/bb_sz/pay/kefu/SendView$3;->this$0:Lcom/bb_sz/pay/kefu/SendView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 186
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 164
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 168
    const/4 v1, 0x1

    if-ne p4, v1, :cond_2

    .line 169
    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 v1, 0x7

    if-ne p2, v1, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "cur":Ljava/lang/String;
    iget-object v1, p0, Lcom/bb_sz/pay/kefu/SendView$3;->this$0:Lcom/bb_sz/pay/kefu/SendView;

    # getter for: Lcom/bb_sz/pay/kefu/SendView;->et:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/bb_sz/pay/kefu/SendView;->access$000(Lcom/bb_sz/pay/kefu/SendView;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v1, p0, Lcom/bb_sz/pay/kefu/SendView$3;->this$0:Lcom/bb_sz/pay/kefu/SendView;

    # getter for: Lcom/bb_sz/pay/kefu/SendView;->et:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/bb_sz/pay/kefu/SendView;->access$000(Lcom/bb_sz/pay/kefu/SendView;)Landroid/widget/EditText;

    move-result-object v1

    add-int/lit8 v2, p2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    .line 181
    .end local v0    # "cur":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 174
    :cond_2
    if-nez p4, :cond_1

    if-lez p2, :cond_1

    .line 175
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .restart local v0    # "cur":Ljava/lang/String;
    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 177
    iget-object v1, p0, Lcom/bb_sz/pay/kefu/SendView$3;->this$0:Lcom/bb_sz/pay/kefu/SendView;

    # getter for: Lcom/bb_sz/pay/kefu/SendView;->et:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/bb_sz/pay/kefu/SendView;->access$000(Lcom/bb_sz/pay/kefu/SendView;)Landroid/widget/EditText;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 178
    iget-object v1, p0, Lcom/bb_sz/pay/kefu/SendView$3;->this$0:Lcom/bb_sz/pay/kefu/SendView;

    # getter for: Lcom/bb_sz/pay/kefu/SendView;->et:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/bb_sz/pay/kefu/SendView;->access$000(Lcom/bb_sz/pay/kefu/SendView;)Landroid/widget/EditText;

    move-result-object v1

    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_0
.end method
