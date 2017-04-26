.class Lcom/bb_sz/pay/kefu/CusService$2;
.super Ljava/lang/Object;
.source "CusService.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bb_sz/pay/kefu/CusService;->createView(Landroid/app/Activity;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bb_sz/pay/kefu/CusService;


# direct methods
.method constructor <init>(Lcom/bb_sz/pay/kefu/CusService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bb_sz/pay/kefu/CusService;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/bb_sz/pay/kefu/CusService$2;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 145
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 146
    .local v0, "x":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    .line 147
    .local v1, "y":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 171
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 149
    :pswitch_0
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/CusService$2;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    const/4 v3, 0x0

    # setter for: Lcom/bb_sz/pay/kefu/CusService;->isMoved:Z
    invoke-static {v2, v3}, Lcom/bb_sz/pay/kefu/CusService;->access$302(Lcom/bb_sz/pay/kefu/CusService;Z)Z

    .line 150
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/CusService$2;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    # setter for: Lcom/bb_sz/pay/kefu/CusService;->mTouchStartX:F
    invoke-static {v2, v3}, Lcom/bb_sz/pay/kefu/CusService;->access$402(Lcom/bb_sz/pay/kefu/CusService;F)F

    .line 151
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/CusService$2;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    # setter for: Lcom/bb_sz/pay/kefu/CusService;->mTouchStartY:F
    invoke-static {v2, v3}, Lcom/bb_sz/pay/kefu/CusService;->access$502(Lcom/bb_sz/pay/kefu/CusService;F)F

    .line 152
    sget v2, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v2, :cond_0

    .line 153
    const-string v2, "SkyCusService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "x0:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bb_sz/pay/kefu/CusService$2;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    # getter for: Lcom/bb_sz/pay/kefu/CusService;->mTouchStartX:F
    invoke-static {v4}, Lcom/bb_sz/pay/kefu/CusService;->access$400(Lcom/bb_sz/pay/kefu/CusService;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", y0:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/bb_sz/pay/kefu/CusService$2;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    # getter for: Lcom/bb_sz/pay/kefu/CusService;->mTouchStartY:F
    invoke-static {v4}, Lcom/bb_sz/pay/kefu/CusService;->access$500(Lcom/bb_sz/pay/kefu/CusService;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/CusService$2;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    # setter for: Lcom/bb_sz/pay/kefu/CusService;->st:J
    invoke-static {v2, v4, v5}, Lcom/bb_sz/pay/kefu/CusService;->access$602(Lcom/bb_sz/pay/kefu/CusService;J)J

    goto :goto_0

    .line 157
    :pswitch_1
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/CusService$2;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    # invokes: Lcom/bb_sz/pay/kefu/CusService;->updateViewPosition(FF)V
    invoke-static {v2, v0, v1}, Lcom/bb_sz/pay/kefu/CusService;->access$700(Lcom/bb_sz/pay/kefu/CusService;FF)V

    .line 158
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/CusService$2;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    # setter for: Lcom/bb_sz/pay/kefu/CusService;->mTouchStartX:F
    invoke-static {v2, v3}, Lcom/bb_sz/pay/kefu/CusService;->access$402(Lcom/bb_sz/pay/kefu/CusService;F)F

    .line 159
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/CusService$2;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    # setter for: Lcom/bb_sz/pay/kefu/CusService;->mTouchStartY:F
    invoke-static {v2, v3}, Lcom/bb_sz/pay/kefu/CusService;->access$502(Lcom/bb_sz/pay/kefu/CusService;F)F

    goto :goto_0

    .line 162
    :pswitch_2
    sget v2, Lcom/bb_sz/ndk/App;->debug:I

    if-lez v2, :cond_1

    const-string v2, "SkyCusService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "time:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v6, p0, Lcom/bb_sz/pay/kefu/CusService$2;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    # getter for: Lcom/bb_sz/pay/kefu/CusService;->st:J
    invoke-static {v6}, Lcom/bb_sz/pay/kefu/CusService;->access$600(Lcom/bb_sz/pay/kefu/CusService;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/bb_sz/pay/kefu/CusService$2;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    # getter for: Lcom/bb_sz/pay/kefu/CusService;->st:J
    invoke-static {v4}, Lcom/bb_sz/pay/kefu/CusService;->access$600(Lcom/bb_sz/pay/kefu/CusService;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    iget-object v2, p0, Lcom/bb_sz/pay/kefu/CusService$2;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    # getter for: Lcom/bb_sz/pay/kefu/CusService;->isMoved:Z
    invoke-static {v2}, Lcom/bb_sz/pay/kefu/CusService;->access$300(Lcom/bb_sz/pay/kefu/CusService;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 164
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/CusService$2;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    # invokes: Lcom/bb_sz/pay/kefu/CusService;->click()V
    invoke-static {v2}, Lcom/bb_sz/pay/kefu/CusService;->access$800(Lcom/bb_sz/pay/kefu/CusService;)V

    goto/16 :goto_0

    .line 166
    :cond_2
    iget-object v2, p0, Lcom/bb_sz/pay/kefu/CusService$2;->this$0:Lcom/bb_sz/pay/kefu/CusService;

    # invokes: Lcom/bb_sz/pay/kefu/CusService;->updateViewPosition(FF)V
    invoke-static {v2, v0, v1}, Lcom/bb_sz/pay/kefu/CusService;->access$700(Lcom/bb_sz/pay/kefu/CusService;FF)V

    goto/16 :goto_0

    .line 147
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
