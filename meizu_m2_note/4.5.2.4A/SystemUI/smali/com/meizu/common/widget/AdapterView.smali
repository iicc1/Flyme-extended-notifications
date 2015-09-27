.class public abstract Lcom/meizu/common/widget/AdapterView;
.super Landroid/view/ViewGroup;
.source "AdapterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/AdapterView$1;,
        Lcom/meizu/common/widget/AdapterView$SelectionNotifier;,
        Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/widget/Adapter;",
        ">",
        "Landroid/view/ViewGroup;"
    }
.end annotation


# instance fields
.field mBlockLayoutRequests:Z

.field mDataChanged:Z

.field private mDesiredFocusableInTouchModeState:Z

.field private mDesiredFocusableState:Z

.field mFirstPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "scrolling"
    .end annotation
.end field

.field mInLayout:Z

.field mItemCount:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field private mLayoutHeight:I

.field mNeedSync:Z

.field mNextSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mNextSelectedRowId:J

.field mOldSelectedPosition:I

.field mOldSelectedRowId:J

.field mOnItemSelectedListener:Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;

.field mSelectedPosition:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field mSelectedRowId:J

.field private mSelectionNotifier:Lcom/meizu/common/widget/AdapterView$SelectionNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/meizu/common/widget/AdapterView",
            "<TT;>.SelectionNotifier;"
        }
    .end annotation
.end field

.field mSyncMode:I

.field mSyncPosition:I

.field mSyncRowId:J


# direct methods
.method static synthetic access$200(Lcom/meizu/common/widget/AdapterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/AdapterView;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/meizu/common/widget/AdapterView;->fireOnSelected()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/AdapterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/AdapterView;

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/meizu/common/widget/AdapterView;->performAccessibilityActionsOnSelected()V

    return-void
.end method

.method private fireOnSelected()V
    .locals 6

    .prologue
    .line 891
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemSelectedListener:Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;

    if-nez v0, :cond_0

    .line 902
    :goto_0
    return-void

    .line 894
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getSelectedItemPosition()I

    move-result v3

    .line 895
    .local v3, "selection":I
    if-ltz v3, :cond_1

    .line 896
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    .line 897
    .local v2, "v":Landroid/view/View;
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemSelectedListener:Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Lcom/meizu/common/widget/AdapterView;Landroid/view/View;IJ)V

    goto :goto_0

    .line 900
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemSelectedListener:Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {v0, p0}, Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;->onNothingSelected(Lcom/meizu/common/widget/AdapterView;)V

    goto :goto_0
.end method

.method private isScrollableForAccessibility()Z
    .locals 5

    .prologue
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    const/4 v2, 0x0

    .line 966
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 967
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_1

    .line 968
    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v1

    .line 969
    .local v1, "itemCount":I
    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getLastVisiblePosition()I

    move-result v3

    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 972
    .end local v1    # "itemCount":I
    :cond_1
    return v2
.end method

.method private performAccessibilityActionsOnSelected()V
    .locals 2

    .prologue
    .line 908
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    .line 909
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 911
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/AdapterView;->sendAccessibilityEvent(I)V

    .line 913
    :cond_0
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 456
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 469
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 497
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, int, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 482
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "addView(View, LayoutParams) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected canAnimate()Z
    .locals 1

    .prologue
    .line 977
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkSelectionChanged()V
    .locals 4

    .prologue
    .line 1047
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    iget v1, p0, Lcom/meizu/common/widget/AdapterView;->mOldSelectedPosition:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedRowId:J

    iget-wide v2, p0, Lcom/meizu/common/widget/AdapterView;->mOldSelectedRowId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1048
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->selectionChanged()V

    .line 1049
    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    iput v0, p0, Lcom/meizu/common/widget/AdapterView;->mOldSelectedPosition:I

    .line 1050
    iget-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedRowId:J

    iput-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mOldSelectedRowId:J

    .line 1052
    :cond_1
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 917
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 918
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 920
    const/4 v1, 0x1

    .line 922
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 794
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/AdapterView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 795
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 786
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/AdapterView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 787
    return-void
.end method

