.class public Lcom/meizu/common/widget/LimitedWHLinearLayout;
.super Landroid/widget/LinearLayout;
.source "LimitedWHLinearLayout.java"


# instance fields
.field private mMaxHeight:I

.field private mMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v0, 0x7fffffff

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput v0, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxHeight:I

    .line 26
    iput v0, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxWidth:I

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const v0, 0x7fffffff

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    iput v0, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxHeight:I

    .line 26
    iput v0, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxWidth:I

    .line 34
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 48
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 50
    invoke-virtual {p0}, Lcom/meizu/common/widget/LimitedWHLinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 51
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/LimitedWHLinearLayout;->getMeasuredWidth()I

    move-result v2

    .line 52
    .local v2, "width":I
    const/4 v1, 0x0

    .line 55
    .local v1, "measure":Z
    iget v3, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxHeight:I

    if-le v0, v3, :cond_0

    .line 56
    iget v0, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxHeight:I

    .line 57
    invoke-static {v0, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 58
    const/4 v1, 0x1

    .line 61
    :cond_0
    iget v3, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxWidth:I

    if-le v2, v3, :cond_1

    .line 62
    iget v2, p0, Lcom/meizu/common/widget/LimitedWHLinearLayout;->mMaxWidth:I

    .line 63
    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 64
    const/4 v1, 0x1

    .line 67
    :cond_1
    if-eqz v1, :cond_2

    .line 68
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 70
    :cond_2
    return-void
.end method
