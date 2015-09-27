.class public Lcom/android/systemui/mzrecent/MzSlidingDrawer;
.super Landroid/view/ViewGroup;
.source "MzSlidingDrawer.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/mzrecent/MzSlidingDrawer$1;,
        Lcom/android/systemui/mzrecent/MzSlidingDrawer$SlidingHandler;,
        Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerScrollListener;,
        Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerCloseListener;,
        Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerOpenListener;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static RECENT_DRAWER_OFFSET:I


# instance fields
.field private mAllowSingleTap:Z

.field private mAnimateOnClick:Z

.field public mAnimatedAcceleration:F

.field private mAnimatedVelocity:F

.field public mAnimating:Z

.field private mAnimationLastTime:J

.field public mAnimationPosition:F

.field protected mBlurRect:Landroid/graphics/Rect;

.field protected mBlurView:Landroid/view/View;

.field protected mBlurViewAttached:Z

.field private mBottomOffset:I

.field private mChoreographer:Landroid/view/Choreographer;

.field private mContent:Landroid/view/View;

.field private final mContentId:I

.field public mCurPos:F

.field private mCurRotation:I

.field private mCurrentAnimationTime:J

.field protected mDH:I

.field protected mDW:I

.field protected mDrawerHeight:I

.field public mExpanded:Z

.field private final mFrame:Landroid/graphics/Rect;

.field private mHandle:Landroid/view/View;

.field private mHandleHeight:I

.field private final mHandleId:I

.field private mHandleWidth:I

.field protected final mHandler:Landroid/os/Handler;

.field public mInterruptDown:Z

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mLocked:Z

.field private mMaximumAcceleration:I

.field private mMaximumMajorVelocity:I

.field private final mMaximumMinorVelocity:I

.field private mMaximumTapVelocity:I

.field protected mNeedBlurWhenAttached:Z

.field private mOnDrawerCloseListener:Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerOpenListener;

.field private mOnDrawerScrollListener:Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerScrollListener;

.field public mPrePos:F

.field private final mTapThreshold:I

.field private mTopOffset:I

.field private mTouchDelta:I

.field public mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVelocityUnits:I

.field private mVelocityX:F

