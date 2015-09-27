.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$5;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .locals 0

    .prologue
    .line 804
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v7, 0x7f020433

    const/4 v6, 0x0

    .line 807
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 810
    .local v0, "action":Ljava/lang/String;
    const-string v3, "PhoneStatusBarView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "receive intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const-string v3, "meizu.intent.action.MEIZU_NFC_SHARE_ENABLED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 818
    const-string v3, "NfcShareEnabled"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 820
    .local v1, "nfcShareEnabled":Z
    const-string v3, "PhoneStatusBarView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent.MZ_ACTION_NFC_SHARE_ENABLED---nfcShareEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    if-eqz v1, :cond_3

    .line 823
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNfcShareTips:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 836
    .end local v1    # "nfcShareEnabled":Z
    :cond_0
    :goto_0
    const-string v3, "meizu.intent.action.MEIZU_NFC_SHARE_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 838
    const-string v3, "NfcShareState"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 840
    .local v2, "nfcShareState":Z
    const-string v3, "PhoneStatusBarView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent.MZ_ACTION_NFC_SHARE_STATE_CHANGED---nfcShareState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    if-eqz v2, :cond_4

    .line 844
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNfcShareTips:Landroid/view/View;

    const v4, 0x7f02040f

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 855
    .end local v2    # "nfcShareState":Z
    :cond_1
    :goto_1
    const-string v3, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 856
    const-string v3, "PhoneStatusBarView"

    const-string v4, "Intent.ACTION_USER_SWITCHED"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->toggleBatteryPercent()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$000(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    .line 858
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->toggleConnectionRate()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$100(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    .line 860
    :cond_2
    return-void

    .line 825
    .restart local v1    # "nfcShareEnabled":Z
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNfcShareTips:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 827
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNfcShareTips:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 847
    .end local v1    # "nfcShareEnabled":Z
    .restart local v2    # "nfcShareState":Z
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mNfcShareTips:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method
