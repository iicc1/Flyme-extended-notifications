.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut$2;
.super Landroid/content/BroadcastReceiver;
.source "WiFiShortCut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x0

    const/4 v12, 0x4

    .line 325
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "action":Ljava/lang/String;
    const-string v8, "WiFiShortCut"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the action is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->access$000(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v7

    .line 328
    .local v7, "wifiState":I
    const-string v8, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 329
    const-string v8, "WiFiShortCut"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "current wifi state =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "wifi_state"

    const/16 v11, -0x65

    invoke-virtual {p2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  ,off=1  oning=2 on=3 offing=0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->updateViews()V

    .line 331
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->onStateChange()V

    .line 333
    const-string v8, "wifi_state"

    invoke-virtual {p2, v8, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 334
    .local v5, "state":I
    const/4 v8, 0x1

    if-ne v5, v8, :cond_0

    .line 336
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->getDescriptionArrow()Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 392
    .end local v5    # "state":I
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    const-string v8, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 340
    const-string v8, "networkInfo"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkInfo;

    .line 343
    .local v3, "networkInfo":Landroid/net/NetworkInfo;
    const-string v8, "wifiInfo"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v6

    check-cast v6, Landroid/net/wifi/WifiInfo;

    .line 346
    .local v6, "wifiInfo":Landroid/net/wifi/WifiInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    .line 347
    .local v5, "state":Landroid/net/NetworkInfo$DetailedState;
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v8, :cond_3

    .line 349
    const-string v8, "<unknown ssid>"

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 350
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->getDescription()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v6}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 353
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->getDescriptionArrow()Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 354
    :cond_3
    sget-object v8, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v5, v8, :cond_0

    .line 358
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->getDescription()Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->getDescriptionLocaleString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 361
    .end local v3    # "networkInfo":Landroid/net/NetworkInfo;
    .end local v5    # "state":Landroid/net/NetworkInfo$DetailedState;
    .end local v6    # "wifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_4
    const/4 v8, 0x3

    if-ne v7, v8, :cond_6

    const-string v8, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 363
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->access$000(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    .line 364
    .local v4, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_5

    .line 366
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->getDescriptionArrow()Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 369
    :cond_5
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->getDescriptionArrow()Landroid/widget/ImageView;

    move-result-object v8

    invoke-virtual {v8, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 371
    .end local v4    # "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_6
    const-string v8, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 372
    const-string v8, "newState"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/SupplicantState;

    .line 378
    .local v5, "state":Landroid/net/wifi/SupplicantState;
    :try_start_0
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v8}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->access$000(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;)Landroid/net/wifi/WifiManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 384
    .local v2, "mwifiInfo":Landroid/net/wifi/WifiInfo;
    sget-object v8, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    if-ne v5, v8, :cond_7

    const-string v8, "<unknown ssid>"

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 387
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->getDescription()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 379
    .end local v2    # "mwifiInfo":Landroid/net/wifi/WifiInfo;
    :catch_0
    move-exception v1

    .line 380
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v8, "WiFiShortCut"

    const-string v9, "SUPPLICANT_STATE_CHANGED_ACTION NullPointerException!!"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 388
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .restart local v2    # "mwifiInfo":Landroid/net/wifi/WifiInfo;
    :cond_7
    sget-object v8, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-ne v5, v8, :cond_0

    .line 389
    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->getDescription()Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->getDescriptionLocaleString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
