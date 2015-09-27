.class public Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SwapAnimationControler.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler$ISwapViewsPositionListener;
    }
.end annotation


# instance fields
.field private mAnimatorListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler$ISwapViewsPositionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:J

.field private mFirstAnimator:Landroid/animation/ValueAnimator;

.field private mFirstView:Landroid/view/View;

.field private mFirstViewX:Landroid/animation/PropertyValuesHolder;

.field private mFirstViewY:Landroid/animation/PropertyValuesHolder;

.field private mSecondAnimator:Landroid/animation/ValueAnimator;

.field private mSecondView:Landroid/view/View;

.field private mSecondViewX:Landroid/animation/PropertyValuesHolder;

.field private mSecondViewY:Landroid/animation/PropertyValuesHolder;

.field private mSwapAnimator:Landroid/animation/Animator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 53
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mDuration:J

    .line 54
    return-void
.end method

.method private changeSwapAnimatorValues(Landroid/view/View;Landroid/view/View;)V
    .locals 9
    .param p1, "firstView"    # Landroid/view/View;
    .param p2, "secondView"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 157
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->getViewLeftTop(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    .line 158
    .local v0, "firstLeftTop":Landroid/graphics/Point;
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->getViewLeftTop(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    .line 160
    .local v1, "secondLeftTop":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mFirstViewX:Landroid/animation/PropertyValuesHolder;

    new-array v3, v8, [I

    iget v4, v0, Landroid/graphics/Point;->x:I

    aput v4, v3, v6

    iget v4, v1, Landroid/graphics/Point;->x:I

    aput v4, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 161
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mFirstViewY:Landroid/animation/PropertyValuesHolder;

    new-array v3, v8, [I

    iget v4, v0, Landroid/graphics/Point;->y:I

    aput v4, v3, v6

    iget v4, v1, Landroid/graphics/Point;->y:I

    aput v4, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 162
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mFirstAnimator:Landroid/animation/ValueAnimator;

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mDuration:J

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 164
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mSecondViewX:Landroid/animation/PropertyValuesHolder;

    new-array v3, v8, [I

    iget v4, v1, Landroid/graphics/Point;->x:I

    aput v4, v3, v6

    iget v4, v0, Landroid/graphics/Point;->x:I

    aput v4, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 165
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mSecondViewY:Landroid/animation/PropertyValuesHolder;

    new-array v3, v8, [I

    iget v4, v1, Landroid/graphics/Point;->y:I

    aput v4, v3, v6

    iget v4, v0, Landroid/graphics/Point;->y:I

    aput v4, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/PropertyValuesHolder;->setIntValues([I)V

    .line 166
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mSecondAnimator:Landroid/animation/ValueAnimator;

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mDuration:J

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 167
    return-void
.end method

.method private createSwapTwoViewsAnimator(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 13
    .param p1, "firstView"    # Landroid/view/View;
    .param p2, "secondView"    # Landroid/view/View;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->getViewLeftTop(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v1

    .line 119
    .local v1, "firstLeftTop":Landroid/graphics/Point;
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->getViewLeftTop(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v5

    .line 121
    .local v5, "secondLeftTop":Landroid/graphics/Point;
    const-string v9, "left"

    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    iget v12, v1, Landroid/graphics/Point;->x:I

    aput v12, v10, v11

    const/4 v11, 0x1

    iget v12, v5, Landroid/graphics/Point;->x:I

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mFirstViewX:Landroid/animation/PropertyValuesHolder;

    .line 122
    .local v2, "firstViewX":Landroid/animation/PropertyValuesHolder;
    const-string v9, "top"

    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    iget v12, v1, Landroid/graphics/Point;->y:I

    aput v12, v10, v11

    const/4 v11, 0x1

    iget v12, v5, Landroid/graphics/Point;->y:I

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mFirstViewY:Landroid/animation/PropertyValuesHolder;

    .line 123
    .local v3, "firstViewY":Landroid/animation/PropertyValuesHolder;
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    const/4 v10, 0x0

    aput-object v2, v9, v10

    const/4 v10, 0x1

    aput-object v3, v9, v10

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mFirstAnimator:Landroid/animation/ValueAnimator;

    .line 124
    .local v0, "firstAnimator":Landroid/animation/ValueAnimator;
    new-instance v9, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 125
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 127
    const-string v9, "left"

    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    iget v12, v5, Landroid/graphics/Point;->x:I

    aput v12, v10, v11

    const/4 v11, 0x1

    iget v12, v1, Landroid/graphics/Point;->x:I

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mSecondViewX:Landroid/animation/PropertyValuesHolder;

    .line 128
    .local v6, "secondViewX":Landroid/animation/PropertyValuesHolder;
    const-string v9, "top"

    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x0

    iget v12, v5, Landroid/graphics/Point;->y:I

    aput v12, v10, v11

    const/4 v11, 0x1

    iget v12, v1, Landroid/graphics/Point;->y:I

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v7

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mSecondViewY:Landroid/animation/PropertyValuesHolder;

    .line 129
    .local v7, "secondViewY":Landroid/animation/PropertyValuesHolder;
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/PropertyValuesHolder;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    const/4 v10, 0x1

    aput-object v7, v9, v10

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mSecondAnimator:Landroid/animation/ValueAnimator;

    .line 130
    .local v4, "secondAnimator":Landroid/animation/ValueAnimator;
    new-instance v9, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v9}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v4, v9}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 131
    invoke-virtual {v4, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 133
    new-instance v8, Landroid/animation/AnimatorSet;

    invoke-direct {v8}, Landroid/animation/AnimatorSet;-><init>()V

    .line 134
    .local v8, "set":Landroid/animation/AnimatorSet;
    const/4 v9, 0x2

    new-array v9, v9, [Landroid/animation/Animator;

    const/4 v10, 0x0

    aput-object v0, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    invoke-virtual {v8, v9}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 135
    invoke-virtual {v8, p0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 136
    return-object v8
.end method

.method private getViewLeftTop(Landroid/view/View;)Landroid/graphics/Point;
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 271
    const/high16 v1, 0x7f0e0000

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;

    .line 272
    .local v0, "viewHolder":Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;->getLeftTop()Landroid/graphics/Point;

    move-result-object v1

    return-object v1
.end method

.method private sureEndSwapAnimator()V
    .locals 2

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mSwapAnimator:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mSwapAnimator:Landroid/animation/Animator;

    .line 86
    .local v0, "t":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 90
    .end local v0    # "t":Landroid/animation/Animator;
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler$ISwapViewsPositionListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler$ISwapViewsPositionListener;

    .prologue
    .line 217
    if-nez p1, :cond_0

    .line 225
    :goto_0
    return-void

    .line 221
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mAnimatorListeners:Ljava/util/List;

    if-nez v0, :cond_1

    .line 222
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mAnimatorListeners:Ljava/util/List;

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mAnimatorListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public isSwapping()Z
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mSwapAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 178
    const/4 v0, 0x0

    .line 180
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mSwapAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mAnimatorListeners:Ljava/util/List;

    .line 233
    .local v0, "animatorListeners":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler$ISwapViewsPositionListener;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 234
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler$ISwapViewsPositionListener;

    .line 235
    .local v2, "swapViewsPositionListener":Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler$ISwapViewsPositionListener;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mFirstView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mSecondView:Landroid/view/View;

    invoke-interface {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler$ISwapViewsPositionListener;->onSwapEnd(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0

    .line 238
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "swapViewsPositionListener":Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler$ISwapViewsPositionListener;
    :cond_0
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 242
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mFirstAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v1, :cond_1

    .line 250
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mFirstView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->getViewLeftTop(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    .line 251
    .local v0, "leftTop":Landroid/graphics/Point;
    const-string v1, "left"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v1, "top"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Point;->set(II)V

    .line 252
    const-string v1, "SwapAnimationControler"

    invoke-virtual {v0}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mFirstView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 267
    .end local v0    # "leftTop":Landroid/graphics/Point;
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mSecondAnimator:Landroid/animation/ValueAnimator;

    if-ne p1, v1, :cond_0

    .line 263
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mSecondView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->getViewLeftTop(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    .line 264
    .restart local v0    # "leftTop":Landroid/graphics/Point;
    const-string v1, "left"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v1, "top"

    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Point;->set(II)V

    .line 265
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mSecondView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    goto :goto_0
.end method

.method public safeSwapViewsPosition(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "firstView"    # Landroid/view/View;
    .param p2, "secondView"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->sureEndSwapAnimator()V

    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mFirstView:Landroid/view/View;

    .line 71
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mSecondView:Landroid/view/View;

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mSwapAnimator:Landroid/animation/Animator;

    if-nez v0, :cond_0

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->createSwapTwoViewsAnimator(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mSwapAnimator:Landroid/animation/Animator;

    .line 78
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->changeSwapAnimatorValues(Landroid/view/View;Landroid/view/View;)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mSwapAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 80
    return-void
.end method

.method public setDuration(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 185
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SwapAnimationControler cannot have negative duration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_0
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mDuration:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_1

    .line 190
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler;->mDuration:J

    .line 192
    :cond_1
    return-void
.end method
