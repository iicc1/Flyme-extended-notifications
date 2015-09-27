.class public Lcom/android/systemui/statusbar/phone/PanelView;
.super Landroid/widget/FrameLayout;
.source "PanelView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private MAX_SPEED_DOWN:F

.field private MAX_SPEED_UP:F

.field private mAbsPos:[I

.field private mAccel:F

.field private final mAnimationCallback:Landroid/animation/TimeAnimator$TimeListener;

.field mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

.field private mBrakingSpeedPx:F

.field private mClosing:Z

.field private mCollapseAccelPx:F

.field private mCollapseBrakingDistancePx:F

.field private mCollapseMinDisplayFraction:F

.field private mExpandAccelPx:F

.field private mExpandBrakingDistancePx:F

.field private mExpandMinDisplayFraction:F

.field private mExpandedFraction:F

.field private mExpandedHeight:F

.field protected mFinalTouchY:F

.field private mFlingCollapseMinVelocityPx:F

.field private mFlingExpandMinVelocityPx:F

.field private mFlingFixVel:F

.field private mFlingGestureMaxOutputVelocityPx:F

.field private mFlingGestureMaxXVelocityPx:F

.field private mFlingGestureMinDistPx:F

.field private mFullHeight:I

.field mHandleView:Landroid/view/View;

.field public mHandleViewHeight:F

.field protected mInitialTouchY:F

.field private mJustPeeked:Z

.field private mMaxSpeedDown:F

.field private mMaxSpeedUp:F

.field private mPeekAnimator:Landroid/animation/ObjectAnimator;

.field private mPeekHeight:F

.field private mRubberbanding:Z

.field private mRubberbandingEnabled:Z

.field private mSelfCollapseVelocityPx:F

.field private mSelfExpandVelocityPx:F

.field mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private final mStopAnimator:Ljava/lang/Runnable;

.field private mTimeAnimator:Landroid/animation/TimeAnimator;

.field private mTouchOffset:F

.field mTracking:Z

.field private mTrackingPointer:I

.field private mVel:F

.field private mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

.field private mViewName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/systemui/statusbar/phone/PanelView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v3, 0x43160000    # 150.0f

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 373
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbandingEnabled:Z

    .line 67
    const/high16 v0, 0x43480000    # 200.0f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapseBrakingDistancePx:F

    .line 68
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandBrakingDistancePx:F

    .line 69
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBrakingSpeedPx:F

    .line 74
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    .line 75
    iput v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 202
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAbsPos:[I

    .line 222
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$1;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimationCallback:Landroid/animation/TimeAnimator$TimeListener;

    .line 229
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelView$2;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStopAnimator:Ljava/lang/Runnable;

    .line 241
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullHeight:I

    .line 378
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->setPadding(IIII)V

    .line 380
    new-instance v0, Landroid/animation/TimeAnimator;

    invoke-direct {v0}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    .line 381
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimationCallback:Landroid/animation/TimeAnimator$TimeListener;

    invoke-virtual {v0, v1}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 382
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/PanelView;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p1, "x1"    # J

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->animationTick(J)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/TimeAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/PanelView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/PanelView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->runPeekAnimation()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    return v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/PanelView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    return v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxXVelocityPx:F

    return v0
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxOutputVelocityPx:F

    return v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMinDistPx:F

    return v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingExpandMinVelocityPx:F

    return v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/PanelView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/PanelView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/PanelView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p1, "x1"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTrackingPointer:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/PanelView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAbsPos:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/PanelView;)Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/PanelView;Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;)Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/PanelView;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOffset:F

    return v0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/phone/PanelView;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;
    .param p1, "x1"    # F

    .prologue
    .line 38
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOffset:F

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/PanelView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/PanelView;

    .prologue
    .line 38
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    return v0
.end method

