.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut$3;
.super Landroid/content/BroadcastReceiver;
.source "VpnShortCut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x0

    .line 215
    const-string v1, "vpn_state"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 218
    .local v0, "vpnState":I
    const-string v1, "VpnShortCut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MZ_ACTION_VPN_STATE_CHANGED received! -- vpnState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->mSBM:Landroid/app/StatusBarManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->access$200(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;)Landroid/app/StatusBarManager;

    move-result-object v1

    const-string v2, "vpn"

    const v3, 0xa0202d6

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    .line 224
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->mSBM:Landroid/app/StatusBarManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->access$200(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;)Landroid/app/StatusBarManager;

    move-result-object v1

    const-string v2, "vpn"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    .line 229
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->updateViews()V

    .line 231
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->onStateChange()V

    .line 232
    return-void

    .line 226
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->mSBM:Landroid/app/StatusBarManager;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->access$200(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;)Landroid/app/StatusBarManager;

    move-result-object v1

    const-string v2, "vpn"

    invoke-virtual {v1, v2, v5}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto :goto_0
.end method
