.class public Lcom/android/systemui/mzrecent/WorkspaceItem;
.super Lcom/android/systemui/mzrecent/SmoothPagedView;
.source "WorkspaceItem.java"

# interfaces
.implements Lcom/android/systemui/mzrecent/SwipeHelper$Callback;


# static fields
.field private static DELAY:J


# instance fields
.field private PAGEINDICATOR_WIDTH:I

.field public mCurRotation:I

.field private mLastPageBeforeMoving:I

.field mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

.field private mSwipeHelper:Lcom/android/systemui/mzrecent/SwipeHelper;

.field private scrollNormal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    const-wide/16 v0, 0x258

    sput-wide v0, Lcom/android/systemui/mzrecent/WorkspaceItem;->DELAY:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/mzrecent/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    iput v1, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mCurRotation:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mLastPageBeforeMoving:I

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->scrollNormal:Z

    .line 78
    iput-boolean v1, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mFadeInAdjacentScreens:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mContentIsRefreshable:Z

    .line 80
    sget-object v0, Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;->SCROLL:Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;

    iput-object v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->overScrollMode:Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02033a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->PAGEINDICATOR_WIDTH:I

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/WorkspaceItem;->setDataIsReady()V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/mzrecent/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mCurRotation:I

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mLastPageBeforeMoving:I

    .line 270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->scrollNormal:Z

    .line 63
    return-void
.end method


