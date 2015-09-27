.class final Lcom/android/systemui/floattouch/FloatTouch$MyBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FloatTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/floattouch/FloatTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/floattouch/FloatTouch;


# direct methods
.method private constructor <init>(Lcom/android/systemui/floattouch/FloatTouch;)V
    .locals 0

    .prologue
    .line 528
    iput-object p1, p0, Lcom/android/systemui/floattouch/FloatTouch$MyBroadcastReceiver;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/floattouch/FloatTouch;Lcom/android/systemui/floattouch/FloatTouch$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/floattouch/FloatTouch;
    .param p2, "x1"    # Lcom/android/systemui/floattouch/FloatTouch$1;

    .prologue
    .line 528
    invoke-direct {p0, p1}, Lcom/android/systemui/floattouch/FloatTouch$MyBroadcastReceiver;-><init>(Lcom/android/systemui/floattouch/FloatTouch;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 531
    const-string v2, "udpate_statusbar_extra"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 532
    .local v0, "keyguardShow":Z
    if-nez v0, :cond_1

    .line 533
    const-string v2, "keyguard"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 534
    .local v1, "km":Landroid/app/KeyguardManager;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 535
    iget-object v2, p0, Lcom/android/systemui/floattouch/FloatTouch$MyBroadcastReceiver;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    invoke-virtual {v2}, Lcom/android/systemui/floattouch/FloatTouch;->disableBackIfNeed()V

    .line 536
    iget-object v2, p0, Lcom/android/systemui/floattouch/FloatTouch$MyBroadcastReceiver;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    invoke-virtual {v2}, Lcom/android/systemui/floattouch/FloatTouch;->toVisible()V

    .line 547
    .end local v1    # "km":Landroid/app/KeyguardManager;
    :goto_0
    return-void

    .line 539
    .restart local v1    # "km":Landroid/app/KeyguardManager;
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/floattouch/FloatTouch$MyBroadcastReceiver;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    invoke-virtual {v2}, Lcom/android/systemui/floattouch/FloatTouch;->enableBackIfNeed()V

    goto :goto_0

    .line 543
    .end local v1    # "km":Landroid/app/KeyguardManager;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/floattouch/FloatTouch$MyBroadcastReceiver;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    invoke-virtual {v2}, Lcom/android/systemui/floattouch/FloatTouch;->disableBackIfNeed()V

    .line 544
    iget-object v2, p0, Lcom/android/systemui/floattouch/FloatTouch$MyBroadcastReceiver;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    invoke-virtual {v2}, Lcom/android/systemui/floattouch/FloatTouch;->toGone()V

    .line 545
    iget-object v2, p0, Lcom/android/systemui/floattouch/FloatTouch$MyBroadcastReceiver;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->mainTouchListener:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;
    invoke-static {v2}, Lcom/android/systemui/floattouch/FloatTouch;->access$900(Lcom/android/systemui/floattouch/FloatTouch;)Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;

    move-result-object v2

    # getter for: Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->detector:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyGestureDetector;
    invoke-static {v2}, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->access$1000(Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;)Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyGestureDetector;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyGestureDetector;->onUnLock()V

    goto :goto_0
.end method
