.class Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;
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
    name = "CheckForLongPress"
.end annotation


# instance fields
.field public mHasPerformedLongPress:Z

.field private mHostView:Landroid/view/ViewGroup;

.field private mListener:Lcom/android/systemui/statusbar/phone/widgetnew/IOnPerformChildViewLongClick;

.field private mLongPressChildView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/widgetnew/IOnPerformChildViewLongClick;)V
    .locals 0
    .param p2, "hostView"    # Landroid/view/ViewGroup;
    .param p3, "listener"    # Lcom/android/systemui/statusbar/phone/widgetnew/IOnPerformChildViewLongClick;

    .prologue
    .line 662
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 663
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;->mHostView:Landroid/view/ViewGroup;

    .line 664
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;->mListener:Lcom/android/systemui/statusbar/phone/widgetnew/IOnPerformChildViewLongClick;

    .line 665
    return-void
.end method


# virtual methods
.method public getLongPressChildView()Landroid/view/View;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;->mLongPressChildView:Landroid/view/View;

    return-object v0
.end method

.method public isHasPerformedLongPress()Z
    .locals 1

    .prologue
    .line 690
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;->mHasPerformedLongPress:Z

    return v0
.end method

.method public removeLongPressCallback()V
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 687
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;->mListener:Lcom/android/systemui/statusbar/phone/widgetnew/IOnPerformChildViewLongClick;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;->mLongPressChildView:Landroid/view/View;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/IOnPerformChildViewLongClick;->onPerformChildViewLongClick(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 697
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;->mHasPerformedLongPress:Z

    .line 700
    :cond_0
    return-void
.end method

.method public safeCheckForLongClick(Landroid/view/View;)V
    .locals 4
    .param p1, "longPressChildView"    # Landroid/view/View;

    .prologue
    .line 668
    if-nez p1, :cond_0

    .line 669
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "\u53c2\u6570longPressChildView ==  null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;->mHostView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 675
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;->mLongPressChildView:Landroid/view/View;

    .line 676
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;->mHasPerformedLongPress:Z

    .line 677
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;->mHostView:Landroid/view/ViewGroup;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, p0, v2, v3}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 683
    return-void
.end method
