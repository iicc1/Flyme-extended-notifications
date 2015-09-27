.class Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;
.super Landroid/database/ContentObserver;
.source "MyBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BrightnessObserver"
.end annotation


# instance fields
.field private final BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

.field private final BRIGHTNESS_MODE_URI:Landroid/net/Uri;

.field private final BRIGHTNESS_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;

    .line 78
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 65
    const-string v0, "screen_brightness_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    .line 68
    const-string v0, "screen_auto_brightness_adj"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    .line 71
    const-string v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    .line 79
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;->onChange(ZLandroid/net/Uri;)V

    .line 84
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 88
    if-eqz p1, :cond_1

    .line 106
    :cond_0
    return-void

    .line 90
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;

    # invokes: Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->updateMode()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->access$000(Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;)V

    .line 93
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;

    # invokes: Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->updateSlider()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->access$100(Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;)V

    .line 103
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;

    # getter for: Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->access$300(Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessStateChangeCallback;

    .line 104
    .local v0, "cb":Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessStateChangeCallback;
    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V

    goto :goto_1

    .line 94
    .end local v0    # "cb":Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessStateChangeCallback;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;

    # getter for: Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mAutomatic:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->access$200(Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 95
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;

    # invokes: Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->updateSlider()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->access$100(Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;)V

    goto :goto_0

    .line 96
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    invoke-virtual {v2, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;

    # getter for: Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mAutomatic:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->access$200(Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 97
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;

    # invokes: Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->updateSlider()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->access$100(Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;)V

    goto :goto_0

    .line 100
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;

    # invokes: Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->updateMode()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->access$000(Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;)V

    .line 101
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;

    # invokes: Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->updateSlider()V
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->access$100(Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;)V

    goto :goto_0
.end method

.method public startObserving()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 109
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;

    # getter for: Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->access$400(Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 110
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 111
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;->BRIGHTNESS_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 114
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;->BRIGHTNESS_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 117
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 120
    return-void
.end method

.method public stopObserving()V
    .locals 2

    .prologue
    .line 123
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;->this$0:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;

    # getter for: Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->access$400(Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 124
    .local v0, "cr":Landroid/content/ContentResolver;
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 125
    return-void
.end method
