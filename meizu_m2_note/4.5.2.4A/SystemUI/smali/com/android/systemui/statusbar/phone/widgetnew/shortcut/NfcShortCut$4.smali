.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut$4;
.super Landroid/content/BroadcastReceiver;
.source "NfcShortCut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->updateViews()V

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->onStateChange()V

    .line 213
    return-void
.end method