.method private animationTick(J)V
    .locals 9
    .param p1, "dtms"    # J

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 266
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v4}, Landroid/animation/TimeAnimator;->isStarted()Z

    move-result v4

    if-nez v4, :cond_8

    .line 268
    new-instance v4, Landroid/animation/TimeAnimator;

    invoke-direct {v4}, Landroid/animation/TimeAnimator;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    .line 269
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAnimationCallback:Landroid/animation/TimeAnimator$TimeListener;

    invoke-virtual {v4, v7}, Landroid/animation/TimeAnimator;->setTimeListener(Landroid/animation/TimeAnimator$TimeListener;)V

    .line 271
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 273
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v4}, Landroid/animation/TimeAnimator;->start()V

    .line 275
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbandingEnabled:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFullHeight()F

    move-result v7

    cmpl-float v4, v4, v7

    if-lez v4, :cond_2

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    iget v7, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMinDistPx:F

    neg-float v7, v7

    cmpl-float v4, v4, v7

    if-ltz v4, :cond_2

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    .line 278
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAlwaysOpen:Z

    if-eqz v4, :cond_3

    .line 279
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    .line 370
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v4, v6

    .line 275
    goto :goto_0

    .line 280
    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    if-eqz v4, :cond_4

    .line 281
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    goto :goto_1

    .line 282
    :cond_4
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    cmpl-float v4, v4, v8

    if-nez v4, :cond_6

    .line 284
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFinalTouchY:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFullHeight()F

    move-result v7

    div-float/2addr v4, v7

    const/high16 v7, 0x3f000000    # 0.5f

    cmpg-float v4, v4, v7

    if-gez v4, :cond_5

    :goto_2
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    goto :goto_1

    :cond_5
    move v5, v6

    goto :goto_2

    .line 286
    :cond_6
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v4, v4, v8

    if-lez v4, :cond_7

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    cmpg-float v4, v4, v8

    if-gez v4, :cond_7

    :goto_3
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    goto :goto_1

    :cond_7
    move v5, v6

    goto :goto_3

    .line 288
    :cond_8
    const-wide/16 v6, 0x0

    cmp-long v4, p1, v6

    if-lez v4, :cond_16

    .line 289
    long-to-float v4, p1

    const v6, 0x3a83126f    # 0.001f

    mul-float v1, v4, v6

    .line 293
    .local v1, "dt":F
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFullHeight()F

    move-result v2

    .line 295
    .local v2, "fh":F
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v4, v4, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAlwaysOpen:Z

    if-eqz v4, :cond_9

    .line 299
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingFixVel:F

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    .line 302
    :cond_9
    const/4 v0, 0x0

    .line 312
    .local v0, "braking":Z
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v4, :cond_10

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapseAccelPx:F

    neg-float v4, v4

    :goto_4
    iput v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAccel:F

    .line 315
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAccel:F

    mul-float/2addr v6, v1

    add-float/2addr v4, v6

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    .line 317
    if-eqz v0, :cond_12

    .line 318
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v4, :cond_11

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBrakingSpeedPx:F

    neg-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_11

    .line 319
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBrakingSpeedPx:F

    neg-float v4, v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    .line 332
    :cond_a
    :goto_5
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMaxSpeedDown:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_14

    .line 333
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMaxSpeedDown:F

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    .line 338
    :cond_b
    :goto_6
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    mul-float/2addr v6, v1

    add-float v3, v4, v6

    .line 340
    .local v3, "h":F
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    if-eqz v4, :cond_c

    cmpg-float v4, v3, v2

    if-gez v4, :cond_c

    .line 341
    move v3, v2

    .line 346
    :cond_c
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    .line 348
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    invoke-virtual {v4, p0, v6}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V

    .line 350
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_f

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v4, :cond_d

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v4, v4, v8

    if-eqz v4, :cond_f

    :cond_d
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    if-nez v4, :cond_e

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-nez v4, :cond_1

    :cond_e
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    cmpl-float v4, v4, v2

    if-nez v4, :cond_1

    .line 359
    :cond_f
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-nez v4, :cond_15

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getExpandedViewMaxHeightMz(Z)I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_15

    .line 360
    sget-object v4, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v5, "notification panel is opening and fullheight < real fullheight, so animationTick should continue!"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 312
    .end local v3    # "h":F
    :cond_10
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandAccelPx:F

    goto :goto_4

    .line 320
    :cond_11
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-nez v4, :cond_a

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBrakingSpeedPx:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_a

    .line 321
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBrakingSpeedPx:F

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    goto :goto_5

    .line 324
    :cond_12
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v4, :cond_13

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseMinVelocityPx:F

    neg-float v6, v6

    cmpl-float v4, v4, v6

    if-lez v4, :cond_13

    .line 325
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseMinVelocityPx:F

    neg-float v4, v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    goto/16 :goto_5

    .line 326
    :cond_13
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-nez v4, :cond_a

    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxOutputVelocityPx:F

    cmpl-float v4, v4, v6

    if-lez v4, :cond_a

    .line 327
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxOutputVelocityPx:F

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    goto/16 :goto_5

    .line 334
    :cond_14
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMaxSpeedUp:F

    cmpg-float v4, v4, v6

    if-gez v4, :cond_b

    .line 335
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMaxSpeedUp:F

    iput v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    goto/16 :goto_6

    .line 363
    .restart local v3    # "h":F
    :cond_15
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStopAnimator:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/PanelView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 367
    .end local v0    # "braking":Z
    .end local v1    # "dt":F
    .end local v2    # "fh":F
    .end local v3    # "h":F
    :cond_16
    sget-object v4, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "animationTick called with dtms="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; nothing to do (h="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " v="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private getFullHeight()F
    .locals 3

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v1, -0x2

    .line 689
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullHeight:I

    if-gtz v0, :cond_0

    .line 691
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->measure(II)V

    .line 694
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullHeight:I

    int-to-float v0, v0

    return v0
.end method

.method private loadDimens()V
    .locals 5

    .prologue
    const v4, 0x7f0d00b8

    const v3, 0x7f0d00b7

    const/4 v2, 0x1

    .line 385
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 387
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0d0027

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mSelfExpandVelocityPx:F

    .line 388
    const v1, 0x7f0d0028

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mSelfCollapseVelocityPx:F

    .line 389
    const v1, 0x7f0d0029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingExpandMinVelocityPx:F

    .line 390
    const v1, 0x7f0d002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingCollapseMinVelocityPx:F

    .line 392
    const v1, 0x7f0d002d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMinDistPx:F

    .line 394
    const v1, 0x7f0d002e

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapseMinDisplayFraction:F

    .line 395
    const v1, 0x7f0d002f

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandMinDisplayFraction:F

    .line 397
    const v1, 0x7f0d0030

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandAccelPx:F

    .line 398
    const v1, 0x7f0d0031

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mCollapseAccelPx:F

    .line 400
    const v1, 0x7f0d002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxXVelocityPx:F

    .line 402
    const v1, 0x7f0d002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxOutputVelocityPx:F

    .line 404
    const v1, 0x7f0d004a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    int-to-float v1, v1

    sub-float v1, v2, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    .line 408
    const v1, 0x7f0d0064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingFixVel:F

    .line 410
    const v1, 0x7f0d003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleViewHeight:F

    .line 412
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->MAX_SPEED_DOWN:F

    .line 413
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->MAX_SPEED_UP:F

    .line 414
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMaxSpeedDown:F

    .line 415
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    neg-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMaxSpeedUp:F

    .line 416
    return-void

    .line 404
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    goto :goto_0
.end method

.method private runPeekAnimation()V
    .locals 4

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 263
    :goto_0
    return-void

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    .line 258
    const-string v0, "expandedHeight"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    sub-float v0, v2, v3

    .line 422
    .local v0, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float v1, v2, v3

    .line 423
    .local v1, "deltaY":F
    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 424
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 425
    :cond_0
    neg-float v2, v0

    neg-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 426
    return-void
.end method


# virtual methods
.method public cancelPeek()V
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 778
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 780
    :cond_0
    return-void
.end method

.method public collapse()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 740
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->cancel()V

    .line 742
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    .line 743
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAnimatingCollapse:Z

    .line 745
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    .line 746
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mSelfCollapseVelocityPx:F

    neg-float v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    .line 748
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 903
    const-string v1, "[PanelView(%s): expandedHeight=%f fullHeight=%f closing=%s tracking=%s rubberbanding=%s justPeeked=%s peekAnim=%s%s timeAnim=%s%s]"

    const/16 v0, 0xb

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFullHeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    if-eqz v0, :cond_0

    const-string v0, "T"

    :goto_0
    aput-object v0, v2, v3

    const/4 v3, 0x4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-eqz v0, :cond_1

    const-string v0, "T"

    :goto_1
    aput-object v0, v2, v3

    const/4 v3, 0x5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    if-eqz v0, :cond_2

    const-string v0, "T"

    :goto_2
    aput-object v0, v2, v3

    const/4 v3, 0x6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    if-eqz v0, :cond_3

    const-string v0, "T"

    :goto_3
    aput-object v0, v2, v3

    const/4 v0, 0x7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    aput-object v3, v2, v0

    const/16 v3, 0x8

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, " (started)"

    :goto_4
    aput-object v0, v2, v3

    const/16 v0, 0x9

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    aput-object v3, v2, v0

    const/16 v3, 0xa

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " (started)"

    :goto_5
    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 916
    return-void

    .line 903
    :cond_0
    const-string v0, "f"

    goto :goto_0

    :cond_1
    const-string v0, "f"

    goto :goto_1

    :cond_2
    const-string v0, "f"

    goto :goto_2

    :cond_3
    const-string v0, "f"

    goto :goto_3

    :cond_4
    const-string v0, ""

    goto :goto_4

    :cond_5
    const-string v0, ""

    goto :goto_5
.end method

.method public expand()V
    .locals 2

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 754
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mSelfExpandVelocityPx:F

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    .line 758
    :cond_0
    return-void
.end method

.method public expandDirectly()V
    .locals 1

    .prologue
    .line 765
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->startOpeningPanel(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 768
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFullHeight()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(F)V

    .line 773
    :cond_0
    return-void
.end method

.method public fling(FZ)V
    .locals 3
    .param p1, "vel"    # F
    .param p2, "always"    # Z

    .prologue
    const/high16 v2, 0x3fc00000    # 1.5f

    .line 581
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    .line 583
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMaxSpeedDown:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 584
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMaxSpeedDown:F

    .line 588
    :goto_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMaxSpeedUp:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 589
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMaxSpeedUp:F

    .line 594
    :goto_1
    if-nez p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVel:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 595
    :cond_0
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->animationTick(J)V

    .line 597
    :cond_1
    return-void

    .line 586
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->MAX_SPEED_DOWN:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMaxSpeedDown:F

    goto :goto_0

    .line 591
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->MAX_SPEED_UP:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mMaxSpeedUp:F

    goto :goto_1
.end method

.method public getExpandedFraction()F
    .locals 1

    .prologue
    .line 714
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    return v0
.end method

.method public getExpandedHeight()F
    .locals 1

    .prologue
    .line 710
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    return v0
.end method

.method public isCollapsing()Z
    .locals 1

    .prologue
    .line 726
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mClosing:Z

    return v0
.end method

.method public isFullyCollapsed()Z
    .locals 2

    .prologue
    .line 722
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFullyExpanded()Z
    .locals 2

    .prologue
    .line 718
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFullHeight()F

    move-result v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTimeAnimatorRunning()Z
    .locals 1

    .prologue
    .line 789
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public isTracking()Z
    .locals 1

    .prologue
    .line 730
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 601
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 602
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mViewName:Ljava/lang/String;

    .line 603
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 436
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 437
    const v0, 0x7f0e0099

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    .line 439
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->loadDimens()V

    .line 442
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/PanelView$3;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 577
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 655
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 656
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 621
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 627
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getExpandedViewMaxHeightMz(Z)I

    move-result v0

    .line 628
    .local v0, "newHeight":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullHeight:I

    if-eq v0, v1, :cond_0

    .line 629
    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullHeight:I

    .line 631
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v1}, Landroid/animation/TimeAnimator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullHeight:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 633
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFullHeight:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 636
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    float-to-int v1, v1

    const/high16 v2, -0x80000000

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 638
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelView;->setMeasuredDimension(II)V

    .line 639
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 431
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onViewAdded(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 612
    return-void
.end method

.method public setBar(Lcom/android/systemui/statusbar/phone/PanelBar;)V
    .locals 0
    .param p1, "panelBar"    # Lcom/android/systemui/statusbar/phone/PanelBar;

    .prologue
    .line 734
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    .line 735
    return-void
.end method

.method public setExpandedFraction(F)V
    .locals 3
    .param p1, "frac"    # F

    .prologue
    .line 698
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 701
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v1, "setExpandedFraction: frac=NaN, using 0 instead"

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 704
    const/4 p1, 0x0

    .line 706
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFullHeight()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeight(F)V

    .line 707
    return-void
.end method

.method public setExpandedHeight(F)V
    .locals 2
    .param p1, "height"    # F

    .prologue
    .line 644
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    .line 645
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v0}, Landroid/animation/TimeAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStopAnimator:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->post(Ljava/lang/Runnable;)Z

    .line 648
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    .line 649
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V

    .line 650
    return-void
.end method

.method public setExpandedHeightInternal(F)V
    .locals 5
    .param p1, "h"    # F

    .prologue
    const/4 v1, 0x0

    .line 659
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 662
    sget-object v2, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v3, "setExpandedHeightInternal: warning: h=NaN, using 0 instead"

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 665
    const/4 p1, 0x0

    .line 668
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getFullHeight()F

    move-result v0

    .line 669
    .local v0, "fh":F
    cmpl-float v2, v0, v1

    if-nez v2, :cond_1

    .line 673
    :cond_1
    cmpg-float v2, p1, v1

    if-gez v2, :cond_2

    const/4 p1, 0x0

    .line 674
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbandingEnabled:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbanding:Z

    if-nez v2, :cond_4

    :cond_3
    cmpl-float v2, p1, v0

    if-lez v2, :cond_4

    move p1, v0

    .line 676
    :cond_4
    iput p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    .line 680
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->requestLayout()V

    .line 685
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v1

    if-nez v3, :cond_5

    :goto_0
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    .line 686
    return-void

    .line 685
    :cond_5
    div-float v1, p1, v0

    goto :goto_0
.end method

.method public setRubberbandingEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 249
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mRubberbandingEnabled:Z

    .line 250
    return-void
.end method

.method public setStatusBarMz(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 219
    return-void
.end method

.method updateStatusbarPos(Landroid/view/MotionEvent;)V
    .locals 12
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 803
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 804
    .local v6, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    .line 806
    .local v3, "rawY":F
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAbsPos:[I

    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/PanelView;->getLocationOnScreen([I)V

    .line 808
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    .line 809
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/View;->setPressed(Z)V

    .line 810
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    const v9, 0x7f020417

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 811
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->postInvalidate()V

    .line 812
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    .line 813
    invoke-static {}, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->obtain()Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    move-result-object v8

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    .line 814
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 815
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTimeAnimator:Landroid/animation/TimeAnimator;

    invoke-virtual {v8}, Landroid/animation/TimeAnimator;->cancel()V

    .line 816
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v8, p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStarted(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 817
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAbsPos:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    int-to-float v8, v8

    sub-float v8, v3, v8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->getExpandedHeight()F

    move-result v9

    sub-float/2addr v8, v9

    iput v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTouchOffset:F

    .line 818
    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedHeight:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_0

    .line 819
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    .line 820
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->runPeekAnimation()V

    .line 823
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 900
    :goto_0
    return-void

    .line 826
    :pswitch_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mAbsPos:[I

    const/4 v9, 0x1

    aget v8, v8, v9

    int-to-float v8, v8

    sub-float v1, v3, v8

    .line 828
    .local v1, "h":F
    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekHeight:F

    cmpl-float v8, v1, v8

    if-lez v8, :cond_2

    .line 829
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 830
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mPeekAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v8}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 832
    :cond_1
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    .line 834
    :cond_2
    iget-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mJustPeeked:Z

    if-nez v8, :cond_3

    .line 835
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelView;->setExpandedHeightInternal(F)V

    .line 837
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mExpandedFraction:F

    invoke-virtual {v8, p0, v9}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelExpansionChanged(Lcom/android/systemui/statusbar/phone/PanelView;F)V

    .line 840
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 845
    .end local v1    # "h":F
    :pswitch_1
    iput v3, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFinalTouchY:F

    .line 846
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mTracking:Z

    .line 847
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setPressed(Z)V

    .line 848
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mHandleView:Landroid/view/View;

    const v9, 0x7f020416

    invoke-virtual {v8, v9}, Landroid/view/View;->setBackgroundResource(I)V

    .line 849
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelView;->postInvalidate()V

    .line 850
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {v8, p0}, Lcom/android/systemui/statusbar/phone/PanelBar;->onTrackingStopped(Lcom/android/systemui/statusbar/phone/PanelView;)V

    .line 851
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelView;->trackMovement(Landroid/view/MotionEvent;)V

    .line 853
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mAlwaysOpen:Z

    .line 855
    const/4 v4, 0x0

    .local v4, "vel":F
    const/4 v7, 0x0

    .local v7, "yVel":F
    const/4 v5, 0x0

    .line 856
    .local v5, "xVel":F
    const/4 v2, 0x0

    .line 858
    .local v2, "negative":Z
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    if-eqz v8, :cond_7

    .line 860
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v10, v11}, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->computeCurrentVelocity(J)V

    .line 862
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->getYVelocity()F

    move-result v7

    .line 863
    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    if-gez v8, :cond_b

    const/4 v2, 0x1

    .line 865
    :goto_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->getXVelocity()F

    move-result v5

    .line 866
    const/4 v8, 0x0

    cmpg-float v8, v5, v8

    if-gez v8, :cond_4

    .line 867
    neg-float v5, v5

    .line 869
    :cond_4
    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxXVelocityPx:F

    cmpl-float v8, v5, v8

    if-lez v8, :cond_5

    .line 870
    iget v5, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxXVelocityPx:F

    .line 873
    :cond_5
    float-to-double v8, v7

    float-to-double v10, v5

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v8

    double-to-float v4, v8

    .line 874
    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxOutputVelocityPx:F

    cmpl-float v8, v4, v8

    if-lez v8, :cond_6

    .line 875
    iget v4, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMaxOutputVelocityPx:F

    .line 878
    :cond_6
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->recycle()V

    .line 879
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mVelocityTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    .line 884
    :cond_7
    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFinalTouchY:F

    iget v9, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mInitialTouchY:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 885
    .local v0, "deltaY":F
    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingGestureMinDistPx:F

    cmpg-float v8, v0, v8

    if-ltz v8, :cond_8

    iget v8, p0, Lcom/android/systemui/statusbar/phone/PanelView;->mFlingExpandMinVelocityPx:F

    cmpg-float v8, v4, v8

    if-gez v8, :cond_9

    .line 888
    :cond_8
    const/4 v4, 0x0

    .line 891
    :cond_9
    if-eqz v2, :cond_a

    .line 892
    neg-float v4, v4

    .line 895
    :cond_a
    const/4 v8, 0x1

    invoke-virtual {p0, v4, v8}, Lcom/android/systemui/statusbar/phone/PanelView;->fling(FZ)V

    goto/16 :goto_0

    .line 863
    .end local v0    # "deltaY":F
    :cond_b
    const/4 v2, 0x0

    goto :goto_1

    .line 823
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