.method findSyncPosition()I
    .locals 20

    .prologue
    .line 1063
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    .line 1065
    .local v3, "count":I
    if-nez v3, :cond_1

    .line 1066
    const/4 v13, -0x1

    .line 1138
    :cond_0
    :goto_0
    return v13

    .line 1069
    :cond_1
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/meizu/common/widget/AdapterView;->mSyncRowId:J

    .line 1070
    .local v10, "idToMatch":J
    move-object/from16 v0, p0

    iget v13, v0, Lcom/meizu/common/widget/AdapterView;->mSyncPosition:I

    .line 1073
    .local v13, "seed":I
    const-wide/high16 v16, -0x8000000000000000L

    cmp-long v16, v10, v16

    if-nez v16, :cond_2

    .line 1074
    const/4 v13, -0x1

    goto :goto_0

    .line 1078
    :cond_2
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1079
    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    invoke-static {v0, v13}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 1081
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x64

    add-long v4, v16, v18

    .line 1086
    .local v4, "endTime":J
    move v6, v13

    .line 1089
    .local v6, "first":I
    move v9, v13

    .line 1092
    .local v9, "last":I
    const/4 v12, 0x0

    .line 1102
    .local v12, "next":Z
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    .line 1103
    .local v2, "adapter":Landroid/widget/Adapter;, "TT;"
    if-nez v2, :cond_5

    .line 1104
    const/4 v13, -0x1

    goto :goto_0

    .line 1122
    .local v7, "hitFirst":Z
    .local v8, "hitLast":Z
    .local v14, "rowId":J
    :cond_3
    if-nez v7, :cond_4

    if-eqz v12, :cond_9

    if-nez v8, :cond_9

    .line 1124
    :cond_4
    add-int/lit8 v9, v9, 0x1

    .line 1125
    move v13, v9

    .line 1127
    const/4 v12, 0x0

    .line 1107
    .end local v7    # "hitFirst":Z
    .end local v8    # "hitLast":Z
    .end local v14    # "rowId":J
    :cond_5
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    cmp-long v16, v16, v4

    if-gtz v16, :cond_6

    .line 1108
    invoke-interface {v2, v13}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v14

    .line 1109
    .restart local v14    # "rowId":J
    cmp-long v16, v14, v10

    if-eqz v16, :cond_0

    .line 1114
    add-int/lit8 v16, v3, -0x1

    move/from16 v0, v16

    if-ne v9, v0, :cond_7

    const/4 v8, 0x1

    .line 1115
    .restart local v8    # "hitLast":Z
    :goto_2
    if-nez v6, :cond_8

    const/4 v7, 0x1

    .line 1117
    .restart local v7    # "hitFirst":Z
    :goto_3
    if-eqz v8, :cond_3

    if-eqz v7, :cond_3

    .line 1138
    .end local v7    # "hitFirst":Z
    .end local v8    # "hitLast":Z
    .end local v14    # "rowId":J
    :cond_6
    const/4 v13, -0x1

    goto :goto_0

    .line 1114
    .restart local v14    # "rowId":J
    :cond_7
    const/4 v8, 0x0

    goto :goto_2

    .line 1115
    .restart local v8    # "hitLast":Z
    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    .line 1128
    .restart local v7    # "hitFirst":Z
    :cond_9
    if-nez v8, :cond_a

    if-nez v12, :cond_5

    if-nez v7, :cond_5

    .line 1130
    :cond_a
    add-int/lit8 v6, v6, -0x1

    .line 1131
    move v13, v6

    .line 1133
    const/4 v12, 0x1

    goto :goto_1
.end method

.method public abstract getAdapter()Landroid/widget/Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getCount()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 586
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    return v0
.end method

.method public getFirstVisiblePosition()I
    .locals 1

    .prologue
    .line 629
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    return v0
.end method

.method public getItemIdAtPosition(I)J
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 771
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 772
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    const-wide/high16 v2, -0x8000000000000000L

    :goto_0
    return-wide v2

    :cond_1
    invoke-interface {v0, p1}, Landroid/widget/Adapter;->getItemId(I)J

    move-result-wide v2

    goto :goto_0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .prologue
    .line 639
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mFirstPosition:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getChildCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getSelectedItemId()J
    .locals 2
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 556
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    iget-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedRowId:J

    return-wide v0
.end method

.method public getSelectedItemPosition()I
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$CapturedViewProperty;
    .end annotation

    .prologue
    .line 547
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedPosition:I

    return v0
.end method

.method public abstract getSelectedView()Landroid/view/View;
.end method

