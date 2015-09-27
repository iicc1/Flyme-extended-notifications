.class public Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;
.super Landroid/view/View;
.source "ClearAllNotificationIconView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;,
        Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;
    }
.end annotation


# instance fields
.field private mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->initAnimations()V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->initAnimations()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->initAnimations()V

    .line 56
    return-void
.end method

.method private createRectShapeHolder(FFFFI)Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # F
    .param p4, "height"    # F
    .param p5, "color"    # I

    .prologue
    const/high16 v5, 0x40800000    # 4.0f

    .line 96
    new-instance v1, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    .line 98
    .local v1, "rectShape":Landroid/graphics/drawable/shapes/RectShape;
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 99
    .local v0, "drawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/ShapeDrawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 101
    new-instance v2, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;-><init>(Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;Landroid/graphics/drawable/ShapeDrawable;)V

    .line 102
    .local v2, "rectShapeHolder":Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    div-float v4, p1, v5

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/widgetnew/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->setX(I)V

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    div-float v4, p2, v5

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/widgetnew/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->setY(I)V

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->getContext()Landroid/content/Context;

    move-result-object v3

    div-float v4, p3, v5

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/widgetnew/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->getContext()Landroid/content/Context;

    move-result-object v4

    div-float v5, p4, v5

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/widgetnew/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->setSize(II)V

    .line 105
    invoke-virtual {v2, p5}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->setColor(I)V

    .line 106
    return-object v2
.end method

.method private createTranslationAnimation(Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;FFFFI)Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;
    .locals 4
    .param p1, "shapeHolder"    # Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;
    .param p2, "toX"    # F
    .param p3, "toY"    # F
    .param p4, "toWidth"    # F
    .param p5, "toHeight"    # F
    .param p6, "toColor"    # I

    .prologue
    const/high16 v3, 0x40800000    # 4.0f

    .line 116
    new-instance v0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;-><init>(Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;)V

    .line 118
    .local v0, "animation":Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->getX()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->setFromX(I)V

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    div-float v2, p2, v3

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->setToX(I)V

    .line 121
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->getY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->setFromY(I)V

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    div-float v2, p3, v3

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->setToY(I)V

    .line 124
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->setFromWidth(I)V

    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    div-float v2, p4, v3

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->setToWidth(I)V

    .line 127
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->setFromHeight(I)V

    .line 128
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->getContext()Landroid/content/Context;

    move-result-object v1

    div-float v2, p5, v3

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->setToHeight(I)V

    .line 130
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->getColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->setFromColor(I)V

    .line 131
    invoke-virtual {v0, p6}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->setToColor(I)V

    .line 136
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->setup()V

    .line 138
    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 60
    return-void
.end method

.method private initAnimations()V
    .locals 14

    .prologue
    .line 63
    const/high16 v1, 0x41880000    # 17.0f

    const/high16 v2, 0x41400000    # 12.0f

    const/high16 v3, 0x42a00000    # 80.0f

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x106000b

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->createRectShapeHolder(FFFFI)Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;

    move-result-object v1

    .line 64
    .local v1, "shapeHolder01":Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;
    const/high16 v2, 0x42c80000    # 100.0f

    const/high16 v3, 0x41400000    # 12.0f

    const/high16 v4, 0x42a00000    # 80.0f

    const/high16 v5, 0x41600000    # 14.0f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x106000b

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->createTranslationAnimation(Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;FFFFI)Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;

    move-result-object v11

    .line 66
    .local v11, "translationAnimation01":Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;
    const/high16 v3, 0x41200000    # 10.0f

    const/high16 v4, 0x422c0000    # 43.0f

    const/high16 v5, 0x42a00000    # 80.0f

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x106000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->createRectShapeHolder(FFFFI)Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;

    move-result-object v3

    .line 67
    .local v3, "shapeHolder02":Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;
    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v5, 0x422c0000    # 43.0f

    const/high16 v6, 0x42a00000    # 80.0f

    const/high16 v7, 0x41600000    # 14.0f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x106000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->createTranslationAnimation(Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;FFFFI)Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;

    move-result-object v12

    .line 69
    .local v12, "translationAnimation02":Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;
    const/high16 v5, 0x40400000    # 3.0f

    const/high16 v6, 0x42940000    # 74.0f

    const/high16 v7, 0x42a00000    # 80.0f

    const/high16 v8, 0x41600000    # 14.0f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x106000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->createRectShapeHolder(FFFFI)Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;

    move-result-object v5

    .line 70
    .local v5, "shapeHolder03":Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;
    const/high16 v6, 0x42c80000    # 100.0f

    const/high16 v7, 0x42940000    # 74.0f

    const/high16 v8, 0x42a00000    # 80.0f

    const/high16 v9, 0x41600000    # 14.0f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x106000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    move-object v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->createTranslationAnimation(Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;FFFFI)Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;

    move-result-object v13

    .line 72
    .local v13, "translationAnimation03":Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->mHolders:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->mAnimations:Ljava/util/ArrayList;

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    return-void
.end method


# virtual methods
.method public addListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 167
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->mAnimations:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;

    .line 168
    .local v0, "animation":Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 169
    return-void
.end method

.method public getMInDuration()J
    .locals 4

    .prologue
    .line 178
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 179
    .local v0, "len":I
    const-string v1, "ClearAllNotificationIconView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getMInDuration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x64

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    mul-int/lit8 v1, v0, 0x64

    int-to-long v2, v1

    return-wide v2
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->invalidate()V

    .line 213
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 218
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->mHolders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 219
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 220
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;

    .line 222
    .local v1, "rectShapeHolder":Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 224
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->getX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->getY()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 226
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->draw(Landroid/graphics/Canvas;)V

    .line 228
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 230
    .end local v1    # "rectShapeHolder":Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;
    :cond_0
    return-void
.end method

.method public restore()V
    .locals 6

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->mAnimations:Ljava/util/ArrayList;

    .line 157
    .local v0, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 158
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 159
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;

    .line 160
    .local v2, "translationAnimation":Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;
    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->setCurrentPlayTime(J)V

    goto :goto_0

    .line 163
    .end local v2    # "translationAnimation":Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->invalidate()V

    .line 164
    return-void
.end method

.method public setDuration(J)V
    .locals 11
    .param p1, "duration"    # J

    .prologue
    .line 184
    const-string v8, "ClearAllNotificationIconView"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setDuration = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->getMInDuration()J

    move-result-wide v6

    .line 199
    .local v6, "minDuration":J
    invoke-static {v6, v7, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->mAnimations:Ljava/util/ArrayList;

    .line 202
    .local v0, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 203
    .local v4, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 204
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;

    .line 205
    .local v5, "translationAnimation":Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;
    add-int/lit8 v8, v4, -0x1

    sub-int/2addr v8, v1

    mul-int/lit8 v8, v8, 0x64

    int-to-long v8, v8

    sub-long v2, p1, v8

    .line 206
    .local v2, "curDuration":J
    invoke-virtual {v5, v2, v3}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->setDuration(J)V

    .line 203
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 208
    .end local v2    # "curDuration":J
    .end local v5    # "translationAnimation":Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;
    :cond_0
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->mAnimations:Ljava/util/ArrayList;

    .line 144
    .local v0, "animations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 145
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;

    .line 147
    .local v2, "translationAnimation":Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->start()V

    goto :goto_0

    .line 149
    .end local v2    # "translationAnimation":Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;
    :cond_0
    return-void
.end method
