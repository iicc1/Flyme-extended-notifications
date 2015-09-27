.class public Lcom/android/systemui/mzrecent/MzDragLayer;
.super Landroid/widget/FrameLayout;
.source "MzDragLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/mzrecent/MzDragLayer$LayoutParams;
    }
.end annotation


# instance fields
.field mDragController:Lcom/android/systemui/mzrecent/DragController;

.field private mRecentSlidingDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x0

    .line 69
    iget-object v1, p0, Lcom/android/systemui/mzrecent/MzDragLayer;->mDragController:Lcom/android/systemui/mzrecent/DragController;

    if-nez v1, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/mzrecent/MzDragLayer;->mDragController:Lcom/android/systemui/mzrecent/DragController;

    invoke-virtual {v1, p1}, Lcom/android/systemui/mzrecent/DragController;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzDragLayer;->mDragController:Lcom/android/systemui/mzrecent/DragController;

    if-nez v0, :cond_0

    .line 99
    const/4 v0, 0x0

    .line 101
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzDragLayer;->mDragController:Lcom/android/systemui/mzrecent/DragController;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/mzrecent/DragController;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 143
    const/4 v7, 0x2

    new-array v1, v7, [I

    .line 144
    .local v1, "loc":[I
    invoke-virtual {p0, v1}, Lcom/android/systemui/mzrecent/MzDragLayer;->getLocationInWindow([I)V

    .line 145
    aget v5, v1, v8

    .line 146
    .local v5, "x":I
    aget v6, v1, v9

    .line 148
    .local v6, "y":I
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 149
    aget v3, v1, v8

    .line 150
    .local v3, "vX":I
    aget v4, v1, v9

    .line 152
    .local v4, "vY":I
    sub-int v0, v3, v5

    .line 153
    .local v0, "left":I
    sub-int v2, v4, v6

    .line 154
    .local v2, "top":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v7, v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v8, v2

    invoke-virtual {p2, v0, v2, v7, v8}, Landroid/graphics/Rect;->set(IIII)V

    .line 156
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 58
    const v1, 0x7f0e0154

    invoke-virtual {p0, v1}, Lcom/android/systemui/mzrecent/MzDragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iput-object v1, p0, Lcom/android/systemui/mzrecent/MzDragLayer;->mRecentSlidingDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    .line 59
    iget-object v1, p0, Lcom/android/systemui/mzrecent/MzDragLayer;->mRecentSlidingDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/android/systemui/mzrecent/MzDragLayer;->mRecentSlidingDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v1, p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setDragLayer(Lcom/android/systemui/mzrecent/MzDragLayer;)V

    .line 61
    const v1, 0x7f0e0153

    invoke-virtual {p0, v1}, Lcom/android/systemui/mzrecent/MzDragLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 62
    .local v0, "blurView":Landroid/view/View;
    iget-object v1, p0, Lcom/android/systemui/mzrecent/MzDragLayer;->mRecentSlidingDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setBlurView(Landroid/view/View;)V

    .line 65
    .end local v0    # "blurView":Landroid/view/View;
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzDragLayer;->mDragController:Lcom/android/systemui/mzrecent/DragController;

    if-nez v0, :cond_0

    .line 79
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzDragLayer;->mRecentSlidingDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->closePanleIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    const/4 v0, 0x1

    goto :goto_0

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzDragLayer;->mDragController:Lcom/android/systemui/mzrecent/DragController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/mzrecent/DragController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 203
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 204
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/MzDragLayer;->getChildCount()I

    move-result v1

    .line 205
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_1

    .line 206
    invoke-virtual {p0, v3}, Lcom/android/systemui/mzrecent/MzDragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 207
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 209
    .local v2, "flp":Landroid/widget/FrameLayout$LayoutParams;
    instance-of v5, v2, Lcom/android/systemui/mzrecent/MzDragLayer$LayoutParams;

    if-eqz v5, :cond_0

    move-object v4, v2

    .line 210
    check-cast v4, Lcom/android/systemui/mzrecent/MzDragLayer$LayoutParams;

    .line 211
    .local v4, "lp":Lcom/android/systemui/mzrecent/MzDragLayer$LayoutParams;
    iget-boolean v5, v4, Lcom/android/systemui/mzrecent/MzDragLayer$LayoutParams;->customPosition:Z

    if-eqz v5, :cond_0

    .line 212
    iget v5, v4, Lcom/android/systemui/mzrecent/MzDragLayer$LayoutParams;->x:I

    iget v6, v4, Lcom/android/systemui/mzrecent/MzDragLayer$LayoutParams;->y:I

    iget v7, v4, Lcom/android/systemui/mzrecent/MzDragLayer$LayoutParams;->x:I

    iget v8, v4, Lcom/android/systemui/mzrecent/MzDragLayer$LayoutParams;->width:I

    add-int/2addr v7, v8

    iget v8, v4, Lcom/android/systemui/mzrecent/MzDragLayer$LayoutParams;->y:I

    iget v9, v4, Lcom/android/systemui/mzrecent/MzDragLayer$LayoutParams;->height:I

    add-int/2addr v8, v9

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 205
    .end local v4    # "lp":Lcom/android/systemui/mzrecent/MzDragLayer$LayoutParams;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "flp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzDragLayer;->mDragController:Lcom/android/systemui/mzrecent/DragController;

    if-nez v0, :cond_0

    .line 91
    const/4 v0, 0x1

    .line 93
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzDragLayer;->mDragController:Lcom/android/systemui/mzrecent/DragController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/mzrecent/DragController;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setDragController(Lcom/android/systemui/mzrecent/DragController;)V
    .locals 0
    .param p1, "controller"    # Lcom/android/systemui/mzrecent/DragController;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/systemui/mzrecent/MzDragLayer;->mDragController:Lcom/android/systemui/mzrecent/DragController;

    .line 48
    return-void
.end method
