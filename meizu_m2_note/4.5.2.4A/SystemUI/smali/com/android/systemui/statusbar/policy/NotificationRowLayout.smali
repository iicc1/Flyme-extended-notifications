.class public Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
.super Landroid/widget/LinearLayout;
.source "NotificationRowLayout.java"

# interfaces
.implements Lcom/android/systemui/ExpandHelper$Callback;
.implements Lcom/android/systemui/SwipeHelper$Callback;


# instance fields
.field mAnimateBounds:Z

.field mAppearingViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field mDisappearingViews:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mOnSizeChangedListener:Lcom/android/systemui/statusbar/policy/OnSizeChangedListener;

.field private mRealLayoutTransition:Landroid/animation/LayoutTransition;

.field mRemoveViews:Z

.field mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mSwipeHelper:Lcom/android/systemui/NotificationRowSwipeHelper;

.field mTmpRect:Landroid/graphics/Rect;

.field private mWidgetExpandHelper:Lcom/android/systemui/WidgetExpandHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mAnimateBounds:Z

    .line 57
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mTmpRect:Landroid/graphics/Rect;

    .line 59
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mAppearingViews:Ljava/util/HashMap;

    .line 60
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mDisappearingViews:Ljava/util/HashMap;

    .line 69
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mRemoveViews:Z

    .line 86
    new-instance v2, Landroid/animation/LayoutTransition;

    invoke-direct {v2}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mRealLayoutTransition:Landroid/animation/LayoutTransition;

    .line 87
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mRealLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v2, v3}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 92
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mRealLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 93
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mRealLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 95
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLayoutTransitionsEnabled(Z)V

    .line 97
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setOrientation(I)V

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 115
    .local v0, "densityScale":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 116
    .local v1, "pagingTouchSlop":F
    new-instance v2, Lcom/android/systemui/NotificationRowSwipeHelper;

    const/4 v3, 0x0

    invoke-direct {v2, v3, p0, v0, v1}, Lcom/android/systemui/NotificationRowSwipeHelper;-><init>(ILcom/android/systemui/SwipeHelper$Callback;FF)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mSwipeHelper:Lcom/android/systemui/NotificationRowSwipeHelper;

    .line 117
    new-instance v2, Lcom/android/systemui/WidgetExpandHelper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mSwipeHelper:Lcom/android/systemui/NotificationRowSwipeHelper;

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/WidgetExpandHelper;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/NotificationRowSwipeHelper;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mWidgetExpandHelper:Lcom/android/systemui/WidgetExpandHelper;

    .line 118
    return-void
.end method


