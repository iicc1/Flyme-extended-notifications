.class public Lcom/android/systemui/floattouch/FloatTouch;
.super Ljava/lang/Object;
.source "FloatTouch.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/floattouch/FloatTouch$MyBroadcastReceiver;,
        Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;,
        Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;
    }
.end annotation


# static fields
.field public static floatTouch:Lcom/android/systemui/floattouch/FloatTouch;


# instance fields
.field public behavior_alpha:I

.field public behavior_click:I

.field public behavior_doubleclick:I

.field public behavior_down:I

.field public behavior_leftright:I

.field public behavior_long:I

.field public behavior_up:I

.field private final context:Landroid/content/Context;

.field public defAlpha:F

.field private floatX:I

.field private floatY:I

.field private final handler:Landroid/os/Handler;

.field private lastImeTop:I

.field private final mStableShow:Lcom/android/systemui/floattouch/SmartTouchView;

.field private final mTopViewGroup:Landroid/view/ViewGroup;

.field private final mainTouchListener:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;

.field private final receiver:Lcom/android/systemui/floattouch/FloatTouch$MyBroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 602
    iput v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->behavior_click:I

    .line 603
    iput v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->behavior_doubleclick:I

    .line 604
    iput v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->behavior_long:I

    .line 605
    iput v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->behavior_up:I

    .line 606
    iput v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->behavior_down:I

    .line 607
    iput v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->behavior_leftright:I

    .line 608
    const/16 v1, 0xff

    iput v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->behavior_alpha:I

    .line 609
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->defAlpha:F

    .line 62
    iput-object p1, p0, Lcom/android/systemui/floattouch/FloatTouch;->context:Landroid/content/Context;

    .line 63
    new-instance v1, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;

    invoke-direct {v1, p0}, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;-><init>(Lcom/android/systemui/floattouch/FloatTouch;)V

    iput-object v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->handler:Landroid/os/Handler;

    .line 64
    new-instance v1, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;

    invoke-direct {v1, p0}, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;-><init>(Lcom/android/systemui/floattouch/FloatTouch;)V

    iput-object v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->mainTouchListener:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;

    .line 65
    const v1, 0x7f040016

    invoke-static {p1, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->mTopViewGroup:Landroid/view/ViewGroup;

    .line 66
    iget-object v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->mTopViewGroup:Landroid/view/ViewGroup;

    const v2, 0x7f0e00a1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/floattouch/SmartTouchView;

    iput-object v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->mStableShow:Lcom/android/systemui/floattouch/SmartTouchView;

    .line 67
    iget-object v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->mStableShow:Lcom/android/systemui/floattouch/SmartTouchView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/floattouch/SmartTouchView;->setScaleX(F)V

    .line 68
    iget-object v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->mStableShow:Lcom/android/systemui/floattouch/SmartTouchView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/floattouch/SmartTouchView;->setScaleY(F)V

    .line 69
    iget-object v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->mTopViewGroup:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/systemui/floattouch/FloatTouch;->mainTouchListener:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
    new-instance v1, Lcom/android/systemui/floattouch/FloatTouch$MyBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/systemui/floattouch/FloatTouch$MyBroadcastReceiver;-><init>(Lcom/android/systemui/floattouch/FloatTouch;Lcom/android/systemui/floattouch/FloatTouch$1;)V

    iput-object v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->receiver:Lcom/android/systemui/floattouch/FloatTouch$MyBroadcastReceiver;

    .line 72
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 73
    .local v0, "it":Landroid/content/IntentFilter;
    const-string v1, "com.meizu.keyguard.updatestatusbar"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->receiver:Lcom/android/systemui/floattouch/FloatTouch$MyBroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/floattouch/FloatTouch;->showFloatTouch()V

    .line 77
    iget-object v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->handler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 79
    iget-object v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->receiver:Lcom/android/systemui/floattouch/FloatTouch$MyBroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 81
    sput-object p0, Lcom/android/systemui/floattouch/FloatTouch;->floatTouch:Lcom/android/systemui/floattouch/FloatTouch;

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/floattouch/FloatTouch;->onSettingsChange()V

    .line 84
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/floattouch/FloatTouch;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/floattouch/FloatTouch;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch;->mTopViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/floattouch/FloatTouch;)Lcom/android/systemui/floattouch/SmartTouchView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/floattouch/FloatTouch;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch;->mStableShow:Lcom/android/systemui/floattouch/SmartTouchView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/floattouch/FloatTouch;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/floattouch/FloatTouch;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/systemui/floattouch/FloatTouch;->floatY:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/floattouch/FloatTouch;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/floattouch/FloatTouch;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/systemui/floattouch/FloatTouch;->floatY:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/floattouch/FloatTouch;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/floattouch/FloatTouch;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/floattouch/FloatTouch;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/systemui/floattouch/FloatTouch;->floatX:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/floattouch/FloatTouch;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/floattouch/FloatTouch;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/systemui/floattouch/FloatTouch;->floatX:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/floattouch/FloatTouch;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/floattouch/FloatTouch;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/systemui/floattouch/FloatTouch;->lastImeTop:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/floattouch/FloatTouch;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/floattouch/FloatTouch;
    .param p1, "x1"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/android/systemui/floattouch/FloatTouch;->lastImeTop:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/floattouch/FloatTouch;)Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/floattouch/FloatTouch;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch;->mainTouchListener:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/floattouch/WindowMoveHelper;->resetOnDestroy(Landroid/content/Context;)V

    .line 89
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->receiver:Lcom/android/systemui/floattouch/FloatTouch$MyBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/systemui/floattouch/FloatTouch;->dismissFloatTouch()V

    .line 91
    invoke-virtual {p0}, Lcom/android/systemui/floattouch/FloatTouch;->enableBackIfNeed()V

    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/floattouch/FloatTouch;->floatTouch:Lcom/android/systemui/floattouch/FloatTouch;

    .line 93
    return-void
