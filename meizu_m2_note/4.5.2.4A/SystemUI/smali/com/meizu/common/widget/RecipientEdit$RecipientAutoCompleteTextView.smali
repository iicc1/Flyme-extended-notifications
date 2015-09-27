.class Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "RecipientEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/RecipientEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RecipientAutoCompleteTextView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView$PopupDataSetObserver;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mBgNoShadow:Landroid/graphics/drawable/Drawable;

.field private mBgWithShadow:Landroid/graphics/drawable/Drawable;

.field private mCurrentBg:Landroid/graphics/drawable/Drawable;

.field private mObserver:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView$PopupDataSetObserver;

.field private mOnDropDownListener:Lcom/meizu/common/widget/RecipientEdit$OnDropDownListener;

.field private mRoot:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 2580
    invoke-direct {p0, p1}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;)V

    .line 2581
    invoke-direct {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->init()V

    .line 2582
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 2585
    invoke-direct {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2586
    invoke-direct {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->init()V

    .line 2587
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 2590
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2591
    invoke-direct {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->init()V

    .line 2592
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 2595
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02021b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->mBgNoShadow:Landroid/graphics/drawable/Drawable;

    .line 2597
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02021a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->mBgWithShadow:Landroid/graphics/drawable/Drawable;

    .line 2598
    return-void
.end method


# virtual methods
.method public changePopupBackground()V
    .locals 10

    .prologue
    .line 2627
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v5

    .line 2628
    .local v5, "popup":Landroid/widget/ListPopupWindow;
    invoke-virtual {v5}, Landroid/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    .line 2629
    .local v0, "anchorView":Landroid/view/View;
    if-nez v0, :cond_0

    .line 2630
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getDropDownAnchor()I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 2631
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getRootView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getDropDownAnchor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2637
    :cond_0
    :goto_0
    invoke-static {v5}, Lcom/meizu/common/widget/RecipientEdit$PopupWindowHelper;->getPopupWindow(Landroid/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v7

    .line 2638
    .local v7, "popupWindow":Landroid/widget/PopupWindow;
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getDropDownVerticalOffset()I

    move-result v8

    invoke-virtual {v7, v0, v8}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v4

    .line 2640
    .local v4, "maxHeight":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d01aa

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 2642
    .local v3, "listItemHeight":I
    const/4 v2, 0x0

    .line 2648
    .local v2, "listHeaderHeight":I
    const/4 v1, 0x0

    .line 2649
    .local v1, "bgChanged":Z
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v8

    invoke-interface {v8}, Landroid/widget/ListAdapter;->getCount()I

    move-result v8

    mul-int/2addr v8, v3

    add-int/2addr v8, v2

    if-ge v4, v8, :cond_4

    .line 2651
    iget-object v8, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->mCurrentBg:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->mBgNoShadow:Landroid/graphics/drawable/Drawable;

    if-eq v8, v9, :cond_1

    .line 2652
    iget-object v8, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->mBgNoShadow:Landroid/graphics/drawable/Drawable;

    iput-object v8, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->mCurrentBg:Landroid/graphics/drawable/Drawable;

    .line 2653
    const/4 v1, 0x1

    .line 2661
    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 2662
    invoke-static {v7}, Lcom/meizu/common/widget/RecipientEdit$PopupWindowHelper;->getPopupView(Landroid/widget/PopupWindow;)Landroid/view/View;

    move-result-object v6

    .line 2663
    .local v6, "popupView":Landroid/view/View;
    if-nez v6, :cond_5

    .line 2664
    iget-object v8, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->mCurrentBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v8}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2669
    .end local v6    # "popupView":Landroid/view/View;
    :cond_2
    :goto_2
    return-void

    .line 2633
    .end local v1    # "bgChanged":Z
    .end local v2    # "listHeaderHeight":I
    .end local v3    # "listItemHeight":I
    .end local v4    # "maxHeight":I
    .end local v7    # "popupWindow":Landroid/widget/PopupWindow;
    :cond_3
    move-object v0, p0

    goto :goto_0

    .line 2655
    .restart local v1    # "bgChanged":Z
    .restart local v2    # "listHeaderHeight":I
    .restart local v3    # "listItemHeight":I
    .restart local v4    # "maxHeight":I
    .restart local v7    # "popupWindow":Landroid/widget/PopupWindow;
    :cond_4
    iget-object v8, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->mCurrentBg:Landroid/graphics/drawable/Drawable;

    iget-object v9, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->mBgWithShadow:Landroid/graphics/drawable/Drawable;

    if-eq v8, v9, :cond_1

    .line 2657
    iget-object v8, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->mBgWithShadow:Landroid/graphics/drawable/Drawable;

    iput-object v8, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->mCurrentBg:Landroid/graphics/drawable/Drawable;

    .line 2658
    const/4 v1, 0x1

    goto :goto_1

    .line 2666
    .restart local v6    # "popupView":Landroid/view/View;
    :cond_5
    iget-object v8, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->mCurrentBg:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v8}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method public dismiss(Z)V
    .locals 5
    .param p1, "close"    # Z

    .prologue
    .line 2601
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    .line 2602
    .local v1, "isShow":Z
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 2604
    if-eqz p1, :cond_0

    .line 2605
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;

    .line 2606
    .local v0, "adapter":Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;
    invoke-virtual {v0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->close()V

    .line 2609
    .end local v0    # "adapter":Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->mOnDropDownListener:Lcom/meizu/common/widget/RecipientEdit$OnDropDownListener;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 2610
    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->mOnDropDownListener:Lcom/meizu/common/widget/RecipientEdit$OnDropDownListener;

    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->mRoot:Landroid/view/View;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lcom/meizu/common/widget/RecipientEdit$OnDropDownListener;->onDropDown(Landroid/view/View;Z)V

    .line 2612
    :cond_1
    return-void
.end method

.method public dismissDropDown()V
    .locals 1

    .prologue
    .line 2616
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->dismiss(Z)V

    .line 2617
    return-void
.end method

.method public getPopup()Landroid/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 2620
    invoke-static {p0}, Lcom/meizu/common/widget/RecipientEdit$PopupWindowHelper;->getPopup(Landroid/widget/AutoCompleteTextView;)Landroid/widget/ListPopupWindow;

    move-result-object v0

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/widget/ListAdapter;",
            ":",
            "Landroid/widget/Filterable;",
            ">(TT;)V"
        }
    .end annotation

    .prologue
    .line 2682
    .local p1, "adapter":Landroid/widget/ListAdapter;, "TT;"
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2684
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->mObserver:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView$PopupDataSetObserver;

    if-nez v0, :cond_2

    .line 2685
    new-instance v0, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView$PopupDataSetObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView$PopupDataSetObserver;-><init>(Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;Lcom/meizu/common/widget/RecipientEdit$1;)V

    iput-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->mObserver:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView$PopupDataSetObserver;

    .line 2690
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    .line 2691
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_1

    .line 2692
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->mObserver:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView$PopupDataSetObserver;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 2694
    :cond_1
    return-void

    .line 2686
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_0

    .line 2687
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    iget-object v1, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->mObserver:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView$PopupDataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    goto :goto_0
.end method
