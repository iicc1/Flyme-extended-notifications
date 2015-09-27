.class public Lcom/android/systemui/statusbar/phone/MorphIconView;
.super Landroid/view/View;
.source "MorphIconView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;,
        Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;
    }
.end annotation


# instance fields
.field private final TOUCH_ADDITION:I

.field private mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousBottom:I

.field private mPreviousLeft:I

.field private mPreviousRight:I

.field private mPreviousTop:I

.field private mTouchAdditionBottom:I

.field private mTouchAdditionLeft:I

.field private mTouchAdditionRight:I

.field private mTouchAdditionTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 28
    iput v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->TOUCH_ADDITION:I

    .line 29
    iput v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mTouchAdditionBottom:I

    .line 30
    iput v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mTouchAdditionLeft:I

    .line 31
    iput v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mTouchAdditionRight:I

    .line 32
    iput v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mTouchAdditionTop:I

    .line 33
    iput v1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mPreviousLeft:I

    .line 34
    iput v1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mPreviousRight:I

    .line 35
    iput v1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mPreviousBottom:I

    .line 36
    iput v1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mPreviousTop:I

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->initAnimations()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->TOUCH_ADDITION:I

    .line 29
    iput v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mTouchAdditionBottom:I

    .line 30
    iput v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mTouchAdditionLeft:I

    .line 31
    iput v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mTouchAdditionRight:I

    .line 32
    iput v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mTouchAdditionTop:I

    .line 33
    iput v1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mPreviousLeft:I

    .line 34
    iput v1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mPreviousRight:I

    .line 35
    iput v1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mPreviousBottom:I

    .line 36
    iput v1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mPreviousTop:I

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->initAnimations()V

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/MorphIconView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, -0x1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    iput v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->TOUCH_ADDITION:I

    .line 29
    iput v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mTouchAdditionBottom:I

    .line 30
    iput v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mTouchAdditionLeft:I

    .line 31
    iput v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mTouchAdditionRight:I

    .line 32
    iput v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mTouchAdditionTop:I

    .line 33
    iput v1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mPreviousLeft:I

    .line 34
    iput v1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mPreviousRight:I

    .line 35
    iput v1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mPreviousBottom:I

    .line 36
    iput v1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mPreviousTop:I

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->initAnimations()V

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/MorphIconView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    return-void
.end method

.method private createGradientShapeHolder(FFFFFI)Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "cornerRadius"    # F
    .param p6, "color"    # I

    .prologue
    const/high16 v5, 0x40800000    # 4.0f

    .line 147
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 148
    .local v0, "drawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 149
    new-instance v1, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;-><init>(Lcom/android/systemui/statusbar/phone/MorphIconView;Landroid/graphics/drawable/GradientDrawable;)V

    .line 150
    .local v1, "gradientShapeHolder":Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    div-float v3, p1, v5

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->setX(I)V

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    div-float v3, p2, v5

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->setY(I)V

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    div-float v3, p3, v5

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    div-float v4, p4, v5

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/widgetnew/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->setSize(II)V

    .line 153
    invoke-virtual {v1, p6}, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->setColor(I)V

    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->getContext()Landroid/content/Context;

    move-result-object v2

    div-float v3, p5, v5

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->setCornerRadius(F)V

    .line 155
    return-object v1
.end method

