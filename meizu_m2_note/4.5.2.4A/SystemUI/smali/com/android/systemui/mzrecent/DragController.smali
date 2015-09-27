.class public Lcom/android/systemui/mzrecent/DragController;
.super Ljava/lang/Object;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/mzrecent/DragController$DragListener;
    }
.end annotation


# static fields
.field public static DRAG_ACTION_COPY:I

.field public static DRAG_ACTION_MOVE:I


# instance fields
.field private currentPosition:[I

.field private mAnchorView:Landroid/view/View;

.field private mAnchorViewInitialScrollX:I

.field private mContext:Landroid/content/Context;

.field private final mCoordinatesTemp:[I

.field private mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDistanceSinceScroll:I

.field private mDragLayerRect:Landroid/graphics/Rect;

.field private mDragObject:Lcom/android/systemui/mzrecent/DropTarget$DragObject;

.field private mDragging:Z

.field private mDropAnim:Landroid/animation/ValueAnimator;

.field private mDropTargets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/mzrecent/DropTarget;",
            ">;"
        }
    .end annotation
.end field

.field private mDropView:Lcom/android/systemui/mzrecent/DragView;

.field private mFadeOutAnim:Landroid/animation/ValueAnimator;

.field private mLastDropTarget:Lcom/android/systemui/mzrecent/DropTarget;

.field private mLastTouch:[I

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/mzrecent/DragController$DragListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionDownX:I

.field private mMotionDownY:I

.field private mMoveTarget:Landroid/view/View;

.field private mOriginator:Landroid/view/View;

.field mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mScrollState:I

.field private mScrollZone:I

.field private mTmpPoint:[I

.field private final mTrashPaint:Landroid/graphics/Paint;

.field private mTrashPaintSet:Z

.field private final mVibrator:Landroid/os/Vibrator;

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/mzrecent/DragController;->DRAG_ACTION_MOVE:I

    .line 63
    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/mzrecent/DragController;->DRAG_ACTION_COPY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    const/4 v4, 0x0

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/mzrecent/DragController;->mRectTemp:Landroid/graphics/Rect;

    .line 83
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/systemui/mzrecent/DragController;->mCoordinatesTemp:[I

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/mzrecent/DragController;->mDropTargets:Ljava/util/ArrayList;

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/mzrecent/DragController;->mListeners:Ljava/util/ArrayList;

    .line 125
    iput v4, p0, Lcom/android/systemui/mzrecent/DragController;->mScrollState:I

    .line 131
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/systemui/mzrecent/DragController;->mLastTouch:[I

    .line 132
    iput v4, p0, Lcom/android/systemui/mzrecent/DragController;->mDistanceSinceScroll:I

    .line 134
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/systemui/mzrecent/DragController;->mTmpPoint:[I

    .line 135
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/mzrecent/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    .line 138
    new-array v1, v2, [I

    iput-object v1, p0, Lcom/android/systemui/mzrecent/DragController;->currentPosition:[I

    .line 144
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/mzrecent/DragController;->mTrashPaint:Landroid/graphics/Paint;

    .line 145
    iput-boolean v4, p0, Lcom/android/systemui/mzrecent/DragController;->mTrashPaintSet:Z

    .line 149
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/mzrecent/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 761
    iput-object v3, p0, Lcom/android/systemui/mzrecent/DragController;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 762
    iput-object v3, p0, Lcom/android/systemui/mzrecent/DragController;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    .line 763
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v1, p0, Lcom/android/systemui/mzrecent/DragController;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 765
    iput-object v3, p0, Lcom/android/systemui/mzrecent/DragController;->mDropView:Lcom/android/systemui/mzrecent/DragView;

    .line 766
    iput v4, p0, Lcom/android/systemui/mzrecent/DragController;->mAnchorViewInitialScrollX:I

    .line 767
    iput-object v3, p0, Lcom/android/systemui/mzrecent/DragController;->mAnchorView:Landroid/view/View;

    .line 184
    iput-object p1, p0, Lcom/android/systemui/mzrecent/DragController;->mContext:Landroid/content/Context;

    .line 186
    const/4 v0, 0x0

    .line 190
    .local v0, "srcColor":I
    iget-object v1, p0, Lcom/android/systemui/mzrecent/DragController;->mTrashPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v4, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 194
    const/16 v1, 0x19

    iput v1, p0, Lcom/android/systemui/mzrecent/DragController;->mScrollZone:I

    .line 195
    const-string v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/systemui/mzrecent/DragController;->mVibrator:Landroid/os/Vibrator;

    .line 197
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/mzrecent/DragController;)Lcom/android/systemui/mzrecent/DragView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/mzrecent/DragController;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mDropView:Lcom/android/systemui/mzrecent/DragView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/mzrecent/DragController;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/mzrecent/DragController;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mAnchorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/mzrecent/DragController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/mzrecent/DragController;

    .prologue
    .line 53
    iget v0, p0, Lcom/android/systemui/mzrecent/DragController;->mAnchorViewInitialScrollX:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/mzrecent/DragController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/mzrecent/DragController;

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/android/systemui/mzrecent/DragController;->clearAnimatedView()V

    return-void
.end method

.method private static clamp(III)I
    .locals 0
    .param p0, "val"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 590
    if-ge p0, p1, :cond_0

    .line 595
    .end local p1    # "min":I
    :goto_0
    return p1

    .line 592
    .restart local p1    # "min":I
    :cond_0
    if-lt p0, p2, :cond_1

    .line 593
    add-int/lit8 p1, p2, -0x1

    goto :goto_0

    :cond_1
    move p1, p0

    .line 595
    goto :goto_0
.end method

.method private clearAnimatedView()V
    .locals 1

    .prologue
    .line 947
    invoke-direct {p0}, Lcom/android/systemui/mzrecent/DragController;->endDrag2()V

    .line 949
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    if-eqz v0, :cond_0

    .line 950
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->forceStopPackage()V

    .line 952
    :cond_0
    return-void
.end method

.method private endDrag()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 493
    iget-boolean v2, p0, Lcom/android/systemui/mzrecent/DragController;->mDragging:Z

    if-eqz v2, :cond_2

    .line 494
    iput-boolean v4, p0, Lcom/android/systemui/mzrecent/DragController;->mDragging:Z

    .line 495
    iget-object v2, p0, Lcom/android/systemui/mzrecent/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/mzrecent/DragController$DragListener;

    .line 496
    .local v1, "listener":Lcom/android/systemui/mzrecent/DragController$DragListener;
    invoke-interface {v1}, Lcom/android/systemui/mzrecent/DragController$DragListener;->onDragEnd()V

    goto :goto_0

    .line 498
    .end local v1    # "listener":Lcom/android/systemui/mzrecent/DragController$DragListener;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/mzrecent/DragController;->mOriginator:Landroid/view/View;

    if-eqz v2, :cond_1

    .line 499
    iget-object v2, p0, Lcom/android/systemui/mzrecent/DragController;->mOriginator:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 500
    iget-object v2, p0, Lcom/android/systemui/mzrecent/DragController;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    if-eqz v2, :cond_1

    .line 501
    iget-object v2, p0, Lcom/android/systemui/mzrecent/DragController;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v3, p0, Lcom/android/systemui/mzrecent/DragController;->mOriginator:Landroid/view/View;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setTextVisiable(Landroid/view/View;I)V

    .line 504
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/mzrecent/DragController;->mDragObject:Lcom/android/systemui/mzrecent/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/systemui/mzrecent/DropTarget$DragObject;->dragView:Lcom/android/systemui/mzrecent/DragView;

    if-eqz v2, :cond_2

    .line 505
    iget-object v2, p0, Lcom/android/systemui/mzrecent/DragController;->mDragObject:Lcom/android/systemui/mzrecent/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/systemui/mzrecent/DropTarget$DragObject;->dragView:Lcom/android/systemui/mzrecent/DragView;

    invoke-virtual {v2}, Lcom/android/systemui/mzrecent/DragView;->remove()V

    .line 506
    iget-object v2, p0, Lcom/android/systemui/mzrecent/DragController;->mDragObject:Lcom/android/systemui/mzrecent/DropTarget$DragObject;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/systemui/mzrecent/DropTarget$DragObject;->dragView:Lcom/android/systemui/mzrecent/DragView;

    .line 510
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private endDrag2()V
    .locals 4

    .prologue
    .line 748
    iget-boolean v2, p0, Lcom/android/systemui/mzrecent/DragController;->mDragging:Z

    if-eqz v2, :cond_1

    .line 749
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/mzrecent/DragController;->mDragging:Z

    .line 750
    iget-object v2, p0, Lcom/android/systemui/mzrecent/DragController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/mzrecent/DragController$DragListener;

    .line 751
    .local v1, "listener":Lcom/android/systemui/mzrecent/DragController$DragListener;
    invoke-interface {v1}, Lcom/android/systemui/mzrecent/DragController$DragListener;->onDragEnd()V

    goto :goto_0

    .line 753
    .end local v1    # "listener":Lcom/android/systemui/mzrecent/DragController$DragListener;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/mzrecent/DragController;->mDragObject:Lcom/android/systemui/mzrecent/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/systemui/mzrecent/DropTarget$DragObject;->dragView:Lcom/android/systemui/mzrecent/DragView;

    if-eqz v2, :cond_1

    .line 754
    iget-object v2, p0, Lcom/android/systemui/mzrecent/DragController;->mDragObject:Lcom/android/systemui/mzrecent/DropTarget$DragObject;

    iget-object v2, v2, Lcom/android/systemui/mzrecent/DropTarget$DragObject;->dragView:Lcom/android/systemui/mzrecent/DragView;

    invoke-virtual {v2}, Lcom/android/systemui/mzrecent/DragView;->remove()V

    .line 755
    iget-object v2, p0, Lcom/android/systemui/mzrecent/DragController;->mDragObject:Lcom/android/systemui/mzrecent/DropTarget$DragObject;

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/android/systemui/mzrecent/DropTarget$DragObject;->dragView:Lcom/android/systemui/mzrecent/DragView;

    .line 758
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method private getClampedDragLayerPos(FF)[I
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mTmpPoint:[I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/mzrecent/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/mzrecent/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {p1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 519
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mTmpPoint:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/mzrecent/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/mzrecent/DragController;->mDragLayerRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    aput v2, v0, v1

    .line 521
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mTmpPoint:[I

    return-object v0
.end method

.method private handleMoveEvent(II)V
    .locals 1
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 613
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mDragObject:Lcom/android/systemui/mzrecent/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/systemui/mzrecent/DropTarget$DragObject;->dragView:Lcom/android/systemui/mzrecent/DragView;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/mzrecent/DragView;->move(II)V

    .line 614
    return-void
.end method

.method private recordScreenSize()V
    .locals 2

    .prologue
    .line 582
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/mzrecent/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 584
    return-void
.end method


# virtual methods
.method public animateView(Lcom/android/systemui/mzrecent/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 4
    .param p1, "view"    # Lcom/android/systemui/mzrecent/DragView;
    .param p2, "updateCb"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p5, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p6, "animationEndStyle"    # I
    .param p7, "anchorView"    # Landroid/view/View;

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 907
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mFadeOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 910
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/mzrecent/DragController;->mDropView:Lcom/android/systemui/mzrecent/DragView;

    .line 911
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mDropView:Lcom/android/systemui/mzrecent/DragView;

    invoke-virtual {v0}, Lcom/android/systemui/mzrecent/DragView;->cancelAnimation()V

    .line 912
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mDropView:Lcom/android/systemui/mzrecent/DragView;

    invoke-virtual {v0}, Lcom/android/systemui/mzrecent/DragView;->resetLayoutParams()V

    .line 915
    if-eqz p7, :cond_2

    .line 916
    invoke-virtual {p7}, Landroid/view/View;->getScrollX()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/mzrecent/DragController;->mAnchorViewInitialScrollX:I

    .line 918
    :cond_2
    iput-object p7, p0, Lcom/android/systemui/mzrecent/DragController;->mAnchorView:Landroid/view/View;

    .line 921
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 922
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 923
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mDropAnim:Landroid/animation/ValueAnimator;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 924
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mDropAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 925
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 926
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mDropAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/mzrecent/DragController$2;

    invoke-direct {v1, p0, p5, p6}, Lcom/android/systemui/mzrecent/DragController$2;-><init>(Lcom/android/systemui/mzrecent/DragController;Ljava/lang/Runnable;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 943
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 944
    return-void

    .line 924
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public animateView(Lcom/android/systemui/mzrecent/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
    .locals 24
    .param p1, "view"    # Lcom/android/systemui/mzrecent/DragView;
    .param p2, "from"    # Landroid/graphics/Rect;
    .param p3, "to"    # Landroid/graphics/Rect;
    .param p4, "finalAlpha"    # F
    .param p5, "initScaleX"    # F
    .param p6, "initScaleY"    # F
    .param p7, "finalScaleX"    # F
    .param p8, "finalScaleY"    # F
    .param p9, "duration"    # I
    .param p10, "motionInterpolator"    # Landroid/view/animation/Interpolator;
    .param p11, "alphaInterpolator"    # Landroid/view/animation/Interpolator;
    .param p12, "onCompleteRunnable"    # Ljava/lang/Runnable;
    .param p13, "animationEndStyle"    # I
    .param p14, "anchorView"    # Landroid/view/View;

    .prologue
    .line 822
    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-double v4, v3

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    move-object/from16 v0, p3

    iget v3, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v6

    int-to-double v6, v3

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    move/from16 v22, v0

    .line 825
    .local v22, "dist":F
    const/high16 v23, 0x44480000    # 800.0f

    .line 845
    .local v23, "maxDist":F
    const/16 v18, 0x0

    .line 846
    .local v18, "interpolator":Landroid/animation/TimeInterpolator;
    if-eqz p11, :cond_0

    if-nez p10, :cond_1

    .line 847
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/DragController;->mCubicEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    move-object/from16 v18, v0

    .line 851
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/mzrecent/DragView;->getAlpha()F

    move-result v13

    .line 852
    .local v13, "initAlpha":F
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/mzrecent/DragView;->getScaleX()F

    move-result v8

    .line 853
    .local v8, "dropViewScale":F
    new-instance v2, Lcom/android/systemui/mzrecent/DragController$1;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p11

    move-object/from16 v6, p10

    move/from16 v7, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p4

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v2 .. v15}, Lcom/android/systemui/mzrecent/DragController$1;-><init>(Lcom/android/systemui/mzrecent/DragController;Lcom/android/systemui/mzrecent/DragView;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FFFFFFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .local v2, "updateCb":Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v16, v2

    move/from16 v17, p9

    move-object/from16 v19, p12

    move/from16 v20, p13

    move-object/from16 v21, p14

    .line 895
    invoke-virtual/range {v14 .. v21}, Lcom/android/systemui/mzrecent/DragController;->animateView(Lcom/android/systemui/mzrecent/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    .line 897
    return-void
.end method

.method public cancelDrag()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 481
    iget-boolean v0, p0, Lcom/android/systemui/mzrecent/DragController;->mDragging:Z

    if-eqz v0, :cond_1

    .line 482
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mLastDropTarget:Lcom/android/systemui/mzrecent/DropTarget;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mLastDropTarget:Lcom/android/systemui/mzrecent/DropTarget;

    iget-object v1, p0, Lcom/android/systemui/mzrecent/DragController;->mDragObject:Lcom/android/systemui/mzrecent/DropTarget$DragObject;

    invoke-interface {v0, v1}, Lcom/android/systemui/mzrecent/DropTarget;->onDragExit(Lcom/android/systemui/mzrecent/DropTarget$DragObject;)V

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mDragObject:Lcom/android/systemui/mzrecent/DropTarget$DragObject;

    iput-boolean v2, v0, Lcom/android/systemui/mzrecent/DropTarget$DragObject;->cancelled:Z

    .line 486
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mDragObject:Lcom/android/systemui/mzrecent/DropTarget$DragObject;

    iput-boolean v2, v0, Lcom/android/systemui/mzrecent/DropTarget$DragObject;->dragComplete:Z

    .line 489
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/mzrecent/DragController;->endDrag()V

    .line 490
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 467
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    if-eqz v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 470
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/mzrecent/DragController;->mDragging:Z

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mMoveTarget:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mMoveTarget:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getDragView()Lcom/android/systemui/mzrecent/DragView;
    .locals 1

    .prologue
    .line 738
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController;->mDragObject:Lcom/android/systemui/mzrecent/DropTarget$DragObject;

    iget-object v0, v0, Lcom/android/systemui/mzrecent/DropTarget$DragObject;->dragView:Lcom/android/systemui/mzrecent/DragView;

    return-object v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    .line 533
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 535
    .local v0, "action":I
    if-nez v0, :cond_0

    .line 536
    invoke-direct {p0}, Lcom/android/systemui/mzrecent/DragController;->recordScreenSize()V

    .line 539
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/android/systemui/mzrecent/DragController;->getClampedDragLayerPos(FF)[I

    move-result-object v1

    .line 540
    .local v1, "dragLayerPos":[I
    aget v2, v1, v7

    .line 541
    .local v2, "dragLayerX":I
    const/4 v5, 0x1

    aget v3, v1, v5

    .line 543
    .local v3, "dragLayerY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Lcom/android/systemui/mzrecent/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v5, v7, v6}, Lcom/android/systemui/mzrecent/DragController;->clamp(III)I

    move-result v4

    .line 546
    .local v4, "screenY":I
    packed-switch v0, :pswitch_data_0

    .line 574
    :cond_1
    :goto_0
    :pswitch_0
    iget-boolean v5, p0, Lcom/android/systemui/mzrecent/DragController;->mDragging:Z

    return v5

    .line 552
    :pswitch_1
    iput v2, p0, Lcom/android/systemui/mzrecent/DragController;->mMotionDownX:I

    .line 553
    iput v3, p0, Lcom/android/systemui/mzrecent/DragController;->mMotionDownY:I

    .line 554
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/systemui/mzrecent/DragController;->mLastDropTarget:Lcom/android/systemui/mzrecent/DropTarget;

    goto :goto_0

    .line 558
    :pswitch_2
    iget-boolean v5, p0, Lcom/android/systemui/mzrecent/DragController;->mDragging:Z

    if-eqz v5, :cond_2

    .line 561
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/mzrecent/DragController;->endDrag()V

    .line 562
    iget-object v5, p0, Lcom/android/systemui/mzrecent/DragController;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    if-eqz v5, :cond_1

    .line 563
    iget-object v5, p0, Lcom/android/systemui/mzrecent/DragController;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v5, v7}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setColorFilter(Z)V

    goto :goto_0

    .line 567
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/DragController;->cancelDrag()V

    .line 568
    iget-object v5, p0, Lcom/android/systemui/mzrecent/DragController;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    if-eqz v5, :cond_1

    .line 569
    iget-object v5, p0, Lcom/android/systemui/mzrecent/DragController;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v5, v7}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setColorFilter(Z)V

    goto :goto_0

    .line 546
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 27
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 620
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/mzrecent/DragController;->mDragging:Z

    if-nez v3, :cond_0

    .line 621
    const/4 v3, 0x0

    .line 684
    :goto_0
    return v3

    .line 624
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v18

    .line 625
    .local v18, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v4}, Lcom/android/systemui/mzrecent/DragController;->getClampedDragLayerPos(FF)[I

    move-result-object v19

    .line 626
    .local v19, "dragLayerPos":[I
    const/4 v3, 0x0

    aget v20, v19, v3

    .line 627
    .local v20, "dragLayerX":I
    const/4 v3, 0x1

    aget v21, v19, v3

    .line 628
    .local v21, "dragLayerY":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/mzrecent/DragController;->currentPosition:[I

    const/4 v4, 0x0

    aput v20, v3, v4

    .line 629
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/mzrecent/DragController;->currentPosition:[I

    const/4 v4, 0x1

    aput v21, v3, v4

    .line 631
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/mzrecent/DragController;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4, v6}, Lcom/android/systemui/mzrecent/DragController;->clamp(III)I

    move-result v22

    .line 634
    .local v22, "screenY":I
    packed-switch v18, :pswitch_data_0

    .line 684
    :cond_1
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 638
    :pswitch_0
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/mzrecent/DragController;->mMotionDownX:I

    .line 639
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/mzrecent/DragController;->mMotionDownY:I

    goto :goto_1

    .line 643
    :pswitch_1
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/mzrecent/DragController;->handleMoveEvent(II)V

    .line 644
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    move/from16 v24, v0

    .line 645
    .local v24, "xxx":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v0, v3

    move/from16 v26, v0

    .line 646
    .local v26, "yyy":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/mzrecent/DragController;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    if-eqz v3, :cond_1

    .line 647
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/mzrecent/DragController;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v3}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getRectTop()I

    move-result v3

    move/from16 v0, v26

    if-lt v3, v0, :cond_2

    .line 648
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/mzrecent/DragController;->mDragObject:Lcom/android/systemui/mzrecent/DropTarget$DragObject;

    iget-object v3, v3, Lcom/android/systemui/mzrecent/DropTarget$DragObject;->dragView:Lcom/android/systemui/mzrecent/DragView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/mzrecent/DragController;->mTrashPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v4}, Lcom/android/systemui/mzrecent/DragView;->setPaint(Landroid/graphics/Paint;)V

    .line 649
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/mzrecent/DragController;->mTrashPaintSet:Z

    goto :goto_1

    .line 651
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/mzrecent/DragController;->mTrashPaintSet:Z

    if-eqz v3, :cond_1

    .line 652
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/mzrecent/DragController;->mDragObject:Lcom/android/systemui/mzrecent/DropTarget$DragObject;

    iget-object v3, v3, Lcom/android/systemui/mzrecent/DropTarget$DragObject;->dragView:Lcom/android/systemui/mzrecent/DragView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/systemui/mzrecent/DragView;->setPaint(Landroid/graphics/Paint;)V

    .line 653
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/systemui/mzrecent/DragController;->mTrashPaintSet:Z

    goto :goto_1

    .line 660
    .end local v24    # "xxx":I
    .end local v26    # "yyy":I
    :pswitch_2
    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/mzrecent/DragController;->handleMoveEvent(II)V

    .line 662
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v0, v3

    move/from16 v23, v0

    .line 663
    .local v23, "xx":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v0, v3

    move/from16 v25, v0

    .line 664
    .local v25, "yy":I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/mzrecent/DragController;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    if-eqz v3, :cond_1

    .line 665
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/mzrecent/DragController;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v3}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getRectTop()I

    move-result v3

    move/from16 v0, v25

    if-lt v3, v0, :cond_3

    .line 667
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 668
    .local v5, "from":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/mzrecent/DragController;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v3}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getDragLayer()Lcom/android/systemui/mzrecent/MzDragLayer;

    move-result-object v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/DragController;->getDragView()Lcom/android/systemui/mzrecent/DragView;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/mzrecent/MzDragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 670
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/DragController;->getDragView()Lcom/android/systemui/mzrecent/DragView;

    move-result-object v4

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x190

    new-instance v13, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v13, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v14, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v14, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v3, p0

    move-object v6, v5

    invoke-virtual/range {v3 .. v17}, Lcom/android/systemui/mzrecent/DragController;->animateView(Lcom/android/systemui/mzrecent/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    goto/16 :goto_1

    .line 675
    .end local v5    # "from":Landroid/graphics/Rect;
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/mzrecent/DragController;->endDrag()V

    goto/16 :goto_1

    .line 680
    .end local v23    # "xx":I
    .end local v25    # "yy":I
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/mzrecent/DragController;->cancelDrag()V

    goto/16 :goto_1

    .line 634
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setRecentDrawer(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)V
    .locals 0
    .param p1, "drawer"    # Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    .prologue
    .line 744
    iput-object p1, p0, Lcom/android/systemui/mzrecent/DragController;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    .line 745
    return-void
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 692
    iput-object p1, p0, Lcom/android/systemui/mzrecent/DragController;->mWindowToken:Landroid/os/IBinder;

    .line 693
    return-void
.end method
