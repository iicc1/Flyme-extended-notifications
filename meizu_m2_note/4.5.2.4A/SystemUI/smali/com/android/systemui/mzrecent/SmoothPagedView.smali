.class public abstract Lcom/android/systemui/mzrecent/SmoothPagedView;
.super Lcom/android/systemui/mzrecent/PagedView;
.source "SmoothPagedView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/mzrecent/SmoothPagedView$OvershootInterpolator;
    }
.end annotation


# static fields
.field private static final SMOOTHING_CONSTANT:F


# instance fields
.field private mBaseLineFlingVelocity:F

.field private mFlingVelocityInfluence:F

.field private mScrollInterpolator:Landroid/view/animation/Interpolator;

.field mScrollMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 26
    const-wide v0, 0x3f90624dd2f1a9fcL    # 0.016

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/android/systemui/mzrecent/SmoothPagedView;->SMOOTHING_CONSTANT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/mzrecent/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/mzrecent/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 91
    iput-boolean v1, p0, Lcom/android/systemui/mzrecent/SmoothPagedView;->mUsePagingTouchSlop:Z

    .line 97
    iget v2, p0, Lcom/android/systemui/mzrecent/SmoothPagedView;->mScrollMode:I

    if-eq v2, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/mzrecent/SmoothPagedView;->mDeferScrollUpdate:Z

    .line 98
    return-void

    :cond_0
    move v0, v1

    .line 97
    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 183
    iget v4, p0, Lcom/android/systemui/mzrecent/SmoothPagedView;->mScrollMode:I

    if-ne v4, v5, :cond_1

    .line 184
    invoke-super {p0}, Lcom/android/systemui/mzrecent/PagedView;->computeScroll()V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/SmoothPagedView;->computeScrollHelper()Z

    move-result v3

    .line 188
    .local v3, "scrollComputed":Z
    if-nez v3, :cond_0

    iget v4, p0, Lcom/android/systemui/mzrecent/SmoothPagedView;->mTouchState:I

    if-ne v4, v5, :cond_0

    .line 189
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-float v4, v4

    const v5, 0x4e6e6b28    # 1.0E9f

    div-float v2, v4, v5

    .line 190
    .local v2, "now":F
    iget v4, p0, Lcom/android/systemui/mzrecent/SmoothPagedView;->mSmoothingTime:F

    sub-float v4, v2, v4

    sget v5, Lcom/android/systemui/mzrecent/SmoothPagedView;->SMOOTHING_CONSTANT:F

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 193
    .local v1, "e":F
    iget v4, p0, Lcom/android/systemui/mzrecent/SmoothPagedView;->mTouchX:F

    iget v5, p0, Lcom/android/systemui/mzrecent/SmoothPagedView;->mUnboundedScrollX:I

    int-to-float v5, v5

    sub-float v0, v4, v5

    .line 194
    .local v0, "dx":F
    iget v4, p0, Lcom/android/systemui/mzrecent/SmoothPagedView;->mUnboundedScrollX:I

    int-to-float v4, v4

    mul-float v5, v0, v1

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/SmoothPagedView;->getScrollY()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Lcom/android/systemui/mzrecent/SmoothPagedView;->scrollTo(II)V

    .line 195
    iput v2, p0, Lcom/android/systemui/mzrecent/SmoothPagedView;->mSmoothingTime:F

    .line 199
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v4, v0, v4

    if-gtz v4, :cond_2

    const/high16 v4, -0x40800000    # -1.0f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_0

    .line 200
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/SmoothPagedView;->invalidate()V

    goto :goto_0
.end method

.method protected getScrollMode()I
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method protected init()V
    .locals 3

    .prologue
    .line 109
    invoke-super {p0}, Lcom/android/systemui/mzrecent/PagedView;->init()V

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/SmoothPagedView;->getScrollMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/mzrecent/SmoothPagedView;->mScrollMode:I

    .line 112
    iget v0, p0, Lcom/android/systemui/mzrecent/SmoothPagedView;->mScrollMode:I

    if-nez v0, :cond_0

    .line 113
    const v0, 0x451c4000    # 2500.0f

    iput v0, p0, Lcom/android/systemui/mzrecent/SmoothPagedView;->mBaseLineFlingVelocity:F

    .line 114
    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/android/systemui/mzrecent/SmoothPagedView;->mFlingVelocityInfluence:F

    .line 115
    new-instance v0, Lcom/android/systemui/mzrecent/SmoothPagedView$OvershootInterpolator;

    invoke-direct {v0}, Lcom/android/systemui/mzrecent/SmoothPagedView$OvershootInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/SmoothPagedView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    .line 116
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/SmoothPagedView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/mzrecent/SmoothPagedView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/SmoothPagedView;->mScroller:Landroid/widget/Scroller;

    .line 118
    :cond_0
    return-void
