.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$4;
.super Landroid/content/BroadcastReceiver;
.source "FloatTouchShortCut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

.field final synthetic val$fsdUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;Landroid/net/Uri;)V
    .locals 0

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$4;->val$fsdUri:Landroid/net/Uri;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, -0x2

    const/4 v0, 0x0

    .line 181
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->mHelpDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->access$000(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;)Landroid/app/AlertDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->mHelpDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->access$000(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;)Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 183
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    const/4 v2, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->mHelpDialog:Landroid/app/AlertDialog;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->access$002(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->mFSDObserver:Landroid/database/ContentObserver;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->access$300(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;)Landroid/database/ContentObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 186
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$4;->val$fsdUri:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->mFSDObserver:Landroid/database/ContentObserver;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->access$300(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;)Landroid/database/ContentObserver;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 187
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_smart_touch_switch"

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    # setter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->isOn:Z
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->access$402(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;Z)Z

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->isOn:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->access$400(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;)Z

    move-result v1

    # setter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->isUserOn:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->access$202(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;Z)Z

    .line 189
    const-string v0, "flag_change_SmartTouch"

    const-string v1, "re init for USER_SWITCHED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    # invokes: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->changeFloatTouch()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->access$500(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;)V

    .line 191
    return-void
.end method
