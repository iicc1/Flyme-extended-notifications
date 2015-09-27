.class public Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;
.super Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;
.source "BluetoothShortCut.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/PhoneStatusBar$IOnAllPanelsCollapsedListener;


# instance fields
.field private mBluetoothCachedDevices:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;

.field private mBluetoothPopupWindow:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

.field private mBluetoothVisibleDialog:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothVisibleDialog;

.field private mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBtReceiver:Landroid/content/BroadcastReceiver;

.field private mConnectingDevice:Landroid/bluetooth/BluetoothDevice;

.field private mCurrentState:I

.field private mDescriptionArrow:Landroid/widget/ImageView;

.field private mDescriptionDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceName:Ljava/lang/String;

.field private mOldOrientation:I

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    const/4 v1, -0x1

    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mDeviceName:Ljava/lang/String;

    .line 54
    iput v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mCurrentState:I

    .line 56
    iput v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mOldOrientation:I

    .line 274
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBtReceiver:Landroid/content/BroadcastReceiver;

    .line 60
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 61
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addOnAllPanelsCollapsedListener(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$IOnAllPanelsCollapsedListener;)V

    .line 63
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;)Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mCurrentState:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mConnectingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mConnectingDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;)Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBluetoothCachedDevices:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;)Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBluetoothCachedDevices:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mDescriptionDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mDescriptionDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mDeviceName:Ljava/lang/String;

    return-object p1
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 385
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 386
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 387
    const-string v1, "meizu.intent.action.DEVICE_CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 388
    const-string v1, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBtReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 390
    return-void
.end method

.method private toggle()V
    .locals 6

    .prologue
    .line 132
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v4, :cond_0

    .line 133
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 136
    .local v0, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    const/4 v2, 0x0

    .line 137
    .local v2, "result":Z
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v3

    .line 138
    .local v3, "state":I
    const/16 v4, 0xa

    if-ne v3, v4, :cond_2

    .line 140
    const/4 v2, 0x1

    .line 146
    :cond_1
    :goto_0
    move v1, v2

    .line 147
    .local v1, "desiredState":Z
    new-instance v4, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$2;

    invoke-direct {v4, p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$2;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;Z)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 158
    return-void

    .line 142
    .end local v1    # "desiredState":Z
    :cond_2
    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    .line 143
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateViewsAtFirstStart()V
    .locals 4

    .prologue
    const v3, 0x3e4ccccd    # 0.2f

    .line 180
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->getDescriptionArrow()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 182
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    .line 185
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->setViewAlpha(F)V

    .line 186
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mCurrentState:I

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 192
    .local v0, "state":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mCurrentState:I

    if-eq v1, v0, :cond_0

    .line 196
    packed-switch v0, :pswitch_data_0

    .line 219
    :goto_1
    :pswitch_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mCurrentState:I

    goto :goto_0

    .line 198
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->setViewAlpha(F)V

    goto :goto_1

    .line 205
    :pswitch_2
    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->setViewAlpha(F)V

    goto :goto_1

    .line 209
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->setVisibility(I)V

    .line 210
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->start()V

    goto :goto_1

    .line 196
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dismissBluetoothPopupWindow()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBluetoothPopupWindow:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBluetoothPopupWindow:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBluetoothPopupWindow:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->dismiss()V

    .line 418
    :cond_0
    return-void
.end method

.method public dismissBluetoothVisibleDialog()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBluetoothVisibleDialog:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothVisibleDialog;

    if-eqz v0, :cond_0

    .line 403
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBluetoothVisibleDialog:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothVisibleDialog;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothVisibleDialog;->dismiss()V

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBluetoothVisibleDialog:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothVisibleDialog;

    .line 406
    :cond_0
    return-void
.end method

.method protected getDescriptionArrow()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mDescriptionArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    const-string v0, "BluetoothShortCut"

    return-object v0
.end method

.method public onAllPanelsCollapsed()V
    .locals 0

    .prologue
    .line 397
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->dismissBluetoothVisibleDialog()V

    .line 398
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->dismissBluetoothPopupWindow()V

    .line 399
    return-void
.end method

.method protected onClickDescriptionArea(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 162
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v2, :cond_0

    .line 163
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 166
    .local v0, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_2

    .line 176
    :cond_1
    :goto_0
    return-void

    .line 170
    :cond_2
    new-instance v2, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBluetoothPopupWindow:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    .line 171
    const/4 v2, 0x2

    new-array v1, v2, [I

    .line 172
    .local v1, "location":[I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 173
    aget v2, v1, v5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v1, v5

    .line 174
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBluetoothPopupWindow:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->setShowPos([I)V

    .line 175
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBluetoothPopupWindow:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->show()V

    goto :goto_0
.end method

.method protected onClickIcon(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 113
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onClickIcon(Landroid/view/View;)V

    .line 115
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 116
    .local v0, "btAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "bluetooth_discoverability"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    .line 119
    .local v1, "discoverable":Z
    :goto_0
    if-nez v1, :cond_0

    .line 120
    new-instance v2, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothVisibleDialog;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothVisibleDialog;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBluetoothVisibleDialog:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothVisibleDialog;

    .line 121
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBluetoothVisibleDialog:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothVisibleDialog;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothVisibleDialog;->show()V

    .line 127
    .end local v1    # "discoverable":Z
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->toggle()V

    .line 128
    return-void

    .line 117
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 426
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 427
    const-string v0, "BluetoothShortCut"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged orientation old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mOldOrientation:I

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
    iget v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mOldOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    .line 430
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->dismissBluetoothVisibleDialog()V

    .line 431
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->dismissBluetoothPopupWindow()V

    .line 432
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mOldOrientation:I

    .line 434
    :cond_0
    return-void
.end method

.method public onCreateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 73
    const v1, 0x7f04006b

    const v2, 0x7f0200b5

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->createViewFromResource(IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 75
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0b0018

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->setDescriptionLocaleStringFromRes(I)V

    .line 81
    const v1, 0x7f0e0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    .line 82
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$1;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 100
    const v1, 0x7f0e0005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mDescriptionArrow:Landroid/widget/ImageView;

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->registerReceiver()V

    .line 104
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->updateViewsAtFirstStart()V

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mOldOrientation:I

    .line 108
    return-object v0
.end method

.method public onStateChange()V
    .locals 3

    .prologue
    .line 261
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onStateChange()V

    .line 262
    iget v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mCurrentState:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 264
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SystemUIMobEventUtils;->collectOnOffStateOfShortCut(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mCurrentState:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SystemUIMobEventUtils;->collectOnOffStateOfShortCut(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public updateViews()V
    .locals 3

    .prologue
    .line 235
    iget v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mCurrentState:I

    .line 236
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 256
    :goto_0
    :pswitch_0
    return-void

    .line 238
    :pswitch_1
    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->setViewAlpha(F)V

    goto :goto_0

    .line 245
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->setVisibility(I)V

    .line 246
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->start()V

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