.method private createMorphingAnimation(Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;FFFFFI)Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;
    .locals 4
    .param p1, "gradientShapeHolder"    # Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;
    .param p2, "toX"    # F
    .param p3, "toY"    # F
    .param p4, "toWidth"    # F
    .param p5, "toHeight"    # F
    .param p6, "toCornerRadius"    # F
    .param p7, "toColor"    # I

    .prologue
    const/high16 v3, 0x40800000    # 4.0f

    .line 165
    new-instance v0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;-><init>(Lcom/android/systemui/statusbar/phone/MorphIconView;Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;)V

    .line 167
    .local v0, "animation":Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->getX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->setFromX(I)V

    .line 168
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    div-float v2, p2, v3

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->setToX(I)V

    .line 170
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->getY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->setFromY(I)V

    .line 171
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    div-float v2, p3, v3

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->setToY(I)V

    .line 173
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->setFromWidth(I)V

    .line 174
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    div-float v2, p4, v3

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->setToWidth(I)V

    .line 176
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->setFromHeight(I)V

    .line 177
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    div-float v2, p5, v3

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->setToHeight(I)V

    .line 179
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->getCornerRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->setFromCornerRadius(F)V

    .line 180
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    div-float v2, p6, v3

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->setToCornerRadius(F)V

    .line 182
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->setFromColor(I)V

    .line 183
    invoke-virtual {v0, p7}, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->setToColor(I)V

    .line 185
    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->setDuration(J)V

    .line 190
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->setup()V

    .line 192
    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 59
    sget-object v2, Lcom/android/systemui/R$styleable;->MorphIconView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 64
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v1, v2

    .line 65
    .local v1, "addition":I
    iput v1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mTouchAdditionBottom:I

    .line 66
    iput v1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mTouchAdditionLeft:I

    .line 67
    iput v1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mTouchAdditionRight:I

    .line 68
    iput v1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mTouchAdditionTop:I

    .line 69
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mTouchAdditionBottom:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mTouchAdditionBottom:I

    .line 70
    const/4 v2, 0x2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mTouchAdditionLeft:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mTouchAdditionLeft:I

    .line 71
    const/4 v2, 0x3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mTouchAdditionRight:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mTouchAdditionRight:I

    .line 72
    const/4 v2, 0x4

    iget v3, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mTouchAdditionTop:I

    int-to-float v3, v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mTouchAdditionTop:I

    .line 73
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 74
    return-void
.end method

