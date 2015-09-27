.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$2;
.super Ljava/lang/Object;
.source "FloatTouchShortCut.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->onClickIcon(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

.field final synthetic val$floattouch:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;Landroid/content/SharedPreferences;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$2;->val$floattouch:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->mHelpDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->access$000(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->mHelpDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->access$000(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->mHelpDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->access$002(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 112
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$2;->val$floattouch:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "firsthelp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_smart_touch_switch"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    # invokes: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->notifiChange()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;)V

    .line 116
    :cond_0
    return-void
.end method
