.class public Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;
.super Landroid/widget/ScrollView;
.source "WidgetLayoutExtend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;
    }
.end annotation


# instance fields
.field private HORIZON_PADDING_LANDSCAPE:I

.field private HORIZON_PADDING_PORTRAIT:I

.field private mDragableGridView:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

.field private mMoveSpeed:Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mShortCuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 178
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->mMoveSpeed:Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 178
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->mMoveSpeed:Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 178
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->mMoveSpeed:Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->mShortCuts:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getLayoutHeight()F
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 174
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    return v1
.end method

.method public getMoveSpeed()Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->mMoveSpeed:Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 63
    const-string v2, "WidgetLayoutExtend"

    const-string v3, "onAttachedToWindow"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const v2, 0x7f0e018a

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->mDragableGridView:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    .line 66
    .local v1, "gv":Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;
    new-instance v2, Lcom/android/systemui/statusbar/phone/widgetnew/builder/ShortCutListBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/widgetnew/builder/ShortCutListBuilder;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/widgetnew/builder/ShortCutListBuilder;->createShortCutList()Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->mShortCuts:Ljava/util/List;

    .line 68
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->mShortCuts:Ljava/util/List;

    invoke-direct {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 69
    .local v0, "adapter":Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;, "Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter<Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;>;"
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->setAdapter(Lcom/android/systemui/statusbar/phone/widgetnew/ViewFragmentArrayAdapter;)V

    .line 71
    new-instance v2, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$1;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$1;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->setOnChildrenPositionChangedListener(Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$IOnChildrenPositionChangedListener;)V

    .line 106
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 122
    const v3, 0x7f0e018a

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->mDragableGridView:Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;

    .line 123
    .local v0, "gv":Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 124
    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->setNumColumns(I)V

    .line 126
    iget v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->HORIZON_PADDING_LANDSCAPE:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->setHorizontalSpacing(I)V

    .line 134
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->mShortCuts:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 135
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 136
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;

    .line 137
    .local v2, "shortcut":Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;
    invoke-interface {v2, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_1

    .line 127
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;>;"
    .end local v2    # "shortcut":Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;
    :cond_1
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 128
    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->setNumColumns(I)V

    .line 130
    iget v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->HORIZON_PADDING_PORTRAIT:I

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;->setHorizontalSpacing(I)V

    goto :goto_0

    .line 139
    .restart local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/phone/widgetnew/IViewFragment;>;"
    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 110
    const-string v0, "WidgetLayoutExtend"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-super {p0}, Landroid/widget/ScrollView;->onDetachedFromWindow()V

    .line 112
    return-void
.end method

.method public setLayoutHeight(F)V
    .locals 2
    .param p1, "height"    # F

    .prologue
    .line 229
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->mMoveSpeed:Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->addRecord(F)V

    .line 230
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 231
    .local v0, "lp":Landroid/view/ViewGroup$LayoutParams;
    float-to-int v1, p1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 234
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotiAreaAlphaFromOffset()V

    .line 235
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateExpandWidgetsButtonProgress()V

    .line 236
    return-void
.end method

.method public setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "psb"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 116
    return-void
.end method