.method private initAnimations()V
    .locals 34

    .prologue
    .line 77
    const/high16 v2, 0x41200000    # 10.0f

    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, 0x41a00000    # 20.0f

    const/high16 v5, 0x41a00000    # 20.0f

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v7, 0x106000b

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/statusbar/phone/MorphIconView;->createGradientShapeHolder(FFFFFI)Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;

    move-result-object v2

    .line 78
    .local v2, "gradientShapeHolderA1":Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;
    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, 0x41400000    # 12.0f

    const/high16 v5, 0x41600000    # 14.0f

    const/high16 v6, 0x41600000    # 14.0f

    const/4 v7, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v9, 0x106000b

    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/systemui/statusbar/phone/MorphIconView;->createMorphingAnimation(Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;FFFFFI)Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;

    move-result-object v25

    .line 80
    .local v25, "morphingAnimationA1":Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;
    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x42200000    # 40.0f

    const/high16 v6, 0x41a00000    # 20.0f

    const/high16 v7, 0x41a00000    # 20.0f

    const/high16 v8, 0x41200000    # 10.0f

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x106000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/statusbar/phone/MorphIconView;->createGradientShapeHolder(FFFFFI)Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;

    move-result-object v4

    .line 81
    .local v4, "gradientShapeHolderA2":Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;
    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v6, 0x422c0000    # 43.0f

    const/high16 v7, 0x41600000    # 14.0f

    const/high16 v8, 0x41600000    # 14.0f

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x106000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/systemui/statusbar/phone/MorphIconView;->createMorphingAnimation(Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;FFFFFI)Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;

    move-result-object v26

    .line 83
    .local v26, "morphingAnimationA2":Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;
    const/high16 v6, 0x41200000    # 10.0f

    const/high16 v7, 0x428c0000    # 70.0f

    const/high16 v8, 0x41a00000    # 20.0f

    const/high16 v9, 0x41a00000    # 20.0f

    const/high16 v10, 0x41200000    # 10.0f

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x106000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/systemui/statusbar/phone/MorphIconView;->createGradientShapeHolder(FFFFFI)Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;

    move-result-object v6

    .line 84
    .local v6, "gradientShapeHolderA3":Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;
    const/high16 v7, 0x41200000    # 10.0f

    const/high16 v8, 0x42940000    # 74.0f

    const/high16 v9, 0x41600000    # 14.0f

    const/high16 v10, 0x41600000    # 14.0f

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x106000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v12

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/systemui/statusbar/phone/MorphIconView;->createMorphingAnimation(Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;FFFFFI)Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;

    move-result-object v27

    .line 86
    .local v27, "morphingAnimationA3":Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;
    const/high16 v8, 0x42200000    # 40.0f

    const/high16 v9, 0x41200000    # 10.0f

    const/high16 v10, 0x41a00000    # 20.0f

    const/high16 v11, 0x41a00000    # 20.0f

    const/high16 v12, 0x41200000    # 10.0f

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x106000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/statusbar/phone/MorphIconView;->createGradientShapeHolder(FFFFFI)Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;

    move-result-object v8

    .line 87
    .local v8, "gradientShapeHolderB1":Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;
    const/high16 v9, 0x42040000    # 33.0f

    const/high16 v10, 0x41400000    # 12.0f

    const/high16 v11, 0x42180000    # 38.0f

    const/high16 v12, 0x41600000    # 14.0f

    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x106000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v14}, Lcom/android/systemui/statusbar/phone/MorphIconView;->createMorphingAnimation(Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;FFFFFI)Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;

    move-result-object v28

    .line 89
    .local v28, "morphingAnimationB1":Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;
    const/high16 v10, 0x42200000    # 40.0f

    const/high16 v11, 0x42200000    # 40.0f

    const/high16 v12, 0x41a00000    # 20.0f

    const/high16 v13, 0x41a00000    # 20.0f

    const/high16 v14, 0x41200000    # 10.0f

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x106000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v15}, Lcom/android/systemui/statusbar/phone/MorphIconView;->createGradientShapeHolder(FFFFFI)Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;

    move-result-object v10

    .line 90
    .local v10, "gradientShapeHolderB2":Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;
    const/high16 v11, 0x42040000    # 33.0f

    const/high16 v12, 0x422c0000    # 43.0f

    const/high16 v13, 0x42180000    # 38.0f

    const/high16 v14, 0x41600000    # 14.0f

    const/4 v15, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x106000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    move-object/from16 v9, p0

    invoke-direct/range {v9 .. v16}, Lcom/android/systemui/statusbar/phone/MorphIconView;->createMorphingAnimation(Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;FFFFFI)Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;

    move-result-object v29

    .line 92
    .local v29, "morphingAnimationB2":Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;
    const/high16 v12, 0x42200000    # 40.0f

    const/high16 v13, 0x428c0000    # 70.0f

    const/high16 v14, 0x41a00000    # 20.0f

    const/high16 v15, 0x41a00000    # 20.0f

    const/high16 v16, 0x41200000    # 10.0f

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x106000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v17

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v17}, Lcom/android/systemui/statusbar/phone/MorphIconView;->createGradientShapeHolder(FFFFFI)Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;

    move-result-object v12

    .line 93
    .local v12, "gradientShapeHolderB3":Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;
    const/high16 v13, 0x42040000    # 33.0f

    const/high16 v14, 0x42940000    # 74.0f

    const/high16 v15, 0x42180000    # 38.0f

    const/high16 v16, 0x41600000    # 14.0f

    const/16 v17, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x106000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v18

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v18}, Lcom/android/systemui/statusbar/phone/MorphIconView;->createMorphingAnimation(Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;FFFFFI)Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;

    move-result-object v30

    .line 95
    .local v30, "morphingAnimationB3":Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;
    const/high16 v14, 0x428c0000    # 70.0f

    const/high16 v15, 0x41200000    # 10.0f

    const/high16 v16, 0x41a00000    # 20.0f

    const/high16 v17, 0x41a00000    # 20.0f

    const/high16 v18, 0x41200000    # 10.0f

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x106000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v19

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v19}, Lcom/android/systemui/statusbar/phone/MorphIconView;->createGradientShapeHolder(FFFFFI)Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;

    move-result-object v14

    .line 96
    .local v14, "gradientShapeHolderC1":Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;
    const/high16 v15, 0x424c0000    # 51.0f

    const/high16 v16, 0x41400000    # 12.0f

    const/high16 v17, 0x42180000    # 38.0f

    const/high16 v18, 0x41600000    # 14.0f

    const/16 v19, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x106000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    move-object/from16 v13, p0

    invoke-direct/range {v13 .. v20}, Lcom/android/systemui/statusbar/phone/MorphIconView;->createMorphingAnimation(Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;FFFFFI)Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;

    move-result-object v31

    .line 98
    .local v31, "morphingAnimationC1":Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;
    const/high16 v16, 0x428c0000    # 70.0f

    const/high16 v17, 0x42200000    # 40.0f

    const/high16 v18, 0x41a00000    # 20.0f

    const/high16 v19, 0x41a00000    # 20.0f

    const/high16 v20, 0x41200000    # 10.0f

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x106000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v21

    move-object/from16 v15, p0

    invoke-direct/range {v15 .. v21}, Lcom/android/systemui/statusbar/phone/MorphIconView;->createGradientShapeHolder(FFFFFI)Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;

    move-result-object v16

    .line 99
    .local v16, "gradientShapeHolderC2":Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;
    const/high16 v17, 0x424c0000    # 51.0f

    const/high16 v18, 0x422c0000    # 43.0f

    const/high16 v19, 0x42180000    # 38.0f

    const/high16 v20, 0x41600000    # 14.0f

    const/16 v21, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x106000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v22

    move-object/from16 v15, p0

    invoke-direct/range {v15 .. v22}, Lcom/android/systemui/statusbar/phone/MorphIconView;->createMorphingAnimation(Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;FFFFFI)Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;

    move-result-object v32

    .line 101
    .local v32, "morphingAnimationC2":Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;
    const/high16 v18, 0x428c0000    # 70.0f

    const/high16 v19, 0x428c0000    # 70.0f

    const/high16 v20, 0x41a00000    # 20.0f

    const/high16 v21, 0x41a00000    # 20.0f

    const/high16 v22, 0x41200000    # 10.0f

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x106000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v23

    move-object/from16 v17, p0

    invoke-direct/range {v17 .. v23}, Lcom/android/systemui/statusbar/phone/MorphIconView;->createGradientShapeHolder(FFFFFI)Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;

    move-result-object v18

    .line 102
    .local v18, "gradientShapeHolderC3":Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;
    const/high16 v19, 0x424c0000    # 51.0f

    const/high16 v20, 0x42940000    # 74.0f

    const/high16 v21, 0x42180000    # 38.0f

    const/high16 v22, 0x41600000    # 14.0f

    const/16 v23, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x106000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v24

    move-object/from16 v17, p0

    invoke-direct/range {v17 .. v24}, Lcom/android/systemui/statusbar/phone/MorphIconView;->createMorphingAnimation(Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;FFFFFI)Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;

    move-result-object v33

    .line 104
    .local v33, "morphingAnimationC3":Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0x15

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mHolders:Ljava/util/ArrayList;

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    const/16 v3, 0x15

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mAnimations:Ljava/util/ArrayList;

    .line 107
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mAnimations:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mAnimations:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mAnimations:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mAnimations:Ljava/util/ArrayList;

    move-object/from16 v0, v28

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mAnimations:Ljava/util/ArrayList;

    move-object/from16 v0, v29

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mAnimations:Ljava/util/ArrayList;

    move-object/from16 v0, v30

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mAnimations:Ljava/util/ArrayList;

    move-object/from16 v0, v31

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mHolders:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mAnimations:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mHolders:Ljava/util/ArrayList;

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mAnimations:Ljava/util/ArrayList;

    move-object/from16 v0, v33

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->invalidate()V

    .line 216
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 245
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 246
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;

    .line 249
    .local v0, "gradientShapeHolder":Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 251
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->getX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->getY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 253
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->draw(Landroid/graphics/Canvas;)V

    .line 255
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 257
    .end local v0    # "gradientShapeHolder":Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 221
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 226
    iget v1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mPreviousLeft:I

    if-ne p2, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mPreviousTop:I

    if-ne p3, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mPreviousRight:I

    if-ne p4, v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mPreviousBottom:I

    if-eq p5, v1, :cond_1

    .line 228
    :cond_0
    iput p2, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mPreviousLeft:I

    .line 229
    iput p3, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mPreviousTop:I

    .line 230
    iput p4, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mPreviousRight:I

    .line 231
    iput p5, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mPreviousBottom:I

    .line 232
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MorphIconView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 233
    .local v0, "parent":Landroid/view/View;
    if-eqz v0, :cond_1

    .line 234
    new-instance v1, Landroid/view/TouchDelegate;

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mTouchAdditionLeft:I

    sub-int v3, p2, v3

    iget v4, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mTouchAdditionTop:I

    sub-int v4, p3, v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mTouchAdditionRight:I

    add-int/2addr v5, p4

    iget v6, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mTouchAdditionBottom:I

    add-int/2addr v6, p5

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v1, v2, p0}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 240
    .end local v0    # "parent":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 210
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 211
    return-void
.end method

.method public setProgress(F)V
    .locals 4
    .param p1, "progress"    # F

    .prologue
    .line 201
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MorphIconView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 202
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 203
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;

    .line 204
    .local v1, "morphingAnimation":Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->getDuration()J

    move-result-wide v2

    long-to-float v2, v2

    mul-float/2addr v2, p1

    float-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->setCurrentPlayTime(J)V

    goto :goto_0

    .line 206
    .end local v1    # "morphingAnimation":Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;
    :cond_0
    return-void
.end method
