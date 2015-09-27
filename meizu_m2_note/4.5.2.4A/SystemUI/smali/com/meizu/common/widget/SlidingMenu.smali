.class public Lcom/meizu/common/widget/SlidingMenu;
.super Landroid/widget/FrameLayout;
.source "SlidingMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/SlidingMenu$SavedState;,
        Lcom/meizu/common/widget/SlidingMenu$CanvasTransformer;,
        Lcom/meizu/common/widget/SlidingMenu$OnClosedListener;,
        Lcom/meizu/common/widget/SlidingMenu$OnCloseListener;,
        Lcom/meizu/common/widget/SlidingMenu$OnOpenedListener;,
        Lcom/meizu/common/widget/SlidingMenu$OnOpenListener;,
        Lcom/meizu/common/widget/SlidingMenu$OnMenuStateChangeListener;,
        Lcom/meizu/common/widget/SlidingMenu$State;
    }
.end annotation


# instance fields
.field private mCloseListener:Lcom/meizu/common/widget/SlidingMenu$OnCloseListener;

.field private mOpenListener:Lcom/meizu/common/widget/SlidingMenu$OnOpenListener;

.field private mSlidingMenuStateChangeListener:Lcom/meizu/common/widget/SlidingMenu$OnMenuStateChangeListener;

.field private mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

.field private mViewAboveOffset:I


# direct methods
.method static synthetic access$000(Lcom/meizu/common/widget/SlidingMenu;)Lcom/meizu/common/widget/SlidingMenu$OnMenuStateChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/SlidingMenu;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mSlidingMenuStateChangeListener:Lcom/meizu/common/widget/SlidingMenu$OnMenuStateChangeListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/SlidingMenu;)Lcom/meizu/common/widget/SlidingMenu$OnOpenListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/SlidingMenu;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mOpenListener:Lcom/meizu/common/widget/SlidingMenu$OnOpenListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/SlidingMenu;)Lcom/meizu/common/widget/SlidingMenu$OnCloseListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/SlidingMenu;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/meizu/common/widget/SlidingMenu;->mCloseListener:Lcom/meizu/common/widget/SlidingMenu$OnCloseListener;

    return-object v0
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 1005
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1006
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 991
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 992
    invoke-static {v5, p1}, Lcom/meizu/common/widget/SlidingMenu;->getDefaultSize(II)I

    move-result v3

    .line 993
    .local v3, "width":I
    invoke-static {v5, p2}, Lcom/meizu/common/widget/SlidingMenu;->getDefaultSize(II)I

    move-result v2

    .line 994
    .local v2, "height":I
    invoke-virtual {p0, v3, v2}, Lcom/meizu/common/widget/SlidingMenu;->setMeasuredDimension(II)V

    .line 995
    iget v4, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAboveOffset:I

    sub-int v4, v3, v4

    invoke-static {p1, v5, v4}, Lcom/meizu/common/widget/SlidingMenu;->getChildMeasureSpec(III)I

    move-result v1

    .line 996
    .local v1, "contentWidth":I
    invoke-static {p2, v5, v2}, Lcom/meizu/common/widget/SlidingMenu;->getChildMeasureSpec(III)I

    move-result v0

    .line 997
    .local v0, "contentHeight":I
    iget-object v4, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    if-eqz v4, :cond_0

    .line 998
    iget-object v4, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v4, v1, v0}, Lcom/meizu/common/widget/CustomViewAbove;->measure(II)V

    .line 999
    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1222
    move-object v0, p1

    check-cast v0, Lcom/meizu/common/widget/SlidingMenu$SavedState;

    .line 1223
    .local v0, "ss":Lcom/meizu/common/widget/SlidingMenu$SavedState;
    invoke-virtual {v0}, Lcom/meizu/common/widget/SlidingMenu$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1224
    iget-object v1, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v0}, Lcom/meizu/common/widget/SlidingMenu$SavedState;->getItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/CustomViewAbove;->setCurrentItem(I)V

    .line 1225
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 1210
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1211
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/meizu/common/widget/SlidingMenu$SavedState;

    iget-object v2, p0, Lcom/meizu/common/widget/SlidingMenu;->mViewAbove:Lcom/meizu/common/widget/CustomViewAbove;

    invoke-virtual {v2}, Lcom/meizu/common/widget/CustomViewAbove;->getCurrentItem()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/meizu/common/widget/SlidingMenu$SavedState;-><init>(Landroid/os/Parcelable;I)V

    .line 1212
    .local v0, "ss":Lcom/meizu/common/widget/SlidingMenu$SavedState;
    return-object v0
.end method
