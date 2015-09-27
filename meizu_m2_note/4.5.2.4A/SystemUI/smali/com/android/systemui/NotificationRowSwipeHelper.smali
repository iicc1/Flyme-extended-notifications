.class public Lcom/android/systemui/NotificationRowSwipeHelper;
.super Ljava/lang/Object;
.source "NotificationRowSwipeHelper.java"


# static fields
.field public static ALPHA_FADE_START:F

.field private static sLinearInterpolator:Landroid/view/animation/LinearInterpolator;


# instance fields
.field private DEFAULT_ESCAPE_ANIMATION_DURATION:I

.field private MAX_DISMISS_VELOCITY:I

.field private MAX_ESCAPE_ANIMATION_DURATION:I

.field private SWIPE_ESCAPE_VELOCITY:F

.field private mCallback:Lcom/android/systemui/SwipeHelper$Callback;

.field private mCanCurrViewBeDimissed:Z

.field private mContentViewMovingDistance:F

.field private mCurrAnimContentView:Landroid/view/View;

.field private mCurrAnimLeftMenu:Landroid/view/View;

.field private mCurrAnimRightMenu:Landroid/view/View;

.field private mCurrAnimView:Landroid/view/View;

.field private mCurrView:Landroid/view/View;

.field private mDensityScale:F

.field private mDragging:Z

.field private mHandler:Landroid/os/Handler;

.field private mInitialTouchPos:F

.field private mIsInOperationMode:Z

.field private mIsMenuClicked:Z

.field private mLongPressListener:Landroid/view/View$OnLongClickListener;

.field private mLongPressSent:Z

.field private mLongPressTimeout:J

.field private mMinAlpha:F

.field private mOldAnimContentView:Landroid/view/View;

.field private mOldAnimLeftMenu:Landroid/view/View;

.field private mOldAnimRightMenu:Landroid/view/View;

.field private mOldView:Landroid/view/View;

.field private mPagingTouchSlop:F

.field private mSwipeDirection:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWatchLongPress:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, Lcom/android/systemui/NotificationRowSwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 68
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/NotificationRowSwipeHelper;->ALPHA_FADE_START:F

    return-void
.end method

.method public constructor <init>(ILcom/android/systemui/SwipeHelper$Callback;FF)V
    .locals 2
    .param p1, "swipeDirection"    # I
    .param p2, "callback"    # Lcom/android/systemui/SwipeHelper$Callback;
    .param p3, "densityScale"    # F
    .param p4, "pagingTouchSlop"    # F

    .prologue
    const/4 v1, 0x0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/high16 v0, 0x42c80000    # 100.0f

    iput v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    .line 63
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    .line 64
    const/16 v0, 0x190

    iput v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 65
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->MAX_DISMISS_VELOCITY:I

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mMinAlpha:F

    .line 80
    iput-boolean v1, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mIsInOperationMode:Z

    .line 81
    iput-boolean v1, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mIsMenuClicked:Z

    .line 104
    iput-object p2, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    .line 105
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mHandler:Landroid/os/Handler;

    .line 106
    iput p1, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mSwipeDirection:I

    .line 107
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 108
    iput p3, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mDensityScale:F

    .line 109
    iput p4, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mPagingTouchSlop:F

    .line 111
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40200000    # 2.5f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mLongPressTimeout:J

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/NotificationRowSwipeHelper;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/NotificationRowSwipeHelper;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/NotificationRowSwipeHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/NotificationRowSwipeHelper;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mLongPressSent:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/NotificationRowSwipeHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/NotificationRowSwipeHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mLongPressSent:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/NotificationRowSwipeHelper;)Landroid/view/View$OnLongClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/NotificationRowSwipeHelper;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mLongPressListener:Landroid/view/View$OnLongClickListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/NotificationRowSwipeHelper;)Lcom/android/systemui/SwipeHelper$Callback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/NotificationRowSwipeHelper;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/NotificationRowSwipeHelper;Landroid/view/View;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/NotificationRowSwipeHelper;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Z

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/NotificationRowSwipeHelper;->updateAlphaFromOffset(Landroid/view/View;Z)V

    return-void
.end method

