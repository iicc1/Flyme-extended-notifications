.class Lcom/android/systemui/statusbar/phone/wifi/WifiDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;)V
    .locals 0

    .prologue
    .line 138
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog$1;->this$0:Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v6, 0x7fffffff

    .line 141
    if-nez p2, :cond_1

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog$1;->this$0:Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;

    # getter for: Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mRssiTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->access$000(Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 143
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 144
    const-string v4, "newRssi"

    invoke-virtual {p2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 145
    .local v2, "rssi":I
    if-eq v2, v6, :cond_0

    .line 148
    const/4 v4, 0x4

    invoke-static {v2, v4}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    .line 149
    .local v0, "level":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 150
    .local v1, "resources":Landroid/content/res/Resources;
    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    .line 151
    const v4, 0x7f08000e

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 152
    .local v3, "signal":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog$1;->this$0:Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;

    # getter for: Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mRssiTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->access$000(Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;)Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 153
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog$1;->this$0:Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;

    # getter for: Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mRssiTextView:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->access$000(Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;)Landroid/widget/TextView;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v3, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "dBm)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
