.class public Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;
.super Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
.source "RecentSlidingDrawerLand.java"


# static fields
.field private static DOWN_POS_X:I


# instance fields
.field private mDrawerValidDistance:I

.field protected mFavorIcons:Landroid/widget/LinearLayout;

.field protected mFavorLayout:Lcom/android/systemui/mzrecent/MzCellLayout;

.field protected mLightAdjust:Landroid/widget/LinearLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/16 v0, 0x708

    sput v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->DOWN_POS_X:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/16 v0, 0x168

    iput v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mDrawerValidDistance:I

    .line 37
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;
    .param p1, "x1"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mDrawerValidDistance:I

    return p1
.end method

.method private configurForMx2OrMx3()V
    .locals 8

    .prologue
    .line 51
    iget-object v6, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mContext:Landroid/content/Context;

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 53
    .local v2, "display":Landroid/view/Display;
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 54
    .local v4, "point":Landroid/graphics/Point;
    invoke-virtual {v2, v4}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 55
    iget v5, v4, Landroid/graphics/Point;->x:I

    .line 56
    .local v5, "width":I
    iget v3, v4, Landroid/graphics/Point;->y:I

    .line 57
    .local v3, "height":I
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 58
    .local v0, "deviceHeight":I
    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 59
    .local v1, "deviceWidth":I
    sput v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->DOWN_POS_X:I

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand$1;

    invoke-direct {v7, p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand$1;-><init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;)V

    invoke-virtual {v6, v7}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 70
    return-void
.end method

.method private resetDrawerStates()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 179
    if-eqz p0, :cond_0

    .line 180
    invoke-virtual {p0, v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->setRotation(F)V

    .line 181
    invoke-virtual {p0, v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->setTranslationX(F)V

    .line 182
    invoke-virtual {p0, v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->setTranslationY(F)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mFavorLayout:Lcom/android/systemui/mzrecent/MzCellLayout;

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mFavorIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mLightAdjust:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 189
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    if-eqz v0, :cond_2

    .line 190
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    invoke-virtual {v0, v1}, Lcom/android/systemui/mzrecent/WorkspaceItem;->setRotation(F)V

    .line 193
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mAutoAdjust:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 194
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mAutoAdjust:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 201
    :cond_3
    return-void
.end method


# virtual methods
.method public closePanleIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 249
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->isSelectDialogVisible()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sget v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->RECENT_DISMISS_DOWN_POS:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/4 v0, 0x1

    .line 250
    .local v0, "result":Z
    :goto_0
    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->animateClose()V

    .line 253
    :cond_0
    return v0

    .line 249
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchMotionEvent(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 238
    iget v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mDrawerValidDistance:I

    sget v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->DOWN_POS_X:I

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->moveHandle(I)V

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->addTrackerEvent(Landroid/view/MotionEvent;)V

    .line 245
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 243
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public getNeedInitFlag()I
    .locals 1

    .prologue
    .line 218
    sget v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mLandNeedInitFlag:I

    return v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->onFinishInflate()V

    .line 43
    const v0, 0x7f0e0156

    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/mzrecent/MzCellLayout;

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mFavorLayout:Lcom/android/systemui/mzrecent/MzCellLayout;

    .line 44
    const v0, 0x7f0e0145

    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mFavorIcons:Landroid/widget/LinearLayout;

    .line 45
    const v0, 0x7f0e014b

    invoke-virtual {p0, v0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mLightAdjust:Landroid/widget/LinearLayout;

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->configurForMx2OrMx3()V

    .line 47
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 232
    invoke-super {p0, p1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->onWindowFocusChanged(Z)V

    .line 233
    return-void
.end method

.method public reLayout(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    const v5, -0x3bd08000    # -702.0f

    const/high16 v4, -0x3c1a0000    # -460.0f

    const/high16 v1, -0x3d4c0000    # -90.0f

    const/high16 v3, -0x3d900000    # -60.0f

    const/high16 v2, 0x42b40000    # 90.0f

    .line 75
    iput p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mCurRotation:I

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->resetDrawerStates()V

    .line 77
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    .line 78
    invoke-virtual {p0, v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->setRotation(F)V

    .line 82
    invoke-virtual {p0, v5}, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->setTranslationX(F)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mBlurView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mBlurView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mBlurView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setTranslationX(F)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mFavorLayout:Lcom/android/systemui/mzrecent/MzCellLayout;

    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mFavorLayout:Lcom/android/systemui/mzrecent/MzCellLayout;

    invoke-virtual {v0, v3}, Lcom/android/systemui/mzrecent/MzCellLayout;->setTranslationX(F)V

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mAutoAdjust:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 92
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mAutoAdjust:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 120
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    if-eqz v0, :cond_3

    .line 121
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    invoke-virtual {v0, p1}, Lcom/android/systemui/mzrecent/WorkspaceItem;->setCurRotation(I)V

    .line 123
    :cond_3
    return-void

    .line 95
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 96
    invoke-virtual {p0, v2}, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->setRotation(F)V

    .line 97
    invoke-virtual {p0, v4}, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->setTranslationX(F)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mBlurView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 100
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mBlurView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    .line 101
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mBlurView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 104
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    if-eqz v0, :cond_6

    .line 105
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mWorkspace:Lcom/android/systemui/mzrecent/WorkspaceItem;

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/mzrecent/WorkspaceItem;->setRotation(F)V

    .line 108
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mFavorLayout:Lcom/android/systemui/mzrecent/MzCellLayout;

    if-eqz v0, :cond_7

    .line 109
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mFavorLayout:Lcom/android/systemui/mzrecent/MzCellLayout;

    invoke-virtual {v0, v3}, Lcom/android/systemui/mzrecent/MzCellLayout;->setTranslationX(F)V

    .line 112
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mFavorIcons:Landroid/widget/LinearLayout;

    const/high16 v1, 0x42fc0000    # 126.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mLightAdjust:Landroid/widget/LinearLayout;

    const/high16 v1, -0x3cd60000    # -170.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 116
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mAutoAdjust:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mAutoAdjust:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setRotation(F)V

    goto :goto_0
.end method

.method public reLayout(II)V
    .locals 0
    .param p1, "size"    # I
    .param p2, "rotation"    # I

    .prologue
    .line 127
    iput p2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mCurRotation:I

    .line 163
    return-void
.end method

.method public resetInitFlag()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, -0x1

    sput v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mLandNeedInitFlag:I

    .line 229
    return-void
.end method

.method public setNeedInitFlag(I)V
    .locals 0
    .param p1, "flag"    # I

    .prologue
    .line 223
    sput p1, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mLandNeedInitFlag:I

    .line 224
    return-void
.end method

.method protected setTaskItemRotation()V
    .locals 4

    .prologue
    .line 167
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mLinearLayouts:[Landroid/widget/LinearLayout;

    if-eqz v2, :cond_1

    .line 168
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mLinearLayouts:[Landroid/widget/LinearLayout;

    array-length v0, v2

    .line 169
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 170
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v1

    if-eqz v2, :cond_0

    .line 171
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawerLand;->mLinearLayouts:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v1

    const/high16 v3, 0x42b40000    # 90.0f

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 169
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