.method private createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "newPos"    # F

    .prologue
    .line 140
    iget v1, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mSwipeDirection:I

    if-nez v1, :cond_0

    const-string v1, "translationX"

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p2, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 142
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    return-object v0

    .line 140
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

    .line 168
    invoke-direct {p0, p1}, Lcom/android/systemui/NotificationRowSwipeHelper;->getSize(Landroid/view/View;)F

    move-result v3

    .line 169
    .local v3, "viewSize":F
    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v0, v4, v3

    .line 170
    .local v0, "fadeSize":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 171
    .local v2, "result":F
    invoke-direct {p0, p1}, Lcom/android/systemui/NotificationRowSwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v1

    .line 172
    .local v1, "pos":F
    sget v4, Lcom/android/systemui/NotificationRowSwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    cmpl-float v4, v1, v4

    if-ltz v4, :cond_1

    .line 173
    sget v4, Lcom/android/systemui/NotificationRowSwipeHelper;->ALPHA_FADE_START:F

    mul-float/2addr v4, v3

    sub-float v4, v1, v4

    div-float/2addr v4, v0

    sub-float v2, v5, v4

    .line 177
    :cond_0
    :goto_0
    iget v4, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mMinAlpha:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v4

    return v4

    .line 174
    :cond_1
    sget v4, Lcom/android/systemui/NotificationRowSwipeHelper;->ALPHA_FADE_START:F

    sub-float v4, v5, v4

    mul-float/2addr v4, v3

    cmpg-float v4, v1, v4

    if-gez v4, :cond_0

    .line 175
    sget v4, Lcom/android/systemui/NotificationRowSwipeHelper;->ALPHA_FADE_START:F

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
    .line 146
    iget v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mSwipeDirection:I

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
    .line 127
    iget v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mSwipeDirection:I

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

.method private getSize(Landroid/view/View;)F
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 159
    iget v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mSwipeDirection:I

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
    .line 131
    iget v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mSwipeDirection:I

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
    .line 135
    iget v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mSwipeDirection:I

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

