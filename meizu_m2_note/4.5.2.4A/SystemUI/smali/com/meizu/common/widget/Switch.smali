.class public Lcom/meizu/common/widget/Switch;
.super Landroid/widget/CompoundButton;
.source "Switch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/Switch$SwitchAnimator;,
        Lcom/meizu/common/widget/Switch$PerformClick;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I


# instance fields
.field private mAnimRunning:Z

.field private mAnimationLength:I

.field private mClickTimeout:I

.field private mIdleThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mMinFlingVelocity:I

.field private mOffLayout:Landroid/text/Layout;

.field private mOffThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mOffThumbMargin:I

.field private mOffThumbWidth:I

.field private mOnLayout:Landroid/text/Layout;

.field private mOnThumbDrawAlpha:I

.field private mOnThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mOnThumbMargin:I

.field private mOnThumbWidth:I

.field private mPerformClick:Lcom/meizu/common/widget/Switch$PerformClick;

.field private mStretchedRadius:I

.field private mSwitchBottom:I

.field private mSwitchHeight:I

.field private mSwitchLeft:I

.field private mSwitchMinWidth:I

.field private mSwitchPadding:I

.field private mSwitchRight:I

.field private mSwitchTop:I

.field private mSwitchWidth:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/text/TextPaint;

.field private mThumbAnimator:Lcom/meizu/common/widget/Switch$SwitchAnimator;

.field private mThumbDrawWidth:I

.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;

.field private mThumbPosition:F

.field private mThumbWidth:I

.field private mTouchInWholeX:F

.field private mTouchInWholeY:F

.field private mTouchMode:I

.field private mTouchSlop:I

.field private mTouchX:F

.field private mTouchY:F

