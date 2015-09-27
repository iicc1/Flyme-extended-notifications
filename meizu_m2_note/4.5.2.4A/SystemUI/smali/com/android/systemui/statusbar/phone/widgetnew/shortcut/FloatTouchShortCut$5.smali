.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$5;
.super Landroid/database/ContentObserver;
.source "FloatTouchShortCut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$5;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 200
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$5;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->isOn:Z
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->access$400(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;)Z

    move-result v3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$5;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "mz_smart_touch_switch"

    const/4 v5, -0x2

    invoke-static {v2, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-eq v3, v2, :cond_2

    .line 202
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$5;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$5;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->isOn:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->access$400(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;)Z

    move-result v3

    if-nez v3, :cond_1

    :goto_1
    # setter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->isOn:Z
    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->access$402(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;Z)Z

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$5;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    # invokes: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->onSwitchChange()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->access$600(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;)V

    .line 208
    :goto_2
    return-void

    :cond_0
    move v2, v1

    .line 200
    goto :goto_0

    :cond_1
    move v0, v1

    .line 202
    goto :goto_1

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$5;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    # invokes: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->onSettingsChange()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->access$700(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;)V

    goto :goto_2
.end method
