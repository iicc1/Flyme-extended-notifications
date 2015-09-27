.class public Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;
.super Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;
.source "WiFiShortCut.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/PhoneStatusBar$IOnAllPanelsCollapsedListener;


# instance fields
.field private mCurrentState:I

.field private mDescriptionArrow:Landroid/widget/ImageView;

.field private mNetDropdownWindow:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

.field private mOldOrientation:I

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

.field private mWiFiReceiver:Landroid/content/BroadcastReceiver;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    const/4 v0, -0x1

    .line 58
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;-><init>(Landroid/content/Context;)V

    .line 54
    iput v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mCurrentState:I

    .line 56
    iput v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mOldOrientation:I

    .line 321
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut$2;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mWiFiReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 60
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addOnAllPanelsCollapsedListener(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$IOnAllPanelsCollapsedListener;)V

    .line 61
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;)Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    return-object v0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mNetDropdownWindow:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mNetDropdownWindow:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->dismissWifiDialog()V

    .line 415
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mNetDropdownWindow:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mNetDropdownWindow:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->dismiss()V

    .line 418
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mNetDropdownWindow:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    .line 420
    :cond_1
    return-void
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 396
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 397
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 401
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 402
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 403
    const-string v1, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 404
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mWiFiReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 405
    return-void
.end method

.method private toggle()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 151
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 152
    .local v2, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 153
    .local v0, "state":I
    if-ne v0, v6, :cond_3

    .line 156
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    .line 157
    .local v1, "wifiApState":I
    const/16 v3, 0xc

    if-eq v1, v3, :cond_0

    const/16 v3, 0xd

    if-ne v1, v3, :cond_1

    .line 159
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 161
    :cond_1
    invoke-virtual {v2, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 166
    .end local v1    # "wifiApState":I
    :cond_2
    :goto_0
    return-void

    .line 163
    :cond_3
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 164
    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_0
.end method

.method private updateViewsAtFirstStart()V
    .locals 3

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->getDescriptionArrow()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 203
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 204
    .local v0, "state":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mCurrentState:I

    if-ne v1, v0, :cond_0

    .line 235
    :goto_0
    return-void

    .line 207
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 234
    :goto_1
    :pswitch_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mCurrentState:I

    goto :goto_0

    .line 209
    :pswitch_1
    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->setViewAlpha(F)V

    goto :goto_1

    .line 215
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->setVisibility(I)V

    .line 216
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->start()V

    goto :goto_1

    .line 224
    :pswitch_3
    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->setViewAlpha(F)V

    goto :goto_1

    .line 207
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected getDescriptionArrow()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mDescriptionArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-string v0, "WiFiShortCut"

    return-object v0
.end method

.method public onAllPanelsCollapsed()V
    .locals 0

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->dismissDialog()V

    .line 410
    return-void
.end method

.method protected onClickDescriptionArea(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 173
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-void

    .line 176
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v1

    .line 177
    .local v1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v1, :cond_0

    .line 180
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->dismissDialog()V

    .line 189
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mNetDropdownWindow:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    if-nez v2, :cond_2

    .line 190
    new-instance v2, Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mNetDropdownWindow:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    .line 192
    :cond_2
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 193
    .local v0, "location":[I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 194
    aget v2, v0, v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v0, v5

    .line 195
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mNetDropdownWindow:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->setShowPos([I)V

    .line 196
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mNetDropdownWindow:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->show()V

    goto :goto_0
.end method

.method protected onClickIcon(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onClickIcon(Landroid/view/View;)V

    .line 141
    sget-object v0, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->getToast()Lcom/android/systemui/statusbar/phone/widget/util/MyToast;

    move-result-object v0

    const v1, 0x7f0b00f5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/widget/util/MyToast;->show(II)V

    .line 147
    :goto_0
    return-void

    .line 146
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->toggle()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 428
    const-string v0, "WiFiShortCut"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged orientation old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mOldOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 431
    iget v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mOldOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 432
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mNetDropdownWindow:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mNetDropdownWindow:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->dismiss()V

    .line 435
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mOldOrientation:I

    .line 437
    :cond_1
    return-void
.end method

.method public onCreateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 71
    const v1, 0x7f040072

    const v2, 0x7f0200db

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->createViewFromResource(IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0b0016

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->setDescriptionLocaleStringFromRes(I)V

    .line 81
    const v1, 0x7f0e0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    .line 82
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut$1;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 117
    const v1, 0x7f0e0005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mDescriptionArrow:Landroid/widget/ImageView;

    .line 119
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->registerReceiver()V

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->updateViewsAtFirstStart()V

    .line 125
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mOldOrientation:I

    .line 126
    return-object v0
.end method

.method public onStateChange()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 308
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onStateChange()V

    .line 309
    iget v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mCurrentState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 311
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SystemUIMobEventUtils;->collectOnOffStateOfShortCut(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mCurrentState:I

    if-ne v0, v2, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SystemUIMobEventUtils;->collectOnOffStateOfShortCut(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public updateViews()V
    .locals 7

    .prologue
    const/4 v0, 0x1

    const v6, 0x3f4ccccd    # 0.8f

    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 240
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    .line 241
    .local v1, "state":I
    iget v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mCurrentState:I

    if-ne v3, v1, :cond_0

    .line 303
    :goto_0
    return-void

    .line 244
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 299
    const-string v2, "WiFiShortCut"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiManager.WIFI_STATE_UNKNOWN  state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_1
    :goto_1
    :pswitch_0
    iput v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mCurrentState:I

    goto :goto_0

    .line 246
    :pswitch_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->cancel()V

    .line 247
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->setVisibility(I)V

    .line 249
    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->setViewAlpha(F)V

    goto :goto_1

    .line 255
    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->setVisibility(I)V

    .line 256
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->start()V

    goto :goto_1

    .line 267
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_scan_always_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_2

    .line 270
    .local v0, "isScanAlways":Z
    :goto_2
    if-eqz v0, :cond_3

    .line 272
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->cancel()V

    .line 273
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->setVisibility(I)V

    .line 275
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->setViewAlpha(F)V

    goto :goto_1

    .end local v0    # "isScanAlways":Z
    :cond_2
    move v0, v2

    .line 267
    goto :goto_2

    .line 282
    .restart local v0    # "isScanAlways":Z
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->isStarted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 286
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->cancel()V

    .line 287
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->setVisibility(I)V

    .line 289
    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/WiFiShortCut;->setViewAlpha(F)V

    goto :goto_1

    .line 244
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