.method handleDataChanged()V
    .locals 10

    .prologue
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    const-wide/high16 v8, -0x8000000000000000L

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 981
    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mItemCount:I

    .line 982
    .local v0, "count":I
    const/4 v1, 0x0

    .line 984
    .local v1, "found":Z
    if-lez v0, :cond_4

    .line 989
    iget-boolean v4, p0, Lcom/meizu/common/widget/AdapterView;->mNeedSync:Z

    if-eqz v4, :cond_0

    .line 992
    iput-boolean v5, p0, Lcom/meizu/common/widget/AdapterView;->mNeedSync:Z

    .line 996
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->findSyncPosition()I

    move-result v2

    .line 997
    .local v2, "newPos":I
    if-ltz v2, :cond_0

    .line 999
    invoke-virtual {p0, v2, v7}, Lcom/meizu/common/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1000
    .local v3, "selectablePos":I
    if-ne v3, v2, :cond_0

    .line 1002
    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1003
    const/4 v1, 0x1

    .line 1007
    .end local v2    # "newPos":I
    .end local v3    # "selectablePos":I
    :cond_0
    if-nez v1, :cond_4

    .line 1009
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getSelectedItemPosition()I

    move-result v2

    .line 1012
    .restart local v2    # "newPos":I
    if-lt v2, v0, :cond_1

    .line 1013
    add-int/lit8 v2, v0, -0x1

    .line 1015
    :cond_1
    if-gez v2, :cond_2

    .line 1016
    const/4 v2, 0x0

    .line 1020
    :cond_2
    invoke-virtual {p0, v2, v7}, Lcom/meizu/common/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1021
    .restart local v3    # "selectablePos":I
    if-gez v3, :cond_3

    .line 1023
    invoke-virtual {p0, v2, v5}, Lcom/meizu/common/widget/AdapterView;->lookForSelectablePosition(IZ)I

    move-result v3

    .line 1025
    :cond_3
    if-ltz v3, :cond_4

    .line 1026
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/AdapterView;->setNextSelectedPositionInt(I)V

    .line 1027
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->checkSelectionChanged()V

    .line 1028
    const/4 v1, 0x1

    .line 1032
    .end local v2    # "newPos":I
    .end local v3    # "selectablePos":I
    :cond_4
    if-nez v1, :cond_5

    .line 1034
    iput v6, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedPosition:I

    .line 1035
    iput-wide v8, p0, Lcom/meizu/common/widget/AdapterView;->mSelectedRowId:J

    .line 1036
    iput v6, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedPosition:I

    .line 1037
    iput-wide v8, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedRowId:J

    .line 1038
    iput-boolean v5, p0, Lcom/meizu/common/widget/AdapterView;->mNeedSync:Z

    .line 1039
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->checkSelectionChanged()V

    .line 1044
    :cond_5
    return-void
.end method

.method isInFilterMode()Z
    .locals 1

    .prologue
    .line 685
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    const/4 v0, 0x0

    return v0
.end method

.method lookForSelectablePosition(IZ)I
    .locals 0
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    .line 1150
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    return p1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 850
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 851
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectionNotifier:Lcom/meizu/common/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AdapterView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 852
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 952
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 953
    const-class v1, Lcom/meizu/common/widget/AdapterView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 954
    invoke-direct {p0}, Lcom/meizu/common/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 955
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 956
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 957
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 959
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .line 960
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 961
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 962
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getCount()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 963
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 941
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 942
    const-class v1, Lcom/meizu/common/widget/AdapterView;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 943
    invoke-direct {p0}, Lcom/meizu/common/widget/AdapterView;->isScrollableForAccessibility()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    .line 944
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    .line 945
    .local v0, "selectedView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 946
    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    .line 948
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 537
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/AdapterView;->mLayoutHeight:I

    .line 538
    return-void
.end method

