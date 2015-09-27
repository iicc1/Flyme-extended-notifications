.class public Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;
.super Landroid/widget/ImageView;
.source "MyWidgeIconAnimationView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;,
        Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ArcShape;
    }
.end annotation


# instance fields
.field private mArcShape:Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ArcShape;

.field mBmpDraw:Landroid/graphics/drawable/BitmapDrawable;

.field private mFallAnim:Landroid/animation/ValueAnimator;

.field private mFallAnim2:Landroid/animation/ValueAnimator;

.field private mShapeHolder:Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;->init()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;->init()V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;->init()V

    .line 67
    return-void
.end method

.method private createAnimatorSet()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    .line 86
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;->mShapeHolder:Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;

    .line 88
    .local v2, "shapeHolder":Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v3

    const-string v4, "sweepAngle"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 91
    .local v0, "fallAnim":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x2bc

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 93
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 96
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 97
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;->mFallAnim:Landroid/animation/ValueAnimator;

    .line 99
    const-string v3, "rotation"

    new-array v4, v6, [F

    fill-array-data v4, :array_1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 102
    .local v1, "fallAnim2":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 104
    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 105
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 108
    invoke-virtual {v1, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 109
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;->mFallAnim2:Landroid/animation/ValueAnimator;

    .line 110
    return-void

    .line 88
    :array_0
    .array-data 4
        0x0
        -0x3cf90000    # -135.0f
    .end array-data

    .line 99
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

    .line 70
    new-instance v0, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ArcShape;

    const/high16 v1, -0x3d4c0000    # -90.0f

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ArcShape;-><init>(Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;FF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;->mArcShape:Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ArcShape;

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;->mArcShape:Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ArcShape;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;-><init>(Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;->mShapeHolder:Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;->mShapeHolder:Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;->setX(F)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;->mShapeHolder:Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;->setY(F)V

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020429

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;->mBmpDraw:Landroid/graphics/drawable/BitmapDrawable;

    .line 81
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;->createAnimatorSet()V

    .line 82
    return-void
.end method

.method private measureHeight(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    .prologue
    .line 155
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 156
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 158
    .local v2, "specSize":I
    const/4 v0, 0x0

    .line 160
    .local v0, "result":I
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_1

    .line 162
    move v0, v2

    .line 171
    :cond_0
    :goto_0
    return v0

    .line 164
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_2

    .line 166
    move v0, v2

    goto :goto_0

    .line 168
    :cond_2
    if-nez v1, :cond_0

    .line 169
    const/16 v3, 0x64

    invoke-static {v3, p1}, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;->getDefaultSize(II)I

    move-result v0

    goto :goto_0
.end method

.method private measureWidth(I)I
    .locals 4
    .param p1, "measureSpec"    # I

    .prologue
    .line 134
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 135
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 137
    .local v2, "specSize":I
    const/4 v0, 0x0

    .line 139
    .local v0, "result":I
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_1

    .line 141
    move v0, v2

    .line 150
    :cond_0
    :goto_0
    return v0

    .line 143
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_2

    .line 145
    move v0, v2

    goto :goto_0

    .line 147
    :cond_2
    if-nez v1, :cond_0

    .line 148
    const/16 v3, 0x64

    invoke-static {v3, p1}, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;->getDefaultSize(II)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "arg0"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 199
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;->invalidate()V

    .line 200
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;->mShapeHolder:Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;

    .line 207
    .local v0, "shapeHolder":Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 209
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;->getX()F

    move-result v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;->getY()F

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 211
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;->getRotation()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;->getMeasuredHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-virtual {p1, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 213
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;->draw(Landroid/graphics/Canvas;)V

    .line 215
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 216
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 113
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    .line 115
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;->measureWidth(I)I

    move-result v3

    .line 116
    .local v3, "measuredWidth":I
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;->measureHeight(I)I

    move-result v2

    .line 118
    .local v2, "measuredHeight":I
    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;->setMeasuredDimension(II)V

    .line 120
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;->mShapeHolder:Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;

    .line 121
    .local v5, "shapeHolder":Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;->mBmpDraw:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 122
    .local v1, "bmp":Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    invoke-static {v1, v3, v2, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 124
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;->mArcShape:Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ArcShape;

    int-to-float v7, v3

    int-to-float v8, v2

    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ArcShape;->resize(FF)V

    .line 126
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    .line 128
    .local v4, "paint":Landroid/graphics/Paint;
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, v1, v6, v7}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 129
    .local v0, "bitmapShader":Landroid/graphics/BitmapShader;
    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 130
    return-void
.end method