.field private mTrackDrawable:Landroid/graphics/drawable/Drawable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 135
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/meizu/common/widget/Switch;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 156
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 166
    const v0, 0x7f010031

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/Switch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 167
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 179
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 83
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 129
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    .line 132
    iput-boolean v5, p0, Lcom/meizu/common/widget/Switch;->mAnimRunning:Z

    .line 181
    new-instance v3, Landroid/text/TextPaint;

    invoke-direct {v3, v6}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v3, p0, Lcom/meizu/common/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    .line 182
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 183
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->density:F

    iput v4, v3, Landroid/text/TextPaint;->density:F

    .line 185
    sget-object v3, Lcom/meizu/common/R$styleable;->Switch:[I

    invoke-virtual {p1, p2, v3, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 189
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/Switch;->mIdleThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 190
    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mIdleThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 191
    const v3, 0x7f020311

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/Switch;->mIdleThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 193
    :cond_0
    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mIdleThumbDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v3, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 195
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/Switch;->mOnThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 196
    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mOnThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_1

    .line 197
    const v3, 0x7f020317

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/Switch;->mOnThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 200
    :cond_1
    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/Switch;->mOffThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 201
    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mOffThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    .line 202
    const v3, 0x7f020312

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/Switch;->mOffThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 206
    :cond_2
    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 207
    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_3

    .line 208
    const v3, 0x7f020318

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    .line 212
    :cond_3
    const/4 v3, 0x4

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/Switch;->mSwitchMinWidth:I

    .line 214
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/Switch;->mSwitchPadding:I

    .line 217
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 219
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 220
    .local v1, "config":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/Switch;->mTouchSlop:I

    .line 221
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/Switch;->mMinFlingVelocity:I

    .line 222
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Lcom/meizu/common/widget/Switch;->mClickTimeout:I

    .line 226
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->refreshDrawableState()V

    .line 227
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/Switch;->setChecked(Z)V

    .line 229
    new-instance v3, Lcom/meizu/common/widget/Switch$SwitchAnimator;

    invoke-direct {v3, p0}, Lcom/meizu/common/widget/Switch$SwitchAnimator;-><init>(Lcom/meizu/common/widget/Switch;)V

    iput-object v3, p0, Lcom/meizu/common/widget/Switch;->mThumbAnimator:Lcom/meizu/common/widget/Switch$SwitchAnimator;

    .line 230
    iget-object v3, p0, Lcom/meizu/common/widget/Switch;->mThumbAnimator:Lcom/meizu/common/widget/Switch$SwitchAnimator;

    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/Switch;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 232
    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/common/widget/Switch;F)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/Switch;
    .param p1, "x1"    # F

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/Switch;->calcOnThumbDrawAlpha(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/meizu/common/widget/Switch;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/Switch;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/Switch;->setCheckedDelayed(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/Switch;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/Switch;

    .prologue
    .line 64
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mAnimationLength:I

    return v0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/Switch;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/Switch;

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/meizu/common/widget/Switch;->mAnimRunning:Z

    return v0
.end method

.method static synthetic access$402(Lcom/meizu/common/widget/Switch;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/Switch;
    .param p1, "x1"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/meizu/common/widget/Switch;->mAnimRunning:Z

    return p1
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/Switch;)F
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/Switch;

    .prologue
    .line 64
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    return v0
.end method

.method static synthetic access$502(Lcom/meizu/common/widget/Switch;F)F
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/Switch;
    .param p1, "x1"    # F

    .prologue
    .line 64
    iput p1, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    return p1
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/Switch;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/Switch;

    .prologue
    .line 64
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mOffThumbMargin:I

    return v0
.end method

.method static synthetic access$702(Lcom/meizu/common/widget/Switch;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/Switch;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawWidth:I

    return p1
.end method

.method static synthetic access$800(Lcom/meizu/common/widget/Switch;F)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/Switch;
    .param p1, "x1"    # F

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/Switch;->calcDrawWidth(F)I

    move-result v0

    return v0
.end method

.method static synthetic access$902(Lcom/meizu/common/widget/Switch;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/Switch;
    .param p1, "x1"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/meizu/common/widget/Switch;->mOnThumbDrawAlpha:I

    return p1
.end method

.method private animateThumbToCheckedState(Z)V
    .locals 0
    .param p1, "newCheckedState"    # Z

    .prologue
    .line 546
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/Switch;->setChecked(Z)V

    .line 547
    return-void
.end method

.method private calcDrawWidth(F)I
    .locals 6
    .param p1, "position"    # F

    .prologue
    .line 813
    iget v3, p0, Lcom/meizu/common/widget/Switch;->mOffThumbMargin:I

    int-to-float v2, v3

    .line 814
    .local v2, "pointX":F
    iget v3, p0, Lcom/meizu/common/widget/Switch;->mOnThumbWidth:I

    iget v4, p0, Lcom/meizu/common/widget/Switch;->mOffThumbWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/meizu/common/widget/Switch;->mAnimationLength:I

    iget v5, p0, Lcom/meizu/common/widget/Switch;->mOffThumbMargin:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const v5, 0x3dcccccd    # 0.1f

    add-float/2addr v4, v5

    div-float v0, v3, v4

    .line 815
    .local v0, "a":F
    iget v3, p0, Lcom/meizu/common/widget/Switch;->mOffThumbWidth:I

    int-to-float v3, v3

    mul-float v4, v2, v0

    sub-float v1, v3, v4

    .line 816
    .local v1, "b":F
    mul-float v3, p1, v0

    add-float/2addr v3, v1

    float-to-int v3, v3

    return v3
.end method

.method private calcOnThumbDrawAlpha(F)I
    .locals 6
    .param p1, "position"    # F

    .prologue
    .line 795
    iget v3, p0, Lcom/meizu/common/widget/Switch;->mOffThumbMargin:I

    int-to-float v2, v3

    .line 796
    .local v2, "pointX":F
    const/high16 v3, 0x437f0000    # 255.0f

    iget v4, p0, Lcom/meizu/common/widget/Switch;->mAnimationLength:I

    iget v5, p0, Lcom/meizu/common/widget/Switch;->mOffThumbMargin:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const v5, 0x3dcccccd    # 0.1f

    add-float/2addr v4, v5

    div-float v0, v3, v4

    .line 797
    .local v0, "a":F
    neg-float v3, v2

    mul-float v1, v3, v0

    .line 798
    .local v1, "b":F
    mul-float v3, p1, v0

    add-float/2addr v3, v1

    float-to-int v3, v3

    return v3
.end method

.method private cancelSuperTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 505
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 506
    .local v0, "cancel":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 507
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 508
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 509
    return-void
.end method

.method private getTargetCheckedState()Z
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 550
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 551
    iget v2, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getThumbScrollRange()I

    move-result v3

    iget v4, p0, Lcom/meizu/common/widget/Switch;->mOnThumbMargin:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 553
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 551
    goto :goto_0

    .line 553
    :cond_2
    iget v2, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getThumbScrollRange()I

    move-result v3

    iget v4, p0, Lcom/meizu/common/widget/Switch;->mOnThumbMargin:I

    add-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private getThumbScrollRange()I
    .locals 2

    .prologue
    .line 694
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 695
    const/4 v0, 0x0

    .line 698
    :goto_0
    return v0

    .line 697
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 698
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    iget v1, p0, Lcom/meizu/common/widget/Switch;->mThumbWidth:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/Switch;->mOnThumbMargin:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method private hitSwith(FF)Z
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 390
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchLeft:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchRight:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchTop:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchBottom:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setCheckedDelayed(Z)V
    .locals 4
    .param p1, "checked"    # Z

    .prologue
    .line 973
    new-instance v0, Lcom/meizu/common/widget/Switch$1;

    invoke-direct {v0, p0, p1}, Lcom/meizu/common/widget/Switch$1;-><init>(Lcom/meizu/common/widget/Switch;Z)V

    const-wide/16 v2, 0xa

    invoke-virtual {p0, v0, v2, v3}, Lcom/meizu/common/widget/Switch;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 981
    return-void
.end method

.method private setThumbPosition(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 558
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 559
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/Switch;->mOnThumbMargin:I

    int-to-float v0, v0

    :goto_0
    iput v0, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    .line 563
    :goto_1
    return-void

    .line 559
    :cond_0
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getThumbScrollRange()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    .line 561
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getThumbScrollRange()I

    move-result v0

    int-to-float v0, v0

    :goto_2
    iput v0, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mOffThumbMargin:I

    int-to-float v0, v0

    goto :goto_2
.end method

.method private stopDrag(Landroid/view/MotionEvent;)V
    .locals 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 517
    iput v5, p0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    .line 518
    iput-boolean v5, p0, Lcom/meizu/common/widget/Switch;->mAnimRunning:Z

    .line 520
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v6, v4, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    move v0, v4

    .line 522
    .local v0, "commitChange":Z
    :goto_0
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/Switch;->cancelSuperTouch(Landroid/view/MotionEvent;)V

    .line 524
    if-eqz v0, :cond_5

    .line 526
    iget-object v6, p0, Lcom/meizu/common/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    invoke-virtual {v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 527
    iget-object v6, p0, Lcom/meizu/common/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    .line 529
    .local v3, "xvel":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 531
    .local v2, "x":F
    iget v6, p0, Lcom/meizu/common/widget/Switch;->mSwitchLeft:I

    int-to-float v6, v6

    cmpl-float v6, v2, v6

    if-lez v6, :cond_4

    iget v6, p0, Lcom/meizu/common/widget/Switch;->mSwitchRight:I

    int-to-float v6, v6

    cmpg-float v6, v2, v6

    if-gez v6, :cond_4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/meizu/common/widget/Switch;->mMinFlingVelocity:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    .line 532
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v6

    if-eqz v6, :cond_2

    cmpg-float v6, v3, v8

    if-gez v6, :cond_1

    move v1, v4

    .line 536
    .local v1, "newState":Z
    :goto_1
    invoke-direct {p0, v1}, Lcom/meizu/common/widget/Switch;->animateThumbToCheckedState(Z)V

    .line 540
    .end local v1    # "newState":Z
    .end local v2    # "x":F
    .end local v3    # "xvel":F
    :goto_2
    return-void

    .end local v0    # "commitChange":Z
    :cond_0
    move v0, v5

    .line 520
    goto :goto_0

    .restart local v0    # "commitChange":Z
    .restart local v2    # "x":F
    .restart local v3    # "xvel":F
    :cond_1
    move v1, v5

    .line 532
    goto :goto_1

    :cond_2
    cmpl-float v6, v3, v8

    if-lez v6, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    move v1, v5

    goto :goto_1

    .line 534
    :cond_4
    invoke-direct {p0}, Lcom/meizu/common/widget/Switch;->getTargetCheckedState()Z

    move-result v1

    .restart local v1    # "newState":Z
    goto :goto_1

    .line 538
    .end local v1    # "newState":Z
    .end local v2    # "x":F
    .end local v3    # "xvel":F
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/meizu/common/widget/Switch;->animateThumbToCheckedState(Z)V

    goto :goto_2
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 712
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 714
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getDrawableState()[I

    move-result-object v0

    .line 718
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 719
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 721
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mIdleThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 722
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mIdleThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 725
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mOnThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 726
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mOnThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 729
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->invalidate()V

    .line 730
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .prologue
    .line 671
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v1

    if-nez v1, :cond_1

    .line 672
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    .line 678
    :cond_0
    :goto_0
    return v0

    .line 674
    :cond_1
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 675
    .local v0, "padding":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 676
    iget v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .prologue
    .line 683
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 684
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    .line 690
    :cond_0
    :goto_0
    return v0

    .line 686
    :cond_1
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    add-int v0, v1, v2

    .line 687
    .local v0, "padding":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 688
    iget v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchPadding:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public isAnimRunning()Z
    .locals 1

    .prologue
    .line 779
    iget-boolean v0, p0, Lcom/meizu/common/widget/Switch;->mAnimRunning:Z

    return v0
.end method

.method public isLayoutRtl()Z
    .locals 1

    .prologue
    .line 757
    const/4 v0, 0x0

    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .prologue
    .line 739
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 740
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 741
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 742
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .prologue
    .line 703
    add-int/lit8 v1, p1, 0x1

    invoke-super {p0, v1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 704
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 705
    sget-object v1, Lcom/meizu/common/widget/Switch;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/meizu/common/widget/Switch;->mergeDrawableStates([I[I)[I

    .line 707
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 623
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 626
    iget v3, p0, Lcom/meizu/common/widget/Switch;->mSwitchLeft:I

    .line 627
    .local v3, "switchLeft":I
    iget v5, p0, Lcom/meizu/common/widget/Switch;->mSwitchTop:I

    .line 628
    .local v5, "switchTop":I
    iget v4, p0, Lcom/meizu/common/widget/Switch;->mSwitchRight:I

    .line 629
    .local v4, "switchRight":I
    iget v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchBottom:I

    .line 631
    .local v0, "switchBottom":I
    iget-object v11, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v3, v5, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 632
    iget-object v11, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 634
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 636
    iget-object v11, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v12, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 637
    iget-object v11, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    add-int v1, v3, v11

    .line 639
    .local v1, "switchInnerLeft":I
    iget-object v11, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    sub-int v2, v4, v11

    .line 641
    .local v2, "switchInnerRight":I
    invoke-virtual {p1, v1, v5, v2, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 644
    iget-object v11, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v12, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 645
    iget v11, p0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v8, v11

    .line 647
    .local v8, "thumbPos":I
    iget-object v11, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int v11, v1, v11

    add-int v7, v11, v8

    .line 648
    .local v7, "thumbLeft":I
    add-int v11, v1, v8

    iget v12, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawWidth:I

    add-int/2addr v11, v12

    iget-object v12, p0, Lcom/meizu/common/widget/Switch;->mTempRect:Landroid/graphics/Rect;

    iget v12, v12, Landroid/graphics/Rect;->right:I

    add-int v9, v11, v12

    .line 649
    .local v9, "thumbRight":I
    iget v11, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    iget v12, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawWidth:I

    sub-int/2addr v11, v12

    div-int/lit8 v11, v11, 0x2

    add-int v10, v5, v11

    .line 650
    .local v10, "thumbTop":I
    iget v11, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawWidth:I

    add-int v6, v10, v11

    .line 652
    .local v6, "thumbBottom":I
    iget-boolean v11, p0, Lcom/meizu/common/widget/Switch;->mAnimRunning:Z

    if-nez v11, :cond_0

    iget v11, p0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    .line 654
    :cond_0
    iget-object v11, p0, Lcom/meizu/common/widget/Switch;->mOffThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v7, v10, v9, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 655
    iget-object v11, p0, Lcom/meizu/common/widget/Switch;->mOffThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 656
    iget-object v11, p0, Lcom/meizu/common/widget/Switch;->mOnThumbDrawable:Landroid/graphics/drawable/Drawable;

    iget v12, p0, Lcom/meizu/common/widget/Switch;->mOnThumbDrawAlpha:I

    invoke-virtual {v11, v12}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 657
    iget-object v11, p0, Lcom/meizu/common/widget/Switch;->mOnThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v7, v10, v9, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 658
    iget-object v11, p0, Lcom/meizu/common/widget/Switch;->mOnThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 666
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 667
    return-void

    .line 661
    :cond_1
    iget-object v11, p0, Lcom/meizu/common/widget/Switch;->mIdleThumbDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v11, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    .line 662
    iget-object v11, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v7, v10, v9, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 663
    iget-object v11, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 746
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 747
    const-class v0, Lcom/meizu/common/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 748
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 752
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 753
    const-class v0, Lcom/meizu/common/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 754
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 576
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 578
    iget-boolean v4, p0, Lcom/meizu/common/widget/Switch;->mAnimRunning:Z

    if-nez v4, :cond_0

    .line 579
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/meizu/common/widget/Switch;->setThumbPosition(Z)V

    .line 580
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0xff

    :goto_0
    iput v4, p0, Lcom/meizu/common/widget/Switch;->mOnThumbDrawAlpha:I

    .line 586
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 587
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getPaddingLeft()I

    move-result v1

    .line 588
    .local v1, "switchLeft":I
    iget v4, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    add-int v2, v1, v4

    .line 594
    .local v2, "switchRight":I
    :goto_1
    const/4 v3, 0x0

    .line 595
    .local v3, "switchTop":I
    const/4 v0, 0x0

    .line 596
    .local v0, "switchBottom":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getGravity()I

    move-result v4

    and-int/lit8 v4, v4, 0x70

    sparse-switch v4, :sswitch_data_0

    .line 599
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getPaddingTop()I

    move-result v3

    .line 600
    iget v4, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    add-int v0, v3, v4

    .line 615
    :goto_2
    iput v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchLeft:I

    .line 616
    iput v3, p0, Lcom/meizu/common/widget/Switch;->mSwitchTop:I

    .line 617
    iput v0, p0, Lcom/meizu/common/widget/Switch;->mSwitchBottom:I

    .line 618
    iput v2, p0, Lcom/meizu/common/widget/Switch;->mSwitchRight:I

    .line 619
    return-void

    .line 580
    .end local v0    # "switchBottom":I
    .end local v1    # "switchLeft":I
    .end local v2    # "switchRight":I
    .end local v3    # "switchTop":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 590
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getPaddingRight()I

    move-result v5

    sub-int v2, v4, v5

    .line 591
    .restart local v2    # "switchRight":I
    iget v4, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    sub-int v1, v2, v4

    .restart local v1    # "switchLeft":I
    goto :goto_1

    .line 604
    .restart local v0    # "switchBottom":I
    .restart local v3    # "switchTop":I
    :sswitch_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getPaddingTop()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v4, v5

    .line 606
    iget v4, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    add-int v0, v3, v4

    .line 607
    goto :goto_2

    .line 610
    :sswitch_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getPaddingBottom()I

    move-result v5

    sub-int v0, v4, v5

    .line 611
    iget v4, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    sub-int v3, v0, v4

    goto :goto_2

    .line 596
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method

.method public onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 358
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mOnThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/Switch;->mOnThumbWidth:I

    .line 359
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mOffThumbDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/Switch;->mOffThumbWidth:I

    .line 360
    iget v1, p0, Lcom/meizu/common/widget/Switch;->mOnThumbWidth:I

    iput v1, p0, Lcom/meizu/common/widget/Switch;->mThumbWidth:I

    .line 362
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    .line 363
    iget-object v1, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    .line 365
    iget v1, p0, Lcom/meizu/common/widget/Switch;->mOnThumbWidth:I

    iget v2, p0, Lcom/meizu/common/widget/Switch;->mOffThumbWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/meizu/common/widget/Switch;->mStretchedRadius:I

    .line 366
    iget v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    iget v2, p0, Lcom/meizu/common/widget/Switch;->mOffThumbWidth:I

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/meizu/common/widget/Switch;->mOffThumbMargin:I

    .line 367
    iget v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    iget v2, p0, Lcom/meizu/common/widget/Switch;->mOnThumbWidth:I

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/meizu/common/widget/Switch;->mOnThumbMargin:I

    .line 368
    iget v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchWidth:I

    iget v2, p0, Lcom/meizu/common/widget/Switch;->mOnThumbWidth:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/Switch;->mOffThumbMargin:I

    iget v3, p0, Lcom/meizu/common/widget/Switch;->mOnThumbMargin:I

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/meizu/common/widget/Switch;->mAnimationLength:I

    .line 369
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/meizu/common/widget/Switch;->mOnThumbWidth:I

    :goto_0
    iput v1, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawWidth:I

    .line 371
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 372
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getMeasuredHeight()I

    move-result v0

    .line 373
    .local v0, "measuredHeight":I
    iget v1, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    if-ge v0, v1, :cond_0

    .line 374
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->getMeasuredWidthAndState()I

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/Switch;->mSwitchHeight:I

    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/widget/Switch;->setMeasuredDimension(II)V

    .line 376
    :cond_0
    return-void

    .line 369
    .end local v0    # "measuredHeight":I
    :cond_1
    iget v1, p0, Lcom/meizu/common/widget/Switch;->mOffThumbWidth:I

    goto :goto_0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 380
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 381
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mOnLayout:Landroid/text/Layout;

    .line 382
    .local v0, "layout":Landroid/text/Layout;
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 383
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 385
    :cond_0
    return-void

    .line 381
    .end local v0    # "layout":Landroid/text/Layout;
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mOffLayout:Landroid/text/Layout;

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 18
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 396
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/common/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 397
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 398
    .local v2, "action":I
    packed-switch v2, :pswitch_data_0

    .line 500
    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->isEnabled()Z

    move-result v14

    :goto_1
    return v14

    .line 400
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    .line 401
    .local v12, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    .line 402
    .local v13, "y":F
    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/common/widget/Switch;->mTouchInWholeX:F

    .line 403
    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/common/widget/Switch;->mTouchInWholeY:F

    .line 404
    const/4 v7, 0x0

    .line 406
    .local v7, "isHit":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/meizu/common/widget/Switch;->hitSwith(FF)Z

    move-result v7

    .line 407
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_1

    if-eqz v7, :cond_1

    .line 408
    const/4 v14, 0x1

    move-object/from16 v0, p0

    iput v14, v0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    .line 409
    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/common/widget/Switch;->mTouchX:F

    .line 410
    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/common/widget/Switch;->mTouchY:F

    .line 411
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 413
    :goto_2
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/meizu/common/widget/Switch;->setPressed(Z)V

    goto :goto_0

    .line 412
    :cond_1
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    goto :goto_2

    .line 418
    .end local v7    # "isHit":Z
    .end local v12    # "x":F
    .end local v13    # "y":F
    :pswitch_2
    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    packed-switch v14, :pswitch_data_1

    goto :goto_0

    .line 424
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    .line 425
    .restart local v12    # "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    .line 426
    .restart local v13    # "y":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/common/widget/Switch;->mTouchX:F

    sub-float v14, v12, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/meizu/common/widget/Switch;->mTouchSlop:I

    int-to-float v15, v15

    cmpl-float v14, v14, v15

    if-gtz v14, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/common/widget/Switch;->mTouchY:F

    sub-float v14, v13, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v14

    move-object/from16 v0, p0

    iget v15, v0, Lcom/meizu/common/widget/Switch;->mTouchSlop:I

    int-to-float v15, v15

    cmpl-float v14, v14, v15

    if-lez v14, :cond_0

    .line 428
    :cond_2
    const/4 v14, 0x2

    move-object/from16 v0, p0

    iput v14, v0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    .line 429
    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/common/widget/Switch;->mTouchX:F

    .line 430
    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/common/widget/Switch;->mTouchInWholeX:F

    .line 431
    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/common/widget/Switch;->mTouchInWholeY:F

    .line 432
    move-object/from16 v0, p0

    iput v13, v0, Lcom/meizu/common/widget/Switch;->mTouchY:F

    .line 433
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 439
    .end local v12    # "x":F
    .end local v13    # "y":F
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    .line 440
    .restart local v12    # "x":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/common/widget/Switch;->mTouchX:F

    sub-float v6, v12, v14

    .line 441
    .local v6, "dx":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/common/widget/Switch;->mOffThumbMargin:I

    int-to-float v9, v14

    .line 442
    .local v9, "minPos":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    add-float/2addr v14, v6

    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->getThumbScrollRange()I

    move-result v15

    int-to-float v15, v15

    invoke-static {v14, v15}, Ljava/lang/Math;->min(FF)F

    move-result v14

    invoke-static {v9, v14}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 444
    .local v10, "newPos":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    cmpl-float v14, v10, v14

    if-eqz v14, :cond_0

    .line 445
    move-object/from16 v0, p0

    iput v10, v0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    .line 446
    move-object/from16 v0, p0

    iput v12, v0, Lcom/meizu/common/widget/Switch;->mTouchX:F

    .line 447
    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/meizu/common/widget/Switch;->calcDrawWidth(F)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/meizu/common/widget/Switch;->mThumbDrawWidth:I

    .line 448
    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/meizu/common/widget/Switch;->calcOnThumbDrawAlpha(F)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Lcom/meizu/common/widget/Switch;->mOnThumbDrawAlpha:I

    .line 449
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->invalidate()V

    goto/16 :goto_0

    .line 459
    .end local v6    # "dx":F
    .end local v9    # "minPos":F
    .end local v10    # "newPos":F
    .end local v12    # "x":F
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v12

    .line 460
    .restart local v12    # "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v13

    .line 461
    .restart local v13    # "y":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/common/widget/Switch;->mTouchInWholeX:F

    sub-float v14, v12, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 462
    .local v4, "dX":F
    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/common/widget/Switch;->mTouchInWholeY:F

    sub-float v14, v13, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 463
    .local v5, "dY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v16

    sub-long v14, v14, v16

    long-to-float v11, v14

    .line 464
    .local v11, "time":F
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->getTargetCheckedState()Z

    move-result v8

    .line 465
    .local v8, "mTurningOn":Z
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/meizu/common/widget/Switch;->setPressed(Z)V

    .line 466
    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/common/widget/Switch;->mTouchSlop:I

    int-to-float v14, v14

    cmpg-float v14, v5, v14

    if-gez v14, :cond_5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/common/widget/Switch;->mTouchSlop:I

    int-to-float v14, v14

    cmpg-float v14, v4, v14

    if-gez v14, :cond_5

    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/common/widget/Switch;->mClickTimeout:I

    int-to-float v14, v14

    cmpg-float v14, v11, v14

    if-gez v14, :cond_5

    .line 468
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/common/widget/Switch;->mPerformClick:Lcom/meizu/common/widget/Switch$PerformClick;

    if-nez v14, :cond_3

    .line 469
    new-instance v14, Lcom/meizu/common/widget/Switch$PerformClick;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/meizu/common/widget/Switch$PerformClick;-><init>(Lcom/meizu/common/widget/Switch;Lcom/meizu/common/widget/Switch$1;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/meizu/common/widget/Switch;->mPerformClick:Lcom/meizu/common/widget/Switch$PerformClick;

    .line 471
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/common/widget/Switch;->mPerformClick:Lcom/meizu/common/widget/Switch$PerformClick;

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/meizu/common/widget/Switch;->post(Ljava/lang/Runnable;)Z

    move-result v14

    if-nez v14, :cond_4

    .line 472
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->performClick()Z

    .line 482
    :cond_4
    :goto_3
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 475
    :cond_5
    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/common/widget/Switch;->mThumbPosition:F

    move-object/from16 v0, p0

    iget v15, v0, Lcom/meizu/common/widget/Switch;->mOffThumbMargin:I

    int-to-float v15, v15

    sub-float/2addr v14, v15

    float-to-int v3, v14

    .line 476
    .local v3, "beginPos":I
    if-lez v3, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/common/widget/Switch;->mAnimationLength:I

    if-ge v3, v14, :cond_6

    .line 477
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/common/widget/Switch;->mThumbAnimator:Lcom/meizu/common/widget/Switch$SwitchAnimator;

    # invokes: Lcom/meizu/common/widget/Switch$SwitchAnimator;->startAnimation(ZI)V
    invoke-static {v14, v8, v3}, Lcom/meizu/common/widget/Switch$SwitchAnimator;->access$100(Lcom/meizu/common/widget/Switch$SwitchAnimator;ZI)V

    goto :goto_3

    .line 479
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/Switch;->getTargetCheckedState()Z

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/meizu/common/widget/Switch;->animateThumbToCheckedState(Z)V

    goto :goto_3

    .line 485
    .end local v3    # "beginPos":I
    .end local v4    # "dX":F
    .end local v5    # "dY":F
    .end local v8    # "mTurningOn":Z
    .end local v11    # "time":F
    .end local v12    # "x":F
    .end local v13    # "y":F
    :pswitch_6
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/meizu/common/widget/Switch;->setPressed(Z)V

    .line 486
    move-object/from16 v0, p0

    iget v14, v0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    const/4 v15, 0x2

    if-ne v14, v15, :cond_8

    .line 487
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/meizu/common/widget/Switch;->mAnimRunning:Z

    if-eqz v14, :cond_7

    .line 488
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    .line 492
    :goto_4
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 490
    :cond_7
    invoke-direct/range {p0 .. p1}, Lcom/meizu/common/widget/Switch;->stopDrag(Landroid/view/MotionEvent;)V

    goto :goto_4

    .line 494
    :cond_8
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Lcom/meizu/common/widget/Switch;->mTouchMode:I

    .line 495
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/meizu/common/widget/Switch;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v14}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_0

    .line 398
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
    .end packed-switch

    .line 418
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public performClick()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 768
    iget-object v2, p0, Lcom/meizu/common/widget/Switch;->mThumbAnimator:Lcom/meizu/common/widget/Switch$SwitchAnimator;

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v1, p0, Lcom/meizu/common/widget/Switch;->mAnimationLength:I

    :cond_0
    # invokes: Lcom/meizu/common/widget/Switch$SwitchAnimator;->startAnimation(ZI)V
    invoke-static {v2, v0, v1}, Lcom/meizu/common/widget/Switch$SwitchAnimator;->access$100(Lcom/meizu/common/widget/Switch$SwitchAnimator;ZI)V

    .line 769
    invoke-super {p0}, Landroid/widget/CompoundButton;->performClick()Z

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 768
    goto :goto_0
.end method

.method public setChecked(Z)V
    .locals 1
    .param p1, "checked"    # Z

    .prologue
    .line 567
    iget-boolean v0, p0, Lcom/meizu/common/widget/Switch;->mAnimRunning:Z

    if-eqz v0, :cond_0

    .line 572
    :goto_0
    return-void

    .line 568
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 569
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/Switch;->setThumbPosition(Z)V

    .line 570
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xff

    :goto_1
    iput v0, p0, Lcom/meizu/common/widget/Switch;->mOnThumbDrawAlpha:I

    .line 571
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch;->invalidate()V

    goto :goto_0

    .line 570
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 734
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mThumbDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/Switch;->mTrackDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
