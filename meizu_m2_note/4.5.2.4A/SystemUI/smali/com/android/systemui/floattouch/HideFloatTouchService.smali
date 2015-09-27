.class public Lcom/android/systemui/floattouch/HideFloatTouchService;
.super Landroid/app/IntentService;
.source "HideFloatTouchService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    const-string v0, "HideSmartTouch"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 14
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 18
    sget-object v0, Lcom/android/systemui/floattouch/FloatTouch;->floatTouch:Lcom/android/systemui/floattouch/FloatTouch;

    if-eqz v0, :cond_0

    .line 19
    const-string v0, "SmartTouch"

    const-string v1, "hide when screenshot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    sget-object v0, Lcom/android/systemui/floattouch/FloatTouch;->floatTouch:Lcom/android/systemui/floattouch/FloatTouch;

    invoke-virtual {v0}, Lcom/android/systemui/floattouch/FloatTouch;->hide()V

    .line 22
    :cond_0
    return-void
.end method