# virtual methods
.method public buildPageHardwareLayers()V
    .locals 4

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getChildCount()I

    move-result v0

    .line 260
    .local v0, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 261
    invoke-virtual {p0, v2}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/mzrecent/MzCellLayout;

    .line 262
    .local v1, "cl":Lcom/android/systemui/mzrecent/MzCellLayout;
    invoke-virtual {v1}, Lcom/android/systemui/mzrecent/MzCellLayout;->buildLayer()V

    .line 260
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 265
    .end local v0    # "childCount":I
    .end local v1    # "cl":Lcom/android/systemui/mzrecent/MzCellLayout;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 168
    const/4 v0, 0x1

    return v0
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    .local v0, "arry":[Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    .line 92
    .local v1, "favors":[Landroid/widget/RelativeLayout;
    iget-object v11, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    if-eqz v11, :cond_2

    .line 93
    iget-object v11, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-boolean v11, v11, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mStandByAnimationing:Z

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v11}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isClearingAll()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 94
    :cond_0
    const-string v11, "WorkspaceItem"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mRecentDrawer.mStandByAnimationing = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-boolean v13, v13, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mStandByAnimationing:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 v4, 0x0

    .line 153
    :goto_0
    return-object v4

    .line 98
    :cond_1
    iget-object v11, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v11}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getLinearLayouts()[Landroid/widget/LinearLayout;

    move-result-object v0

    .line 99
    iget-object v11, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v11}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getFavorsViews()[Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 102
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    .line 103
    .local v9, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    .line 105
    .local v10, "y":F
    iget-object v11, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v11}, Landroid/widget/Scroller;->isFinished()Z

    move-result v11

    if-eqz v11, :cond_4

    iget v7, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mCurrentPage:I

    .line 107
    .local v7, "screen":I
    :goto_1
    const/4 v11, -0x1

    if-le v7, v11, :cond_7

    .line 108
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    array-length v11, v0

    if-ge v2, v11, :cond_a

    .line 110
    aget-object v4, v0, v2

    .line 111
    .local v4, "item":Landroid/view/View;
    if-nez v4, :cond_5

    .line 108
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 105
    .end local v2    # "i":I
    .end local v4    # "item":Landroid/view/View;
    .end local v7    # "screen":I
    :cond_4
    iget v7, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mNextPage:I

    goto :goto_1

    .line 113
    .restart local v2    # "i":I
    .restart local v4    # "item":Landroid/view/View;
    .restart local v7    # "screen":I
    :cond_5
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/mzrecent/TaskDescription;

    .line 115
    .local v8, "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    if-eqz v8, :cond_3

    .line 117
    const/4 v3, 0x0

    .line 118
    .local v3, "index":I
    iget-object v11, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    if-eqz v11, :cond_6

    .line 119
    iget-object v11, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget v11, v11, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->PAGE_CHILD:I

    div-int v3, v2, v11

    .line 120
    add-int/lit8 v11, v3, 0x0

    if-ne v7, v11, :cond_3

    .line 124
    :cond_6
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 125
    .local v5, "mr":Landroid/graphics/Rect;
    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 126
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_3

    .line 127
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v11

    int-to-float v11, v11

    cmpl-float v11, v9, v11

    if-ltz v11, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v11

    int-to-float v11, v11

    cmpg-float v11, v9, v11

    if-gez v11, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v11

    int-to-float v11, v11

    cmpl-float v11, v10, v11

    if-ltz v11, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v11

    int-to-float v11, v11

    cmpg-float v11, v10, v11

    if-gez v11, :cond_3

    goto :goto_0

    .line 133
    .end local v2    # "i":I
    .end local v3    # "index":I
    .end local v4    # "item":Landroid/view/View;
    .end local v5    # "mr":Landroid/graphics/Rect;
    .end local v8    # "taskDescription":Lcom/android/systemui/mzrecent/TaskDescription;
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    array-length v11, v1

    if-ge v2, v11, :cond_a

    .line 135
    aget-object v4, v1, v2

    .line 136
    .restart local v4    # "item":Landroid/view/View;
    if-nez v4, :cond_9

    .line 133
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 138
    :cond_9
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 139
    .local v6, "pkgInfo":Landroid/content/pm/ResolveInfo;
    if-nez v6, :cond_b

    .line 153
    .end local v4    # "item":Landroid/view/View;
    .end local v6    # "pkgInfo":Landroid/content/pm/ResolveInfo;
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 142
    .restart local v4    # "item":Landroid/view/View;
    .restart local v6    # "pkgInfo":Landroid/content/pm/ResolveInfo;
    :cond_b
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 143
    .restart local v5    # "mr":Landroid/graphics/Rect;
    invoke-virtual {v4, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 145
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_8

    .line 146
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v11

    int-to-float v11, v11

    cmpl-float v11, v9, v11

    if-ltz v11, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v11

    int-to-float v11, v11

    cmpg-float v11, v9, v11

    if-gez v11, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v11

    int-to-float v11, v11

    cmpl-float v11, v10, v11

    if-ltz v11, :cond_8

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v11

    int-to-float v11, v11

    cmpg-float v11, v10, v11

    if-gez v11, :cond_8

    goto/16 :goto_0
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 160
    return-object p1
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 176
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 180
    instance-of v0, p1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->forceStopPackage(Landroid/view/View;Z)V

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->removeFavorApp(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mSwipeHelper:Lcom/android/systemui/mzrecent/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/mzrecent/SwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/mzrecent/SmoothPagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPageBeginMoving()V
    .locals 2

    .prologue
    .line 306
    iget-object v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mSwipeHelper:Lcom/android/systemui/mzrecent/SwipeHelper;

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mSwipeHelper:Lcom/android/systemui/mzrecent/SwipeHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/mzrecent/SwipeHelper;->setColorFilter(Z)V

    .line 309
    :cond_0
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 0

    .prologue
    .line 320
    invoke-super {p0}, Lcom/android/systemui/mzrecent/SmoothPagedView;->onPageEndMoving()V

    .line 325
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mSwipeHelper:Lcom/android/systemui/mzrecent/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/mzrecent/SwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/systemui/mzrecent/SmoothPagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setColorFilter(Z)V
    .locals 2
    .param p1, "set"    # Z

    .prologue
    .line 312
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mSwipeHelper:Lcom/android/systemui/mzrecent/SwipeHelper;

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mSwipeHelper:Lcom/android/systemui/mzrecent/SwipeHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/mzrecent/SwipeHelper;->setColorFilter(Z)V

    .line 315
    :cond_0
    return-void
.end method

.method public setCurRotation(I)V
    .locals 1
    .param p1, "rotation"    # I

    .prologue
    .line 298
    iput p1, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mCurRotation:I

    .line 299
    iget-object v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mSwipeHelper:Lcom/android/systemui/mzrecent/SwipeHelper;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mSwipeHelper:Lcom/android/systemui/mzrecent/SwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/mzrecent/SwipeHelper;->setCurRotation(I)V

    .line 302
    :cond_0
    return-void
.end method

.method public setFinalIndicator()V
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mPageIndicator:Lcom/android/systemui/mzrecent/PageIndicator;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mPageIndicator:Lcom/android/systemui/mzrecent/PageIndicator;

    iget v1, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mCurrentPage:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/mzrecent/PageIndicator;->setCurrentPage(I)V

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 248
    iget v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mCurrentPage:I

    if-nez v0, :cond_2

    .line 249
    iget-object v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mDivider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    :cond_1
    :goto_0
    return-void

    .line 251
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mDivider:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRecentDrawer(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)V
    .locals 6
    .param p1, "drawer"    # Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    .line 67
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    .line 68
    .local v3, "densityScale":F
    iget-object v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    int-to-float v4, v0

    .line 70
    .local v4, "pagingTouchSlop":F
    new-instance v0, Lcom/android/systemui/mzrecent/SwipeHelper;

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/mzrecent/SwipeHelper;-><init>(ILcom/android/systemui/mzrecent/SwipeHelper$Callback;FFLcom/android/systemui/mzrecent/RecentSlidingDrawer;)V

    iput-object v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mSwipeHelper:Lcom/android/systemui/mzrecent/SwipeHelper;

    .line 72
    iget-object v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mSwipeHelper:Lcom/android/systemui/mzrecent/SwipeHelper;

    invoke-virtual {v0, p0}, Lcom/android/systemui/mzrecent/SwipeHelper;->setWorkspaceItem(Lcom/android/systemui/mzrecent/WorkspaceItem;)V

    .line 73
    return-void
.end method

.method protected snapToPageWithVelocity(II)V
    .locals 2
    .param p1, "whichPage"    # I
    .param p2, "velocity"    # I

    .prologue
    const/4 v1, 0x1

    .line 278
    iget v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mScrollMode:I

    if-ne v0, v1, :cond_1

    .line 279
    iget-boolean v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->scrollNormal:Z

    if-eqz v0, :cond_0

    .line 280
    invoke-super {p0, p1}, Lcom/android/systemui/mzrecent/SmoothPagedView;->snapToPage(I)V

    .line 288
    :goto_0
    return-void

    .line 282
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/mzrecent/SmoothPagedView;->snapToPageWithVelocity(II)V

    goto :goto_0

    .line 286
    :cond_1
    const/4 v0, 0x0

    invoke-super {p0, p1, v0, v1}, Lcom/android/systemui/mzrecent/SmoothPagedView;->snapToPageWithVelocity(IIZ)V

    goto :goto_0
.end method

.method public syncPageItems(IZ)V
    .locals 0
    .param p1, "page"    # I
    .param p2, "immediate"    # Z

    .prologue
    .line 218
    return-void
.end method

.method public updateIndicator()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 224
    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getMeasuredWidth()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->moveDistance:F

    .line 225
    iget-object v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mPageIndicator:Lcom/android/systemui/mzrecent/PageIndicator;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mPageIndicator:Lcom/android/systemui/mzrecent/PageIndicator;

    iget v1, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->moveDistance:F

    iget v2, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->PAGEINDICATOR_WIDTH:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/mzrecent/WorkspaceItem;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/mzrecent/PageIndicator;->setOffset(F)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mDivider:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 230
    iget v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->moveDistance:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 231
    iget v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mCurrentPage:I

    if-nez v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mDivider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 240
    :cond_1
    :goto_0
    return-void

    .line 234
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/mzrecent/WorkspaceItem;->mDivider:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