.method public onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 927
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 929
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 930
    .local v0, "record":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AdapterView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 932
    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 933
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    .line 934
    const/4 v1, 0x1

    .line 936
    .end local v0    # "record":Landroid/view/accessibility/AccessibilityEvent;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public removeAllViews()V
    .locals 2

    .prologue
    .line 532
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeAllViews() is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 510
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeView(View) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 522
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "removeViewAt(int) is not supported in AdapterView"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method selectionChanged()V
    .locals 2

    .prologue
    .line 871
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mOnItemSelectedListener:Lcom/meizu/common/widget/AdapterView$OnItemSelectedListener;

    if-eqz v0, :cond_2

    .line 874
    iget-boolean v0, p0, Lcom/meizu/common/widget/AdapterView;->mInLayout:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/AdapterView;->mBlockLayoutRequests:Z

    if-eqz v0, :cond_3

    .line 879
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectionNotifier:Lcom/meizu/common/widget/AdapterView$SelectionNotifier;

    if-nez v0, :cond_1

    .line 880
    new-instance v0, Lcom/meizu/common/widget/AdapterView$SelectionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/widget/AdapterView$SelectionNotifier;-><init>(Lcom/meizu/common/widget/AdapterView;Lcom/meizu/common/widget/AdapterView$1;)V

    iput-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectionNotifier:Lcom/meizu/common/widget/AdapterView$SelectionNotifier;

    .line 882
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/AdapterView;->mSelectionNotifier:Lcom/meizu/common/widget/AdapterView$SelectionNotifier;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    .line 888
    :cond_2
    :goto_0
    return-void

    .line 884
    :cond_3
    invoke-direct {p0}, Lcom/meizu/common/widget/AdapterView;->fireOnSelected()V

    .line 885
    invoke-direct {p0}, Lcom/meizu/common/widget/AdapterView;->performAccessibilityActionsOnSelected()V

    goto :goto_0
.end method

.method public setFocusable(Z)V
    .locals 5
    .param p1, "focusable"    # Z

    .prologue
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 690
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 691
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 693
    .local v1, "empty":Z
    :goto_0
    iput-boolean p1, p0, Lcom/meizu/common/widget/AdapterView;->mDesiredFocusableState:Z

    .line 694
    if-nez p1, :cond_1

    .line 695
    iput-boolean v2, p0, Lcom/meizu/common/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 698
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 699
    return-void

    .end local v1    # "empty":Z
    :cond_3
    move v1, v2

    .line 691
    goto :goto_0

    .restart local v1    # "empty":Z
    :cond_4
    move v3, v2

    .line 698
    goto :goto_1
.end method

.method public setFocusableInTouchMode(Z)V
    .locals 5
    .param p1, "focusable"    # Z

    .prologue
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 703
    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    .line 704
    .local v0, "adapter":Landroid/widget/Adapter;, "TT;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/Adapter;->getCount()I

    move-result v4

    if-nez v4, :cond_3

    :cond_0
    move v1, v3

    .line 706
    .local v1, "empty":Z
    :goto_0
    iput-boolean p1, p0, Lcom/meizu/common/widget/AdapterView;->mDesiredFocusableInTouchModeState:Z

    .line 707
    if-eqz p1, :cond_1

    .line 708
    iput-boolean v3, p0, Lcom/meizu/common/widget/AdapterView;->mDesiredFocusableState:Z

    .line 711
    :cond_1
    if-eqz p1, :cond_4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/meizu/common/widget/AdapterView;->isInFilterMode()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    :goto_1
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 712
    return-void

    .end local v1    # "empty":Z
    :cond_3
    move v1, v2

    .line 704
    goto :goto_0

    .restart local v1    # "empty":Z
    :cond_4
    move v3, v2

    .line 711
    goto :goto_1
.end method

.method setNextSelectedPositionInt(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 1168
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    iput p1, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedPosition:I

    .line 1169
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedRowId:J

    .line 1171
    iget-boolean v0, p0, Lcom/meizu/common/widget/AdapterView;->mNeedSync:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/AdapterView;->mSyncMode:I

    if-nez v0, :cond_0

    if-ltz p1, :cond_0

    .line 1172
    iput p1, p0, Lcom/meizu/common/widget/AdapterView;->mSyncPosition:I

    .line 1173
    iget-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mNextSelectedRowId:J

    iput-wide v0, p0, Lcom/meizu/common/widget/AdapterView;->mSyncRowId:J

    .line 1175
    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2
    .param p1, "l"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 777
    .local p0, "this":Lcom/meizu/common/widget/AdapterView;, "Lcom/meizu/common/widget/AdapterView<TT;>;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Don\'t call setOnClickListener for an AdapterView. You probably want setOnItemClickListener instead"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
