.class public Lcom/android/systemui/statusbar/phone/PanelScrollView;
.super Landroid/widget/ScrollView;
.source "PanelScrollView.java"


# instance fields
.field mInitTouchDown:F

.field mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelScrollView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWidgetsFullyExpanded:Z

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x0

    .line 66
    :goto_0
    return v0

    .line 64
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelScrollView;->mInitTouchDown:F

    .line 66
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelScrollView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDividerTracking:Z

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelScrollView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWidgetNotificationDivider:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 85
    :goto_0
    return v0

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelScrollView;->getScrollY()I

    move-result v0

    if-ltz v0, :cond_1

    .line 82
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelScrollView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelScrollView;->mInitTouchDown:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setTouchOffset(F)V

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelScrollView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWidgetNotificationDivider:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelScrollView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 48
    return-void
.end method