.field private mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 215
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 216
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 230
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 122
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 123
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 140
    new-instance v7, Lcom/android/systemui/mzrecent/MzSlidingDrawer$SlidingHandler;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/android/systemui/mzrecent/MzSlidingDrawer$SlidingHandler;-><init>(Lcom/android/systemui/mzrecent/MzSlidingDrawer;Lcom/android/systemui/mzrecent/MzSlidingDrawer$1;)V

    iput-object v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandler:Landroid/os/Handler;

    .line 157
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mCurRotation:I

    .line 158
    const/high16 v7, -0x40800000    # -1.0f

    iput v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVelocityX:F

    .line 159
    const/high16 v7, -0x40800000    # -1.0f

    iput v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mPrePos:F

    .line 160
    const/high16 v7, -0x40800000    # -1.0f

    iput v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mCurPos:F

    .line 161
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mInterruptDown:Z

    .line 1214
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBlurRect:Landroid/graphics/Rect;

    .line 1215
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mNeedBlurWhenAttached:Z

    .line 231
    sget-object v7, Lcom/android/systemui/R$styleable;->MzSlidingDrawer:[I

    const/4 v8, 0x0

    invoke-virtual {p1, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 234
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 236
    .local v5, "orientation":I
    const/4 v7, 0x1

    if-ne v5, v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVertical:Z

    .line 237
    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBottomOffset:I

    .line 239
    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTopOffset:I

    .line 241
    const/4 v7, 0x5

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAllowSingleTap:Z

    .line 243
    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimateOnClick:Z

    .line 246
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 247
    .local v4, "handleId":I
    if-nez v4, :cond_1

    .line 248
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 236
    .end local v4    # "handleId":I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .line 253
    .restart local v4    # "handleId":I
    :cond_1
    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 254
    .local v1, "contentId":I
    if-nez v1, :cond_2

    .line 255
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "The content attribute is required and must refer to a valid child."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 260
    :cond_2
    if-ne v4, v1, :cond_3

    .line 261
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "The content and handle attributes must refer to different children."

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 266
    :cond_3
    iput v4, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandleId:I

    .line 267
    iput v1, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mContentId:I

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v2, v7, Landroid/util/DisplayMetrics;->density:F

    .line 270
    .local v2, "density":F
    const/high16 v7, 0x40c00000    # 6.0f

    mul-float/2addr v7, v2

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTapThreshold:I

    .line 271
    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v7, v2

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mMaximumTapVelocity:I

    .line 272
    const/high16 v7, 0x43160000    # 150.0f

    mul-float/2addr v7, v2

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mMaximumMinorVelocity:I

    .line 273
    const/high16 v7, 0x43480000    # 200.0f

    mul-float/2addr v7, v2

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mMaximumMajorVelocity:I

    .line 274
    const/high16 v7, 0x44fa0000    # 2000.0f

    mul-float/2addr v7, v2

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mMaximumAcceleration:I

    .line 275
    const/high16 v7, 0x447a0000    # 1000.0f

    mul-float/2addr v7, v2

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVelocityUnits:I

    .line 277
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 279
    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 280
    iget-object v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mContext:Landroid/content/Context;

    const-string v8, "window"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    .line 282
    .local v3, "display":Landroid/view/Display;
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 283
    .local v6, "point":Landroid/graphics/Point;
    invoke-virtual {v3, v6}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 284
    iget v7, v6, Landroid/graphics/Point;->x:I

    iget v8, v6, Landroid/graphics/Point;->y:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mDH:I

    .line 285
    iget v7, v6, Landroid/graphics/Point;->x:I

    iget v8, v6, Landroid/graphics/Point;->y:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mDW:I

    .line 286
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0094

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mDrawerHeight:I

    .line 287
    iget v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mDH:I

    iget v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mDrawerHeight:I

    sub-int/2addr v7, v8

    sput v7, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->RECENT_DRAWER_OFFSET:I

    .line 288
    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/mzrecent/MzSlidingDrawer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/mzrecent/MzSlidingDrawer;

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->doAnimation()V

    return-void
.end method

.method private animateClose(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 623
    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->prepareTracking(I)V

    .line 624
    iget v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->performFling(IFZ)V

    .line 625
    return-void
.end method

.method private doAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 878
    iget-boolean v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 879
    invoke-direct {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->incrementAnimation()V

    .line 880
    iget v1, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimationPosition:F

    iget v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBottomOffset:I

    iget-boolean v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->getHeight()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_2

    .line 882
    iput-boolean v3, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimating:Z

    .line 883
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->closeDrawer()V

    .line 895
    :cond_0
    :goto_1
    return-void

    .line 880
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->getWidth()I

    move-result v0

    goto :goto_0

    .line 884
    :cond_2
    iget v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTopOffset:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 885
    iput-boolean v3, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimating:Z

    .line 886
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->openDrawer()V

    goto :goto_1

    .line 888
    :cond_3
    iget v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->moveHandle(I)V

    .line 892
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_1
.end method

.method private incrementAnimation()V
    .locals 8

    .prologue
    .line 898
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 899
    .local v2, "now":J
    iget-wide v6, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimationLastTime:J

    sub-long v6, v2, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float v4, v6, v7

    .line 900
    .local v4, "t":F
    iget v1, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimationPosition:F

    .line 901
    .local v1, "position":F
    iget v5, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimatedVelocity:F

    .line 902
    .local v5, "v":F
    iget v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimatedAcceleration:F

    .line 903
    .local v0, "a":F
    mul-float v6, v5, v4

    add-float/2addr v6, v1

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v0

    mul-float/2addr v7, v4

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimationPosition:F

    .line 904
    mul-float v6, v0, v4

    add-float/2addr v6, v5

    iput v6, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimatedVelocity:F

    .line 905
    iput-wide v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimationLastTime:J

    .line 906
    return-void
.end method

.method private prepareContent()V
    .locals 1

    .prologue
    .line 819
    iget-boolean v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 823
    :goto_0
    return-void

    .line 822
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->requesteLayout(Z)V

    goto :goto_0
.end method

.method private stopTracking()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 864
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 865
    iput-boolean v1, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTracking:Z

    .line 867
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    .line 868
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 871
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 872
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 873
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 875
    :cond_1
    return-void
.end method


# virtual methods
.method public addTrackerEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 512
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 514
    :cond_0
    return-void
.end method

.method public animateClose()V
    .locals 2

    .prologue
    .line 982
    invoke-direct {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->prepareContent()V

    .line 983
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerScrollListener;

    .line 984
    .local v0, "scrollListener":Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 985
    invoke-interface {v0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 987
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->animateClose(I)V

    .line 989
    if-eqz v0, :cond_1

    .line 990
    invoke-interface {v0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 992
    :cond_1
    return-void

    .line 987
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateOpen()V
    .locals 3

    .prologue
    .line 1004
    invoke-direct {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->prepareContent()V

    .line 1006
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1007
    iget-object v1, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBlurView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->blurUnderMeRect(Z)V

    .line 1008
    iget-object v1, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBlurView:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setStaticBlurMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1012
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerScrollListener;

    .line 1013
    .local v0, "scrollListener":Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 1014
    invoke-interface {v0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 1016
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->animateOpen(I)V

    .line 1018
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->sendAccessibilityEvent(I)V

    .line 1020
    if-eqz v0, :cond_1

    .line 1021
    invoke-interface {v0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 1023
    :cond_1
    return-void

    .line 1016
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_1

    .line 1009
    .end local v0    # "scrollListener":Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerScrollListener;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public animateOpen(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 628
    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->prepareTracking(I)V

    .line 629
    iget v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->performFling(IFZ)V

    .line 630
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 967
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->closeDrawer()V

    .line 968
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->invalidate()V

    .line 969
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->requestLayout()V

    .line 970
    return-void
.end method

.method public closeDrawer()V
    .locals 2

    .prologue
    .line 1038
    const/16 v0, -0x2712

    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->moveHandle(I)V

    .line 1039
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1040
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 1042
    iget-boolean v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_1

    .line 1050
    :cond_0
    :goto_0
    return-void

    .line 1046
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mExpanded:Z

    .line 1047
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mOnDrawerCloseListener:Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerCloseListener;

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mOnDrawerCloseListener:Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerCloseListener;

    invoke-interface {v0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 346
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->getDrawingTime()J

    move-result-wide v2

    .line 347
    .local v2, "drawingTime":J
    iget-object v1, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandle:Landroid/view/View;

    .line 348
    .local v1, "handle":Landroid/view/View;
    iget-boolean v4, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVertical:Z

    .line 349
    .local v4, "isVertical":Z
    iget-boolean v6, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTracking:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimating:Z

    if-eqz v6, :cond_6

    .line 350
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 351
    .local v0, "cache":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 352
    if-eqz v4, :cond_2

    .line 353
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 368
    .end local v0    # "cache":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 355
    .restart local v0    # "cache":Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v0, v6, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 358
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 359
    if-eqz v4, :cond_5

    move v6, v5

    :goto_1
    if-eqz v4, :cond_4

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v5

    iget v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    :cond_4
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 362
    iget-object v5, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v2, v3}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 363
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 359
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTopOffset:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    goto :goto_1

    .line 365
    .end local v0    # "cache":Landroid/graphics/Bitmap;
    :cond_6
    iget-boolean v5, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mExpanded:Z

    if-eqz v5, :cond_1

    .line 366
    iget-object v5, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v2, v3}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method

.method public doFrame(J)V
    .locals 0
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 1210
    invoke-direct {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->doAnimation()V

    .line 1211
    return-void
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 1157
    iget-boolean v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 1148
    iget-boolean v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mExpanded:Z

    return v0
.end method

.method public manualSendUpEvent()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 616
    iput-boolean v3, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mInterruptDown:Z

    .line 617
    iget-object v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v1

    .line 618
    .local v1, "top":I
    iget-object v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 619
    .local v0, "left":I
    iget-boolean v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_0

    .end local v1    # "top":I
    :goto_0
    iget v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mMaximumMajorVelocity:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->performFling(IFZ)V

    .line 620
    return-void

    .restart local v1    # "top":I
    :cond_0
    move v1, v0

    .line 619
    goto :goto_0
.end method

.method public moveHandle(I)V
    .locals 13
    .param p1, "position"    # I

    .prologue
    const/4 v12, 0x0

    const/16 v11, -0x2711

    const/16 v8, -0x2712

    const/16 v10, 0x3e9

    const/4 v9, 0x1

    .line 720
    iget-object v3, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandle:Landroid/view/View;

    .line 721
    .local v3, "handle":Landroid/view/View;
    iget-boolean v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_5

    .line 722
    if-ne p1, v11, :cond_1

    .line 723
    iget-object v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 724
    iget v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 725
    iget-boolean v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBlurViewAttached:Z

    if-eqz v7, :cond_0

    .line 727
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBlurView:Landroid/view/View;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->blurUnderMeRect(Z)V

    .line 728
    iget-object v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBlurView:Landroid/view/View;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setStaticBlurMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 735
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->invalidate()V

    .line 816
    :goto_1
    return-void

    .line 733
    :cond_0
    iput-boolean v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mNeedBlurWhenAttached:Z

    goto :goto_0

    .line 736
    :cond_1
    if-ne p1, v8, :cond_2

    .line 737
    iget-object v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 738
    iget-object v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x50

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 739
    iget v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBottomOffset:I

    iget v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBottom:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 741
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->invalidate()V

    goto :goto_1

    .line 743
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    .line 744
    .local v6, "top":I
    sub-int v1, p1, v6

    .line 745
    .local v1, "deltaY":I
    iget v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_4

    .line 746
    iget v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v6

    .line 752
    :cond_3
    :goto_2
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 753
    iget-object v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 754
    .local v2, "frame":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 756
    .local v5, "region":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 757
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 759
    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v1

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v1

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 761
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v1

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->getWidth()I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v1

    iget-object v10, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v12, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 764
    invoke-virtual {p0, v5}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 747
    .end local v2    # "frame":Landroid/graphics/Rect;
    .end local v5    # "region":Landroid/graphics/Rect;
    :cond_4
    iget v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBottomOffset:I

    iget v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBottom:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    if-le v1, v7, :cond_3

    .line 749
    iget v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBottomOffset:I

    iget v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBottom:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTop:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int v1, v7, v6

    goto :goto_2

    .line 768
    .end local v1    # "deltaY":I
    .end local v6    # "top":I
    :cond_5
    if-ne p1, v11, :cond_7

    .line 769
    iget-object v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 770
    iget v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 771
    iget-boolean v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBlurViewAttached:Z

    if-eqz v7, :cond_6

    .line 773
    :try_start_1
    iget-object v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBlurView:Landroid/view/View;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->blurUnderMeRect(Z)V

    .line 774
    iget-object v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBlurView:Landroid/view/View;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/view/View;->setStaticBlurMode(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 781
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->invalidate()V

    goto/16 :goto_1

    .line 779
    :cond_6
    iput-boolean v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mNeedBlurWhenAttached:Z

    goto :goto_3

    .line 782
    :cond_7
    if-ne p1, v8, :cond_8

    .line 783
    iget-object v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 784
    iget-object v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x50

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 785
    iget v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBottomOffset:I

    iget v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mRight:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 787
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->invalidate()V

    goto/16 :goto_1

    .line 789
    :cond_8
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 790
    .local v4, "left":I
    sub-int v0, p1, v4

    .line 791
    .local v0, "deltaX":I
    iget v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_a

    .line 792
    iget v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTopOffset:I

    sub-int v0, v7, v4

    .line 799
    :cond_9
    :goto_4
    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 801
    iget-object v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 802
    .restart local v2    # "frame":Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 804
    .restart local v5    # "region":Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 805
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 807
    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v0

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 809
    iget v7, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v0

    iget-object v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->getHeight()I

    move-result v9

    invoke-virtual {v5, v7, v12, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 812
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->invalidate()V

    goto/16 :goto_1

    .line 793
    .end local v2    # "frame":Landroid/graphics/Rect;
    .end local v5    # "region":Landroid/graphics/Rect;
    :cond_a
    iget v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBottomOffset:I

    iget v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mRight:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v4

    if-le v0, v7, :cond_9

    .line 795
    iget v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBottomOffset:I

    iget v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mRight:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mLeft:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int v0, v7, v4

    goto :goto_4

    .line 775
    .end local v0    # "deltaX":I
    .end local v4    # "left":I
    :catch_0
    move-exception v7

    goto/16 :goto_3

    .line 729
    :catch_1
    move-exception v7

    goto/16 :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 292
    iget v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandle:Landroid/view/View;

    .line 293
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandle:Landroid/view/View;

    if-nez v0, :cond_0

    .line 294
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_0
    iget v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mContentId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mContent:Landroid/view/View;

    .line 301
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mContent:Landroid/view/View;

    if-nez v0, :cond_1

    .line 302
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 306
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mChoreographer:Landroid/view/Choreographer;

    if-nez v0, :cond_2

    .line 308
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mChoreographer:Landroid/view/Choreographer;

    .line 309
    :cond_2
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1027
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1028
    const-class v0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1029
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 1033
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1034
    const-class v0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1035
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 467
    iget-boolean v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mLocked:Z

    if-eqz v9, :cond_1

    .line 507
    :cond_0
    :goto_0
    return v7

    .line 471
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 473
    .local v0, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 474
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 476
    .local v6, "y":F
    iget-object v1, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 477
    .local v1, "frame":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandle:Landroid/view/View;

    .line 479
    .local v2, "handle":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 480
    iget-boolean v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTracking:Z

    if-nez v9, :cond_2

    float-to-int v9, v5

    float-to-int v10, v6

    invoke-virtual {v1, v9, v10}, Landroid/graphics/Rect;->contains(II)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 484
    :cond_2
    if-nez v0, :cond_4

    .line 485
    iput-boolean v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTracking:Z

    .line 486
    invoke-virtual {v2, v8}, Landroid/view/View;->setPressed(Z)V

    .line 488
    invoke-direct {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->prepareContent()V

    .line 491
    iget-object v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerScrollListener;

    if-eqz v7, :cond_3

    .line 492
    iget-object v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v7}, Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 495
    :cond_3
    iget-boolean v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_5

    .line 496
    iget-object v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v4

    .line 497
    .local v4, "top":I
    float-to-int v7, v6

    sub-int/2addr v7, v4

    iput v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTouchDelta:I

    .line 498
    invoke-virtual {p0, v4}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->prepareTracking(I)V

    .line 504
    .end local v4    # "top":I
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_4
    move v7, v8

    .line 507
    goto :goto_0

    .line 500
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 501
    .local v3, "left":I
    float-to-int v7, v5

    sub-int/2addr v7, v3

    iput v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTouchDelta:I

    .line 502
    invoke-virtual {p0, v3}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->prepareTracking(I)V

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;Z)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "manual"    # Z

    .prologue
    const/4 v7, 0x1

    .line 413
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 416
    .local v0, "action":I
    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandler:Landroid/os/Handler;

    const/16 v9, 0x3e9

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 417
    iget-object v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBlurView:Landroid/view/View;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->blurUnderMeRect(Z)V

    .line 418
    iget-object v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBlurView:Landroid/view/View;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setStaticBlurMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 424
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 426
    .local v6, "y":F
    iget-object v1, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 427
    .local v1, "frame":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandle:Landroid/view/View;

    .line 429
    .local v2, "handle":Landroid/view/View;
    invoke-virtual {v2, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 430
    iget-boolean v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTracking:Z

    if-nez v8, :cond_1

    if-eqz p2, :cond_1

    .line 431
    const/4 v7, 0x0

    .line 462
    :cond_0
    :goto_1
    return v7

    .line 434
    :cond_1
    if-nez v0, :cond_0

    .line 435
    iput-boolean v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mInterruptDown:Z

    .line 436
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iput v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mCurPos:F

    .line 437
    const v8, 0x44e12000    # 1801.0f

    iput v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mPrePos:F

    .line 438
    iput-boolean v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTracking:Z

    .line 439
    invoke-virtual {v2, v7}, Landroid/view/View;->setPressed(Z)V

    .line 441
    invoke-direct {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->prepareContent()V

    .line 444
    iget-object v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerScrollListener;

    if-eqz v8, :cond_2

    .line 445
    iget-object v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v8}, Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 448
    :cond_2
    iget-boolean v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_3

    .line 449
    iget-object v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v4

    .line 450
    .local v4, "top":I
    float-to-int v8, v6

    sub-int/2addr v8, v4

    iput v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTouchDelta:I

    .line 451
    invoke-virtual {p0, v4}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->prepareTracking(I)V

    .line 457
    .end local v4    # "top":I
    :goto_2
    iget-object v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v8, :cond_0

    .line 458
    iget-object v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 453
    :cond_3
    iget-object v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 454
    .local v3, "left":I
    float-to-int v8, v5

    sub-int/2addr v8, v3

    iput v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTouchDelta:I

    .line 455
    invoke-virtual {p0, v3}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->prepareTracking(I)V

    goto :goto_2

    .line 419
    .end local v1    # "frame":Landroid/graphics/Rect;
    .end local v2    # "handle":Landroid/view/View;
    .end local v3    # "left":I
    .end local v5    # "x":F
    .end local v6    # "y":F
    :catch_0
    move-exception v8

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 372
    iget-boolean v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTracking:Z

    if-eqz v8, :cond_0

    .line 410
    :goto_0
    return-void

    .line 376
    :cond_0
    sub-int v7, p4, p2

    .line 377
    .local v7, "width":I
    sub-int v6, p5, p3

    .line 379
    .local v6, "height":I
    iget-object v5, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandle:Landroid/view/View;

    .line 381
    .local v5, "handle":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 382
    .local v3, "childWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 387
    .local v0, "childHeight":I
    iget-object v4, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mContent:Landroid/view/View;

    .line 389
    .local v4, "content":Landroid/view/View;
    iget-boolean v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_2

    .line 390
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 391
    .local v1, "childLeft":I
    iget-boolean v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_1

    iget v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTopOffset:I

    .line 394
    .local v2, "childTop":I
    :goto_1
    const/4 v8, 0x0

    iget v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTopOffset:I

    add-int/2addr v11, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 406
    :goto_2
    add-int v8, v1, v3

    add-int v9, v2, v0

    invoke-virtual {v5, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 408
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandleHeight:I

    .line 409
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandleWidth:I

    goto :goto_0

    .line 391
    .end local v2    # "childTop":I
    :cond_1
    sub-int v8, v6, v0

    iget v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBottomOffset:I

    add-int v2, v8, v9

    goto :goto_1

    .line 398
    .end local v1    # "childLeft":I
    :cond_2
    iget-boolean v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_3

    iget v1, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTopOffset:I

    .line 400
    .restart local v1    # "childLeft":I
    :goto_3
    sub-int v8, v6, v0

    div-int/lit8 v2, v8, 0x2

    .line 402
    .restart local v2    # "childTop":I
    iget v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTopOffset:I

    add-int/2addr v8, v3

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTopOffset:I

    add-int/2addr v10, v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 398
    .end local v1    # "childLeft":I
    .end local v2    # "childTop":I
    :cond_3
    sub-int v8, v7, v3

    iget v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBottomOffset:I

    add-int v1, v8, v9

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    .line 313
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 314
    .local v5, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 316
    .local v6, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 317
    .local v2, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 319
    .local v3, "heightSpecSize":I
    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    .line 321
    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 325
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandle:Landroid/view/View;

    .line 326
    .local v0, "handle":Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->measureChild(Landroid/view/View;II)V

    .line 328
    iget-boolean v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_2

    .line 329
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v3, v7

    iget v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v8

    .line 331
    .local v1, "height":I
    iget-object v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 341
    .end local v1    # "height":I
    :goto_0
    invoke-virtual {p0, v6, v3}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->setMeasuredDimension(II)V

    .line 342
    return-void

    .line 335
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v6, v7

    iget v8, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTopOffset:I

    sub-int v4, v7, v8

    .line 336
    .local v4, "width":I
    iget-object v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 518
    iget-boolean v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mLocked:Z

    if-eqz v9, :cond_0

    .line 519
    const/4 v9, 0x1

    .line 612
    :goto_0
    return v9

    .line 521
    :cond_0
    iget-boolean v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTracking:Z

    if-eqz v9, :cond_1

    .line 522
    iget-object v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 523
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 524
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 612
    .end local v0    # "action":I
    :cond_1
    :goto_1
    iget-boolean v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTracking:Z

    if-nez v9, :cond_2

    iget-boolean v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimating:Z

    if-nez v9, :cond_2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_1c

    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    .line 526
    .restart local v0    # "action":I
    :pswitch_0
    iget v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mCurRotation:I

    if-nez v9, :cond_4

    .line 527
    iget-boolean v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVertical:Z

    if-eqz v9, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    sget v10, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->RECENT_DRAWER_OFFSET:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    :goto_2
    float-to-int v9, v9

    invoke-virtual {p0, v9}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->moveHandle(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    goto :goto_2

    .line 530
    :cond_4
    iget v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mCurRotation:I

    const/4 v10, 0x1

    if-eq v9, v10, :cond_5

    iget v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mCurRotation:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_6

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    const/high16 v10, 0x43b40000    # 360.0f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_6

    .line 532
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTouchDelta:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    float-to-int v9, v9

    invoke-virtual {p0, v9}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->moveHandle(I)V

    .line 533
    iget v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mCurPos:F

    iput v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mPrePos:F

    .line 534
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mCurPos:F

    goto :goto_1

    .line 536
    :cond_6
    iget-boolean v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVertical:Z

    if-eqz v9, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    :goto_3
    float-to-int v9, v9

    iget v10, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTouchDelta:I

    sub-int/2addr v9, v10

    invoke-virtual {p0, v9}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->moveHandle(I)V

    .line 538
    iget v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mCurPos:F

    iput v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mPrePos:F

    .line 539
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iput v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mCurPos:F

    goto :goto_1

    .line 536
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    goto :goto_3

    .line 544
    :pswitch_1
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mInterruptDown:Z

    .line 545
    iget-object v5, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 546
    .local v5, "velocityTracker":Landroid/view/VelocityTracker;
    iget v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v5, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 548
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    .line 549
    .local v8, "yVelocity":F
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    .line 552
    .local v7, "xVelocity":F
    iget-boolean v6, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVertical:Z

    .line 553
    .local v6, "vertical":Z
    if-eqz v6, :cond_e

    .line 554
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_d

    const/4 v2, 0x1

    .line 555
    .local v2, "negative":Z
    :goto_4
    const/4 v9, 0x0

    cmpg-float v9, v7, v9

    if-gez v9, :cond_8

    .line 556
    neg-float v7, v7

    .line 558
    :cond_8
    iget v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    if-lez v9, :cond_9

    .line 559
    iget v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v7, v9

    .line 571
    :cond_9
    :goto_5
    float-to-double v10, v7

    float-to-double v12, v8

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    double-to-float v4, v10

    .line 572
    .local v4, "velocity":F
    if-eqz v2, :cond_a

    .line 573
    neg-float v4, v4

    .line 576
    :cond_a
    iget-object v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v3

    .line 577
    .local v3, "top":I
    iget-object v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 579
    .local v1, "left":I
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mMaximumTapVelocity:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_1a

    .line 580
    if-eqz v6, :cond_11

    iget-boolean v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_b

    iget v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTapThreshold:I

    iget v10, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v10

    if-lt v3, v9, :cond_c

    :cond_b
    iget-boolean v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mExpanded:Z

    if-nez v9, :cond_13

    iget v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBottomOffset:I

    iget v10, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBottom:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTop:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTapThreshold:I

    sub-int/2addr v9, v10

    if-le v3, v9, :cond_13

    .line 589
    :cond_c
    iget-boolean v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAllowSingleTap:Z

    if-eqz v9, :cond_17

    .line 590
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->playSoundEffect(I)V

    .line 592
    iget-boolean v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_15

    .line 593
    if-eqz v6, :cond_14

    .end local v3    # "top":I
    :goto_6
    invoke-direct {p0, v3}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->animateClose(I)V

    goto/16 :goto_1

    .line 554
    .end local v1    # "left":I
    .end local v2    # "negative":Z
    .end local v4    # "velocity":F
    :cond_d
    const/4 v2, 0x0

    goto :goto_4

    .line 562
    :cond_e
    const/4 v9, 0x0

    cmpg-float v9, v7, v9

    if-gez v9, :cond_10

    const/4 v2, 0x1

    .line 563
    .restart local v2    # "negative":Z
    :goto_7
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_f

    .line 564
    neg-float v8, v8

    .line 566
    :cond_f
    iget v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_9

    .line 567
    iget v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v8, v9

    goto :goto_5

    .line 562
    .end local v2    # "negative":Z
    :cond_10
    const/4 v2, 0x0

    goto :goto_7

    .line 580
    .restart local v1    # "left":I
    .restart local v2    # "negative":Z
    .restart local v3    # "top":I
    .restart local v4    # "velocity":F
    :cond_11
    iget-boolean v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_12

    iget v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTapThreshold:I

    iget v10, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v10

    if-lt v1, v9, :cond_c

    :cond_12
    iget-boolean v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mExpanded:Z

    if-nez v9, :cond_13

    iget v9, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBottomOffset:I

    iget v10, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mRight:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTapThreshold:I

    sub-int/2addr v9, v10

    if-gt v1, v9, :cond_c

    .line 602
    :cond_13
    if-eqz v6, :cond_19

    .end local v3    # "top":I
    :goto_8
    const/4 v9, 0x0

    invoke-virtual {p0, v3, v4, v9}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v3    # "top":I
    :cond_14
    move v3, v1

    .line 593
    goto :goto_6

    .line 595
    :cond_15
    if-eqz v6, :cond_16

    .end local v3    # "top":I
    :goto_9
    invoke-virtual {p0, v3}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->animateOpen(I)V

    goto/16 :goto_1

    .restart local v3    # "top":I
    :cond_16
    move v3, v1

    goto :goto_9

    .line 598
    :cond_17
    if-eqz v6, :cond_18

    .end local v3    # "top":I
    :goto_a
    const/4 v9, 0x0

    invoke-virtual {p0, v3, v4, v9}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v3    # "top":I
    :cond_18
    move v3, v1

    goto :goto_a

    :cond_19
    move v3, v1

    .line 602
    goto :goto_8

    .line 605
    :cond_1a
    if-eqz v6, :cond_1b

    .end local v3    # "top":I
    :goto_b
    const/4 v9, 0x0

    invoke-virtual {p0, v3, v4, v9}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v3    # "top":I
    :cond_1b
    move v3, v1

    goto :goto_b

    .line 612
    .end local v0    # "action":I
    .end local v1    # "left":I
    .end local v2    # "negative":Z
    .end local v3    # "top":I
    .end local v4    # "velocity":F
    .end local v5    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v6    # "vertical":Z
    .end local v7    # "xVelocity":F
    .end local v8    # "yVelocity":F
    :cond_1c
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 524
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public open()V
    .locals 1

    .prologue
    .line 952
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->openDrawer()V

    .line 953
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->invalidate()V

    .line 954
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->requestLayout()V

    .line 956
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->sendAccessibilityEvent(I)V

    .line 957
    return-void
.end method

.method public openDrawer()V
    .locals 2

    .prologue
    .line 1053
    const/16 v0, -0x2711

    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->moveHandle(I)V

    .line 1054
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1056
    iget-boolean v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_1

    .line 1065
    :cond_0
    :goto_0
    return-void

    .line 1060
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mExpanded:Z

    .line 1062
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mOnDrawerOpenListener:Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerOpenListener;

    if-eqz v0, :cond_0

    .line 1063
    iget-object v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mOnDrawerOpenListener:Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerOpenListener;

    invoke-interface {v0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    goto :goto_0
.end method

.method public performFling(IFZ)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "velocity"    # F
    .param p3, "always"    # Z

    .prologue
    const/high16 v7, 0x447a0000    # 1000.0f

    const-wide/high16 v8, 0x3fe8000000000000L    # 0.75

    const/4 v6, 0x0

    .line 633
    int-to-float v2, p1

    iput v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimationPosition:F

    .line 634
    iput p2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimatedVelocity:F

    .line 636
    iget-boolean v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mExpanded:Z

    if-eqz v2, :cond_4

    .line 637
    if-nez p3, :cond_0

    iget v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_0

    iget v3, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTopOffset:I

    iget-boolean v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandleHeight:I

    :goto_0
    add-int/2addr v2, v3

    if-le p1, v2, :cond_3

    iget v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    .line 642
    :cond_0
    iget v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimatedAcceleration:F

    .line 643
    cmpg-float v2, p2, v6

    if-gez v2, :cond_1

    .line 644
    iput v6, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimatedVelocity:F

    .line 682
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 683
    .local v0, "now":J
    iput-wide v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimationLastTime:J

    .line 684
    iput-wide v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mCurrentAnimationTime:J

    .line 685
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimating:Z

    .line 689
    iget-object v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mChoreographer:Landroid/view/Choreographer;

    invoke-virtual {v2, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 690
    invoke-direct {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->stopTracking()V

    .line 691
    return-void

    .line 637
    .end local v0    # "now":J
    :cond_2
    iget v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandleWidth:I

    goto :goto_0

    .line 648
    :cond_3
    iget v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimatedAcceleration:F

    .line 649
    cmpl-float v2, p2, v6

    if-lez v2, :cond_1

    .line 650
    iput v6, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1

    .line 654
    :cond_4
    if-nez p3, :cond_7

    iget v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_6

    int-to-double v2, p1

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->getHeight()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v8

    cmpl-double v2, v2, v4

    if-lez v2, :cond_7

    iget v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_7

    .line 660
    :cond_5
    iget v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimatedAcceleration:F

    .line 661
    cmpg-float v2, p2, v6

    if-gez v2, :cond_8

    .line 662
    iput v6, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1

    .line 654
    :cond_6
    int-to-double v2, p1

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->getWidth()I

    move-result v4

    int-to-double v4, v4

    mul-double/2addr v4, v8

    cmpl-double v2, v2, v4

    if-lez v2, :cond_7

    iget v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_5

    .line 671
    :cond_7
    iget v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimatedAcceleration:F

    .line 672
    cmpl-float v2, p2, v6

    if-lez v2, :cond_9

    .line 673
    const/high16 v2, -0x3cea0000    # -150.0f

    iput v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1

    .line 664
    :cond_8
    iget v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimatedVelocity:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v7

    if-lez v2, :cond_1

    .line 665
    iput v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1

    .line 675
    :cond_9
    iget v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimatedVelocity:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x43960000    # 300.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 676
    const/high16 v2, -0x3c6a0000    # -300.0f

    iput v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimatedVelocity:F

    goto/16 :goto_1
.end method

.method public prepareTracking(I)V
    .locals 8
    .param p1, "position"    # I

    .prologue
    const/16 v7, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 694
    iput-boolean v4, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTracking:Z

    .line 695
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 696
    iget-boolean v5, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mExpanded:Z

    if-nez v5, :cond_0

    move v2, v4

    .line 697
    .local v2, "opening":Z
    :goto_0
    if-eqz v2, :cond_2

    .line 698
    iget v3, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimatedAcceleration:F

    .line 699
    iget v3, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimatedVelocity:F

    .line 700
    iget v5, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBottomOffset:I

    iget-boolean v3, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVertical:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->getHeight()I

    move-result v3

    iget v6, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v3, v6

    :goto_1
    add-int/2addr v3, v5

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimationPosition:F

    .line 703
    iget v3, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimationPosition:F

    float-to-int v3, v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->moveHandle(I)V

    .line 704
    iput-boolean v4, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimating:Z

    .line 705
    iget-object v3, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 706
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 707
    .local v0, "now":J
    iput-wide v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimationLastTime:J

    .line 708
    const-wide/16 v6, 0xa

    add-long/2addr v6, v0

    iput-wide v6, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mCurrentAnimationTime:J

    .line 709
    iput-boolean v4, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimating:Z

    .line 717
    .end local v0    # "now":J
    :goto_2
    return-void

    .end local v2    # "opening":Z
    :cond_0
    move v2, v3

    .line 696
    goto :goto_0

    .line 700
    .restart local v2    # "opening":Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->getWidth()I

    move-result v3

    iget v6, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v3, v6

    goto :goto_1

    .line 711
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimating:Z

    if-eqz v4, :cond_3

    .line 712
    iput-boolean v3, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimating:Z

    .line 713
    iget-object v3, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 715
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->moveHandle(I)V

    goto :goto_2
.end method

.method public requesteLayout(Z)V
    .locals 10
    .param p1, "force"    # Z

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 826
    iget-boolean v5, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mAnimating:Z

    if-nez v5, :cond_0

    if-eqz p1, :cond_3

    .line 830
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mContent:Landroid/view/View;

    .line 831
    .local v2, "content":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 832
    iget-boolean v5, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mVertical:Z

    if-eqz v5, :cond_4

    .line 833
    iget v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandleHeight:I

    .line 834
    .local v0, "childHeight":I
    iget v5, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBottom:I

    iget v6, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v0

    iget v6, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTopOffset:I

    sub-int v3, v5, v6

    .line 835
    .local v3, "height":I
    iget v5, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mRight:I

    iget v6, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mLeft:I

    sub-int/2addr v5, v6

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 838
    iget v5, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTopOffset:I

    add-int/2addr v7, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2, v9, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 855
    .end local v0    # "childHeight":I
    .end local v3    # "height":I
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 856
    invoke-virtual {v2}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v5

    if-nez v5, :cond_2

    .line 857
    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 859
    :cond_2
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 861
    .end local v2    # "content":Landroid/view/View;
    :cond_3
    return-void

    .line 842
    .restart local v2    # "content":Landroid/view/View;
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 843
    .local v1, "childWidth":I
    iget v5, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mRight:I

    iget v6, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mLeft:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTopOffset:I

    sub-int v4, v5, v6

    .line 844
    .local v4, "width":I
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    iget v6, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mBottom:I

    iget v7, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTop:I

    sub-int/2addr v6, v7

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 847
    iget v5, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mTopOffset:I

    add-int/2addr v6, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v2, v5, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method public setCurRotation(I)V
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 1197
    iput p1, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mCurRotation:I

    .line 1198
    iget v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mMaximumAcceleration:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mMaximumAcceleration:I

    .line 1199
    iget v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mMaximumMajorVelocity:I

    mul-int/lit16 v0, v0, 0x2710

    iput v0, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mMaximumMajorVelocity:I

    .line 1200
    return-void
.end method

.method public setOnDrawerCloseListener(Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerCloseListener;)V
    .locals 0
    .param p1, "onDrawerCloseListener"    # Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerCloseListener;

    .prologue
    .line 1088
    iput-object p1, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mOnDrawerCloseListener:Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerCloseListener;

    .line 1089
    return-void
.end method

.method public setOnDrawerOpenListener(Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerOpenListener;)V
    .locals 0
    .param p1, "onDrawerOpenListener"    # Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerOpenListener;

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mOnDrawerOpenListener:Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerOpenListener;

    .line 1077
    return-void
.end method

.method public setOnDrawerScrollListener(Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerScrollListener;)V
    .locals 0
    .param p1, "onDrawerScrollListener"    # Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerScrollListener;

    .prologue
    .line 1101
    iput-object p1, p0, Lcom/android/systemui/mzrecent/MzSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerScrollListener;

    .line 1102
    return-void
.end method
