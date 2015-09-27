.class public Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;
.super Landroid/view/View;
.source "RadarAnimationIconView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ShapeHolder;,
        Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ArcShape;
    }
.end annotation


# instance fields
.field private mArcShape:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ArcShape;

.field private mBmpDraw:Landroid/graphics/drawable/BitmapDrawable;

.field private mFallAnim:Landroid/animation/ValueAnimator;

.field private mFallAnim2:Landroid/animation/ValueAnimator;

.field private mLastInvaildateTime:J

.field private mShapeHolder:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ShapeHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->init()V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->init()V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->init()V

    .line 59
    return-void
.end method

.method private createAnimatorSet()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 76
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->mShapeHolder:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ShapeHolder;

    .line 81
    .local v2, "shapeHolder":Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ShapeHolder;
    new-array v3, v7, [Landroid/animation/PropertyValuesHolder;

    const-string v4, "sweepAngle"

    new-array v5, v8, [F

    fill-array-data v5, :array_0

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 84
    .local v0, "fallAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x2bc

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 86
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 89
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 90
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->mFallAnim:Landroid/animation/ValueAnimator;

    .line 95
    new-array v3, v7, [Landroid/animation/PropertyValuesHolder;

    const-string v4, "rotation"

    new-array v5, v8, [F

    fill-array-data v5, :array_1

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofPropertyValuesHolder([Landroid/animation/PropertyValuesHolder;)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 98
    .local v1, "fallAnim2":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 100
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 101
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 104
    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 105
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->mFallAnim2:Landroid/animation/ValueAnimator;

    .line 106
    return-void

    .line 81
    :array_0
    .array-data 4
        0x0
        -0x3cf90000    # -135.0f
    .end array-data

    .line 95
    :array_1
    .array-data 4
        0x0
        0x43b40000    # 360.0f
    .end array-data
.end method

.method private init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 62
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ArcShape;

    const/high16 v1, -0x3d4c0000    # -90.0f

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ArcShape;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;FF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->mArcShape:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ArcShape;

    .line 64
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ShapeHolder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->mArcShape:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ArcShape;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ShapeHolder;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->mShapeHolder:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ShapeHolder;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->mShapeHolder:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ShapeHolder;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ShapeHolder;->setX(F)V

    .line 67
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->mShapeHolder:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ShapeHolder;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ShapeHolder;->setY(F)V

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020429

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->mBmpDraw:Landroid/graphics/drawable/BitmapDrawable;

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->createAnimatorSet()V

    .line 72
    return-void
.end method


# virtual methods
.method public addListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->mFallAnim2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 151
    return-void
.end method

.method public cancel()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->mFallAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 140
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->mFallAnim2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 141
    return-void
.end method

.method public isStarted()Z
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->mFallAnim2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    return v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->mFallAnim:Landroid/animation/ValueAnimator;

    if-ne v0, p1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->mArcShape:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ArcShape;

    const-string v0, "sweepAngle"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ArcShape;->setSweepAngle(F)V

    .line 169
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->invalidate()V

    .line 170
    return-void

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->mFallAnim2:Landroid/animation/ValueAnimator;

    if-ne v0, p1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->mShapeHolder:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ShapeHolder;

    const-string v0, "rotation"

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ShapeHolder;->setRotation(F)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->mShapeHolder:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ShapeHolder;

    .line 178
    .local v0, "shapeHolder":Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ShapeHolder;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 180
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ShapeHolder;->getX()F

    move-result v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ShapeHolder;->getY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 182
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ShapeHolder;->getRotation()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 184
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ShapeHolder;->draw(Landroid/graphics/Canvas;)V

    .line 186
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 187
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/16 v6, 0x64

    .line 110
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 112
    invoke-static {v6, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->getDefaultSize(II)I

    move-result v3

    .line 113
    .local v3, "measuredWidth":I
    invoke-static {v6, p2}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->getDefaultSize(II)I

    move-result v2

    .line 115
    .local v2, "measuredHeight":I
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->setMeasuredDimension(II)V

    .line 117
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->mShapeHolder:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ShapeHolder;

    .line 118
    .local v5, "shapeHolder":Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ShapeHolder;
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->mBmpDraw:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 119
    .local v1, "bmp":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    invoke-static {v1, v3, v2, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 121
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->mArcShape:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ArcShape;

    int-to-float v7, v3

    int-to-float v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ArcShape;->resize(FF)V

    .line 123
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ShapeHolder;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    .line 125
    .local v4, "paint":Landroid/graphics/Paint;
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 126
    .local v0, "bitmapShader":Landroid/graphics/BitmapShader;
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 127
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->mFallAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->mFallAnim2:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->mLastInvaildateTime:J

    .line 135
    return-void
.end method