.method private inRangeOfView(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 587
    const/4 v5, 0x2

    new-array v0, v5, [I

    .line 588
    .local v0, "location":[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 589
    aget v1, v0, v4

    .line 590
    .local v1, "x":I
    aget v2, v0, v3

    .line 592
    .local v2, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    int-to-float v6, v1

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v6

    add-int/2addr v6, v1

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    :cond_0
    move v3, v4

    .line 595
    :cond_1
    return v3
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;)V
    .locals 5
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 195
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

    invoke-static {p0, v0}, Lcom/android/systemui/NotificationRowSwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 198
    return-void
.end method

.method public static invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "childBounds"    # Landroid/graphics/RectF;

    .prologue
    .line 206
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0    # "view":Landroid/view/View;
    check-cast p0, Landroid/view/View;

    .line 208
    .restart local p0    # "view":Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 209
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

    .line 220
    :cond_0
    return-void
.end method

.method private setTranslation(Landroid/view/View;F)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "translate"    # F

    .prologue
    .line 151
    iget v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mSwipeDirection:I

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    .line 156
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0
.end method

.method private updateAlphaFromOffset(Landroid/view/View;Z)V
    .locals 3
    .param p1, "animView"    # Landroid/view/View;
    .param p2, "dismissable"    # Z

    .prologue
    const/4 v2, 0x0

    .line 181
    if-eqz p2, :cond_0

    .line 182
    invoke-direct {p0, p1}, Lcom/android/systemui/NotificationRowSwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v0

    .line 183
    .local v0, "alpha":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 184
    const/4 v1, 0x2

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 188
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/NotificationRowSwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 190
    .end local v0    # "alpha":F
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/NotificationRowSwipeHelper;->invalidateGlobalRegion(Landroid/view/View;)V

    .line 191
    return-void

    .line 186
    .restart local v0    # "alpha":F
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0
.end method


# virtual methods
.method public dismissChild(Landroid/view/View;F)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    const/4 v7, 0x0

    .line 339
    iget-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v5, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 340
    .local v1, "animView":Landroid/view/View;
    iget-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v5, p1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    .line 343
    .local v2, "canAnimViewBeDismissed":Z
    cmpg-float v5, p2, v7

    if-ltz v5, :cond_1

    cmpl-float v5, p2, v7

    if-nez v5, :cond_0

    invoke-direct {p0, v1}, Lcom/android/systemui/NotificationRowSwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    cmpg-float v5, v5, v7

    if-ltz v5, :cond_1

    :cond_0
    cmpl-float v5, p2, v7

    if-nez v5, :cond_2

    invoke-direct {p0, v1}, Lcom/android/systemui/NotificationRowSwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    cmpl-float v5, v5, v7

    if-nez v5, :cond_2

    iget v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mSwipeDirection:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 347
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/NotificationRowSwipeHelper;->getSize(Landroid/view/View;)F

    move-result v5

    neg-float v4, v5

    .line 351
    .local v4, "newPos":F
    :goto_0
    iget v3, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->MAX_ESCAPE_ANIMATION_DURATION:I

    .line 352
    .local v3, "duration":I
    cmpl-float v5, p2, v7

    if-eqz v5, :cond_3

    .line 353
    invoke-direct {p0, v1}, Lcom/android/systemui/NotificationRowSwipeHelper;->getTranslation(Landroid/view/View;)F

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

    .line 360
    :goto_1
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 361
    invoke-direct {p0, v1, v4}, Lcom/android/systemui/NotificationRowSwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 362
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    sget-object v5, Lcom/android/systemui/NotificationRowSwipeHelper;->sLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 363
    int-to-long v6, v3

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 364
    new-instance v5, Lcom/android/systemui/NotificationRowSwipeHelper$2;

    invoke-direct {v5, p0, p1, v1}, Lcom/android/systemui/NotificationRowSwipeHelper$2;-><init>(Lcom/android/systemui/NotificationRowSwipeHelper;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 370
    new-instance v5, Lcom/android/systemui/NotificationRowSwipeHelper$3;

    invoke-direct {v5, p0, v1, v2}, Lcom/android/systemui/NotificationRowSwipeHelper$3;-><init>(Lcom/android/systemui/NotificationRowSwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 375
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 376
    return-void

    .line 349
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    .end local v3    # "duration":I
    .end local v4    # "newPos":F
    :cond_2
    invoke-direct {p0, v1}, Lcom/android/systemui/NotificationRowSwipeHelper;->getSize(Landroid/view/View;)F

    move-result v4

    .restart local v4    # "newPos":F
    goto :goto_0

    .line 357
    .restart local v3    # "duration":I
    :cond_3
    iget v3, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->DEFAULT_ESCAPE_ANIMATION_DURATION:I

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 232
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 331
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mDragging:Z

    :cond_1
    :goto_1
    return v4

    .line 234
    :pswitch_0
    iput-boolean v2, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mDragging:Z

    .line 235
    iput-boolean v2, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mLongPressSent:Z

    .line 236
    iget-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v5, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    .line 237
    iget-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5}, Landroid/view/VelocityTracker;->clear()V

    .line 238
    iget-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v5, :cond_0

    .line 239
    iget-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v6, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v5, v6}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimView:Landroid/view/View;

    .line 240
    iget-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimView:Landroid/view/View;

    const v6, 0x7f0e0037

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimContentView:Landroid/view/View;

    .line 241
    iget-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimView:Landroid/view/View;

    const v6, 0x7f0e0166

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimLeftMenu:Landroid/view/View;

    .line 242
    iget-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimView:Landroid/view/View;

    const v6, 0x7f0e016e

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimRightMenu:Landroid/view/View;

    .line 243
    iget-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v6, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v5, v6}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCanCurrViewBeDimissed:Z

    .line 244
    iget-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 245
    invoke-direct {p0, p1}, Lcom/android/systemui/NotificationRowSwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v5

    iput v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mInitialTouchPos:F

    .line 247
    iget-boolean v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mIsInOperationMode:Z

    if-eqz v5, :cond_6

    .line 248
    const-string v5, "com.android.systemui.NotificationRowSwipeHelper"

    const-string v6, "onInterceptTouchEvent(ACTION_DOWN)#in menu operation mode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    iget-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mOldView:Landroid/view/View;

    if-eq v5, v6, :cond_2

    .line 250
    const-string v5, "com.android.systemui.NotificationRowSwipeHelper"

    const-string v6, "onInterceptTouchEvent#different views. reset old."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mOldView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mOldAnimLeftMenu:Landroid/view/View;

    invoke-virtual {p0, v5, v6, v7, v7}, Lcom/android/systemui/NotificationRowSwipeHelper;->snapChild(Landroid/view/View;Landroid/view/View;FF)V

    .line 253
    iget-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mOldView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mOldAnimContentView:Landroid/view/View;

    invoke-virtual {p0, v5, v6, v7, v7}, Lcom/android/systemui/NotificationRowSwipeHelper;->snapChild(Landroid/view/View;Landroid/view/View;FF)V

    .line 254
    iget-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mOldView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mOldAnimRightMenu:Landroid/view/View;

    invoke-virtual {p0, v5, v6, v7, v7}, Lcom/android/systemui/NotificationRowSwipeHelper;->snapChild(Landroid/view/View;Landroid/view/View;FF)V

    .line 255
    iput v7, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mContentViewMovingDistance:F

    goto/16 :goto_1

    .line 258
    :cond_2
    const-string v5, "com.android.systemui.NotificationRowSwipeHelper"

    const-string v6, "onInterceptTouchEvent(ACTION_DOWN)#same view, find which child is clicked."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimLeftMenu:Landroid/view/View;

    invoke-direct {p0, v5, p1}, Lcom/android/systemui/NotificationRowSwipeHelper;->inRangeOfView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimRightMenu:Landroid/view/View;

    invoke-direct {p0, v5, p1}, Lcom/android/systemui/NotificationRowSwipeHelper;->inRangeOfView(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move v2, v4

    .line 260
    .local v2, "menuClicked":Z
    :cond_4
    if-eqz v2, :cond_5

    .line 261
    const-string v5, "com.android.systemui.NotificationRowSwipeHelper"

    const-string v6, "onInterceptTouchEvent(ACTION_DOWN)#same view, menu is clicked"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimLeftMenu:Landroid/view/View;

    const v6, 0x7f0e0167

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->callOnClick()Z

    .line 265
    iput-boolean v4, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mIsMenuClicked:Z

    goto/16 :goto_1

    .line 269
    :cond_5
    const-string v5, "com.android.systemui.NotificationRowSwipeHelper"

    const-string v6, "onInterceptTouchEvent(ACTION_DOWN)#same view, non-menu is clicked."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    iget-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimLeftMenu:Landroid/view/View;

    invoke-virtual {p0, v5, v6, v7, v7}, Lcom/android/systemui/NotificationRowSwipeHelper;->snapChild(Landroid/view/View;Landroid/view/View;FF)V

    .line 271
    iget-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimContentView:Landroid/view/View;

    invoke-virtual {p0, v5, v6, v7, v7}, Lcom/android/systemui/NotificationRowSwipeHelper;->snapChild(Landroid/view/View;Landroid/view/View;FF)V

    .line 272
    iget-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimRightMenu:Landroid/view/View;

    invoke-virtual {p0, v5, v6, v7, v7}, Lcom/android/systemui/NotificationRowSwipeHelper;->snapChild(Landroid/view/View;Landroid/view/View;FF)V

    .line 273
    iput v7, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mContentViewMovingDistance:F

    goto/16 :goto_1

    .line 279
    .end local v2    # "menuClicked":Z
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mLongPressListener:Landroid/view/View$OnLongClickListener;

    if-eqz v4, :cond_0

    .line 280
    iget-object v4, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-nez v4, :cond_7

    .line 281
    new-instance v4, Lcom/android/systemui/NotificationRowSwipeHelper$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/NotificationRowSwipeHelper$1;-><init>(Lcom/android/systemui/NotificationRowSwipeHelper;)V

    iput-object v4, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    .line 292
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    iget-wide v6, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mLongPressTimeout:J

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 299
    :pswitch_1
    iget-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mLongPressSent:Z

    if-nez v5, :cond_0

    .line 300
    const-string v5, "com.android.systemui.NotificationRowSwipeHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onInterceptTouchEvent(ACTION_MOVE)#menu operation mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mIsInOperationMode:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iget-boolean v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mIsInOperationMode:Z

    if-nez v5, :cond_1

    .line 304
    iget-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v5, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 305
    invoke-direct {p0, p1}, Lcom/android/systemui/NotificationRowSwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v3

    .line 306
    .local v3, "pos":F
    iget v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mInitialTouchPos:F

    sub-float v1, v3, v5

    .line 307
    .local v1, "delta":F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mPagingTouchSlop:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 308
    iget-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    iget-object v6, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    invoke-interface {v5, v6}, Lcom/android/systemui/SwipeHelper$Callback;->onBeginDrag(Landroid/view/View;)V

    .line 309
    iput-boolean v4, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mDragging:Z

    .line 310
    invoke-direct {p0, p1}, Lcom/android/systemui/NotificationRowSwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimContentView:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/android/systemui/NotificationRowSwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mInitialTouchPos:F

    .line 312
    invoke-virtual {p0}, Lcom/android/systemui/NotificationRowSwipeHelper;->removeLongPressCallback()V

    goto/16 :goto_0

    .line 320
    .end local v1    # "delta":F
    .end local v3    # "pos":F
    :pswitch_2
    const-string v4, "com.android.systemui.NotificationRowSwipeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onInterceptTouchEvent(ACTION_UP)#menu operation mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mIsInOperationMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iput-boolean v2, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mDragging:Z

    .line 322
    iput-object v8, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    .line 323
    iput-object v8, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimView:Landroid/view/View;

    .line 324
    iput-object v8, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimContentView:Landroid/view/View;

    .line 325
    iput-object v8, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimLeftMenu:Landroid/view/View;

    .line 326
    iput-object v8, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimRightMenu:Landroid/view/View;

    .line 327
    iput-boolean v2, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mLongPressSent:Z

    .line 328
    invoke-virtual {p0}, Lcom/android/systemui/NotificationRowSwipeHelper;->removeLongPressCallback()V

    goto/16 :goto_0

    .line 232
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 417
    const-string v20, "com.android.systemui.NotificationRowSwipeHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onTouchEvent#motion event "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mLongPressSent:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 419
    const/16 v20, 0x1

    .line 567
    :goto_0
    return v20

    .line 422
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mDragging:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mIsInOperationMode:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 425
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/NotificationRowSwipeHelper;->removeLongPressCallback()V

    .line 426
    const/16 v20, 0x0

    goto :goto_0

    .line 429
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 430
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 431
    .local v6, "action":I
    packed-switch v6, :pswitch_data_0

    .line 567
    :cond_2
    :goto_1
    const/16 v20, 0x1

    goto :goto_0

    .line 433
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mIsInOperationMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 434
    const/16 v20, 0x1

    goto :goto_0

    .line 436
    :cond_3
    const-string v20, "com.android.systemui.NotificationRowSwipeHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onTouchEvent(ACTION_DOWN)#menu operation mode: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mIsInOperationMode:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 440
    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mIsInOperationMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_4

    .line 441
    const/16 v20, 0x1

    goto :goto_0

    .line 443
    :cond_4
    const-string v20, "com.android.systemui.NotificationRowSwipeHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onTouchEvent(ACTION_MOVE)#menu operation mode: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mIsInOperationMode:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 445
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/NotificationRowSwipeHelper;->getPos(Landroid/view/MotionEvent;)F

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mInitialTouchPos:F

    move/from16 v21, v0

    sub-float v9, v20, v21

    .line 446
    .local v9, "delta":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimLeftMenu:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getWidth()I

    move-result v12

    .line 447
    .local v12, "left_menu_width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimRightMenu:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getWidth()I

    move-result v17

    .line 448
    .local v17, "right_menu_width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v20

    if-nez v20, :cond_a

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/android/systemui/SwipeHelper$Callback;->isSystemNotification(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 451
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/NotificationRowSwipeHelper;->getSize(Landroid/view/View;)F

    move-result v18

    .line 452
    .local v18, "size":F
    const v20, 0x3e19999a    # 0.15f

    mul-float v13, v20, v18

    .line 453
    .local v13, "maxScrollDistance":F
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v20

    cmpl-float v20, v20, v18

    if-ltz v20, :cond_6

    .line 454
    const/16 v20, 0x0

    cmpl-float v20, v9, v20

    if-lez v20, :cond_5

    move v9, v13

    .line 458
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v9}, Lcom/android/systemui/NotificationRowSwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 489
    .end local v13    # "maxScrollDistance":F
    .end local v18    # "size":F
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCanCurrViewBeDimissed:Z

    move/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/NotificationRowSwipeHelper;->updateAlphaFromOffset(Landroid/view/View;Z)V

    goto/16 :goto_1

    .line 454
    .restart local v13    # "maxScrollDistance":F
    .restart local v18    # "size":F
    :cond_5
    neg-float v9, v13

    goto :goto_2

    .line 456
    :cond_6
    div-float v20, v9, v18

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v20, v20, v22

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sin(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    mul-float v9, v13, v20

    goto :goto_2

    .line 460
    .end local v13    # "maxScrollDistance":F
    .end local v18    # "size":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimContentView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/NotificationRowSwipeHelper;->getSize(Landroid/view/View;)F

    move-result v18

    .line 461
    .restart local v18    # "size":F
    const/16 v20, 0x0

    cmpl-float v20, v9, v20

    if-lez v20, :cond_8

    int-to-float v0, v12

    move/from16 v20, v0

    cmpl-float v20, v9, v20

    if-lez v20, :cond_8

    .line 464
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v20

    int-to-float v0, v12

    move/from16 v21, v0

    sub-float v20, v20, v21

    div-float v21, v9, v18

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v21, v0

    mul-float v15, v20, v21

    .line 465
    .local v15, "offset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimLeftMenu:Landroid/view/View;

    move-object/from16 v20, v0

    int-to-float v0, v12

    move/from16 v21, v0

    const v22, 0x3e4ccccd    # 0.2f

    mul-float v22, v22, v15

    add-float v21, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/NotificationRowSwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimContentView:Landroid/view/View;

    move-object/from16 v20, v0

    int-to-float v0, v12

    move/from16 v21, v0

    const v22, 0x3ecccccd    # 0.4f

    mul-float v22, v22, v15

    add-float v21, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/NotificationRowSwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimRightMenu:Landroid/view/View;

    move-object/from16 v20, v0

    int-to-float v0, v12

    move/from16 v21, v0

    const v22, 0x3ecccccd    # 0.4f

    mul-float v22, v22, v15

    add-float v21, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/NotificationRowSwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 468
    int-to-float v0, v12

    move/from16 v20, v0

    const v21, 0x3ecccccd    # 0.4f

    mul-float v21, v21, v15

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/NotificationRowSwipeHelper;->mContentViewMovingDistance:F

    goto/16 :goto_3

    .line 469
    .end local v15    # "offset":F
    :cond_8
    const/16 v20, 0x0

    cmpg-float v20, v9, v20

    if-gez v20, :cond_9

    neg-float v0, v9

    move/from16 v20, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_9

    .line 472
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v20

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    div-float v21, v9, v18

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v21, v0

    mul-float v15, v20, v21

    .line 473
    .restart local v15    # "offset":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimLeftMenu:Landroid/view/View;

    move-object/from16 v20, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x3ecccccd    # 0.4f

    mul-float v22, v22, v15

    add-float v21, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/NotificationRowSwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimContentView:Landroid/view/View;

    move-object/from16 v20, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x3ecccccd    # 0.4f

    mul-float v22, v22, v15

    add-float v21, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/NotificationRowSwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimRightMenu:Landroid/view/View;

    move-object/from16 v20, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x3e4ccccd    # 0.2f

    mul-float v22, v22, v15

    add-float v21, v21, v22

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/NotificationRowSwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 476
    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const v21, 0x3ecccccd    # 0.4f

    mul-float v21, v21, v15

    add-float v20, v20, v21

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/NotificationRowSwipeHelper;->mContentViewMovingDistance:F

    goto/16 :goto_3

    .line 479
    .end local v15    # "offset":F
    :cond_9
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mContentViewMovingDistance:F

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimLeftMenu:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v9}, Lcom/android/systemui/NotificationRowSwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 481
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimContentView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v9}, Lcom/android/systemui/NotificationRowSwipeHelper;->setTranslation(Landroid/view/View;F)V

    .line 482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimRightMenu:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v9}, Lcom/android/systemui/NotificationRowSwipeHelper;->setTranslation(Landroid/view/View;F)V

    goto/16 :goto_3

    .line 486
    .end local v18    # "size":F
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v9}, Lcom/android/systemui/NotificationRowSwipeHelper;->setTranslation(Landroid/view/View;F)V

    goto/16 :goto_3

    .line 494
    .end local v9    # "delta":F
    .end local v12    # "left_menu_width":I
    .end local v17    # "right_menu_width":I
    :pswitch_2
    const-string v20, "com.android.systemui.NotificationRowSwipeHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onTouchEvent(ACTION_UP)#menu operation mode: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mIsInOperationMode:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mIsMenuClicked:Z

    move/from16 v20, v0

    if-nez v20, :cond_c

    .line 496
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/NotificationRowSwipeHelper;->mIsInOperationMode:Z

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    .line 502
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->MAX_DISMISS_VELOCITY:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mDensityScale:F

    move/from16 v21, v0

    mul-float v14, v20, v21

    .line 503
    .local v14, "maxVelocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    const/16 v21, 0x3e8

    move-object/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v0, v1, v14}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 504
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->SWIPE_ESCAPE_VELOCITY:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mDensityScale:F

    move/from16 v21, v0

    mul-float v11, v20, v21

    .line 505
    .local v11, "escapeVelocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/NotificationRowSwipeHelper;->getVelocity(Landroid/view/VelocityTracker;)F

    move-result v19

    .line 506
    .local v19, "velocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/NotificationRowSwipeHelper;->getPerpendicularVelocity(Landroid/view/VelocityTracker;)F

    move-result v16

    .line 509
    .local v16, "perpendicularVelocity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/systemui/NotificationRowSwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v20

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    const-wide v22, 0x3fd999999999999aL    # 0.4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/systemui/NotificationRowSwipeHelper;->getSize(Landroid/view/View;)F

    move-result v24

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    cmpl-double v20, v20, v22

    if-lez v20, :cond_d

    const/4 v7, 0x1

    .line 511
    .local v7, "childSwipedFarEnough":Z
    :goto_4
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v20

    cmpl-float v20, v20, v11

    if-lez v20, :cond_10

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(F)F

    move-result v20

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(F)F

    move-result v21

    cmpl-float v20, v20, v21

    if-lez v20, :cond_10

    const/16 v20, 0x0

    cmpl-float v20, v19, v20

    if-lez v20, :cond_e

    const/16 v20, 0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimView:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/systemui/NotificationRowSwipeHelper;->getTranslation(Landroid/view/View;)F

    move-result v21

    const/16 v22, 0x0

    cmpl-float v21, v21, v22

    if-lez v21, :cond_f

    const/16 v21, 0x1

    :goto_6
    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_10

    const/4 v8, 0x1

    .line 515
    .local v8, "childSwipedFastEnough":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v20

    if-eqz v20, :cond_11

    if-nez v8, :cond_b

    if-eqz v7, :cond_11

    :cond_b
    const/4 v10, 0x1

    .line 518
    .local v10, "dismissChild":Z
    :goto_8
    if-eqz v10, :cond_13

    .line 520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v8, :cond_12

    .end local v19    # "velocity":F
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/NotificationRowSwipeHelper;->dismissChild(Landroid/view/View;F)V

    .line 524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/android/systemui/SwipeHelper$Callback;->onChildDismissedManual(Landroid/view/View;)V

    .line 559
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/NotificationRowSwipeHelper;->mOldView:Landroid/view/View;

    .line 560
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimContentView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/NotificationRowSwipeHelper;->mOldAnimContentView:Landroid/view/View;

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimLeftMenu:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/NotificationRowSwipeHelper;->mOldAnimLeftMenu:Landroid/view/View;

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimRightMenu:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/NotificationRowSwipeHelper;->mOldAnimRightMenu:Landroid/view/View;

    .line 563
    const-string v20, "com.android.systemui.NotificationRowSwipeHelper"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onTouchEvent(ACTION_UP)#menu operation mode: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mIsInOperationMode:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 498
    .end local v7    # "childSwipedFarEnough":Z
    .end local v8    # "childSwipedFastEnough":Z
    .end local v10    # "dismissChild":Z
    .end local v11    # "escapeVelocity":F
    .end local v14    # "maxVelocity":F
    .end local v16    # "perpendicularVelocity":F
    :cond_c
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/NotificationRowSwipeHelper;->mIsMenuClicked:Z

    .line 499
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 509
    .restart local v11    # "escapeVelocity":F
    .restart local v14    # "maxVelocity":F
    .restart local v16    # "perpendicularVelocity":F
    .restart local v19    # "velocity":F
    :cond_d
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 511
    .restart local v7    # "childSwipedFarEnough":Z
    :cond_e
    const/16 v20, 0x0

    goto/16 :goto_5

    :cond_f
    const/16 v21, 0x0

    goto/16 :goto_6

    :cond_10
    const/4 v8, 0x0

    goto/16 :goto_7

    .line 515
    .restart local v8    # "childSwipedFastEnough":Z
    :cond_11
    const/4 v10, 0x0

    goto/16 :goto_8

    .line 520
    .restart local v10    # "dismissChild":Z
    :cond_12
    const/16 v19, 0x0

    goto/16 :goto_9

    .line 527
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v20

    if-nez v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/android/systemui/SwipeHelper$Callback;->isSystemNotification(Landroid/view/View;)Z

    move-result v20

    if-nez v20, :cond_16

    .line 529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/android/systemui/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimLeftMenu:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getWidth()I

    move-result v12

    .line 531
    .restart local v12    # "left_menu_width":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimRightMenu:Landroid/view/View;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getWidth()I

    move-result v17

    .line 534
    .restart local v17    # "right_menu_width":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mContentViewMovingDistance:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mContentViewMovingDistance:F

    move/from16 v20, v0

    int-to-float v0, v12

    move/from16 v21, v0

    cmpl-float v20, v20, v21

    if-lez v20, :cond_14

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimLeftMenu:Landroid/view/View;

    move-object/from16 v21, v0

    int-to-float v0, v12

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v19

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/NotificationRowSwipeHelper;->snapChild(Landroid/view/View;Landroid/view/View;FF)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimContentView:Landroid/view/View;

    move-object/from16 v21, v0

    int-to-float v0, v12

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v19

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/NotificationRowSwipeHelper;->snapChild(Landroid/view/View;Landroid/view/View;FF)V

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimRightMenu:Landroid/view/View;

    move-object/from16 v21, v0

    int-to-float v0, v12

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v19

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/NotificationRowSwipeHelper;->snapChild(Landroid/view/View;Landroid/view/View;FF)V

    .line 539
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/NotificationRowSwipeHelper;->mIsInOperationMode:Z

    goto/16 :goto_a

    .line 540
    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mContentViewMovingDistance:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mContentViewMovingDistance:F

    move/from16 v20, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpg-float v20, v20, v21

    if-gez v20, :cond_15

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimLeftMenu:Landroid/view/View;

    move-object/from16 v21, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v19

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/NotificationRowSwipeHelper;->snapChild(Landroid/view/View;Landroid/view/View;FF)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimContentView:Landroid/view/View;

    move-object/from16 v21, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v19

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/NotificationRowSwipeHelper;->snapChild(Landroid/view/View;Landroid/view/View;FF)V

    .line 544
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimRightMenu:Landroid/view/View;

    move-object/from16 v21, v0

    move/from16 v0, v17

    neg-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v19

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/NotificationRowSwipeHelper;->snapChild(Landroid/view/View;Landroid/view/View;FF)V

    .line 545
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/NotificationRowSwipeHelper;->mIsInOperationMode:Z

    goto/16 :goto_a

    .line 548
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimLeftMenu:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v19

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/NotificationRowSwipeHelper;->snapChild(Landroid/view/View;Landroid/view/View;FF)V

    .line 549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimContentView:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v19

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/NotificationRowSwipeHelper;->snapChild(Landroid/view/View;Landroid/view/View;FF)V

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimRightMenu:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v19

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/NotificationRowSwipeHelper;->snapChild(Landroid/view/View;Landroid/view/View;FF)V

    .line 551
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/systemui/NotificationRowSwipeHelper;->mIsInOperationMode:Z

    goto/16 :goto_a

    .line 555
    .end local v12    # "left_menu_width":I
    .end local v17    # "right_menu_width":I
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v21, v0

    invoke-interface/range {v20 .. v21}, Lcom/android/systemui/SwipeHelper$Callback;->onDragCancelled(Landroid/view/View;)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/NotificationRowSwipeHelper;->snapChild(Landroid/view/View;F)V

    goto/16 :goto_a

    .line 431
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public removeLongPressCallback()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mWatchLongPress:Ljava/lang/Runnable;

    .line 227
    :cond_0
    return-void