# virtual methods
.method public canChildBeDismissed(Landroid/view/View;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 173
    const v1, 0x7f0e016a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 174
    .local v0, "veto":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public canChildBeExpanded(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 183
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissRowAnimated(Landroid/view/View;I)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "vel"    # I

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mSwipeHelper:Lcom/android/systemui/NotificationRowSwipeHelper;

    int-to-float v1, p2

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/NotificationRowSwipeHelper;->dismissChild(Landroid/view/View;F)V

    .line 308
    return-void
.end method

.method public getChildAtPosition(FF)Landroid/view/View;
    .locals 6
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    .line 250
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildCount()I

    move-result v1

    .line 251
    .local v1, "count":I
    const/4 v3, 0x0

    .line 252
    .local v3, "y":I
    const/4 v0, 0x0

    .line 254
    .local v0, "childIdx":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 255
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 256
    .local v2, "slidingChild":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1

    .line 254
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 259
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v3, v4

    .line 260
    int-to-float v4, v3

    cmpg-float v4, p2, v4

    if-gez v4, :cond_0

    .line 262
    .end local v2    # "slidingChild":Landroid/view/View;
    :goto_1
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getChildAtPosition(Landroid/view/MotionEvent;)Landroid/view/View;
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAtPosition(FF)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildAtRawPosition(FF)Landroid/view/View;
    .locals 3
    .param p1, "touchX"    # F
    .param p2, "touchY"    # F

    .prologue
    .line 243
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 244
    .local v0, "location":[I
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getLocationOnScreen([I)V

    .line 245
    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    int-to-float v2, v2

    sub-float v2, p2, v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getChildAtPosition(FF)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method

.method public getChildContentView(Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 266
    return-object p1
.end method

.method public getSystemExpandedChild(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 201
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 202
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSystemExpanded()Z

    move-result v0

    .line 204
    :goto_0
    return v0

    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUserExpandedChild(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 194
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 195
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserExpanded()Z

    move-result v0

    .line 197
    :goto_0
    return v0

    .restart local p1    # "v":Landroid/view/View;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSystemNotification(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 178
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSystemNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBeginDrag(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 232
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 233
    return-void
.end method

.method public onChildDismissed(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 215
    const v1, 0x7f0e016a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 216
    .local v0, "veto":Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mRemoveViews:Z

    if-eqz v1, :cond_0

    .line 217
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 219
    :cond_0
    return-void
.end method

.method public onChildDismissedManual(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/SystemUIMobEventUtils;->collectClearSingleNotification(Landroid/content/Context;)V

    .line 227
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 271
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 272
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .line 273
    .local v0, "densityScale":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mSwipeHelper:Lcom/android/systemui/NotificationRowSwipeHelper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/NotificationRowSwipeHelper;->setDensityScale(F)V

    .line 274
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .line 275
    .local v1, "pagingTouchSlop":F
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mSwipeHelper:Lcom/android/systemui/NotificationRowSwipeHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/NotificationRowSwipeHelper;->setPagingTouchSlop(F)V

    .line 276
    return-void
.end method

.method public onDragCancelled(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 236
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 318
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 329
    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    .prologue
    .line 312
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 314
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mSwipeHelper:Lcom/android/systemui/NotificationRowSwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/NotificationRowSwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mWidgetExpandHelper:Lcom/android/systemui/WidgetExpandHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/WidgetExpandHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

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

.method protected onSizeChanged(IIII)V
    .locals 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mOnSizeChangedListener:Lcom/android/systemui/statusbar/policy/OnSizeChangedListener;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mOnSizeChangedListener:Lcom/android/systemui/statusbar/policy/OnSizeChangedListener;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/statusbar/policy/OnSizeChangedListener;->onSizeChanged(Landroid/view/View;IIII)V

    .line 336
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mWidgetExpandHelper:Lcom/android/systemui/WidgetExpandHelper;

    iget-object v0, v0, Lcom/android/systemui/WidgetExpandHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-nez v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mWidgetExpandHelper:Lcom/android/systemui/WidgetExpandHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object v1, v0, Lcom/android/systemui/WidgetExpandHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mSwipeHelper:Lcom/android/systemui/NotificationRowSwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/NotificationRowSwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mWidgetExpandHelper:Lcom/android/systemui/WidgetExpandHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/WidgetExpandHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 131
    if-nez p1, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mSwipeHelper:Lcom/android/systemui/NotificationRowSwipeHelper;

    invoke-virtual {v0}, Lcom/android/systemui/NotificationRowSwipeHelper;->removeLongPressCallback()V

    .line 134
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mSwipeHelper:Lcom/android/systemui/NotificationRowSwipeHelper;

    invoke-virtual {v0}, Lcom/android/systemui/NotificationRowSwipeHelper;->resetCurrentNotification()V

    .line 344
    return-void
.end method

.method public setLayoutTransitionsEnabled(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 292
    if-eqz p1, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mRealLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 300
    :goto_0
    return-void

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mRealLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mRealLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->cancel()V

    .line 298
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method public setLongPressListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mSwipeHelper:Lcom/android/systemui/NotificationRowSwipeHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/NotificationRowSwipeHelper;->setLongPressListener(Landroid/view/View$OnLongClickListener;)V

    .line 122
    return-void
.end method

.method public setOnSizeChangedListener(Lcom/android/systemui/statusbar/policy/OnSizeChangedListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/systemui/statusbar/policy/OnSizeChangedListener;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mOnSizeChangedListener:Lcom/android/systemui/statusbar/policy/OnSizeChangedListener;

    .line 126
    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 77
    return-void
.end method

.method public setUserExpandedChild(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "userExpanded"    # Z

    .prologue
    .line 188
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 189
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    .line 191
    :cond_0
    return-void
.end method

.method public setUserLockedChild(Landroid/view/View;Z)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "userLocked"    # Z

    .prologue
    .line 208
    instance-of v0, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    .line 209
    check-cast p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    .line 211
    :cond_0
    return-void
.end method

.method public setViewRemoval(Z)V
    .locals 0
    .param p1, "removeViews"    # Z

    .prologue
    .line 287
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->mRemoveViews:Z

    .line 288
    return-void
.end method
