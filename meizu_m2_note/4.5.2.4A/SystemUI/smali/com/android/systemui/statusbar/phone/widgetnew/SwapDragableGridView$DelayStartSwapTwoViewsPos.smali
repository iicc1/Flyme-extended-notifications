.class Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;
.super Ljava/lang/Object;
.source "SwapDragableGridView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DelayStartSwapTwoViewsPos"
.end annotation


# instance fields
.field private mDragView:Landroid/view/View;

.field private mDropView:Landroid/view/View;

.field private mHostView:Landroid/view/ViewGroup;

.field private mSwapAnimationControler:Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;

.field private mSwapDelay:J

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler$ISwapViewsPositionListener;)V
    .locals 2
    .param p2, "hostView"    # Landroid/view/ViewGroup;
    .param p3, "swapViewsPositionListener"    # Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler$ISwapViewsPositionListener;

    .prologue
    .line 573
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 574
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;->mHostView:Landroid/view/ViewGroup;

    .line 575
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;->mSwapDelay:J

    .line 576
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;->mSwapAnimationControler:Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;

    .line 577
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;->mSwapAnimationControler:Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;

    invoke-virtual {v0, p3}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->addListener(Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler$ISwapViewsPositionListener;)V

    .line 578
    return-void
.end method


# virtual methods
.method public isSwapping()Z
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;->mSwapAnimationControler:Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->isSwapping()Z

    move-result v0

    return v0
.end method

.method public removeSwapCallbacks()V
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 612
    return-void
.end method

.method public run()V
    .locals 3

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;->mHostView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;->mDropView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 618
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;->mHostView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;->mDragView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    .line 620
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;->mSwapAnimationControler:Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;->mDragView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;->mDropView:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->safeSwapViewsPosition(Landroid/view/View;Landroid/view/View;)V

    .line 621
    return-void
.end method

.method public safePostDelayed(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .param p1, "dragView"    # Landroid/view/View;
    .param p2, "dropView"    # Landroid/view/View;

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 602
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;->mDragView:Landroid/view/View;

    .line 603
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;->mDropView:Landroid/view/View;

    .line 605
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;->mHostView:Landroid/view/ViewGroup;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;->mSwapDelay:J

    invoke-virtual {v0, p0, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 606
    return-void
.end method

.method public setSwapDelay(J)V
    .locals 3
    .param p1, "delayMillis"    # J

    .prologue
    .line 583
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;->mSwapDelay:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    .line 584
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;->mSwapDelay:J

    .line 586
    :cond_0
    return-void
.end method

.method public setSwapDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 590
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;->mSwapAnimationControler:Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->setDuration(J)V

    .line 591
    return-void
.end method