.end method

.method protected snapToDestination()V
    .locals 2

    .prologue
    .line 122
    iget v0, p0, Lcom/android/systemui/mzrecent/SmoothPagedView;->mScrollMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 123
    invoke-super {p0}, Lcom/android/systemui/mzrecent/PagedView;->snapToDestination()V

    .line 127
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/SmoothPagedView;->getPageNearestToCenterOfScreen()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/mzrecent/SmoothPagedView;->snapToPageWithVelocity(II)V

    goto :goto_0
.end method

.method protected snapToPage(I)V
    .locals 3
    .param p1, "whichPage"    # I

    .prologue
    const/4 v2, 0x0

    .line 174
    iget v0, p0, Lcom/android/systemui/mzrecent/SmoothPagedView;->mScrollMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 175
    invoke-super {p0, p1}, Lcom/android/systemui/mzrecent/PagedView;->snapToPage(I)V

    .line 179
    :goto_0
    return-void

    .line 177
    :cond_0
    invoke-virtual {p0, p1, v2, v2}, Lcom/android/systemui/mzrecent/SmoothPagedView;->snapToPageWithVelocity(IIZ)V

    goto :goto_0
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 2
    .param p1, "whichPage"    # I
    .param p2, "velocity"    # I

    .prologue
    const/4 v1, 0x1

    .line 131
    iget v0, p0, Lcom/android/systemui/mzrecent/SmoothPagedView;->mScrollMode:I

    if-ne v0, v1, :cond_0

    .line 132
    invoke-super {p0, p1, p2}, Lcom/android/systemui/mzrecent/PagedView;->snapToPageWithVelocity(II)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/mzrecent/SmoothPagedView;->snapToPageWithVelocity(IIZ)V

    goto :goto_0
.end method

.method protected snapToPageWithVelocity(IIZ)V
    .locals 8
    .param p1, "whichPage"    # I
    .param p2, "velocity"    # I
    .param p3, "settle"    # Z

    .prologue
    .line 142
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/SmoothPagedView;->getChildCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 144
    const/4 v4, 0x1

    iget v5, p0, Lcom/android/systemui/mzrecent/SmoothPagedView;->mCurrentPage:I

    sub-int v5, p1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 145
    .local v3, "screenDelta":I
    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/SmoothPagedView;->getChildOffset(I)I

    move-result v4

    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/SmoothPagedView;->getRelativeChildOffset(I)I

    move-result v5

    sub-int v2, v4, v5

    .line 147
    .local v2, "newX":I
    iget v4, p0, Lcom/android/systemui/mzrecent/SmoothPagedView;->mUnboundedScrollX:I

    sub-int v0, v2, v4

    .line 148
    .local v0, "delta":I
    add-int/lit8 v4, v3, 0x1

    mul-int/lit8 v1, v4, 0x64

    .line 150
    .local v1, "duration":I
    iget-object v4, p0, Lcom/android/systemui/mzrecent/SmoothPagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_0

    .line 151
    iget-object v4, p0, Lcom/android/systemui/mzrecent/SmoothPagedView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 154
    :cond_0
    if-eqz p3, :cond_1

    .line 155
    iget-object v4, p0, Lcom/android/systemui/mzrecent/SmoothPagedView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    check-cast v4, Lcom/android/systemui/mzrecent/SmoothPagedView$OvershootInterpolator;

    invoke-virtual {v4, v3}, Lcom/android/systemui/mzrecent/SmoothPagedView$OvershootInterpolator;->setDistance(I)V

    .line 161
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 162
    if-lez p2, :cond_2

    .line 163
    int-to-float v4, v1

    int-to-float v5, v1

    int-to-float v6, p2

    iget v7, p0, Lcom/android/systemui/mzrecent/SmoothPagedView;->mBaseLineFlingVelocity:F

    div-float/2addr v6, v7

    div-float/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/mzrecent/SmoothPagedView;->mFlingVelocityInfluence:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 169
    :goto_1
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/mzrecent/SmoothPagedView;->snapToPage(III)V

    .line 170
    return-void

    .line 158
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/mzrecent/SmoothPagedView;->mScrollInterpolator:Landroid/view/animation/Interpolator;

    check-cast v4, Lcom/android/systemui/mzrecent/SmoothPagedView$OvershootInterpolator;

    invoke-virtual {v4}, Lcom/android/systemui/mzrecent/SmoothPagedView$OvershootInterpolator;->disableSettle()V

    goto :goto_0

    .line 166
    :cond_2
    add-int/lit8 v1, v1, 0x64

    goto :goto_1
.end method
