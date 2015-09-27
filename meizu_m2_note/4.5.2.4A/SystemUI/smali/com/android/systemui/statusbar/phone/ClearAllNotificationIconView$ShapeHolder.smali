.class public Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;
.super Ljava/lang/Object;
.source "ClearAllNotificationIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShapeHolder"
.end annotation


# instance fields
.field private mColor:I

.field private mHeight:I

.field private mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

.field private mWidth:I

.field private mX:I

.field private mY:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;Landroid/graphics/drawable/ShapeDrawable;)V
    .locals 2
    .param p2, "shapeDrawable"    # Landroid/graphics/drawable/ShapeDrawable;

    .prologue
    const/16 v1, 0x64

    const/4 v0, 0x0

    .line 246
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->this$0:Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mX:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mY:I

    .line 240
    iput v1, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mWidth:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mHeight:I

    .line 241
    const v0, -0xffff01

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mColor:I

    .line 247
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    .line 248
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mWidth:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->setSize(II)V

    .line 249
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mColor:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->setColor(I)V

    .line 250
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/ShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 319
    return-void
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 313
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mColor:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mHeight:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 281
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mWidth:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 254
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mX:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mY:I

    return v0
.end method

.method public setColor(I)V
    .locals 2
    .param p1, "argb"    # I

    .prologue
    .line 307
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mColor:I

    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 309
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/16 v1, 0x99

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 310
    return-void
.end method

.method public setHeight(I)V
    .locals 4
    .param p1, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 286
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mHeight:I

    .line 287
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mWidth:I

    add-int/lit8 v1, v1, 0x0

    add-int/lit8 v2, p1, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 288
    return-void
.end method

.method public setSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 296
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mWidth:I

    .line 297
    iput p2, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mHeight:I

    .line 298
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    add-int/lit8 v1, p1, 0x0

    add-int/lit8 v2, p2, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 299
    return-void
.end method

.method public setWidth(I)V
    .locals 4
    .param p1, "width"    # I

    .prologue
    const/4 v3, 0x0

    .line 276
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mWidth:I

    .line 277
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    add-int/lit8 v1, p1, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mHeight:I

    add-int/lit8 v2, v2, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/ShapeDrawable;->setBounds(IIII)V

    .line 278
    return-void
.end method

.method public setX(I)V
    .locals 1
    .param p1, "x"    # I

    .prologue
    .line 259
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mX:I

    .line 260
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 261
    return-void
.end method

.method public setY(I)V
    .locals 1
    .param p1, "y"    # I

    .prologue
    .line 270
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mY:I

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;->mShapeDrawable:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    .line 272
    return-void
.end method