.end method

.method public resetCurrentNotification()V
    .locals 5

    .prologue
    .line 575
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimLeftMenu:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui/NotificationRowSwipeHelper;->snapChild(Landroid/view/View;Landroid/view/View;FF)V

    .line 576
    iget-object v1, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimContentView:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui/NotificationRowSwipeHelper;->snapChild(Landroid/view/View;Landroid/view/View;FF)V

    .line 577
    iget-object v1, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCurrAnimRightMenu:Landroid/view/View;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/systemui/NotificationRowSwipeHelper;->snapChild(Landroid/view/View;Landroid/view/View;FF)V

    .line 578
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mContentViewMovingDistance:F

    .line 579
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mIsInOperationMode:Z

    .line 580
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mIsMenuClicked:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 584
    :goto_0
    return-void

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "com.android.systemui.NotificationRowSwipeHelper"

    const-string v2, "Object member is not initialized yet."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setDensityScale(F)V
    .locals 0
    .param p1, "densityScale"    # F

    .prologue
    .line 119
    iput p1, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mDensityScale:F

    .line 120
    return-void
.end method

.method public setLongPressListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mLongPressListener:Landroid/view/View$OnLongClickListener;

    .line 116
    return-void
.end method

.method public setPagingTouchSlop(F)V
    .locals 0
    .param p1, "pagingTouchSlop"    # F

    .prologue
    .line 123
    iput p1, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mPagingTouchSlop:F

    .line 124
    return-void
