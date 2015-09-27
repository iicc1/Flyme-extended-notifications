.class public Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;
.super Landroid/view/ViewGroup;
.source "SwapDragableGridView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/widgetnew/IOnPerformChildViewLongClick;
.implements Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler$ISwapViewsPositionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$MyDragShadowBuilder;,
        Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;,
        Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;,
        Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$IOnChildrenPositionChangedListener;,
        Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter",
            "<",
            "Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mColumnWidth:I

.field private mDelayStartSwapTwoViewsPos:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;

.field private mHorizontalSpacing:I

.field private mNumColumns:I

.field private mNumRows:I

.field private mOnChildrenPositionChangedListener:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$IOnChildrenPositionChangedListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnDragListener:Landroid/view/View$OnDragListener;

.field private mOnLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mPendingCheckForLongPress:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;

.field private mRowHeight:I

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 143
    const v0, 0x1010071

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 147
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    iput v9, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mNumColumns:I

    .line 50
    iput v8, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mNumRows:I

    .line 55
    iput v8, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mColumnWidth:I

    .line 60
    iput v8, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mRowHeight:I

    .line 65
    iput v7, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mHorizontalSpacing:I

    .line 70
    iput v7, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mVerticalSpacing:I

    .line 421
    new-instance v7, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$1;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$1;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 434
    new-instance v7, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$2;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$2;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mOnLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 454
    new-instance v7, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;

    invoke-direct {v7, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$3;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mOnDragListener:Landroid/view/View$OnDragListener;

    .line 711
    new-instance v7, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;

    invoke-direct {v7, p0, p0, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/widgetnew/IOnPerformChildViewLongClick;)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mPendingCheckForLongPress:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;

    .line 149
    sget-object v7, Lcom/android/systemui/R$styleable;->SwapDragableGridView:[I

    invoke-virtual {p1, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 152
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v8, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    .line 154
    .local v2, "hSpacing":I
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->setHorizontalSpacing(I)V

    .line 156
    invoke-virtual {v0, v9, v8}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    .line 158
    .local v6, "vSpacing":I
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->setVerticalSpacing(I)V

    .line 160
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 161
    .local v3, "numColumns":I
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->setNumColumns(I)V

    .line 163
    const/4 v7, 0x4

    const/16 v8, 0x1f4

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 164
    .local v4, "swapDelay":I
    const/4 v7, 0x3

    const/16 v8, 0x3e8

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 167
    .local v5, "swapDuration":I
    new-instance v1, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;

    invoke-direct {v1, p0, p0, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/widgetnew/SwapAnimationControler$ISwapViewsPositionListener;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mDelayStartSwapTwoViewsPos:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;

    .line 168
    .local v1, "delayRunable":Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;
    int-to-long v8, v4

    invoke-virtual {v1, v8, v9}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;->setSwapDelay(J)V

    .line 169
    int-to-long v8, v5

    invoke-virtual {v1, v8, v9}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;->setSwapDuration(J)V

    .line 170
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0x19

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v7, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mChildren:Ljava/util/List;

    .line 173
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;)Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mDelayStartSwapTwoViewsPos:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->handleDataChange()V

    return-void
.end method

.method private getChildLayoutLeftTop(Landroid/view/View;)Landroid/graphics/Point;
    .locals 7
    .param p1, "childView"    # Landroid/view/View;

    .prologue
    .line 322
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildPosition(Landroid/view/View;)I

    move-result v2

    .line 326
    .local v2, "position":I
    iget v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mNumColumns:I

    rem-int v0, v2, v4

    .line 330
    .local v0, "col":I
    iget v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mNumColumns:I

    div-int v3, v2, v4

    .line 331
    .local v3, "row":I
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 332
    .local v1, "point":Landroid/graphics/Point;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getPaddingLeft()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mColumnWidth:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mHorizontalSpacing:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v0

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Point;->x:I

    .line 333
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getPaddingTop()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mRowHeight:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mVerticalSpacing:I

    add-int/2addr v5, v6

    mul-int/2addr v5, v3

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Point;->y:I

    .line 334
    return-object v1
.end method

.method private handleDataChange()V
    .locals 6

    .prologue
    .line 957
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->removeAllViews()V

    .line 959
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mChildren:Ljava/util/List;

    .line 960
    .local v2, "childrenViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 962
    const/4 v1, 0x0

    .line 963
    .local v1, "childView":Landroid/view/View;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mAdapter:Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;->getCount()I

    move-result v0

    .line 964
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 965
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mAdapter:Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 966
    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 967
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->addView(Landroid/view/View;)V

    .line 969
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mAdapter:Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;->getItem(I)Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->setChildName(Landroid/view/View;Ljava/lang/String;)V

    .line 970
    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->setChildPosition(Landroid/view/View;I)V

    .line 973
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->registerOnDragListener(Landroid/view/View;)V

    .line 964
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 975
    :cond_0
    return-void
.end method

.method private registerOnDragListener(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 560
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mOnDragListener:Landroid/view/View$OnDragListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 561
    return-void
.end method

.method private requestLayoutIfNecessary()V
    .locals 1

    .prologue
    .line 1037
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1038
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->requestLayout()V

    .line 1039
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->invalidate()V

    .line 1041
    :cond_0
    return-void
.end method

.method private swapChildDataInAdapter(II)V
    .locals 4
    .param p1, "firstPos"    # I
    .param p2, "secondPos"    # I

    .prologue
    .line 991
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mAdapter:Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;

    .line 992
    .local v0, "adapter":Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;, "Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter<Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;>;"
    if-eqz v0, :cond_0

    .line 993
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;->getItem(I)Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;

    move-result-object v1

    .line 994
    .local v1, "oldFirsFragment":Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;->getItem(I)Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;

    move-result-object v2

    .line 998
    .local v2, "oldSecondFragment":Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;->setNotifyOnChange(Z)V

    .line 999
    invoke-virtual {v0, v1, p2}, Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;->set(Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;I)V

    .line 1000
    invoke-virtual {v0, v2, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;->set(Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;I)V

    .line 1001
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;->setNotifyOnChange(Z)V

    .line 1003
    .end local v1    # "oldFirsFragment":Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;
    .end local v2    # "oldSecondFragment":Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;
    :cond_0
    return-void
.end method

.method private swapChildInList(II)V
    .locals 3
    .param p1, "firstPos"    # I
    .param p2, "secondPos"    # I

    .prologue
    .line 979
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mChildren:Ljava/util/List;

    .line 980
    .local v0, "childrenViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v0, :cond_0

    .line 981
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 982
    .local v1, "firstView":Landroid/view/View;
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 984
    .local v2, "secondView":Landroid/view/View;
    invoke-interface {v0, p1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 985
    invoke-interface {v0, p2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 987
    .end local v1    # "firstView":Landroid/view/View;
    .end local v2    # "secondView":Landroid/view/View;
    :cond_0
    return-void
.end method


# virtual methods
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 340
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public getChildAtTouchPos(FF)Landroid/view/View;
    .locals 9
    .param p1, "rawX"    # F
    .param p2, "rawY"    # F

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 857
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mChildren:Ljava/util/List;

    .line 859
    .local v2, "childViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 860
    .local v3, "count":I
    const/4 v5, 0x2

    new-array v4, v5, [I

    .line 861
    .local v4, "position":[I
    float-to-int v5, p1

    aput v5, v4, v7

    .line 862
    float-to-int v5, p2

    aput v5, v4, v8

    .line 864
    const/4 v0, 0x0

    .line 865
    .local v0, "child":Landroid/view/View;
    const/4 v1, 0x0

    .local v1, "childIndex":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 867
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "child":Landroid/view/View;
    check-cast v0, Landroid/view/View;

    .line 869
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-ne v5, v6, :cond_1

    .line 865
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 873
    :cond_1
    aget v5, v4, v7

    aget v6, v4, v8

    invoke-virtual {p0, v0, v5, v6}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->isPointInViewVisibleRect(Landroid/view/View;II)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v0

    .line 878
    :goto_1
    return-object v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public getChildLeftTop(Landroid/view/View;)Landroid/graphics/Point;
    .locals 2
    .param p1, "childView"    # Landroid/view/View;

    .prologue
    .line 400
    const/high16 v1, 0x7f0e0000

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;

    .line 401
    .local v0, "holder":Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;->getLeftTop()Landroid/graphics/Point;

    move-result-object v1

    return-object v1
.end method

.method public getChildName(Landroid/view/View;)Ljava/lang/String;
    .locals 2
    .param p1, "childView"    # Landroid/view/View;

    .prologue
    .line 417
    const/high16 v1, 0x7f0e0000

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;

    .line 418
    .local v0, "holder":Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;->getName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 2
    .param p1, "childView"    # Landroid/view/View;

    .prologue
    .line 375
    const/high16 v1, 0x7f0e0000

    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;

    .line 376
    .local v0, "holder":Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;->getPosition()I

    move-result v1

    return v1
.end method

.method public isPointInViewVisibleRect(Landroid/view/View;II)Z
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "rawX"    # I
    .param p3, "rawY"    # I

    .prologue
    .line 886
    if-nez p1, :cond_0

    .line 887
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "parameter view == null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 890
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 891
    .local v0, "absoluteRect":Landroid/graphics/Rect;
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 893
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    return v1
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 345
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 347
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mChildren:Ljava/util/List;

    .line 348
    .local v2, "childrenViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 350
    const/4 v1, 0x0

    .line 351
    .local v1, "childView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildCount()I

    move-result v0

    .line 352
    .local v0, "childCount":I
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 353
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 354
    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 356
    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->setChildPosition(Landroid/view/View;I)V

    .line 359
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->registerOnDragListener(Landroid/view/View;)V

    .line 352
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 361
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 718
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mPendingCheckForLongPress:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;

    .line 719
    .local v1, "checkForLongPress":Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;->getLongPressChildView()Landroid/view/View;

    move-result-object v4

    .line 721
    .local v4, "longPressChildView":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    float-to-int v5, v7

    .line 722
    .local v5, "rawX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    float-to-int v6, v7

    .line 723
    .local v6, "rawY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 724
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 789
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    :goto_1
    return v7

    .line 726
    :pswitch_0
    int-to-float v7, v5

    int-to-float v8, v6

    invoke-virtual {p0, v7, v8}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildAtTouchPos(FF)Landroid/view/View;

    move-result-object v2

    .line 728
    .local v2, "childView":Landroid/view/View;
    const-string v3, "no child at touch point"

    .line 729
    .local v3, "childname":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 730
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    .line 732
    :cond_1
    const-string v7, "SwapDragableGridView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onInterceptTouchEvent MotionEvent.ACTION_DOWN  getChildAtTouchPos("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    if-eqz v2, :cond_0

    .line 735
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;->safeCheckForLongClick(Landroid/view/View;)V

    goto :goto_0

    .line 742
    .end local v2    # "childView":Landroid/view/View;
    .end local v3    # "childname":Ljava/lang/String;
    :pswitch_1
    const-string v7, "SwapDragableGridView"

    const-string v8, "onInterceptTouchEvent MotionEvent.ACTION_MOVE"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;->isHasPerformedLongPress()Z

    move-result v7

    if-nez v7, :cond_0

    .line 750
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;->getLongPressChildView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7, v5, v6}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->isPointInViewVisibleRect(Landroid/view/View;II)Z

    move-result v7

    if-nez v7, :cond_0

    .line 751
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;->removeLongPressCallback()V

    goto :goto_0

    .line 758
    :pswitch_2
    const-string v7, "SwapDragableGridView"

    const-string v8, "onInterceptTouchEvent MotionEvent.ACTION_UP"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;->isHasPerformedLongPress()Z

    move-result v7

    if-nez v7, :cond_2

    .line 763
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;->removeLongPressCallback()V

    .line 772
    :cond_2
    const-string v7, "SwapDragableGridView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mPendingCheckForLongPress.isHasPerformedLongPress() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;->isHasPerformedLongPress()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;->isHasPerformedLongPress()Z

    move-result v7

    goto/16 :goto_1

    .line 778
    :pswitch_3
    const-string v7, "SwapDragableGridView"

    const-string v8, "onInterceptTouchEvent MotionEvent.ACTION_CANCEL"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    if-eqz v4, :cond_0

    .line 782
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;->removeLongPressCallback()V

    goto/16 :goto_0

    .line 724
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    const/4 v8, 0x1

    .line 298
    const-string v6, "SwapDragableGridView"

    const-string v7, "onLayout"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget v6, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mNumColumns:I

    if-ge v6, v8, :cond_1

    .line 319
    :cond_0
    return-void

    .line 303
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildCount()I

    move-result v0

    .line 304
    .local v0, "childCount":I
    if-lt v0, v8, :cond_0

    .line 308
    iget v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mColumnWidth:I

    .line 309
    .local v2, "columnWidth":I
    iget v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mRowHeight:I

    .line 310
    .local v5, "rowHeight":I
    const/4 v1, 0x0

    .line 311
    .local v1, "childView":Landroid/view/View;
    const/4 v3, 0x0

    .local v3, "idx":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 312
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 316
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildLeftTop(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v4

    .line 317
    .local v4, "leftTop":Landroid/graphics/Point;
    iget v6, v4, Landroid/graphics/Point;->x:I

    iget v7, v4, Landroid/graphics/Point;->y:I

    iget v8, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v8, v2

    iget v9, v4, Landroid/graphics/Point;->y:I

    add-int/2addr v9, v5

    invoke-virtual {v1, v6, v7, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 311
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 16
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 177
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 179
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mNumColumns:I

    const/4 v15, 0x1

    if-ge v14, v15, :cond_0

    .line 181
    const-string v14, "SwapDragableGridView"

    const-string v15, "mNumColumns < 1"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :goto_0
    return-void

    .line 186
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildCount()I

    move-result v1

    .line 187
    .local v1, "childCount":I
    const/4 v14, 0x1

    if-ge v1, v14, :cond_1

    .line 189
    const-string v14, "SwapDragableGridView"

    const-string v15, "no child view exist:  getChildCount() < 1"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x439a8000    # 309.0f

    invoke-static {v14, v15}, Lcom/android/systemui/statusbar/phone/widgetnew/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v14

    move/from16 v0, p1

    invoke-static {v14, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getDefaultSize(II)I

    move-result v7

    .line 208
    .local v7, "measuredWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x439a8000    # 309.0f

    invoke-static {v14, v15}, Lcom/android/systemui/statusbar/phone/widgetnew/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v14

    move/from16 v0, p2

    invoke-static {v14, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getDefaultSize(II)I

    move-result v6

    .line 219
    .local v6, "measuredHeight":I
    const/4 v3, 0x0

    .line 220
    .local v3, "columnWidth":I
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mNumColumns:I

    .line 221
    .local v8, "numColumns":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getPaddingLeft()I

    move-result v9

    .line 222
    .local v9, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getPaddingRight()I

    move-result v10

    .line 223
    .local v10, "paddingRight":I
    add-int/lit8 v14, v8, -0x1

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mHorizontalSpacing:I

    mul-int v12, v14, v15

    .line 224
    .local v12, "totalHorizontalSpacings":I
    sub-int v14, v7, v9

    sub-int/2addr v14, v10

    sub-int v13, v14, v12

    .line 225
    .local v13, "widthLeaveForChildren":I
    if-lez v13, :cond_3

    .line 226
    div-int v3, v13, v8

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mColumnWidth:I

    .line 235
    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v7, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    const/high16 v15, 0x40000000    # 2.0f

    invoke-static {v6, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->measureChildren(II)V

    .line 237
    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mRowHeight:I

    .line 266
    .local v11, "rowHeight":I
    const/4 v2, 0x0

    .line 267
    .local v2, "childView":Landroid/view/View;
    const/4 v4, 0x0

    .local v4, "idx":I
    :goto_1
    if-ge v4, v1, :cond_4

    .line 268
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 274
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mDelayStartSwapTwoViewsPos:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$DelayStartSwapTwoViewsPos;->isSwapping()Z

    move-result v14

    if-nez v14, :cond_2

    .line 275
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildLayoutLeftTop(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v5

    .line 278
    .local v5, "leftTop":Landroid/graphics/Point;
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v5}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->setChildLeftTop(Landroid/view/View;Landroid/graphics/Point;)V

    .line 267
    .end local v5    # "leftTop":Landroid/graphics/Point;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 230
    .end local v2    # "childView":Landroid/view/View;
    .end local v4    # "idx":I
    .end local v11    # "rowHeight":I
    :cond_3
    const-string v14, "SwapDragableGridView"

    const-string v15, "\u7559\u7ed9\u5b50view\u7684\u5269\u4f59\u7a7a\u95f4widthLeaveForChildren <= 0"

    invoke-static {v14, v15}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 293
    .restart local v2    # "childView":Landroid/view/View;
    .restart local v4    # "idx":I
    .restart local v11    # "rowHeight":I
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v6}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->setMeasuredDimension(II)V

    goto/16 :goto_0
.end method

.method public onPerformChildViewLongClick(Landroid/view/View;)Z
    .locals 3
    .param p1, "longPressChildView"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 637
    const-string v0, "SwapDragableGridView"

    const-string v1, "Grid View Item performLongClick"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v0, 0x0

    new-instance v1, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$MyDragShadowBuilder;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$MyDragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, v0, v1, p1, v2}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 643
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->performHapticFeedback(I)Z

    .line 645
    const/4 v0, 0x1

    return v0
.end method

.method public onSwapEnd(Landroid/view/View;Landroid/view/View;)V
    .locals 5
    .param p1, "firsView"    # Landroid/view/View;
    .param p2, "secondView"    # Landroid/view/View;

    .prologue
    .line 902
    const-string v2, "SwapDragableGridView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSwapEnd \u524d    drag_name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", drag_pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    drop_name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  drop_pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildPosition(Landroid/view/View;)I

    move-result v0

    .line 906
    .local v0, "oldFirstPos":I
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildPosition(Landroid/view/View;)I

    move-result v1

    .line 909
    .local v1, "oldSecondPos":I
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->swapChildPosition(Landroid/view/View;Landroid/view/View;)V

    .line 911
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->swapChildInList(II)V

    .line 913
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->swapChildDataInAdapter(II)V

    .line 915
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mOnChildrenPositionChangedListener:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$IOnChildrenPositionChangedListener;

    if-eqz v2, :cond_0

    .line 916
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mOnChildrenPositionChangedListener:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$IOnChildrenPositionChangedListener;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-interface {v2, p0, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$IOnChildrenPositionChangedListener;->onChildrenPositionChanged(Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;[Landroid/view/View;)V

    .line 919
    :cond_0
    const-string v2, "SwapDragableGridView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSwapEnd \u540e    drag_name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", drag_pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "    drop_name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildName(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  drop_pos = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildPosition(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 797
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mPendingCheckForLongPress:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;

    .line 798
    .local v1, "checkForLongPress":Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;->getLongPressChildView()Landroid/view/View;

    move-result-object v2

    .line 800
    .local v2, "longPressChildView":Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    float-to-int v3, v5

    .line 801
    .local v3, "rawX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    float-to-int v4, v5

    .line 802
    .local v4, "rawY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 803
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 846
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v5

    :goto_1
    return v5

    .line 806
    :pswitch_0
    const-string v5, "SwapDragableGridView"

    const-string v6, "onTouchEvent MotionEvent.ACTION_DOWN"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    const/4 v5, 0x1

    goto :goto_1

    .line 813
    :pswitch_1
    const-string v5, "SwapDragableGridView"

    const-string v6, "onTouchEvent MotionEvent.ACTION_MOVE"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;->isHasPerformedLongPress()Z

    move-result v5

    if-nez v5, :cond_0

    .line 821
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;->getLongPressChildView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5, v3, v4}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->isPointInViewVisibleRect(Landroid/view/View;II)Z

    move-result v5

    if-nez v5, :cond_0

    .line 822
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;->removeLongPressCallback()V

    goto :goto_0

    .line 830
    :pswitch_2
    const-string v5, "SwapDragableGridView"

    const-string v6, "onTouchEvent MotionEvent.ACTION_UP"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;->isHasPerformedLongPress()Z

    move-result v5

    if-nez v5, :cond_0

    .line 835
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$CheckForLongPress;->removeLongPressCallback()V

    goto :goto_0

    .line 841
    :pswitch_3
    const-string v5, "SwapDragableGridView"

    const-string v6, "onTouchEvent MotionEvent.ACTION_CANCEL"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 803
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setAdapter(Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter",
            "<",
            "Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 929
    .local p1, "adapter":Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;, "Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter<Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;>;"
    if-eqz p1, :cond_0

    .line 930
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mAdapter:Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;

    .line 931
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->handleDataChange()V

    .line 932
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mAdapter:Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;

    new-instance v1, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$4;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 946
    :cond_0
    return-void
.end method

.method public setChildLeftTop(Landroid/view/View;Landroid/graphics/Point;)V
    .locals 2
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "leftTop"    # Landroid/graphics/Point;

    .prologue
    const/high16 v1, 0x7f0e0000

    .line 389
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;

    .line 390
    .local v0, "holder":Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;
    if-nez v0, :cond_0

    .line 391
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;

    .end local v0    # "holder":Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;
    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;-><init>()V

    .line 392
    .restart local v0    # "holder":Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 395
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;->setLeftTop(Landroid/graphics/Point;)V

    .line 396
    return-void
.end method

.method public setChildName(Landroid/view/View;Ljava/lang/String;)V
    .locals 2
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/high16 v1, 0x7f0e0000

    .line 406
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;

    .line 407
    .local v0, "holder":Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;
    if-nez v0, :cond_0

    .line 408
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;

    .end local v0    # "holder":Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;
    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;-><init>()V

    .line 409
    .restart local v0    # "holder":Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 412
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;->setName(Ljava/lang/String;)V

    .line 413
    return-void
.end method

.method public setChildPosition(Landroid/view/View;I)V
    .locals 3
    .param p1, "childView"    # Landroid/view/View;
    .param p2, "pos"    # I

    .prologue
    const/high16 v1, 0x7f0e0000

    .line 364
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;

    .line 365
    .local v0, "holder":Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;
    if-nez v0, :cond_0

    .line 366
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;

    .end local v0    # "holder":Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;
    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;-><init>()V

    .line 367
    .restart local v0    # "holder":Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 369
    :cond_0
    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$ViewHolder;->setPosition(I)V

    .line 370
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 372
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 1
    .param p1, "horizontalSpacing"    # I

    .prologue
    .line 1044
    iget v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mHorizontalSpacing:I

    if-eq p1, v0, :cond_0

    .line 1045
    iput p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mHorizontalSpacing:I

    .line 1046
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->requestLayoutIfNecessary()V

    .line 1048
    :cond_0
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1
    .param p1, "numColumns"    # I

    .prologue
    .line 1066
    iget v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mNumColumns:I

    if-eq p1, v0, :cond_0

    .line 1067
    iput p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mNumColumns:I

    .line 1068
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->requestLayoutIfNecessary()V

    .line 1070
    :cond_0
    return-void
.end method

.method public setOnChildrenPositionChangedListener(Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$IOnChildrenPositionChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$IOnChildrenPositionChangedListener;

    .prologue
    .line 1074
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mOnChildrenPositionChangedListener:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$IOnChildrenPositionChangedListener;

    .line 1075
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 1
    .param p1, "verticalSpacing"    # I

    .prologue
    .line 1055
    iget v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mVerticalSpacing:I

    if-eq p1, v0, :cond_0

    .line 1056
    iput p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->mVerticalSpacing:I

    .line 1057
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->requestLayoutIfNecessary()V

    .line 1059
    :cond_0
    return-void
.end method

.method public swapChildPosition(Landroid/view/View;Landroid/view/View;)V
    .locals 2
    .param p1, "firstView"    # Landroid/view/View;
    .param p2, "secondView"    # Landroid/view/View;

    .prologue
    .line 381
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildPosition(Landroid/view/View;)I

    move-result v0

    .line 382
    .local v0, "firstPos":I
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->getChildPosition(Landroid/view/View;)I

    move-result v1

    .line 383
    .local v1, "secondPos":I
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->setChildPosition(Landroid/view/View;I)V

    .line 384
    invoke-virtual {p0, p2, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->setChildPosition(Landroid/view/View;I)V

    .line 385
    return-void
.end method
