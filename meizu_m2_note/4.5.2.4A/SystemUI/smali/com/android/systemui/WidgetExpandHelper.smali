.class public Lcom/android/systemui/WidgetExpandHelper;
.super Ljava/lang/Object;
.source "WidgetExpandHelper.java"


# instance fields
.field private mExpanding:Z

.field private mInitTouchDown:F

.field private mInitialTouchPos:F

.field public mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field public mSwipeHelper:Lcom/android/systemui/NotificationRowSwipeHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/NotificationRowSwipeHelper;)V
    .locals 0
    .param p1, "bar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p2, "helper"    # Lcom/android/systemui/NotificationRowSwipeHelper;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/systemui/WidgetExpandHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 38
    iput-object p2, p0, Lcom/android/systemui/WidgetExpandHelper;->mSwipeHelper:Lcom/android/systemui/NotificationRowSwipeHelper;

    .line 39
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 52
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 84
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/WidgetExpandHelper;->mExpanding:Z

    return v2

    .line 54
    :pswitch_0
    iput-boolean v2, p0, Lcom/android/systemui/WidgetExpandHelper;->mExpanding:Z

    .line 55
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/WidgetExpandHelper;->mInitTouchDown:F

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/WidgetExpandHelper;->mInitialTouchPos:F

    goto :goto_0

    .line 60
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/systemui/WidgetExpandHelper;->mInitialTouchPos:F

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 65
    .local v1, "delta":F
    const/high16 v2, 0x42480000    # 50.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 70
    iget-boolean v2, p0, Lcom/android/systemui/WidgetExpandHelper;->mExpanding:Z

    if-nez v2, :cond_1

    .line 71
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/WidgetExpandHelper;->mInitTouchDown:F

    .line 72
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/WidgetExpandHelper;->mInitialTouchPos:F

    .line 75
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/WidgetExpandHelper;->mExpanding:Z

    goto :goto_0

    .line 81
    .end local v1    # "delta":F
    :pswitch_2
    iput-boolean v2, p0, Lcom/android/systemui/WidgetExpandHelper;->mExpanding:Z

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/systemui/WidgetExpandHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/systemui/WidgetExpandHelper;->mSwipeHelper:Lcom/android/systemui/NotificationRowSwipeHelper;

    invoke-virtual {v0}, Lcom/android/systemui/NotificationRowSwipeHelper;->removeLongPressCallback()V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/WidgetExpandHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget v1, p0, Lcom/android/systemui/WidgetExpandHelper;->mInitTouchDown:F

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setTouchOffset(F)V

    .line 96
    iget-object v0, p0, Lcom/android/systemui/WidgetExpandHelper;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mWidgetNotificationDivider:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
