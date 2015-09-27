.class public Lcom/meizu/common/widget/CustomPicker;
.super Landroid/widget/FrameLayout;
.source "CustomPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/CustomPicker$1;,
        Lcom/meizu/common/widget/CustomPicker$SavedState;
    }
.end annotation


# instance fields
.field private mColumnCount:I

.field private mCurrentItems:[I

.field private mPickers:[Lcom/meizu/common/widget/ScrollTextView;


# virtual methods
.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 338
    move-object v0, p1

    check-cast v0, Lcom/meizu/common/widget/CustomPicker$SavedState;

    .line 339
    .local v0, "ss":Lcom/meizu/common/widget/CustomPicker$SavedState;
    invoke-virtual {v0}, Lcom/meizu/common/widget/CustomPicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 340
    invoke-virtual {v0}, Lcom/meizu/common/widget/CustomPicker$SavedState;->getCurrentItems()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/CustomPicker;->updateCurrentItems([I)V

    .line 341
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 332
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 333
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/meizu/common/widget/CustomPicker$SavedState;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomPicker;->mCurrentItems:[I

    const/4 v3, 0x0

    invoke-direct {v1, v0, v2, v3}, Lcom/meizu/common/widget/CustomPicker$SavedState;-><init>(Landroid/os/Parcelable;[ILcom/meizu/common/widget/CustomPicker$1;)V

    return-object v1
.end method

.method public setEnabled(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 286
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 288
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/meizu/common/widget/CustomPicker;->mColumnCount:I

    if-ge v0, v1, :cond_0

    .line 289
    iget-object v1, p0, Lcom/meizu/common/widget/CustomPicker;->mPickers:[Lcom/meizu/common/widget/ScrollTextView;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Lcom/meizu/common/widget/ScrollTextView;->setEnabled(Z)V

    .line 288
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    :cond_0
    return-void
.end method

.method public varargs updateCurrentItems([I)V
    .locals 3
    .param p1, "currentItems"    # [I

    .prologue
    .line 274
    if-nez p1, :cond_1

    .line 282
    :cond_0
    return-void

    .line 278
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/meizu/common/widget/CustomPicker;->mColumnCount:I

    if-ge v0, v1, :cond_0

    .line 279
    iget-object v1, p0, Lcom/meizu/common/widget/CustomPicker;->mCurrentItems:[I

    aget v2, p1, v0

    aput v2, v1, v0

    .line 280
    iget-object v1, p0, Lcom/meizu/common/widget/CustomPicker;->mPickers:[Lcom/meizu/common/widget/ScrollTextView;

    aget-object v1, v1, v0

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->refreshCurrent(I)V

    .line 278
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
