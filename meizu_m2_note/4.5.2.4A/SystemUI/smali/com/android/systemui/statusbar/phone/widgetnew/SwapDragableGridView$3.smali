.class Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;
.super Ljava/lang/Object;
.source "SwapDragableGridView.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 6
    .param p1, "dropView"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/DragEvent;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 463
    const/4 v1, 0x0

    .line 464
    .local v1, "result":Z
    invoke-virtual {p2}, Landroid/view/DragEvent;->getLocalState()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 466
    .local v0, "dragView":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 545
    if-ne v0, p1, :cond_0

    .line 547
    const-string v2, "SwapDragableGridView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_DRAG_CANCEL    drag_name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", drag_pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    drop_name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  drop_pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    .line 555
    :cond_0
    :goto_0
    return v1

    .line 468
    :pswitch_0
    if-ne v0, p1, :cond_1

    .line 470
    const-string v2, "SwapDragableGridView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_DRAG_STARTED    drag_name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", drag_pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    drop_name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  drop_pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 479
    :cond_1
    const/4 v1, 0x1

    .line 480
    goto :goto_0

    .line 485
    :pswitch_1
    if-eq v0, p1, :cond_2

    .line 487
    const-string v2, "SwapDragableGridView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_DRAG_ENTERED    drag_name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", drag_pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    drop_name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", drop_pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mDelayStartSwapTwoViewsPos:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->access$000(Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;)Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;->safePostDelayed(Landroid/view/View;Landroid/view/View;)V

    goto/16 :goto_0

    .line 494
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mDelayStartSwapTwoViewsPos:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->access$000(Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;)Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;->removeSwapCallbacks()V

    goto/16 :goto_0

    .line 500
    :pswitch_2
    if-eq v0, p1, :cond_0

    .line 502
    const-string v2, "SwapDragableGridView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_DRAG_EXITED    drag_name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", drag_pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    drop_name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  drop_pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mDelayStartSwapTwoViewsPos:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->access$000(Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;)Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;->removeSwapCallbacks()V

    goto/16 :goto_0

    .line 515
    :pswitch_3
    if-eq v0, p1, :cond_0

    goto/16 :goto_0

    .line 523
    :pswitch_4
    if-eq v0, p1, :cond_0

    .line 525
    const-string v2, "SwapDragableGridView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_DROP    drag_name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", drag_pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    drop_name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  drop_pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 535
    :pswitch_5
    if-ne v0, p1, :cond_0

    .line 537
    const-string v2, "SwapDragableGridView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_DRAG_ENDED    drag_name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", drag_pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-virtual {v4, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    drop_name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  drop_pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {v0, v5}, Landroid/view/View;->setAlpha(F)V

    goto/16 :goto_0

    .line 466
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
