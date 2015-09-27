.class public abstract Lcom/meizu/common/widget/AbsSpinner;
.super Lcom/meizu/common/widget/AdapterView;
.source "AbsSpinner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/AbsSpinner$1;,
        Lcom/meizu/common/widget/AbsSpinner$RecycleBin;,
        Lcom/meizu/common/widget/AbsSpinner$SavedState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/meizu/common/widget/AdapterView",
        "<",
        "Landroid/widget/SpinnerAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field mAdapter:Landroid/widget/SpinnerAdapter;

.field mHeightMeasureSpec:I

.field final mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

.field mSelectionBottomPadding:I

.field mSelectionLeftPadding:I

.field mSelectionRightPadding:I

.field mSelectionTopPadding:I

.field final mSpinnerPadding:Landroid/graphics/Rect;

.field mWidthMeasureSpec:I


# virtual methods
.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    .line 248
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic getAdapter()Landroid/widget/Adapter;
    .locals 1

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/widget/SpinnerAdapter;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    return-object v0
.end method

.method getChildHeight(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method getChildWidth(Landroid/view/View;)I
    .locals 1
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 243
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 332
    iget v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mItemCount:I

    return v0
.end method

.method public getSelectedView()Landroid/view/View;
    .locals 2

    .prologue
    .line 305
    iget v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mItemCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mSelectedPosition:I

    if-ltz v0, :cond_0

    .line 306
    iget v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mSelectedPosition:I

    iget v1, p0, Lcom/meizu/common/widget/AbsSpinner;->mFirstPosition:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AbsSpinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 308
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 474
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 475
    const-class v0, Lcom/meizu/common/widget/AbsSpinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 476
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 480
    invoke-super {p0, p1}, Lcom/meizu/common/widget/AdapterView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 481
    const-class v0, Lcom/meizu/common/widget/AbsSpinner;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 482
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 165
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 168
    .local v6, "widthMode":I
    iget-object v9, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getPaddingLeft()I

    move-result v8

    iget v10, p0, Lcom/meizu/common/widget/AbsSpinner;->mSelectionLeftPadding:I

    if-le v8, v10, :cond_6

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getPaddingLeft()I

    move-result v8

    :goto_0
    iput v8, v9, Landroid/graphics/Rect;->left:I

    .line 170
    iget-object v9, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getPaddingTop()I

    move-result v8

    iget v10, p0, Lcom/meizu/common/widget/AbsSpinner;->mSelectionTopPadding:I

    if-le v8, v10, :cond_7

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getPaddingTop()I

    move-result v8

    :goto_1
    iput v8, v9, Landroid/graphics/Rect;->top:I

    .line 172
    iget-object v9, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getPaddingRight()I

    move-result v8

    iget v10, p0, Lcom/meizu/common/widget/AbsSpinner;->mSelectionRightPadding:I

    if-le v8, v10, :cond_8

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getPaddingRight()I

    move-result v8

    :goto_2
    iput v8, v9, Landroid/graphics/Rect;->right:I

    .line 174
    iget-object v9, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getPaddingBottom()I

    move-result v8

    iget v10, p0, Lcom/meizu/common/widget/AbsSpinner;->mSelectionBottomPadding:I

    if-le v8, v10, :cond_9

    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getPaddingBottom()I

    move-result v8

    :goto_3
    iput v8, v9, Landroid/graphics/Rect;->bottom:I

    .line 177
    iget-boolean v8, p0, Lcom/meizu/common/widget/AbsSpinner;->mDataChanged:Z

    if-eqz v8, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->handleDataChanged()V

    .line 181
    :cond_0
    const/4 v2, 0x0

    .line 182
    .local v2, "preferredHeight":I
    const/4 v3, 0x0

    .line 183
    .local v3, "preferredWidth":I
    const/4 v1, 0x1

    .line 185
    .local v1, "needsMeasuring":Z
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v4

    .line 186
    .local v4, "selectedPosition":I
    if-ltz v4, :cond_4

    iget-object v8, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v8}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v8

    if-ge v4, v8, :cond_4

    .line 188
    iget-object v8, p0, Lcom/meizu/common/widget/AbsSpinner;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v8, v4}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v5

    .line 189
    .local v5, "view":Landroid/view/View;
    if-nez v5, :cond_1

    .line 191
    iget-object v8, p0, Lcom/meizu/common/widget/AbsSpinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v9, 0x0

    invoke-interface {v8, v4, v9, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 193
    invoke-virtual {v5}, Landroid/view/View;->getImportantForAccessibility()I

    move-result v8

    if-nez v8, :cond_1

    .line 194
    invoke-virtual {v5, v12}, Landroid/view/View;->setImportantForAccessibility(I)V

    .line 198
    :cond_1
    if-eqz v5, :cond_2

    .line 200
    iget-object v8, p0, Lcom/meizu/common/widget/AbsSpinner;->mRecycler:Lcom/meizu/common/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v8, v4, v5}, Lcom/meizu/common/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 203
    :cond_2
    if-eqz v5, :cond_4

    .line 204
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    if-nez v8, :cond_3

    .line 205
    iput-boolean v12, p0, Lcom/meizu/common/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 206
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    iput-boolean v11, p0, Lcom/meizu/common/widget/AbsSpinner;->mBlockLayoutRequests:Z

    .line 209
    :cond_3
    invoke-virtual {p0, v5, p1, p2}, Lcom/meizu/common/widget/AbsSpinner;->measureChild(Landroid/view/View;II)V

    .line 211
    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/AbsSpinner;->getChildHeight(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 212
    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/AbsSpinner;->getChildWidth(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 214
    const/4 v1, 0x0

    .line 218
    .end local v5    # "view":Landroid/view/View;
    :cond_4
    if-eqz v1, :cond_5

    .line 220
    iget-object v8, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    iget-object v9, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->bottom:I

    add-int v2, v8, v9

    .line 221
    if-nez v6, :cond_5

    .line 222
    iget-object v8, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->left:I

    iget-object v9, p0, Lcom/meizu/common/widget/AbsSpinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    add-int v3, v8, v9

    .line 226
    :cond_5
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getSuggestedMinimumHeight()I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 227
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getSuggestedMinimumWidth()I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 229
    invoke-static {v2, p2, v11}, Lcom/meizu/common/widget/AbsSpinner;->resolveSizeAndState(III)I

    move-result v0

    .line 230
    .local v0, "heightSize":I
    invoke-static {v3, p1, v11}, Lcom/meizu/common/widget/AbsSpinner;->resolveSizeAndState(III)I

    move-result v7

    .line 232
    .local v7, "widthSize":I
    invoke-virtual {p0, v7, v0}, Lcom/meizu/common/widget/AbsSpinner;->setMeasuredDimension(II)V

    .line 233
    iput p2, p0, Lcom/meizu/common/widget/AbsSpinner;->mHeightMeasureSpec:I

    .line 234
    iput p1, p0, Lcom/meizu/common/widget/AbsSpinner;->mWidthMeasureSpec:I

    .line 236
    return-void

    .line 168
    .end local v0    # "heightSize":I
    .end local v1    # "needsMeasuring":Z
    .end local v2    # "preferredHeight":I
    .end local v3    # "preferredWidth":I
    .end local v4    # "selectedPosition":I
    .end local v7    # "widthSize":I
    :cond_6
    iget v8, p0, Lcom/meizu/common/widget/AbsSpinner;->mSelectionLeftPadding:I

    goto/16 :goto_0

    .line 170
    :cond_7
    iget v8, p0, Lcom/meizu/common/widget/AbsSpinner;->mSelectionTopPadding:I

    goto/16 :goto_1

    .line 172
    :cond_8
    iget v8, p0, Lcom/meizu/common/widget/AbsSpinner;->mSelectionRightPadding:I

    goto/16 :goto_2

    .line 174
    :cond_9
    iget v8, p0, Lcom/meizu/common/widget/AbsSpinner;->mSelectionBottomPadding:I

    goto/16 :goto_3
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v6, 0x1

    .line 426
    move-object v0, p1

    check-cast v0, Lcom/meizu/common/widget/AbsSpinner$SavedState;

    .line 428
    .local v0, "ss":Lcom/meizu/common/widget/AbsSpinner$SavedState;
    invoke-virtual {v0}, Lcom/meizu/common/widget/AbsSpinner$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/meizu/common/widget/AdapterView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 430
    iget-wide v2, v0, Lcom/meizu/common/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    .line 431
    iput-boolean v6, p0, Lcom/meizu/common/widget/AbsSpinner;->mDataChanged:Z

    .line 432
    iput-boolean v6, p0, Lcom/meizu/common/widget/AbsSpinner;->mNeedSync:Z

    .line 433
    iget-wide v2, v0, Lcom/meizu/common/widget/AbsSpinner$SavedState;->selectedId:J

    iput-wide v2, p0, Lcom/meizu/common/widget/AbsSpinner;->mSyncRowId:J

    .line 434
    iget v1, v0, Lcom/meizu/common/widget/AbsSpinner$SavedState;->position:I

    iput v1, p0, Lcom/meizu/common/widget/AbsSpinner;->mSyncPosition:I

    .line 435
    const/4 v1, 0x0

    iput v1, p0, Lcom/meizu/common/widget/AbsSpinner;->mSyncMode:I

    .line 436
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->requestLayout()V

    .line 438
    :cond_0
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 413
    invoke-super {p0}, Lcom/meizu/common/widget/AdapterView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 414
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/meizu/common/widget/AbsSpinner$SavedState;

    invoke-direct {v0, v1}, Lcom/meizu/common/widget/AbsSpinner$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 415
    .local v0, "ss":Lcom/meizu/common/widget/AbsSpinner$SavedState;
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getSelectedItemId()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/meizu/common/widget/AbsSpinner$SavedState;->selectedId:J

    .line 416
    iget-wide v2, v0, Lcom/meizu/common/widget/AbsSpinner$SavedState;->selectedId:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/meizu/common/widget/AbsSpinner;->getSelectedItemPosition()I

    move-result v2

    iput v2, v0, Lcom/meizu/common/widget/AbsSpinner$SavedState;->position:I

    .line 421
    :goto_0
    return-object v0

    .line 419
    :cond_0
    const/4 v2, -0x1

    iput v2, v0, Lcom/meizu/common/widget/AbsSpinner$SavedState;->position:I

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/meizu/common/widget/AbsSpinner;->mBlockLayoutRequests:Z

    if-nez v0, :cond_0

    .line 321
    invoke-super {p0}, Lcom/meizu/common/widget/AdapterView;->requestLayout()V

    .line 323
    :cond_0
    return-void
.end method