.end method

.method public snapChild(Landroid/view/View;F)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "velocity"    # F

    .prologue
    .line 379
    iget-object v4, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v4, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 380
    .local v1, "animView":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v4, v1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    .line 381
    .local v2, "canAnimViewBeDismissed":Z
    const/4 v4, 0x0

    invoke-direct {p0, v1, v4}, Lcom/android/systemui/NotificationRowSwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 382
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const/16 v3, 0x96

    .line 383
    .local v3, "duration":I
    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 384
    new-instance v4, Lcom/android/systemui/NotificationRowSwipeHelper$4;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/systemui/NotificationRowSwipeHelper$4;-><init>(Lcom/android/systemui/NotificationRowSwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 389
    new-instance v4, Lcom/android/systemui/NotificationRowSwipeHelper$5;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/systemui/NotificationRowSwipeHelper$5;-><init>(Lcom/android/systemui/NotificationRowSwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 394
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 395
    return-void
.end method

.method public snapChild(Landroid/view/View;Landroid/view/View;FF)V
    .locals 6
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "velocity"    # F
    .param p4, "newPos"    # F

    .prologue
    .line 398
    iget-object v4, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v4, p1}, Lcom/android/systemui/SwipeHelper$Callback;->getChildContentView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 399
    .local v1, "animView":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/NotificationRowSwipeHelper;->mCallback:Lcom/android/systemui/SwipeHelper$Callback;

    invoke-interface {v4, v1}, Lcom/android/systemui/SwipeHelper$Callback;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v2

    .line 400
    .local v2, "canAnimViewBeDismissed":Z
    invoke-direct {p0, p2, p4}, Lcom/android/systemui/NotificationRowSwipeHelper;->createTranslationAnimation(Landroid/view/View;F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 401
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    const/16 v3, 0x96

    .line 402
    .local v3, "duration":I
    int-to-long v4, v3

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 403
    new-instance v4, Lcom/android/systemui/NotificationRowSwipeHelper$6;

    invoke-direct {v4, p0, p2, v2}, Lcom/android/systemui/NotificationRowSwipeHelper$6;-><init>(Lcom/android/systemui/NotificationRowSwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 408
    new-instance v4, Lcom/android/systemui/NotificationRowSwipeHelper$7;

    invoke-direct {v4, p0, p2, v2}, Lcom/android/systemui/NotificationRowSwipeHelper$7;-><init>(Lcom/android/systemui/NotificationRowSwipeHelper;Landroid/view/View;Z)V

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 413
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 414
    return-void
.end method
