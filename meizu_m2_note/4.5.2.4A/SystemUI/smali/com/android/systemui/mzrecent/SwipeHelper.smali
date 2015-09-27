.class public Lcom/android/systemui/mzrecent/SwipeHelper;
.super Ljava/lang/Object;
.source "SwipeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/mzrecent/SwipeHelper$Callback;
    }
.end annotation


# static fields
.field public static ALPHA_FADE_START:F

.field public static mLastMotionX2:F

.field public static mLastMotionY2:F

.field private static sLinearInterpolator:Landroid/view/animation/LinearInterpolator;


# instance fields
.field private DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field private MAX_DISMISS_VELOCITY:I

.field private MAX_ESCAPE_ANIMATION_DURATION:I

.field private SWIPE_ESCAPE_VELOCITY:F

.field colorFilter:Landroid/graphics/PorterDuffColorFilter;

.field isStart:Z

.field private mCallback:Lcom/android/systemui/mzrecent/SwipeHelper$Callback;

.field private mCanCurrViewBeDimissed:Z

.field public mCurRotation:I

.field private mCurrAnimView:Landroid/view/View;

.field private mCurrView:Landroid/view/View;

.field private mDensityScale:F

.field private mDimissX:F

.field private mDimissXL:F

.field private mDimissY:F

.field private mDimissYL:F

.field private mDragging:Z

.field private mInitialTouchPos:F

.field private mInitialTouchPosXorY:F

.field private mLastMotionX:F

.field private mLastMotionY:F

.field protected mMoveUpward:Z

.field private mPagingTouchSlop:F

.field private mPoint_1_Up:Z

.field mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

.field public mScreenShot:Z

.field private mSwipeDirection:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWS:Lcom/android/systemui/mzrecent/WorkspaceItem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/mzrecent/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 62
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/mzrecent/SwipeHelper;->ALPHA_FADE_START:F

    return-void
.end method

.method public constructor <init>(ILcom/android/systemui/mzrecent/SwipeHelper$Callback;FFLcom/android/systemui/mzrecent/RecentSlidingDrawer;)V
    .locals 4
    .param p1, "swipeDirection"    # I
    .param p2, "callback"    # Lcom/android/systemui/mzrecent/SwipeHelper$Callback;
    .param p3, "densityScale"    # F
    .param p4, "pagingTouchSlop"    # F
    .param p5, "drawer"    # Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/high16 v1, 0x42c80000    # 100.0f

    iput v1, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    .line 57
    const/16 v1, 0xc8

    iput v1, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    .line 58
    const/16 v1, 0x190

    iput v1, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 59
    const/16 v1, 0x7d0

    iput v1, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    .line 81
    iput-boolean v3, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mMoveUpward:Z

    .line 83
    iput-boolean v3, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mPoint_1_Up:Z

    .line 336
    iput-boolean v2, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->isStart:Z

    .line 348
    iput-boolean v2, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mScreenShot:Z

    .line 349
    iput v2, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurRotation:I

    .line 88
    iput-object p2, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCallback:Lcom/android/systemui/mzrecent/SwipeHelper$Callback;

    .line 89
    iput p1, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mSwipeDirection:I

    .line 90
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 91
    iput p3, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mDensityScale:F

    .line 92
    iput p4, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mPagingTouchSlop:F

    .line 93
    iput-object p5, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    .line 94
    invoke-virtual {p5}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 96
    .local v0, "srcColor":I
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->colorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/mzrecent/SwipeHelper;)Lcom/android/systemui/mzrecent/SwipeHelper$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/mzrecent/SwipeHelper;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCallback:Lcom/android/systemui/mzrecent/SwipeHelper$Callback;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/mzrecent/SwipeHelper;Landroid/view/View;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/mzrecent/SwipeHelper;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/mzrecent/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v0

    return v0
.end method

.method private createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "newPos"    # F

    .prologue
    .line 125
    iget v1, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_0

    const-string v1, "translationX"

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 127
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    return-object v0

    .line 125
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :cond_0
    const-string v1, "translationY"

    goto :goto_0
.end method

