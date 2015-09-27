.class Lcom/android/systemui/nfc/MzNfcP2pNotiView$1;
.super Landroid/content/BroadcastReceiver;
.source "MzNfcP2pNotiView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/nfc/MzNfcP2pNotiView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/nfc/MzNfcP2pNotiView;


# direct methods
.method constructor <init>(Lcom/android/systemui/nfc/MzNfcP2pNotiView;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView$1;->this$0:Lcom/android/systemui/nfc/MzNfcP2pNotiView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x2

    .line 167
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "action":Ljava/lang/String;
    const/4 v1, 0x0

    .line 169
    .local v1, "state":I
    const-string v2, "mz.android.nfc.action.MZ_NFC_P2P_STATE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 170
    const-string v2, "mz.android.nfc.extra.MZ_NFC_P2P_STATE"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 171
    iget-object v2, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView$1;->this$0:Lcom/android/systemui/nfc/MzNfcP2pNotiView;

    # invokes: Lcom/android/systemui/nfc/MzNfcP2pNotiView;->handleBtNfcp2pState(I)V
    invoke-static {v2, v1}, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->access$000(Lcom/android/systemui/nfc/MzNfcP2pNotiView;I)V

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 172
    :cond_1
    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    const-string v2, "android.bluetooth.adapter.extra.STATE"

    const/high16 v3, -0x80000000

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 174
    iget-object v2, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView$1;->this$0:Lcom/android/systemui/nfc/MzNfcP2pNotiView;

    # invokes: Lcom/android/systemui/nfc/MzNfcP2pNotiView;->handleBtNfcp2pState(I)V
    invoke-static {v2, v1}, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->access$000(Lcom/android/systemui/nfc/MzNfcP2pNotiView;I)V

    goto :goto_0

    .line 175
    :cond_2
    const-string v2, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 176
    const-string v2, "android.nfc.extra.ADAPTER_STATE"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 177
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView$1;->this$0:Lcom/android/systemui/nfc/MzNfcP2pNotiView;

    # getter for: Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->access$100(Lcom/android/systemui/nfc/MzNfcP2pNotiView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView$1;->this$0:Lcom/android/systemui/nfc/MzNfcP2pNotiView;

    # getter for: Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->access$100(Lcom/android/systemui/nfc/MzNfcP2pNotiView;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 180
    :cond_3
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 181
    iget-object v2, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView$1;->this$0:Lcom/android/systemui/nfc/MzNfcP2pNotiView;

    # getter for: Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mConnectedTxt:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->access$200(Lcom/android/systemui/nfc/MzNfcP2pNotiView;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 182
    iget-object v2, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView$1;->this$0:Lcom/android/systemui/nfc/MzNfcP2pNotiView;

    # getter for: Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mConnectedTxt:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->access$200(Lcom/android/systemui/nfc/MzNfcP2pNotiView;)Landroid/widget/TextView;

    move-result-object v2

    const v3, 0x7f0b00dd

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 185
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    goto :goto_0

    .line 192
    :cond_5
    # getter for: Lcom/android/systemui/nfc/MzNfcP2pNotiView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknow action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
