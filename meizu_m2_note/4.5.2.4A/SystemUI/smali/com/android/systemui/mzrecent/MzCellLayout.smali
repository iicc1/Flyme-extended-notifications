.class public Lcom/android/systemui/mzrecent/MzCellLayout;
.super Landroid/widget/LinearLayout;
.source "MzCellLayout.java"

# interfaces
.implements Lcom/android/systemui/mzrecent/Page;


# instance fields
.field colorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private mImageView:Landroid/widget/ImageView;

.field private final mRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/mzrecent/MzCellLayout;->mRect:Landroid/graphics/Rect;

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090010

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 27
    .local v0, "srcColor":I
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/android/systemui/mzrecent/MzCellLayout;->colorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 29
    invoke-virtual {p0, v3}, Lcom/android/systemui/mzrecent/MzCellLayout;->setWillNotDraw(Z)V

    .line 30
    invoke-virtual {p0, v3}, Lcom/android/systemui/mzrecent/MzCellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 31
    return-void
.end method


# virtual methods
.method public enableHardwareLayers()V
    .locals 2

    .prologue
    .line 34
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/mzrecent/MzCellLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 35
    return-void
.end method

.method public getPageChildCount()I
    .locals 1

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/MzCellLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 41
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 43
    .local v0, "action":I
    if-nez v0, :cond_1

    .line 118
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 86
    :cond_1
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 96
    iget-object v2, p0, Lcom/android/systemui/mzrecent/MzCellLayout;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/android/systemui/mzrecent/MzCellLayout;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 98
    .local v1, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 100
    iget-object v2, p0, Lcom/android/systemui/mzrecent/MzCellLayout;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 101
    iget-object v2, p0, Lcom/android/systemui/mzrecent/MzCellLayout;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    iput-object v3, p0, Lcom/android/systemui/mzrecent/MzCellLayout;->mImageView:Landroid/widget/ImageView;

    goto :goto_0

    .line 105
    .end local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 106
    iget-object v2, p0, Lcom/android/systemui/mzrecent/MzCellLayout;->mImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    .line 107
    iget-object v2, p0, Lcom/android/systemui/mzrecent/MzCellLayout;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 108
    .restart local v1    # "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 109
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 110
    iget-object v2, p0, Lcom/android/systemui/mzrecent/MzCellLayout;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 111
    iget-object v2, p0, Lcom/android/systemui/mzrecent/MzCellLayout;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 112
    iput-object v3, p0, Lcom/android/systemui/mzrecent/MzCellLayout;->mImageView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method public removeAllViewsOnPage()V
    .locals 0

    .prologue
    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/MzCellLayout;->removeAllViews()V

    .line 143
    return-void
.end method