.method private getAlphaForOffset(Landroid/view/View;)F
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    .line 152
    invoke-direct {p0, p1}, Lcom/android/systemui/mzrecent/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    .line 153
    .local v3, "viewSize":F
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v0, v4, v3

    .line 154
    .local v0, "fadeSize":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 155
    .local v2, "result":F
    invoke-direct {p0, p1}, Lcom/android/systemui/mzrecent/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    .line 156
    .local v1, "pos":F
    sget v4, Lcom/android/systemui/mzrecent/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    .line 157
    sget v4, Lcom/android/systemui/mzrecent/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    sub-float v4, v1, v4

    div-float/2addr v4, v0

    sub-float v2, v5, v4

    .line 166
    :cond_0
    :goto_0
    const v4, 0x3cf5c28f    # 0.03f

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    return v4

    .line 158
    :cond_1
    sget v4, Lcom/android/systemui/mzrecent/SwipeHelper;->ALPHA_FADE_START:F

    sub-float v4, v5, v4

    mul-float/2addr v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    .line 159
    sget v4, Lcom/android/systemui/mzrecent/SwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    add-float/2addr v4, v1

    div-float/2addr v4, v0

    add-float v2, v5, v4

    goto :goto_0
.end method

.method private getPerpendicularVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 131
    iget v0, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    goto :goto_0
.end method