.end method

.method public final disableBackIfNeed()V
    .locals 4

    .prologue
    .line 597
    iget v0, p0, Lcom/android/systemui/floattouch/FloatTouch;->behavior_click:I

    if-nez v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_float_touch_enable"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 600
    :cond_0
    return-void
.end method

.method final dismissFloatTouch()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch;->context:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->mTopViewGroup:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 165
    return-void
.end method

.method public final enableBackIfNeed()V
    .locals 4

    .prologue
    .line 591
    iget v0, p0, Lcom/android/systemui/floattouch/FloatTouch;->behavior_click:I

    if-nez v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_float_touch_enable"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 594
    :cond_0
    return-void
.end method

.method public final hide()V
    .locals 4

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/floattouch/FloatTouch$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/floattouch/FloatTouch$3;-><init>(Lcom/android/systemui/floattouch/FloatTouch;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/floattouch/FloatTouch$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/floattouch/FloatTouch$4;-><init>(Lcom/android/systemui/floattouch/FloatTouch;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 136
    return-void
.end method

.method public final isVisible()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch;->mTopViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final onLidChange(Z)V
    .locals 3
    .param p1, "isOn"    # Z

    .prologue
    .line 552
    if-nez p1, :cond_1

    .line 553
    iget-object v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->context:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 554
    .local v0, "km":Landroid/app/KeyguardManager;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/floattouch/FloatTouch;->toVisible()V

    .line 559
    .end local v0    # "km":Landroid/app/KeyguardManager;
    :cond_0
    :goto_0
    return-void

    .line 556
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/floattouch/FloatTouch;->toGone()V

    .line 557
    iget-object v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->mainTouchListener:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->detector:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyGestureDetector;
    invoke-static {v1}, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->access$1000(Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;)Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyGestureDetector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyGestureDetector;->onUnLock()V

    goto :goto_0
.end method

.method public final onSettingsChange()V
    .locals 8

    .prologue
    const/16 v7, 0xff

    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, -0x2

    .line 562
    iget-object v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 563
    .local v0, "mResolver":Landroid/content/ContentResolver;
    const-string v1, "mz_smart_touch_behavior_alpha"

    invoke-static {v0, v1, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->behavior_alpha:I

    .line 565
    const-string v1, "mz_smart_touch_behavior_click"

    invoke-static {v0, v1, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->behavior_click:I

    .line 567
    const-string v1, "mz_smart_touch_behavior_doubleclick"

    invoke-static {v0, v1, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->behavior_doubleclick:I

    .line 569
    const-string v1, "mz_smart_touch_behavior_long"

    invoke-static {v0, v1, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->behavior_long:I

    .line 571
    const-string v1, "mz_smart_touch_behavior_up"

    invoke-static {v0, v1, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->behavior_up:I

    .line 573
    const-string v1, "mz_smart_touch_behavior_down"

    invoke-static {v0, v1, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->behavior_down:I

    .line 575
    const-string v1, "mz_smart_touch_behavior_leftright"

    invoke-static {v0, v1, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->behavior_leftright:I

    .line 577
    const-string v4, "mz_float_touch_enable"

    iget v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->behavior_click:I

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    invoke-static {v0, v4, v1, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 580
    iget v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->behavior_doubleclick:I

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->behavior_down:I

    if-eqz v1, :cond_0

    .line 581
    iget-object v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/floattouch/WindowMoveHelper;->resetWindow(Landroid/content/Context;)V

    .line 584
    :cond_0
    iget v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->behavior_alpha:I

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v7, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->defAlpha:F

    .line 585
    iget-object v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 586
    iget-object v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->handler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 587
    iget-object v1, p0, Lcom/android/systemui/floattouch/FloatTouch;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 588
    return-void

    :cond_1
    move v1, v3

    .line 577
    goto :goto_0
.end method

.method final showFloatTouch()V
    .locals 7

    .prologue
    const v4, 0x7f0d00bb

    const/4 v6, 0x2

    .line 140
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e1

    invoke-direct {v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(I)V

    .line 142
    .local v2, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const-string v3, "SmartTouch"

    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 143
    const/4 v3, 0x1

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 144
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 145
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 147
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch;->context:Landroid/content/Context;

    const-string v4, "floattouch"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 148
    .local v1, "floattouch":Landroid/content/SharedPreferences;
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 149
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string v3, "position_x"

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v4, v4, 0x4

    div-int/lit8 v4, v4, 0x5

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/floattouch/FloatTouch;->floatX:I

    .line 150
    const/16 v3, 0x3c

    const-string v4, "position_y"

    iget v5, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v5, v5, 0x2

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/floattouch/FloatTouch;->floatY:I

    .line 152
    iget v3, p0, Lcom/android/systemui/floattouch/FloatTouch;->floatX:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 153
    iget v3, p0, Lcom/android/systemui/floattouch/FloatTouch;->floatY:I

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 154
    const v3, 0x800033

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 155
    const v3, 0x1000108

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 156
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch;->context:Landroid/content/Context;

    const-string v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iget-object v4, p0, Lcom/android/systemui/floattouch/FloatTouch;->mTopViewGroup:Landroid/view/ViewGroup;

    invoke-interface {v3, v4, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch;->handler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 159
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch;->handler:Landroid/os/Handler;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 160
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch;->handler:Landroid/os/Handler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 161
    return-void
.end method

.method public final toGone()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/floattouch/FloatTouch$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/floattouch/FloatTouch$1;-><init>(Lcom/android/systemui/floattouch/FloatTouch;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    return-void
.end method

.method public final toVisible()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/floattouch/FloatTouch$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/floattouch/FloatTouch$2;-><init>(Lcom/android/systemui/floattouch/FloatTouch;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 116
    return-void
.end method
