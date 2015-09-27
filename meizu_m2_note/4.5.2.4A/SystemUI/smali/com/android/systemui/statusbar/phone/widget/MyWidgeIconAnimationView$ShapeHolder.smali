.class public Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;
.super Ljava/lang/Object;
.source "MyWidgeIconAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShapeHolder"
.end annotation


# instance fields
.field private mRotation:F

.field private mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field private mX:F

.field private mY:F

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;Landroid/graphics/drawable/shapes/Shape;)V
    .locals 1
    .param p2, "s"    # Landroid/graphics/drawable/shapes/Shape;

    .prologue
    const/4 v0, 0x0

    .line 256
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;->this$0:Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;->mX:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;->mY:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;->mRotation:F

    .line 257
    new-instance v0, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 258
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 303
    return-void
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method public getRotation()F
    .locals 1

    .prologue
    .line 282
    iget v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;->mRotation:F

    return v0
.end method

.method public getShape()Landroid/graphics/drawable/shapes/Shape;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getShape()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    return-object v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 272
    iget v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;->mY:F

    return v0
.end method

.method public setX(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 267
    iput p1, p0, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;->mX:F

    .line 268
    return-void
.end method

.method public setY(F)V
    .locals 0
    .param p1, "y"    # F

    .prologue
    .line 277
    iput p1, p0, Lcom/android/systemui/statusbar/phone/widget/MyWidgeIconAnimationView$ShapeHolder;->mY:F

    .line 278
    return-void
.end method
