.class public Lcom/android/systemui/mzrecent/PageIndicator;
.super Landroid/view/ViewGroup;
.source "PageIndicator.java"


# instance fields
.field mCurrentPageBitmap:Landroid/graphics/Bitmap;

.field mCurrentPageIndex:I

.field mLeftOffset:I

.field mOffset:I

.field mRightOffset:I

.field mWidth:I


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v11, 0x0

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PageIndicator;->getChildCount()I

    move-result v0

    .line 148
    .local v0, "childCount":I
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PageIndicator;->getDrawingTime()J

    move-result-wide v2

    .line 155
    .local v2, "drawingTime":J
    const/4 v5, 0x0

    .local v5, "index":I
    :goto_0
    if-ge v5, v0, :cond_0

    .line 156
    invoke-virtual {p0, v5}, Lcom/android/systemui/mzrecent/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {p0, p1, v9, v2, v3}, Lcom/android/systemui/mzrecent/PageIndicator;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 155
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 159
    :cond_0
    iget v9, p0, Lcom/android/systemui/mzrecent/PageIndicator;->mCurrentPageIndex:I

    invoke-virtual {p0, v9}, Lcom/android/systemui/mzrecent/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 160
    .local v1, "currentpageView":Landroid/view/View;
    if-eqz v1, :cond_1

    .line 161
    new-instance v8, Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/systemui/mzrecent/PageIndicator;->mCurrentPageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    iget-object v10, p0, Lcom/android/systemui/mzrecent/PageIndicator;->mCurrentPageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v8, v11, v11, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 163
    .local v8, "src":Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    iget v11, p0, Lcom/android/systemui/mzrecent/PageIndicator;->mLeftOffset:I

    add-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 165
    .local v6, "left":I
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v10

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/systemui/mzrecent/PageIndicator;->mRightOffset:I

    add-int/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 172
    .local v7, "right":I
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v10

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-direct {v4, v6, v9, v7, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 175
    .local v4, "dst":Landroid/graphics/Rect;
    iget-object v9, p0, Lcom/android/systemui/mzrecent/PageIndicator;->mCurrentPageBitmap:Landroid/graphics/Bitmap;

    const/4 v10, 0x0

    invoke-virtual {p1, v9, v8, v4, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 178
    .end local v4    # "dst":Landroid/graphics/Rect;
    .end local v6    # "left":I
    .end local v7    # "right":I
    .end local v8    # "src":Landroid/graphics/Rect;
    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 125
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 106
    const/4 v1, 0x0

    .line 107
    .local v1, "childLeft":I
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PageIndicator;->getChildCount()I

    move-result v0

    .line 108
    .local v0, "childCount":I
    iget v5, p0, Lcom/android/systemui/mzrecent/PageIndicator;->mWidth:I

    iget-object v6, p0, Lcom/android/systemui/mzrecent/PageIndicator;->mCurrentPageBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int/2addr v6, v0

    sub-int/2addr v5, v6

    div-int/lit8 v1, v5, 0x2

    .line 109
    const/4 v4, 0x0

    .local v4, "index":I
    :goto_0
    if-ge v4, v0, :cond_1

    .line 110
    invoke-virtual {p0, v4}, Lcom/android/systemui/mzrecent/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 111
    .local v2, "childView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_0

    .line 112
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 113
    .local v3, "childWidth":I
    const/4 v5, 0x0

    add-int v6, v1, v3

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v2, v1, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 115
    add-int/2addr v1, v3

    .line 109
    .end local v3    # "childWidth":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 119
    .end local v2    # "childView":Landroid/view/View;
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 130
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 132
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 133
    .local v3, "width":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 135
    .local v4, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 137
    .local v1, "heightMode":I
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PageIndicator;->getChildCount()I

    move-result v0

    .line 138
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "index":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 139
    invoke-virtual {p0, v2}, Lcom/android/systemui/mzrecent/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->measure(II)V

    .line 138
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 141
    :cond_0
    return-void
.end method

.method public setCurrentPage(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 66
    iput p1, p0, Lcom/android/systemui/mzrecent/PageIndicator;->mCurrentPageIndex:I

    .line 67
    iput v0, p0, Lcom/android/systemui/mzrecent/PageIndicator;->mLeftOffset:I

    .line 68
    iput v0, p0, Lcom/android/systemui/mzrecent/PageIndicator;->mRightOffset:I

    .line 69
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/PageIndicator;->invalidate()V

    .line 70
    return-void
.end method

.method public setOffset(F)V
    .locals 2
    .param p1, "offset"    # F

    .prologue
    .line 88
    float-to-int v0, p1

    iput v0, p0, Lcom/android/systemui/mzrecent/PageIndicator;->mOffset:I

    .line 89
    iget v0, p0, Lcom/android/systemui/mzrecent/PageIndicator;->mLeftOffset:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/mzrecent/PageIndicator;->mOffset:I

    if-gez v0, :cond_0

    .line 90
    iget v0, p0, Lcom/android/systemui/mzrecent/PageIndicator;->mLeftOffset:I

    iget v1, p0, Lcom/android/systemui/mzrecent/PageIndicator;->mOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/mzrecent/PageIndicator;->mLeftOffset:I

    .line 101
    :goto_0
    return-void

    .line 91
    :cond_0
    iget v0, p0, Lcom/android/systemui/mzrecent/PageIndicator;->mRightOffset:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/mzrecent/PageIndicator;->mOffset:I

    if-lez v0, :cond_1

    .line 92
    iget v0, p0, Lcom/android/systemui/mzrecent/PageIndicator;->mRightOffset:I

    iget v1, p0, Lcom/android/systemui/mzrecent/PageIndicator;->mOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/mzrecent/PageIndicator;->mRightOffset:I

    goto :goto_0

    .line 94
    :cond_1
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 95
    iget v0, p0, Lcom/android/systemui/mzrecent/PageIndicator;->mOffset:I

    iput v0, p0, Lcom/android/systemui/mzrecent/PageIndicator;->mLeftOffset:I

    goto :goto_0

    .line 97
    :cond_2
    iget v0, p0, Lcom/android/systemui/mzrecent/PageIndicator;->mOffset:I

    iput v0, p0, Lcom/android/systemui/mzrecent/PageIndicator;->mRightOffset:I

    goto :goto_0
.end method
