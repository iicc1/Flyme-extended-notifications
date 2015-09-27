.class public Lcom/meizu/common/widget/LoadingView;
.super Landroid/view/View;
.source "LoadingView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# instance fields
.field private mAngleAnim:Landroid/animation/ValueAnimator;

.field private mBackDrawable:Landroid/graphics/drawable/Drawable;

.field private mBackgroundColor:I

.field private mCentX:F

.field private mCentY:F

.field private mCircleBounds:Landroid/graphics/RectF;

.field private mContext:Landroid/content/Context;

.field private mFinishDrawable:Landroid/graphics/drawable/Drawable;

.field private mForegroundColor:I

.field private mFrameDelay:J

.field private mHeadSign:F

.field private mIsFirst:Z

.field private mLoadingState:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintArc:Landroid/graphics/Paint;

.field private mPaintArcBack:Landroid/graphics/Paint;

.field private mPaintWidth:I

.field private mProgressAnim:Landroid/animation/ObjectAnimator;

.field private mProgressSign:F

.field private mRadius:F

.field private mRingWidth:F

.field private mShowSecondAnimation:Z

.field private mStartPoint:F

.field private mStartTime:J

.field private mText:Ljava/lang/String;

.field private mThemeColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FF)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "radius"    # F
    .param p3, "ringWidth"    # F

    .prologue
    .line 120
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 121
    iput p2, p0, Lcom/meizu/common/widget/LoadingView;->mRadius:F

    .line 122
    iput p3, p0, Lcom/meizu/common/widget/LoadingView;->mRingWidth:F

    .line 123
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingView;->init()V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 76
    const v0, 0x7f010036

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/LoadingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaint:Landroid/graphics/Paint;

    .line 29
    iput-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArc:Landroid/graphics/Paint;

    .line 30
    iput-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArcBack:Landroid/graphics/Paint;

    .line 31
    iput-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mContext:Landroid/content/Context;

    .line 33
    iput-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mAngleAnim:Landroid/animation/ValueAnimator;

    .line 34
    iput-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mProgressAnim:Landroid/animation/ObjectAnimator;

    .line 35
    iput v3, p0, Lcom/meizu/common/widget/LoadingView;->mHeadSign:F

    .line 36
    iput v3, p0, Lcom/meizu/common/widget/LoadingView;->mProgressSign:F

    .line 37
    iput v3, p0, Lcom/meizu/common/widget/LoadingView;->mStartPoint:F

    .line 38
    iput-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    .line 39
    iput v5, p0, Lcom/meizu/common/widget/LoadingView;->mPaintWidth:I

    .line 40
    iput-boolean v4, p0, Lcom/meizu/common/widget/LoadingView;->mIsFirst:Z

    .line 41
    iput-boolean v5, p0, Lcom/meizu/common/widget/LoadingView;->mShowSecondAnimation:Z

    .line 61
    iput v4, p0, Lcom/meizu/common/widget/LoadingView;->mLoadingState:I

    .line 63
    iput-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 64
    iput-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mFinishDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/meizu/common/widget/LoadingView;->mFrameDelay:J

    .line 83
    iput-object p1, p0, Lcom/meizu/common/widget/LoadingView;->mContext:Landroid/content/Context;

    .line 85
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaint:Landroid/graphics/Paint;

    .line 86
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 89
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 90
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x42100000    # 36.0f

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 92
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/meizu/common/R$styleable;->MZTheme:[I

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 93
    .local v1, "b":Landroid/content/res/TypedArray;
    const v2, -0xff0100

    invoke-virtual {v1, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/LoadingView;->mThemeColor:I

    .line 94
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 96
    sget-object v2, Lcom/meizu/common/R$styleable;->LoadingView:[I

    invoke-virtual {p1, p2, v2, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 97
    .local v0, "a":Landroid/content/res/TypedArray;
    const/high16 v2, 0x41380000    # 11.5f

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/LoadingView;->mRadius:F

    .line 98
    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/LoadingView;->mRingWidth:F

    .line 99
    const/4 v2, 0x2

    iget v3, p0, Lcom/meizu/common/widget/LoadingView;->mThemeColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/LoadingView;->mBackgroundColor:I

    .line 100
    const/4 v2, 0x3

    iget v3, p0, Lcom/meizu/common/widget/LoadingView;->mThemeColor:I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/LoadingView;->mForegroundColor:I

    .line 101
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 102
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mFinishDrawable:Landroid/graphics/drawable/Drawable;

    .line 103
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mText:Ljava/lang/String;

    .line 104
    const/4 v2, 0x7

    invoke-virtual {v0, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/meizu/common/widget/LoadingView;->mLoadingState:I

    .line 105
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 107
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArc:Landroid/graphics/Paint;

    .line 108
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArc:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 109
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArc:Landroid/graphics/Paint;

    iget v3, p0, Lcom/meizu/common/widget/LoadingView;->mForegroundColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArc:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 112
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArcBack:Landroid/graphics/Paint;

    .line 113
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArcBack:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 114
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArcBack:Landroid/graphics/Paint;

    iget v3, p0, Lcom/meizu/common/widget/LoadingView;->mBackgroundColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 115
    iget-object v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaintArcBack:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 116
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingView;->init()V

    .line 117
    return-void
.end method

.method private getArcDistance(F)F
    .locals 7
    .param p1, "startPoint"    # F

    .prologue
    const/high16 v6, -0x3df00000    # -36.0f

    const/high16 v5, 0x43220000    # 162.0f

    const/high16 v2, 0x41900000    # 18.0f

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v3, 0x42b40000    # 90.0f

    .line 379
    const/4 v0, 0x0

    .line 381
    .local v0, "distance":F
    const/high16 v1, -0x3d4c0000    # -90.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    cmpg-float v1, p1, v6

    if-gtz v1, :cond_1

    .line 382
    add-float v1, p1, v3

    mul-float v0, v1, v4

    .line 392
    :cond_0
    :goto_0
    return v0

    .line 383
    :cond_1
    cmpl-float v1, p1, v6

    if-lez v1, :cond_2

    cmpg-float v1, p1, v2

    if-gtz v1, :cond_2

    .line 384
    const/high16 v1, 0x42d80000    # 108.0f

    const/high16 v2, 0x42100000    # 36.0f

    add-float/2addr v2, p1

    mul-float/2addr v2, v4

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    add-float v0, v1, v2

    goto :goto_0

    .line 385
    :cond_2
    cmpl-float v1, p1, v2

    if-lez v1, :cond_3

    cmpg-float v1, p1, v3

    if-gtz v1, :cond_3

    .line 386
    const/high16 v1, 0x43100000    # 144.0f

    sub-float v2, p1, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    sub-float v0, v1, v2

    goto :goto_0

    .line 387
    :cond_3
    cmpl-float v1, p1, v3

    if-lez v1, :cond_4

    cmpg-float v1, p1, v5

    if-gtz v1, :cond_4

    .line 388
    const/high16 v1, 0x42fc0000    # 126.0f

    sub-float v2, p1, v3

    div-float/2addr v2, v4

    sub-float v0, v1, v2

    goto :goto_0

    .line 389
    :cond_4
    cmpl-float v1, p1, v5

    if-lez v1, :cond_0

    const/high16 v1, 0x43870000    # 270.0f

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    .line 390
    sub-float v1, p1, v5

    mul-float/2addr v1, v3

    const/high16 v2, 0x42d80000    # 108.0f

    div-float/2addr v1, v2

    sub-float v0, v3, v1

    goto :goto_0
.end method

.method private getStartPoint(F)F
    .locals 6
    .param p1, "point"    # F

    .prologue
    const/high16 v5, 0x43870000    # 270.0f

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/high16 v3, 0x43580000    # 216.0f

    const/high16 v2, 0x43220000    # 162.0f

    .line 358
    const/4 v0, 0x0

    .line 359
    .local v0, "startPoint":F
    move v0, p1

    .line 360
    cmpl-float v1, v0, v4

    if-lez v1, :cond_3

    cmpg-float v1, v0, v2

    if-gtz v1, :cond_3

    .line 361
    const v1, 0x3f8ccccd    # 1.1f

    mul-float v0, v1, p1

    .line 368
    :cond_0
    :goto_0
    cmpg-float v1, v0, v4

    if-gez v1, :cond_1

    .line 369
    const/high16 v0, -0x3d4c0000    # -90.0f

    .line 371
    :cond_1
    cmpl-float v1, v0, v5

    if-lez v1, :cond_2

    .line 372
    const/high16 v0, 0x43870000    # 270.0f

    .line 375
    :cond_2
    return v0

    .line 362
    :cond_3
    cmpl-float v1, v0, v2

    if-lez v1, :cond_4

    cmpg-float v1, v0, v3

    if-gtz v1, :cond_4

    .line 363
    const v1, 0x43323333    # 178.2f

    sub-float v2, v0, v2

    const v3, 0x3f733333    # 0.95f

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    goto :goto_0

    .line 364
    :cond_4
    cmpl-float v1, v0, v3

    if-lez v1, :cond_0

    cmpg-float v1, v0, v5

    if-gtz v1, :cond_0

    .line 365
    const v1, 0x43658000    # 229.5f

    sub-float v2, v0, v3

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v2, v3

    add-float v0, v1, v2

    goto :goto_0
.end method

.method private init()V
    .locals 4

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 127
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingView;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingView;->mRadius:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingView;->mPaintWidth:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingView;->mRingWidth:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/LoadingView;->mCentX:F

    .line 128
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingView;->getY()F

    move-result v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingView;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingView;->mRadius:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingView;->mPaintWidth:I

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/meizu/common/widget/LoadingView;->mRingWidth:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/meizu/common/widget/LoadingView;->mCentY:F

    .line 130
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    .line 131
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/meizu/common/widget/LoadingView;->mCentX:F

    iget v2, p0, Lcom/meizu/common/widget/LoadingView;->mRadius:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaintWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingView;->mRingWidth:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 132
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/meizu/common/widget/LoadingView;->mCentY:F

    iget v2, p0, Lcom/meizu/common/widget/LoadingView;->mRadius:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaintWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingView;->mRingWidth:F

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 133
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/meizu/common/widget/LoadingView;->mCentX:F

    iget v2, p0, Lcom/meizu/common/widget/LoadingView;->mRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaintWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingView;->mRingWidth:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 134
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    iget v1, p0, Lcom/meizu/common/widget/LoadingView;->mCentY:F

    iget v2, p0, Lcom/meizu/common/widget/LoadingView;->mRadius:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingView;->mPaintWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/meizu/common/widget/LoadingView;->mRingWidth:F

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 135
    invoke-static {}, Landroid/animation/ObjectAnimator;->getFrameDelay()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/widget/LoadingView;->mFrameDelay:J

    .line 136
    invoke-direct {p0}, Lcom/meizu/common/widget/LoadingView;->initAnimation()V

    .line 137
    return-void
.end method

.method private initAnimation()V
    .locals 6

    .prologue
    .line 270
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mProgressAnim:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    .line 271
    const-string v2, "progressSign"

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x3e8

    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/LoadingView;->propertyAnimator(Ljava/lang/Object;Ljava/lang/String;FFI)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mProgressAnim:Landroid/animation/ObjectAnimator;

    .line 273
    :cond_0
    return-void
.end method

.method private propertyAnimator(Ljava/lang/Object;Ljava/lang/String;FFI)Landroid/animation/ObjectAnimator;
    .locals 5
    .param p1, "target"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "begin"    # F
    .param p4, "end"    # F
    .param p5, "duration"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 276
    const/4 v2, 0x2

    new-array v2, v2, [F

    aput p3, v2, v3

    aput p4, v2, v4

    invoke-static {p2, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 277
    .local v1, "pvhA":Landroid/animation/PropertyValuesHolder;
    new-array v2, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v3

    invoke-static {p1, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 278
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    int-to-long v2, p5

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 279
    return-object v0
.end method

.method private propertyAnimator(FFI)Landroid/animation/ValueAnimator;
    .locals 4
    .param p1, "begin"    # F
    .param p2, "end"    # F
    .param p3, "duration"    # I

    .prologue
    .line 283
    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 284
    .local v0, "anim":Landroid/animation/ValueAnimator;
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 285
    return-object v0
.end method

.method private startLoadingAnimation(I)V
    .locals 4
    .param p1, "duration"    # I

    .prologue
    .line 295
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mAngleAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mAngleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 297
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mAngleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mAngleAnim:Landroid/animation/ValueAnimator;

    .line 300
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/common/widget/LoadingView;->mLoadingState:I

    .line 302
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x3e8

    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/LoadingView;->propertyAnimator(FFI)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mAngleAnim:Landroid/animation/ValueAnimator;

    .line 303
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mAngleAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/meizu/common/widget/LoadingView$1;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/LoadingView$1;-><init>(Lcom/meizu/common/widget/LoadingView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 314
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mAngleAnim:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 315
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mAngleAnim:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 316
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mAngleAnim:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 317
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mAngleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 318
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingView;->invalidate()V

    .line 319
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 143
    const/high16 v2, -0x3d4c0000    # -90.0f

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/LoadingView;->mHeadSign:F

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/meizu/common/widget/LoadingView;->getStartPoint(F)F

    move-result v16

    .line 144
    .local v16, "startPoint":F
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/LoadingView;->getArcDistance(F)F

    move-result v12

    .line 145
    .local v12, "distance":F
    const-wide/16 v10, 0x0

    .line 146
    .local v10, "costTime":J
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/meizu/common/widget/LoadingView;->mIsFirst:Z

    if-eqz v2, :cond_0

    .line 147
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LoadingView;->mPaintArc:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/LoadingView;->mRingWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/common/widget/LoadingView;->mPaintWidth:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 148
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LoadingView;->mPaintArcBack:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/LoadingView;->mRingWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/common/widget/LoadingView;->mPaintWidth:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 149
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/common/widget/LoadingView;->mIsFirst:Z

    .line 152
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LoadingView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/LoadingView;->mRadius:F

    sub-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/LoadingView;->mRingWidth:F

    sub-float/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LoadingView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/common/widget/LoadingView;->mRadius:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/common/widget/LoadingView;->mRingWidth:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 154
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/widget/LoadingView;->mForegroundColor:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/LoadingView;->mBackgroundColor:I

    if-ne v2, v3, :cond_1

    .line 155
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LoadingView;->mPaintArcBack:Landroid/graphics/Paint;

    const/16 v3, 0x1a

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 157
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/widget/LoadingView;->mLoadingState:I

    packed-switch v2, :pswitch_data_0

    .line 223
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/common/widget/LoadingView;->mPaintArcBack:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/common/widget/LoadingView;->mPaintArc:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move/from16 v4, v16

    move v5, v12

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 225
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/LoadingView;->mStartPoint:F

    .line 231
    :cond_2
    :goto_0
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 232
    return-void

    .line 159
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LoadingView;->mText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 160
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/LoadingView;->mRingWidth:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v8, v2, v3

    .line 161
    .local v8, "baseX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/LoadingView;->mRingWidth:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v9, v2, v3

    .line 162
    .local v9, "baseY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LoadingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v13

    .line 163
    .local v13, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LoadingView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, v13, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v4, v13, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v14, v2, v3

    .line 164
    .local v14, "offset":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LoadingView;->mText:Ljava/lang/String;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v14, v3

    add-float/2addr v3, v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/common/widget/LoadingView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v8, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 171
    .end local v8    # "baseX":F
    .end local v9    # "baseY":F
    .end local v13    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .end local v14    # "offset":F
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/common/widget/LoadingView;->mPaintArcBack:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 172
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/common/widget/LoadingView;->mPaintArc:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    move/from16 v4, v16

    move v5, v12

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 173
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/meizu/common/widget/LoadingView;->mStartPoint:F

    goto/16 :goto_0

    .line 179
    :pswitch_2
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/meizu/common/widget/LoadingView;->mStartTime:J

    sub-long v10, v2, v4

    .line 181
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-ltz v2, :cond_3

    long-to-float v2, v10

    const/high16 v3, 0x43d00000    # 416.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_3

    .line 182
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LoadingView;->mPaintArc:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 183
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    const/high16 v4, -0x3d4c0000    # -90.0f

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/common/widget/LoadingView;->mPaintArcBack:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/common/widget/LoadingView;->mStartPoint:F

    const-wide/16 v6, 0x168

    mul-long/2addr v6, v10

    long-to-float v2, v6

    const/high16 v5, 0x43d00000    # 416.0f

    div-float v5, v2, v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/common/widget/LoadingView;->mPaintArc:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 186
    long-to-float v2, v10

    const/high16 v3, 0x43800000    # 256.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    long-to-float v2, v10

    const/high16 v3, 0x43d00000    # 416.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    .line 187
    const/high16 v2, 0x437f0000    # 255.0f

    long-to-float v3, v10

    const/high16 v4, 0x43800000    # 256.0f

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    float-to-int v15, v2

    .line 188
    .local v15, "paintAlpha":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LoadingView;->mFinishDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 189
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LoadingView;->mFinishDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v15}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 190
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LoadingView;->mFinishDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 192
    .end local v15    # "paintAlpha":I
    :cond_3
    long-to-float v2, v10

    const/high16 v3, 0x43d00000    # 416.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_4

    long-to-float v2, v10

    const/high16 v3, 0x44650000    # 916.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_4

    .line 193
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/common/widget/LoadingView;->mStartPoint:F

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/common/widget/LoadingView;->mPaintArc:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LoadingView;->mFinishDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 195
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LoadingView;->mFinishDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 196
    :cond_4
    long-to-float v2, v10

    const/high16 v3, 0x44650000    # 916.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    long-to-float v2, v10

    const v3, 0x44868000    # 1076.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_2

    .line 197
    const/high16 v2, 0x437f0000    # 255.0f

    long-to-float v3, v10

    const/high16 v4, 0x44650000    # 916.0f

    sub-float/2addr v3, v4

    mul-float/2addr v2, v3

    const/high16 v3, 0x43200000    # 160.0f

    div-float/2addr v2, v3

    float-to-int v15, v2

    .line 198
    .restart local v15    # "paintAlpha":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LoadingView;->mPaintArc:Landroid/graphics/Paint;

    rsub-int v3, v15, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 199
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/common/widget/LoadingView;->mStartPoint:F

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/common/widget/LoadingView;->mPaintArc:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 200
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LoadingView;->mPaintArc:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 201
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LoadingView;->mFinishDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 202
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LoadingView;->mFinishDrawable:Landroid/graphics/drawable/Drawable;

    rsub-int v3, v15, 0xff

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 204
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LoadingView;->mText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 205
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/LoadingView;->mRingWidth:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v8, v2, v3

    .line 206
    .restart local v8    # "baseX":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/LoadingView;->mCircleBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/LoadingView;->mRingWidth:F

    add-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v9, v2, v3

    .line 207
    .restart local v9    # "baseY":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LoadingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v13

    .line 208
    .restart local v13    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LoadingView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/LoadingView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, v13, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v4, v13, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float v14, v2, v3

    .line 210
    .restart local v14    # "offset":F
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LoadingView;->mText:Ljava/lang/String;

    const/high16 v3, 0x40000000    # 2.0f

    div-float v3, v14, v3

    add-float/2addr v3, v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/common/widget/LoadingView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v8, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 212
    .end local v8    # "baseX":F
    .end local v9    # "baseY":F
    .end local v13    # "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    .end local v14    # "offset":F
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/LoadingView;->mFinishDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 214
    const-wide/16 v2, 0x2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/meizu/common/widget/LoadingView;->mFrameDelay:J

    mul-long/2addr v2, v4

    add-long/2addr v2, v10

    long-to-float v2, v2

    const v3, 0x44868000    # 1076.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_2

    .line 215
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/LoadingView;->mLoadingState:I

    goto/16 :goto_0

    .line 157
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 400
    const/high16 v2, 0x40000000    # 2.0f

    iget v3, p0, Lcom/meizu/common/widget/LoadingView;->mRadius:F

    iget v4, p0, Lcom/meizu/common/widget/LoadingView;->mRingWidth:F

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 401
    .local v1, "dw":I
    move v0, v1

    .line 403
    .local v0, "dh":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingView;->getPaddingLeft()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingView;->getPaddingRight()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    .line 404
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingView;->getPaddingTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v0, v2

    .line 406
    invoke-static {v1, p1, v5}, Lcom/meizu/common/widget/LoadingView;->resolveSizeAndState(III)I

    move-result v2

    invoke-static {v0, p2, v5}, Lcom/meizu/common/widget/LoadingView;->resolveSizeAndState(III)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/meizu/common/widget/LoadingView;->setMeasuredDimension(II)V

    .line 408
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 2
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "visibility"    # I

    .prologue
    .line 325
    invoke-super {p0, p1, p2}, Landroid/view/View;->onVisibilityChanged(Landroid/view/View;I)V

    .line 326
    const/4 v0, 0x1

    iget v1, p0, Lcom/meizu/common/widget/LoadingView;->mLoadingState:I

    if-eq v0, v1, :cond_1

    .line 337
    :cond_0
    :goto_0
    return-void

    .line 328
    :cond_1
    if-eqz p2, :cond_2

    .line 329
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mAngleAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mAngleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mAngleAnim:Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 334
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 335
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/LoadingView;->startLoadingAnimation(I)V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x1

    .line 342
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 343
    iget v0, p0, Lcom/meizu/common/widget/LoadingView;->mLoadingState:I

    if-eq v1, v0, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    if-eqz p1, :cond_3

    .line 346
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mAngleAnim:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 347
    iget-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mAngleAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/LoadingView;->mAngleAnim:Landroid/animation/ValueAnimator;

    .line 350
    :cond_2
    iput-boolean v1, p0, Lcom/meizu/common/widget/LoadingView;->mIsFirst:Z

    goto :goto_0

    .line 352
    :cond_3
    invoke-virtual {p0}, Lcom/meizu/common/widget/LoadingView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 353
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/LoadingView;->startLoadingAnimation(I)V

    goto :goto_0
.end method

.method protected setHeadSign(F)V
    .locals 0
    .param p1, "headSign"    # F

    .prologue
    .line 253
    iput p1, p0, Lcom/meizu/common/widget/LoadingView;->mHeadSign:F

    .line 254
    return-void
.end method

.method public startAnimator()V
    .locals 1

    .prologue
    .line 242
    const/16 v0, 0x3e8

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/LoadingView;->startLoadingAnimation(I)V

    .line 243
    return-void
.end method
