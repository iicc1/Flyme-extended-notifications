.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field heightStart:F

.field moveStart:F

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1

    .prologue
    .line 7930
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7931
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->moveStart:F

    .line 7932
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->heightStart:F

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 7937
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 7938
    .local v9, "y":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    .line 7940
    .local v7, "rawY":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 8107
    :cond_0
    :goto_0
    const/4 v10, 0x1

    return v10

    .line 7949
    :pswitch_0
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDividerTracking:Z

    .line 7950
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v10, v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setTouchOffset(F)V

    .line 7955
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandOrCollapseWidgetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v10, :cond_0

    .line 7956
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandOrCollapseWidgetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->cancel()V

    .line 7957
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandOrCollapseWidgetAnimator:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 7967
    :pswitch_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDividerTracking:Z

    if-nez v10, :cond_1

    .line 7968
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v11, 0x1

    iput-boolean v11, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDividerTracking:Z

    .line 7971
    :cond_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWidgetLayoutExtend:Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 7972
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTouchOffset:F
    invoke-static {v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)F

    move-result v10

    sub-float v10, v7, v10

    float-to-int v0, v10

    .line 7974
    .local v0, "delta":I
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWidgetLayoutMaxHeight:I

    if-le v0, v10, :cond_4

    .line 7975
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v0, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWidgetLayoutMaxHeight:I

    .line 7986
    :cond_2
    :goto_1
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUndoChecker:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$UndoChecker;

    int-to-float v11, v0

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$UndoChecker;->onMove(F)V

    .line 7989
    iget v3, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 7990
    .local v3, "height":I
    iget v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->moveStart:F

    const v11, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v10, v10, v11

    if-nez v10, :cond_5

    .line 7992
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandOrCollapseWidgetAnimator:Landroid/animation/ValueAnimator;

    if-eqz v10, :cond_3

    .line 7993
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandOrCollapseWidgetAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->cancel()V

    .line 7994
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v11, 0x0

    iput-object v11, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mExpandOrCollapseWidgetAnimator:Landroid/animation/ValueAnimator;

    .line 7996
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    iput v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->moveStart:F

    .line 7997
    int-to-float v10, v3

    iput v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->heightStart:F

    .line 7998
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWidgetLayoutExtend:Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->getMoveSpeed()Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->clear()V

    goto :goto_0

    .line 7977
    .end local v3    # "height":I
    :cond_4
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWidgetLayoutMinHeight:I

    if-ge v0, v10, :cond_2

    .line 7978
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v0, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWidgetLayoutMinHeight:I

    goto :goto_1

    .line 8000
    .restart local v3    # "height":I
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v10

    iget v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->moveStart:F

    sub-float v6, v10, v11

    .line 8001
    .local v6, "offset":F
    iget v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->heightStart:F

    add-float/2addr v10, v6

    float-to-int v3, v10

    .line 8002
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWidgetLayoutMaxHeight:I

    if-le v3, v10, :cond_7

    .line 8003
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v3, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWidgetLayoutMaxHeight:I

    .line 8004
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Lcom/android/systemui/statusbar/phone/PanelScrollView;

    const/16 v11, 0x21

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/phone/PanelScrollView;->fullScroll(I)Z

    .line 8010
    :cond_6
    :goto_2
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWidgetLayoutExtend:Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;

    int-to-float v11, v3

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->setLayoutHeight(F)V

    goto/16 :goto_0

    .line 8005
    :cond_7
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWidgetLayoutMinHeight:I

    if-ge v3, v10, :cond_6

    .line 8006
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v3, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWidgetLayoutMinHeight:I

    .line 8007
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScrollView:Lcom/android/systemui/statusbar/phone/PanelScrollView;

    const/16 v11, 0x21

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/phone/PanelScrollView;->fullScroll(I)Z

    goto :goto_2

    .line 8018
    .end local v0    # "delta":I
    .end local v3    # "height":I
    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    .end local v6    # "offset":F
    :pswitch_2
    const v10, 0x7f7fffff    # Float.MAX_VALUE

    iput v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->moveStart:F

    .line 8019
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWidgetLayoutExtend:Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->getMoveSpeed()Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->getSpeed()F

    move-result v8

    .line 8039
    .local v8, "velocity":F
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mTracking:Z

    .line 8045
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTracking:Z

    .line 8046
    const-string v10, "PhoneStatusBar"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MotionEvent.ACTION_UP/ACTION_CANCEL - mNotificationPanel.mTracking = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v12, v12, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v12, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mTracking:Z

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8048
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v11, 0x0

    iput-boolean v11, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDividerTracking:Z

    .line 8049
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWidgetNotificationDivider:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getY()F

    move-result v11

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWidgetsFullyExpanded:Z

    if-eqz v10, :cond_8

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDividerMaxPos:I

    :goto_3
    int-to-float v10, v10

    sub-float v10, v11, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 8057
    .local v1, "distance":F
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mUndoChecker:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$UndoChecker;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mTouchOffset:F
    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)F

    move-result v11

    sub-float v11, v7, v11

    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$UndoChecker;->onUp(F)Z

    move-result v4

    .line 8062
    .local v4, "isPreferUndo":Z
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDividerThreshold:I

    int-to-float v10, v10

    cmpl-float v10, v1, v10

    if-lez v10, :cond_9

    const/4 v2, 0x1

    .line 8082
    .local v2, "dividerDragFarEnough":Z
    :goto_4
    if-eqz v4, :cond_b

    .line 8084
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWidgetsFullyExpanded:Z

    if-eqz v10, :cond_a

    .line 8085
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v10, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ExpandWidgets(F)V

    goto/16 :goto_0

    .line 8049
    .end local v1    # "distance":F
    .end local v2    # "dividerDragFarEnough":Z
    .end local v4    # "isPreferUndo":Z
    :cond_8
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDividerMinPos:I

    goto :goto_3

    .line 8062
    .restart local v1    # "distance":F
    .restart local v4    # "isPreferUndo":Z
    :cond_9
    const/4 v2, 0x0

    goto :goto_4

    .line 8087
    .restart local v2    # "dividerDragFarEnough":Z
    :cond_a
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v10, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->CollapseWidgets(F)V

    goto/16 :goto_0

    .line 8091
    :cond_b
    if-eqz v2, :cond_d

    .line 8092
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWidgetsFullyExpanded:Z

    if-eqz v10, :cond_c

    .line 8093
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v10, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->CollapseWidgets(F)V

    goto/16 :goto_0

    .line 8095
    :cond_c
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v10, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ExpandWidgets(F)V

    goto/16 :goto_0

    .line 8098
    :cond_d
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWidgetsFullyExpanded:Z

    if-eqz v10, :cond_e

    .line 8099
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v10, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ExpandWidgets(F)V

    goto/16 :goto_0

    .line 8101
    :cond_e
    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$61;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v10, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->CollapseWidgets(F)V

    goto/16 :goto_0

    .line 7940
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