.method private getPos(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 109
    iget v0, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    goto :goto_0
.end method

.method private getPosXorY(Landroid/view/MotionEvent;)F
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 113
    iget v0, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    goto :goto_0
.end method

.method private getSize(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 143
    iget v0, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0
.end method

.method private getTranslation(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    iget v0, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result v0

    goto :goto_0
.end method

.method private getVelocity(Landroid/view/VelocityTracker;)F
    .locals 1
    .param p1, "vt"    # Landroid/view/VelocityTracker;

    .prologue
    .line 121
    iget v0, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    goto :goto_0
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 171
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p0, v0}, Lcom/android/systemui/mzrecent/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 173
    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "childBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 182
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0    # "view":Landroid/view/View;
    check-cast p0, Landroid/view/View;

    .line 184
    .restart local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 185
    iget v0, p1, Landroid/graphics/RectF;->left:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v1, v2

    iget v2, p1, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/view/View;->invalidate(IIII)V

    goto :goto_0

    .line 197
    :cond_0
    return-void
.end method

.method private setTranslation(Landroid/view/View;F)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "translate"    # F

    .prologue
    .line 135
    iget v0, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 140
    :goto_0
    return-void

    .line 138
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method


# virtual methods
.method public dismissChild(Landroid/view/View;F)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    const/4 v7, 0x0

    .line 274
    iget-object v5, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCallback:Lcom/android/systemui/mzrecent/SwipeHelper$Callback;

    invoke-interface {v5, p1}, Lcom/android/systemui/mzrecent/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 275
    .local v1, "animView":Landroid/view/View;
    iget-object v5, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCallback:Lcom/android/systemui/mzrecent/SwipeHelper$Callback;

    invoke-interface {v5, p1}, Lcom/android/systemui/mzrecent/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    .line 279
    .local v2, "canAnimViewBeDismissed":Z
    cmpg-float v5, p2, v7

    if-ltz v5, :cond_1

    cmpl-float v5, p2, v7

    if-nez v5, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/mzrecent/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    cmpg-float v5, v5, v7

    if-ltz v5, :cond_1

    :cond_0
    cmpl-float v5, p2, v7

    if-nez v5, :cond_2

    invoke-direct {p0, v1}, Lcom/android/systemui/mzrecent/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    cmpl-float v5, v5, v7

    if-nez v5, :cond_2

    iget v5, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mSwipeDirection:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 283
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/mzrecent/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v5

    neg-float v4, v5

    .line 287
    .local v4, "newPos":F
    :goto_0
    iget v3, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 288
    .local v3, "duration":I
    cmpl-float v5, p2, v7

    if-eqz v5, :cond_3

    .line 289
    invoke-direct {p0, v1}, Lcom/android/systemui/mzrecent/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x447a0000    # 1000.0f

    mul-float/2addr v5, v6

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 297
    :goto_1
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 298
    invoke-direct {p0, v1, v4}, Lcom/android/systemui/mzrecent/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 299
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    sget-object v5, Lcom/android/systemui/mzrecent/SwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 300
    int-to-long v6, v3

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 301
    new-instance v5, Lcom/android/systemui/mzrecent/SwipeHelper$1;

    invoke-direct {v5, p0, p1, v1}, Lcom/android/systemui/mzrecent/SwipeHelper$1;-><init>(Lcom/android/systemui/mzrecent/SwipeHelper;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 307
    new-instance v5, Lcom/android/systemui/mzrecent/SwipeHelper$2;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/systemui/mzrecent/SwipeHelper$2;-><init>(Lcom/android/systemui/mzrecent/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 315
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 316
    return-void

    .line 285
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v3    # "duration":I
    .end local v4    # "newPos":F
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/systemui/mzrecent/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v4

    .restart local v4    # "newPos":F
    goto :goto_0

    .line 294
    .restart local v3    # "duration":I
    :cond_3
    iget v3, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 200
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 204
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 264
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mDragging:Z

    return v5

    .line 206
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mDimissX:F

    .line 207
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mDimissY:F

    .line 208
    iput-boolean v7, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mDragging:Z

    .line 209
    iget-object v5, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCallback:Lcom/android/systemui/mzrecent/SwipeHelper$Callback;

    invoke-interface {v5, p1}, Lcom/android/systemui/mzrecent/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 213
    iget-object v5, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 214
    iget-object v5, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v5, :cond_1

    .line 215
    iget-object v5, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrView:Landroid/view/View;

    iput-object v5, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    .line 216
    iget-object v5, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCallback:Lcom/android/systemui/mzrecent/SwipeHelper$Callback;

    iget-object v6, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v5, v6}, Lcom/android/systemui/mzrecent/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 218
    iget-object v5, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 219
    invoke-direct {p0, p1}, Lcom/android/systemui/mzrecent/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v5

    iput v5, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mInitialTouchPos:F

    .line 220
    invoke-direct {p0, p1}, Lcom/android/systemui/mzrecent/SwipeHelper;->getPosXorY(Landroid/view/MotionEvent;)F

    move-result v5

    iput v5, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mInitialTouchPosXorY:F

    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sput v5, Lcom/android/systemui/mzrecent/SwipeHelper;->mLastMotionX2:F

    .line 222
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sput v5, Lcom/android/systemui/mzrecent/SwipeHelper;->mLastMotionY2:F

    .line 223
    invoke-virtual {p0, v8}, Lcom/android/systemui/mzrecent/SwipeHelper;->setColorFilter(Z)V

    .line 225
    :cond_1
    iput-boolean v7, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mPoint_1_Up:Z

    goto :goto_0

    .line 228
    :pswitch_1
    iget-object v5, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mPoint_1_Up:Z

    if-nez v5, :cond_0

    .line 229
    iget-object v5, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 230
    invoke-direct {p0, p1}, Lcom/android/systemui/mzrecent/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v3

    .line 231
    .local v3, "pos":F
    invoke-direct {p0, p1}, Lcom/android/systemui/mzrecent/SwipeHelper;->getPosXorY(Landroid/view/MotionEvent;)F

    move-result v4

    .line 232
    .local v4, "posXorY":F
    iget v5, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mInitialTouchPos:F

    sub-float v1, v3, v5

    .line 233
    .local v1, "delta":F
    iget v5, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mInitialTouchPosXorY:F

    sub-float v2, v4, v5

    .line 242
    .local v2, "deltaXorY":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mPagingTouchSlop:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mPagingTouchSlop:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    .line 244
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sget v6, Lcom/android/systemui/mzrecent/SwipeHelper;->mLastMotionX2:F

    sub-float/2addr v5, v6

    sput v5, Lcom/android/systemui/mzrecent/SwipeHelper;->mLastMotionX2:F

    .line 245
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    sget v6, Lcom/android/systemui/mzrecent/SwipeHelper;->mLastMotionY2:F

    sub-float/2addr v5, v6

    sput v5, Lcom/android/systemui/mzrecent/SwipeHelper;->mLastMotionY2:F

    .line 248
    iget-object v5, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCallback:Lcom/android/systemui/mzrecent/SwipeHelper$Callback;

    iget-object v6, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v5, v6}, Lcom/android/systemui/mzrecent/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    .line 249
    iput-boolean v8, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mDragging:Z

    .line 250
    invoke-direct {p0, p1}, Lcom/android/systemui/mzrecent/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/android/systemui/mzrecent/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v6

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mInitialTouchPos:F

    goto/16 :goto_0

    .line 257
    .end local v1    # "delta":F
    .end local v2    # "deltaXorY":F
    .end local v3    # "pos":F
    .end local v4    # "posXorY":F
    :pswitch_2
    invoke-virtual {p0, v7}, Lcom/android/systemui/mzrecent/SwipeHelper;->setColorFilter(Z)V

    .line 258
    iput-boolean v7, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->isStart:Z

    .line 259
    iput-boolean v7, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mDragging:Z

    .line 260
    iput-object v5, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrView:Landroid/view/View;

    .line 261
    iput-object v5, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    goto/16 :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 34
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 354
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mDragging:Z

    move/from16 v28, v0

    if-nez v28, :cond_0

    .line 355
    const/16 v28, 0x0

    .line 620
    :goto_0
    return v28

    .line 358
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 359
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 360
    .local v4, "action":I
    packed-switch v4, :pswitch_data_0

    .line 620
    :cond_1
    :goto_1
    :pswitch_0
    const/16 v28, 0x1

    goto :goto_0

    .line 362
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/mzrecent/SwipeHelper;->mLastMotionX:F

    .line 363
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/mzrecent/SwipeHelper;->mLastMotionY:F

    goto :goto_1

    .line 367
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v28

    if-nez v28, :cond_1

    .line 368
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/mzrecent/SwipeHelper;->mPoint_1_Up:Z

    goto :goto_1

    .line 373
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mPoint_1_Up:Z

    move/from16 v28, v0

    if-nez v28, :cond_1

    .line 374
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurRotation:I

    move/from16 v28, v0

    const/16 v29, 0x3

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    .line 375
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/mzrecent/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mInitialTouchPos:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    const/16 v29, 0x0

    cmpl-float v28, v28, v29

    if-lez v28, :cond_5

    const/16 v28, 0x1

    :goto_2
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/mzrecent/SwipeHelper;->mMoveUpward:Z

    .line 384
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1

    .line 385
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/mzrecent/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mInitialTouchPos:F

    move/from16 v29, v0

    sub-float v11, v28, v29

    .line 392
    .local v11, "delta":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCallback:Lcom/android/systemui/mzrecent/SwipeHelper$Callback;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-interface/range {v28 .. v29}, Lcom/android/systemui/mzrecent/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v28

    if-nez v28, :cond_2

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/systemui/mzrecent/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v23

    .line 395
    .local v23, "size":F
    const v28, 0x3e19999a    # 0.15f

    mul-float v20, v28, v23

    .line 396
    .local v20, "maxScrollDistance":F
    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v28

    cmpl-float v28, v28, v23

    if-ltz v28, :cond_9

    .line 397
    const/16 v28, 0x0

    cmpl-float v28, v11, v28

    if-lez v28, :cond_8

    move/from16 v11, v20

    .line 407
    .end local v20    # "maxScrollDistance":F
    .end local v23    # "size":F
    :cond_2
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v11}, Lcom/android/systemui/mzrecent/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 408
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCanCurrViewBeDimissed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_3

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/systemui/mzrecent/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v29

    invoke-virtual/range {v28 .. v29}, Landroid/view/View;->setAlpha(F)V

    .line 414
    :cond_3
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/systemui/mzrecent/TaskDescription;

    .line 418
    .local v24, "task":Lcom/android/systemui/mzrecent/TaskDescription;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mWS:Lcom/android/systemui/mzrecent/WorkspaceItem;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getCurrentPage()I

    move-result v16

    .line 419
    .local v16, "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mWS:Lcom/android/systemui/mzrecent/WorkspaceItem;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .line 420
    .local v14, "group":Landroid/view/ViewGroup;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 421
    .local v7, "childArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v14, :cond_a

    .line 422
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    .line 424
    .local v10, "count":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_5
    if-ge v15, v10, :cond_a

    .line 425
    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    .line 427
    .local v19, "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/mzrecent/TaskDescription;

    .line 429
    .local v25, "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    if-eqz v25, :cond_4

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v28

    if-nez v28, :cond_4

    .line 431
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :cond_4
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 375
    .end local v7    # "childArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v10    # "count":I
    .end local v11    # "delta":F
    .end local v14    # "group":Landroid/view/ViewGroup;
    .end local v15    # "i":I
    .end local v16    # "index":I
    .end local v19    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v24    # "task":Lcom/android/systemui/mzrecent/TaskDescription;
    .end local v25    # "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    :cond_5
    const/16 v28, 0x0

    goto/16 :goto_2

    .line 378
    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/mzrecent/SwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mInitialTouchPos:F

    move/from16 v29, v0

    sub-float v28, v28, v29

    const/16 v29, 0x0

    cmpg-float v28, v28, v29

    if-gez v28, :cond_7

    const/16 v28, 0x1

    :goto_6
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/mzrecent/SwipeHelper;->mMoveUpward:Z

    goto/16 :goto_3

    :cond_7
    const/16 v28, 0x0

    goto :goto_6

    .line 397
    .restart local v11    # "delta":F
    .restart local v20    # "maxScrollDistance":F
    .restart local v23    # "size":F
    :cond_8
    move/from16 v0, v20

    neg-float v11, v0

    goto/16 :goto_4

    .line 400
    :cond_9
    div-float v28, v11, v23

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v28, v28, v30

    invoke-static/range {v28 .. v29}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v28, v0

    mul-float v11, v20, v28

    goto/16 :goto_4

    .line 435
    .end local v20    # "maxScrollDistance":F
    .end local v23    # "size":F
    .restart local v7    # "childArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .restart local v14    # "group":Landroid/view/ViewGroup;
    .restart local v16    # "index":I
    .restart local v24    # "task":Lcom/android/systemui/mzrecent/TaskDescription;
    :cond_a
    :try_start_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 436
    .local v26, "translateCount":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mMoveUpward:Z

    move/from16 v28, v0

    if-nez v28, :cond_c

    .line 437
    const/16 v18, 0x0

    .local v18, "j":I
    :goto_7
    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_e

    .line 438
    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 441
    .local v6, "child":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-direct {v0, v6, v11}, Lcom/android/systemui/mzrecent/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 442
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCanCurrViewBeDimissed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_b

    .line 444
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/systemui/mzrecent/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v28

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/view/View;->setAlpha(F)V

    .line 437
    :cond_b
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 449
    .end local v6    # "child":Landroid/view/View;
    .end local v18    # "j":I
    :cond_c
    const/16 v18, 0x0

    .restart local v18    # "j":I
    :goto_8
    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_e

    .line 450
    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 453
    .restart local v6    # "child":Landroid/view/View;
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v0, v6, v1}, Lcom/android/systemui/mzrecent/SwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 454
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCanCurrViewBeDimissed:Z

    move/from16 v28, v0

    if-eqz v28, :cond_d

    .line 456
    const/high16 v28, 0x3f800000    # 1.0f

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/view/View;->setAlpha(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 449
    :cond_d
    add-int/lit8 v18, v18, 0x1

    goto :goto_8

    .line 460
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "childArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v14    # "group":Landroid/view/ViewGroup;
    .end local v16    # "index":I
    .end local v18    # "j":I
    .end local v24    # "task":Lcom/android/systemui/mzrecent/TaskDescription;
    .end local v26    # "translateCount":I
    :catch_0
    move-exception v28

    .line 466
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/mzrecent/SwipeHelper;->mLastMotionX:F

    .line 467
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/mzrecent/SwipeHelper;->mLastMotionY:F

    .line 468
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/mzrecent/SwipeHelper;->isStart:Z

    goto/16 :goto_1

    .line 474
    .end local v11    # "delta":F
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/mzrecent/SwipeHelper;->mLastMotionX:F

    .line 475
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/mzrecent/SwipeHelper;->mLastMotionY:F

    .line 477
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/mzrecent/SwipeHelper;->mDimissXL:F

    .line 478
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/mzrecent/SwipeHelper;->mDimissYL:F

    .line 480
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/mzrecent/SwipeHelper;->isStart:Z

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1

    .line 482
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->MAX_DISMISS_VELOCITY:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mDensityScale:F

    move/from16 v29, v0

    mul-float v21, v28, v29

    .line 483
    .local v21, "maxVelocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v28, v0

    const/16 v29, 0x3e8

    move-object/from16 v0, v28

    move/from16 v1, v29

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 485
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mDensityScale:F

    move/from16 v29, v0

    mul-float v13, v28, v29

    .line 486
    .local v13, "escapeVelocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/systemui/mzrecent/SwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v27

    .line 487
    .local v27, "velocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/systemui/mzrecent/SwipeHelper;->getPerpendicularVelocity(Landroid/view/VelocityTracker;)F

    move-result v22

    .line 490
    .local v22, "perpendicularVelocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Lcom/android/systemui/mzrecent/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v28

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x3fd999999999999aL    # 0.4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/android/systemui/mzrecent/SwipeHelper;->getSize(Landroid/view/View;)F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    mul-double v30, v30, v32

    cmpl-double v28, v28, v30

    if-lez v28, :cond_10

    const/4 v8, 0x1

    .line 492
    .local v8, "childSwipedFarEnough":Z
    :goto_9
    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v28

    cmpl-float v28, v28, v13

    if-lez v28, :cond_13

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(F)F

    move-result v28

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v29

    cmpl-float v28, v28, v29

    if-lez v28, :cond_13

    const/16 v28, 0x0

    cmpl-float v28, v27, v28

    if-lez v28, :cond_11

    const/16 v28, 0x1

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/systemui/mzrecent/SwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v29

    const/16 v30, 0x0

    cmpl-float v29, v29, v30

    if-lez v29, :cond_12

    const/16 v29, 0x1

    :goto_b
    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_13

    const/4 v9, 0x1

    .line 496
    .local v9, "childSwipedFastEnough":Z
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    instance-of v0, v0, Landroid/widget/LinearLayout;

    move/from16 v17, v0

    .line 500
    .local v17, "isDragRecentTask":Z
    if-nez v17, :cond_17

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCallback:Lcom/android/systemui/mzrecent/SwipeHelper$Callback;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-interface/range {v28 .. v29}, Lcom/android/systemui/mzrecent/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v28

    if-eqz v28, :cond_14

    if-nez v9, :cond_f

    if-eqz v8, :cond_14

    :cond_f
    const/4 v12, 0x1

    .line 505
    .local v12, "dismissChild":Z
    :goto_d
    if-eqz v12, :cond_16

    .line 508
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v28, v0

    if-eqz v9, :cond_15

    .end local v27    # "velocity":F
    :goto_e
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/mzrecent/SwipeHelper;->dismissChild(Landroid/view/View;F)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 517
    :goto_f
    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/systemui/mzrecent/SwipeHelper;->setColorFilter(Z)V

    goto/16 :goto_1

    .line 490
    .end local v8    # "childSwipedFarEnough":Z
    .end local v9    # "childSwipedFastEnough":Z
    .end local v12    # "dismissChild":Z
    .end local v17    # "isDragRecentTask":Z
    .restart local v27    # "velocity":F
    :cond_10
    const/4 v8, 0x0

    goto :goto_9

    .line 492
    .restart local v8    # "childSwipedFarEnough":Z
    :cond_11
    const/16 v28, 0x0

    goto :goto_a

    :cond_12
    const/16 v29, 0x0

    goto :goto_b

    :cond_13
    const/4 v9, 0x0

    goto :goto_c

    .line 501
    .restart local v9    # "childSwipedFastEnough":Z
    .restart local v17    # "isDragRecentTask":Z
    :cond_14
    const/4 v12, 0x0

    goto :goto_d

    .line 508
    .restart local v12    # "dismissChild":Z
    :cond_15
    const/16 v27, 0x0

    goto :goto_e

    .line 514
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCallback:Lcom/android/systemui/mzrecent/SwipeHelper$Callback;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-interface/range {v28 .. v29}, Lcom/android/systemui/mzrecent/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/mzrecent/SwipeHelper;->snapChild(Landroid/view/View;F)V

    goto :goto_f

    .line 521
    .end local v12    # "dismissChild":Z
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/systemui/mzrecent/TaskDescription;

    .line 523
    .restart local v24    # "task":Lcom/android/systemui/mzrecent/TaskDescription;
    const/16 v28, 0x3

    move/from16 v0, v28

    if-ne v4, v0, :cond_19

    const/4 v5, 0x1

    .line 524
    .local v5, "cancel":Z
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCallback:Lcom/android/systemui/mzrecent/SwipeHelper$Callback;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-interface/range {v28 .. v29}, Lcom/android/systemui/mzrecent/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v28

    if-eqz v28, :cond_1a

    if-nez v9, :cond_18

    if-eqz v8, :cond_1a

    :cond_18
    if-nez v5, :cond_1a

    const/4 v12, 0x1

    .line 531
    .restart local v12    # "dismissChild":Z
    :goto_11
    if-eqz v12, :cond_20

    .line 536
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mMoveUpward:Z

    move/from16 v28, v0

    if-nez v28, :cond_1b

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-object/from16 v28, v0

    if-eqz v28, :cond_1

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getHandler()Landroid/os/Handler;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-object/from16 v29, v0

    const/16 v29, 0x3f1

    invoke-virtual/range {v28 .. v29}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 578
    .end local v27    # "velocity":F
    :catch_1
    move-exception v28

    goto/16 :goto_1

    .line 523
    .end local v5    # "cancel":Z
    .end local v12    # "dismissChild":Z
    .restart local v27    # "velocity":F
    :cond_19
    const/4 v5, 0x0

    goto :goto_10

    .line 524
    .restart local v5    # "cancel":Z
    :cond_1a
    const/4 v12, 0x0

    goto :goto_11

    .line 548
    .restart local v12    # "dismissChild":Z
    :cond_1b
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mWS:Lcom/android/systemui/mzrecent/WorkspaceItem;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getCurrentPage()I

    move-result v16

    .line 549
    .restart local v16    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mWS:Lcom/android/systemui/mzrecent/WorkspaceItem;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .line 551
    .restart local v14    # "group":Landroid/view/ViewGroup;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 552
    .restart local v7    # "childArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v14, :cond_1d

    .line 553
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    .line 555
    .restart local v10    # "count":I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_12
    if-ge v15, v10, :cond_1d

    .line 556
    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    .line 558
    .restart local v19    # "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/mzrecent/TaskDescription;

    .line 560
    .restart local v25    # "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    if-eqz v25, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v28

    if-eq v0, v1, :cond_1c

    .line 562
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    :cond_1c
    add-int/lit8 v15, v15, 0x1

    goto :goto_12

    .line 566
    .end local v10    # "count":I
    .end local v15    # "i":I
    .end local v19    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v25    # "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    :cond_1d
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 568
    .restart local v26    # "translateCount":I
    const/16 v18, 0x0

    .restart local v18    # "j":I
    :goto_13
    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_1e

    .line 569
    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 570
    .restart local v6    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v6, v1}, Lcom/android/systemui/mzrecent/SwipeHelper;->snapChild(Landroid/view/View;F)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 568
    add-int/lit8 v18, v18, 0x1

    goto :goto_13

    .line 572
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "childArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v14    # "group":Landroid/view/ViewGroup;
    .end local v16    # "index":I
    .end local v18    # "j":I
    .end local v26    # "translateCount":I
    :catch_2
    move-exception v28

    .line 575
    :cond_1e
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v28, v0

    if-eqz v9, :cond_1f

    .end local v27    # "velocity":F
    :goto_14
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/mzrecent/SwipeHelper;->dismissChild(Landroid/view/View;F)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_1

    .restart local v27    # "velocity":F
    :cond_1f
    const/16 v27, 0x0

    goto :goto_14

    .line 582
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCallback:Lcom/android/systemui/mzrecent/SwipeHelper$Callback;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v29, v0

    invoke-interface/range {v28 .. v29}, Lcom/android/systemui/mzrecent/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/mzrecent/SwipeHelper;->snapChild(Landroid/view/View;F)V

    .line 590
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mWS:Lcom/android/systemui/mzrecent/WorkspaceItem;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getCurrentPage()I

    move-result v16

    .line 591
    .restart local v16    # "index":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mWS:Lcom/android/systemui/mzrecent/WorkspaceItem;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup;

    .line 592
    .restart local v14    # "group":Landroid/view/ViewGroup;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 593
    .restart local v7    # "childArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v14, :cond_22

    .line 594
    invoke-virtual {v14}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v10

    .line 596
    .restart local v10    # "count":I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_15
    if-ge v15, v10, :cond_22

    .line 597
    invoke-virtual {v14, v15}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/LinearLayout;

    .line 599
    .restart local v19    # "linearLayout":Landroid/widget/LinearLayout;
    invoke-virtual/range {v19 .. v19}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/systemui/mzrecent/TaskDescription;

    .line 601
    .restart local v25    # "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    if-eqz v25, :cond_21

    .line 602
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 596
    :cond_21
    add-int/lit8 v15, v15, 0x1

    goto :goto_15

    .line 606
    .end local v10    # "count":I
    .end local v15    # "i":I
    .end local v19    # "linearLayout":Landroid/widget/LinearLayout;
    .end local v25    # "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    :cond_22
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v26

    .line 607
    .restart local v26    # "translateCount":I
    const/16 v18, 0x0

    .restart local v18    # "j":I
    :goto_16
    move/from16 v0, v18

    move/from16 v1, v26

    if-ge v0, v1, :cond_1

    .line 608
    move/from16 v0, v18

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 609
    .restart local v6    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCallback:Lcom/android/systemui/mzrecent/SwipeHelper$Callback;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    invoke-interface {v0, v6}, Lcom/android/systemui/mzrecent/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 610
    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v6, v1}, Lcom/android/systemui/mzrecent/SwipeHelper;->snapChild(Landroid/view/View;F)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 607
    add-int/lit8 v18, v18, 0x1

    goto :goto_16

    .line 614
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "childArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v14    # "group":Landroid/view/ViewGroup;
    .end local v16    # "index":I
    .end local v18    # "j":I
    .end local v26    # "translateCount":I
    :catch_3
    move-exception v28

    goto/16 :goto_1

    .line 510
    .end local v5    # "cancel":Z
    .end local v24    # "task":Lcom/android/systemui/mzrecent/TaskDescription;
    .end local v27    # "velocity":F
    :catch_4
    move-exception v28

    goto/16 :goto_f

    .line 360
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setColorFilter(Z)V
    .locals 4
    .param p1, "set"    # Z

    .prologue
    .line 643
    iget-object v2, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrView:Landroid/view/View;

    instance-of v2, v2, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrView:Landroid/view/View;

    check-cast v2, Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    if-nez p1, :cond_2

    .line 645
    iget-object v2, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurrView:Landroid/view/View;

    const v3, 0x7f0e003c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object v1, v2

    check-cast v1, Landroid/widget/ImageView;

    .line 646
    .local v1, "image":Landroid/widget/ImageView;
    const/4 v0, 0x0

    .line 647
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 648
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 650
    :cond_0
    if-eqz v0, :cond_1

    .line 651
    if-eqz p1, :cond_3

    .line 652
    iget-object v2, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->colorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 653
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 659
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    if-eqz v2, :cond_2

    .line 660
    iget-object v2, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v2}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->clearColorFilters()V

    .line 663
    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "image":Landroid/widget/ImageView;
    :cond_2
    return-void

    .line 655
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    .restart local v1    # "image":Landroid/widget/ImageView;
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 656
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setCurRotation(I)V
    .locals 0
    .param p1, "rotation"    # I

    .prologue
    .line 624
    iput p1, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCurRotation:I

    .line 625
    return-void
.end method

.method public setWorkspaceItem(Lcom/android/systemui/mzrecent/WorkspaceItem;)V
    .locals 0
    .param p1, "ws"    # Lcom/android/systemui/mzrecent/WorkspaceItem;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mWS:Lcom/android/systemui/mzrecent/WorkspaceItem;

    .line 149
    return-void
.end method

.method public snapChild(Landroid/view/View;F)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    .line 319
    move-object v1, p1

    .line 320
    .local v1, "animView":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/mzrecent/SwipeHelper;->mCallback:Lcom/android/systemui/mzrecent/SwipeHelper$Callback;

    invoke-interface {v4, v1}, Lcom/android/systemui/mzrecent/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    .line 322
    .local v2, "canAnimViewBeDismissed":Z
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/mzrecent/SwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 323
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const/16 v3, 0x96

    .line 324
    .local v3, "duration":I
    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 325
    new-instance v4, Lcom/android/systemui/mzrecent/SwipeHelper$3;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/systemui/mzrecent/SwipeHelper$3;-><init>(Lcom/android/systemui/mzrecent/SwipeHelper;ZLandroid/view/View;)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 333
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 334
    return-void
.end method
