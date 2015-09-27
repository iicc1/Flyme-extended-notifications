.class public Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;
.super Landroid/view/View;
.source "CustomDatePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/CustomDatePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlipView"
.end annotation


# instance fields
.field private mBitmapGregorian:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapLunar:Landroid/graphics/Bitmap;

.field private mBitmapWidth:I

.field mDstPoly:[F

.field private mFoldFactor:F

.field private mIslunar:Z

.field private mMatrices:[Landroid/graphics/Matrix;

.field private mPaintShadow:Landroid/graphics/Paint;

.field private mRect:Landroid/graphics/Rect;

.field mSrcPoly:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v1, 0x8

    .line 342
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 334
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mFoldFactor:F

    .line 335
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mIslunar:Z

    .line 338
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mSrcPoly:[F

    .line 339
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mDstPoly:[F

    .line 343
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->init()V

    .line 344
    return-void
.end method

.method private calculateMatrix()V
    .locals 15

    .prologue
    .line 432
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mFoldFactor:F

    sub-float v11, v0, v1

    .line 434
    .local v11, "translateFactor":F
    iget v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapWidth:I

    int-to-float v0, v0

    mul-float v12, v0, v11

    .line 436
    .local v12, "translateWidth":F
    const/high16 v0, 0x40000000    # 2.0f

    div-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v13, v0

    .line 438
    .local v13, "translateWidthPerFold":F
    mul-float v14, v13, v13

    .line 440
    .local v14, "translateWidthPerfoldsquare":F
    iget v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapWidth:I

    div-int/lit8 v1, v1, 0x2

    mul-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr v0, v14

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v6, v0

    .line 443
    .local v6, "deepth":F
    const v0, 0x44bb8000    # 1500.0f

    add-float/2addr v0, v6

    const v1, 0x44bb8000    # 1500.0f

    div-float v9, v0, v1

    .line 445
    .local v9, "scaleFactor":F
    iget v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapHeight:I

    int-to-float v0, v0

    mul-float v10, v0, v9

    .line 447
    .local v10, "scaleHeight":F
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mSrcPoly:[F

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 448
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mSrcPoly:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 449
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mSrcPoly:[F

    const/4 v1, 0x2

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 450
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mSrcPoly:[F

    const/4 v1, 0x3

    iget v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapHeight:I

    int-to-float v2, v2

    aput v2, v0, v1

    .line 451
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mSrcPoly:[F

    const/4 v1, 0x4

    iget v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    aput v2, v0, v1

    .line 452
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mSrcPoly:[F

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 453
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mSrcPoly:[F

    const/4 v1, 0x6

    iget v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    aput v2, v0, v1

    .line 454
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mSrcPoly:[F

    const/4 v1, 0x7

    iget v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapHeight:I

    int-to-float v2, v2

    aput v2, v0, v1

    .line 456
    iget v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mFoldFactor:F

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    iget v8, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mFoldFactor:F

    .line 457
    .local v8, "scale":F
    :goto_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mMatrices:[Landroid/graphics/Matrix;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 458
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mDstPoly:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapWidth:I

    int-to-float v2, v2

    mul-float/2addr v2, v8

    aput v2, v0, v1

    .line 459
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mDstPoly:[F

    const/4 v1, 0x1

    iget v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapHeight:I

    int-to-float v2, v2

    sub-float/2addr v2, v10

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 460
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mDstPoly:[F

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mDstPoly:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    aput v2, v0, v1

    .line 461
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mDstPoly:[F

    const/4 v1, 0x3

    iget v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapHeight:I

    int-to-float v3, v3

    sub-float v3, v10, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 463
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mDstPoly:[F

    const/4 v1, 0x4

    iget v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    aput v2, v0, v1

    .line 464
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mDstPoly:[F

    const/4 v1, 0x5

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 465
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mDstPoly:[F

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mDstPoly:[F

    const/4 v3, 0x4

    aget v2, v2, v3

    aput v2, v0, v1

    .line 466
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mDstPoly:[F

    const/4 v1, 0x7

    iget v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapHeight:I

    int-to-float v2, v2

    aput v2, v0, v1

    .line 468
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_1
    const/16 v0, 0x8

    if-ge v7, v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mDstPoly:[F

    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mDstPoly:[F

    aget v1, v1, v7

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v7

    .line 468
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 456
    .end local v7    # "k":I
    .end local v8    # "scale":F
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mFoldFactor:F

    sub-float v8, v0, v1

    goto :goto_0

    .line 472
    .restart local v7    # "k":I
    .restart local v8    # "scale":F
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mMatrices:[Landroid/graphics/Matrix;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mSrcPoly:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mDstPoly:[F

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 474
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mMatrices:[Landroid/graphics/Matrix;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 475
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mDstPoly:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapWidth:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    aput v2, v0, v1

    .line 476
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mDstPoly:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 477
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mDstPoly:[F

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mDstPoly:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    aput v2, v0, v1

    .line 478
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mDstPoly:[F

    const/4 v1, 0x3

    iget v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapHeight:I

    int-to-float v2, v2

    aput v2, v0, v1

    .line 480
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mDstPoly:[F

    const/4 v1, 0x4

    iget v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapWidth:I

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapWidth:I

    int-to-float v3, v3

    mul-float/2addr v3, v8

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 481
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mDstPoly:[F

    const/4 v1, 0x5

    iget v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapHeight:I

    int-to-float v2, v2

    sub-float/2addr v2, v10

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    aput v2, v0, v1

    .line 482
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mDstPoly:[F

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mDstPoly:[F

    const/4 v3, 0x4

    aget v2, v2, v3

    aput v2, v0, v1

    .line 483
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mDstPoly:[F

    const/4 v1, 0x7

    iget v2, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapHeight:I

    int-to-float v3, v3

    sub-float v3, v10, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 485
    const/4 v7, 0x0

    :goto_2
    const/16 v0, 0x8

    if-ge v7, v0, :cond_2

    .line 486
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mDstPoly:[F

    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mDstPoly:[F

    aget v1, v1, v7

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    aput v1, v0, v7

    .line 485
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 489
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mMatrices:[Landroid/graphics/Matrix;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mSrcPoly:[F

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mDstPoly:[F

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Matrix;->setPolyToPoly([FI[FII)Z

    .line 490
    return-void
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    .line 352
    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapWidth:I

    iget v5, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapHeight:I

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mRect:Landroid/graphics/Rect;

    .line 353
    new-array v3, v7, [Landroid/graphics/Matrix;

    iput-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mMatrices:[Landroid/graphics/Matrix;

    .line 355
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020127

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapGregorian:Landroid/graphics/Bitmap;

    .line 357
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020128

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapLunar:Landroid/graphics/Bitmap;

    .line 360
    iget-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapLunar:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapWidth:I

    .line 361
    iget-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapLunar:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapHeight:I

    .line 363
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v7, :cond_0

    .line 364
    iget-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mMatrices:[Landroid/graphics/Matrix;

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    aput-object v4, v3, v2

    .line 363
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 367
    :cond_0
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mPaintShadow:Landroid/graphics/Paint;

    .line 368
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 369
    .local v0, "cm":Landroid/graphics/ColorMatrix;
    const v3, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v3}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 370
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 371
    .local v1, "f":Landroid/graphics/ColorMatrixColorFilter;
    iget-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mPaintShadow:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 372
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 375
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->calculateMatrix()V

    .line 377
    iget v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mFoldFactor:F

    cmpl-float v3, v3, v8

    if-nez v3, :cond_1

    .line 378
    iget-boolean v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mIslunar:Z

    if-eqz v3, :cond_0

    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapLunar:Landroid/graphics/Bitmap;

    .line 379
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {p1, v0, v8, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 429
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_1
    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapGregorian:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 381
    :cond_1
    iget v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mFoldFactor:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    .line 382
    iget-boolean v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mIslunar:Z

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapGregorian:Landroid/graphics/Bitmap;

    .line 383
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :goto_2
    invoke-virtual {p1, v0, v8, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 382
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapLunar:Landroid/graphics/Bitmap;

    goto :goto_2

    .line 386
    :cond_3
    iget-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapWidth:I

    iget v5, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapHeight:I

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 387
    iget-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapLunar:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mPaintShadow:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 389
    iget-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapWidth:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapHeight:I

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 390
    iget-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapGregorian:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mRect:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v3, v4, v5, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 392
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 393
    const/4 v2, 0x0

    .line 395
    .local v2, "i":I
    iget-boolean v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mIslunar:Z

    if-eqz v3, :cond_5

    .line 396
    iget v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mFoldFactor:F

    cmpg-float v3, v3, v10

    if-gez v3, :cond_4

    .line 397
    const/4 v2, 0x0

    .line 398
    iget-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapWidth:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapHeight:I

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 399
    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapLunar:Landroid/graphics/Bitmap;

    .line 419
    .local v1, "flipBitmap":Landroid/graphics/Bitmap;
    :goto_3
    iget-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mMatrices:[Landroid/graphics/Matrix;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 420
    iget-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    invoke-virtual {p1, v7, v7, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 423
    iget-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {p1, v3, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 424
    invoke-virtual {p1, v1, v8, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 426
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1

    .line 401
    .end local v1    # "flipBitmap":Landroid/graphics/Bitmap;
    :cond_4
    const/4 v2, 0x1

    .line 402
    iget-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapWidth:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapWidth:I

    iget v6, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapHeight:I

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 404
    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapGregorian:Landroid/graphics/Bitmap;

    .restart local v1    # "flipBitmap":Landroid/graphics/Bitmap;
    goto :goto_3

    .line 407
    .end local v1    # "flipBitmap":Landroid/graphics/Bitmap;
    :cond_5
    iget v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mFoldFactor:F

    cmpg-float v3, v3, v10

    if-gez v3, :cond_6

    .line 408
    const/4 v2, 0x1

    .line 409
    iget-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapWidth:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapWidth:I

    iget v6, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapHeight:I

    invoke-virtual {v3, v4, v7, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 411
    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapGregorian:Landroid/graphics/Bitmap;

    .restart local v1    # "flipBitmap":Landroid/graphics/Bitmap;
    goto :goto_3

    .line 413
    .end local v1    # "flipBitmap":Landroid/graphics/Bitmap;
    :cond_6
    const/4 v2, 0x0

    .line 414
    iget-object v3, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapWidth:I

    div-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapHeight:I

    invoke-virtual {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 415
    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mBitmapLunar:Landroid/graphics/Bitmap;

    .restart local v1    # "flipBitmap":Landroid/graphics/Bitmap;
    goto :goto_3
.end method

.method public setFilpViewPrefer(Z)V
    .locals 0
    .param p1, "isLunar"    # Z

    .prologue
    .line 498
    iput-boolean p1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mIslunar:Z

    .line 499
    return-void
.end method

.method public setFoldFactor(F)V
    .locals 0
    .param p1, "pFoldFactor"    # F

    .prologue
    .line 493
    iput p1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->mFoldFactor:F

    .line 494
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->postInvalidate()V

    .line 495
    return-void
.end method
