.class public Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;
.super Ljava/lang/Object;
.source "MorphIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/MorphIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "GradientShapeHolder"
.end annotation


# instance fields
.field private mColor:I

.field private mCornerRadius:F

.field private mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mHeight:I

.field private mStrokeColor:I

.field private mStrokeWidth:I

.field private mWidth:I

.field private mX:I

.field private mY:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/MorphIconView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/MorphIconView;Landroid/graphics/drawable/GradientDrawable;)V
    .locals 3
    .param p2, "gradientDrawable"    # Landroid/graphics/drawable/GradientDrawable;

    .prologue
    const/16 v1, 0x64

    const/4 v0, 0x0

    .line 277
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->this$0:Lcom/android/systemui/statusbar/phone/MorphIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mX:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mY:I

    .line 267
    iput v1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mWidth:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mHeight:I

    .line 269
    iput v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mStrokeWidth:I

    .line 270
    const/high16 v0, -0x10000

    iput v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mStrokeColor:I

    .line 271
    const v0, -0xffff01

    iput v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mColor:I

    .line 272
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mCornerRadius:F

    .line 278
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 279
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mWidth:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->setSize(II)V

    .line 280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mStrokeWidth:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mStrokeColor:I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 281
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 375
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 359
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mColor:I

    return v0
.end method

.method public getCornerRadius()F
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mCornerRadius:F

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 320
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mHeight:I

    return v0
.end method

.method public getStrokeWidth()I
    .locals 1

    .prologue
    .line 331
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mStrokeWidth:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 310
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mWidth:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 285
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mY:I

    return v0
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "argb"    # I

    .prologue
    .line 354
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mColor:I

    .line 355
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 356
    return-void
.end method

.method public setCornerRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .prologue
    .line 364
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mCornerRadius:F

    .line 365
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 366
    return-void
.end method

.method public setHeight(I)V
    .locals 4
    .param p1, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 315
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mHeight:I

    .line 316
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mWidth:I

    add-int/lit8 v1, v1, 0x0

    add-int/lit8 v2, p1, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 317
    return-void
.end method

.method public setSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 325
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mWidth:I

    .line 326
    iput p2, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mHeight:I

    .line 327
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    add-int/lit8 v1, p1, 0x0

    add-int/lit8 v2, p2, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 328
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 2
    .param p1, "strokeColor"    # I

    .prologue
    .line 344
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mStrokeColor:I

    .line 345
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->getStrokeWidth()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 346
    return-void
.end method

.method public setWidth(I)V
    .locals 4
    .param p1, "width"    # I

    .prologue
    const/4 v3, 0x0

    .line 305
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mWidth:I

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    add-int/lit8 v1, p1, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mHeight:I

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    .line 307
    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 290
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mX:I

    .line 291
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 300
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->mY:I

    .line 301
    return-void
.end method
