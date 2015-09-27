.class public Lcom/android/systemui/statusbar/phone/NetPopupWindow;
.super Landroid/app/Dialog;
.source "NetPopupWindow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;,
        Lcom/android/systemui/statusbar/phone/NetPopupWindow$Multimap;
    }
.end annotation


# instance fields
.field private allowUpdateList:Z

.field itemHeight:I

.field private mAccessPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mContext:Landroid/content/Context;

.field private mDialog:Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mIsNeedScroll2Head:Z

.field private mIsNetworkPadding:Z

.field private mLastInfo:Landroid/net/wifi/WifiInfo;

.field private mLastState:Landroid/net/NetworkInfo$DetailedState;

.field mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field mList:Landroid/widget/ListView;

.field private mNetListItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/wifi/NetListItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkPrefHelper:Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;

.field private mNeverTrue:Z

.field mPanel:Lcom/meizu/widget/LimitedHeightLinearLayout;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mScanner:Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;

.field private mSelectedAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

.field mServices:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mShowPos:[I

.field private mShowWifiList:Z

.field private mWifiEnabled:Z

.field mWifiFilter:Landroid/content/IntentFilter;

.field private mWifiListAdapter:Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;

.field private mWifiListCountLimit:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p3, "showWifiList"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 126
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mAccessPoints:Ljava/util/List;

    .line 81
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mNetListItem:Ljava/util/List;

    .line 83
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiListCountLimit:Z

    .line 95
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mIsNeedScroll2Head:Z

    .line 97
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->allowUpdateList:Z

    .line 99
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 117
    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mShowPos:[I

    .line 445
    new-instance v2, Lcom/android/systemui/statusbar/phone/NetPopupWindow$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow$5;-><init>(Lcom/android/systemui/statusbar/phone/NetPopupWindow;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 127
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mServices:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 131
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mNeverTrue:Z

    if-eqz v2, :cond_0

    .line 132
    new-instance v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mServices:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 135
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mContext:Landroid/content/Context;

    .line 136
    const v2, 0x7f040053

    invoke-static {p1, v2, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 139
    .local v0, "dropdown":Landroid/view/ViewGroup;
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mIsNetworkPadding:Z

    .line 140
    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mShowWifiList:Z

    .line 143
    const v2, 0x7f0e003f

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/LimitedHeightLinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mPanel:Lcom/meizu/widget/LimitedHeightLinearLayout;

    .line 145
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0091

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->itemHeight:I

    .line 148
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mPanel:Lcom/meizu/widget/LimitedHeightLinearLayout;

    if-eqz v2, :cond_1

    .line 160
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->setPanelMaxHeight()V

    .line 163
    :cond_1
    const v2, 0x7f0e0040

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mList:Landroid/widget/ListView;

    .line 170
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/Window;->requestFeature(I)Z

    .line 171
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0089

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 176
    const v2, 0x7f0e003e

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 177
    .local v1, "view":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 178
    new-instance v2, Lcom/android/systemui/statusbar/phone/NetPopupWindow$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow$1;-><init>(Lcom/android/systemui/statusbar/phone/NetPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 187
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiFilter:Landroid/content/IntentFilter;

    .line 188
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mShowWifiList:Z

    if-eqz v2, :cond_2

    .line 189
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 193
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 199
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 201
    new-instance v2, Lcom/android/systemui/statusbar/phone/NetPopupWindow$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow$2;-><init>(Lcom/android/systemui/statusbar/phone/NetPopupWindow;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 211
    new-instance v2, Lcom/android/systemui/statusbar/phone/NetPopupWindow$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow$3;-><init>(Lcom/android/systemui/statusbar/phone/NetPopupWindow;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 221
    new-instance v2, Lcom/android/systemui/statusbar/phone/NetPopupWindow$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow$4;-><init>(Lcom/android/systemui/statusbar/phone/NetPopupWindow;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 232
    new-instance v2, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mNetworkPrefHelper:Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;

    .line 233
    new-instance v2, Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;

    invoke-direct {v2, p0, v5}, Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;-><init>(Lcom/android/systemui/statusbar/phone/NetPopupWindow;Lcom/android/systemui/statusbar/phone/NetPopupWindow$1;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mScanner:Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;

    .line 234
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiFilter:Landroid/content/IntentFilter;

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 240
    return-void

    .line 197
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiFilter:Landroid/content/IntentFilter;

    const-string v3, "action.change.phonestatusview"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_0

    .line 117
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NetPopupWindow;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NetPopupWindow;
    .param p1, "x1"    # Landroid/content/Context;
    .param p2, "x2"    # Landroid/content/Intent;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NetPopupWindow;)Landroid/net/wifi/WifiManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/NetPopupWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NetPopupWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->allowUpdateList:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/NetPopupWindow;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private connectNetwork(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 816
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, p1, v2}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 821
    :goto_0
    return-void

    .line 817
    :catch_0
    move-exception v0

    .line 818
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private connectNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 825
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, p1, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 830
    :goto_0
    return-void

    .line 826
    :catch_0
    move-exception v0

    .line 827
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private constructAccessPoints()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 536
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 539
    .local v2, "accessPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;>;"
    new-instance v4, Lcom/android/systemui/statusbar/phone/NetPopupWindow$Multimap;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v15}, Lcom/android/systemui/statusbar/phone/NetPopupWindow$Multimap;-><init>(Lcom/android/systemui/statusbar/phone/NetPopupWindow;Lcom/android/systemui/statusbar/phone/NetPopupWindow$1;)V

    .line 541
    .local v4, "apMap":Lcom/android/systemui/statusbar/phone/NetPopupWindow$Multimap;, "Lcom/android/systemui/statusbar/phone/NetPopupWindow$Multimap<Ljava/lang/String;Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v6

    .line 542
    .local v6, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v6, :cond_0

    .line 543
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/WifiConfiguration;

    .line 544
    .local v5, "config":Landroid/net/wifi/WifiConfiguration;
    new-instance v1, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v15, v5}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V

    .line 545
    .local v1, "accessPoint":Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mLastInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 546
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    iget-object v15, v1, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v15, v1}, Lcom/android/systemui/statusbar/phone/NetPopupWindow$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 551
    .end local v1    # "accessPoint":Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;
    .end local v5    # "config":Landroid/net/wifi/WifiConfiguration;
    .end local v9    # "i$":Ljava/util/Iterator;
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v15}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v14

    .line 552
    .local v14, "results":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v14, :cond_5

    .line 553
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_1

    .line 554
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mShowWifiList:Z

    if-eqz v15, :cond_1

    .line 555
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->dismiss()V

    .line 558
    :cond_1
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_2
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;

    .line 559
    .local v13, "result":Landroid/net/wifi/ScanResult;
    iget-object v15, v13, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v15, :cond_2

    iget-object v15, v13, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_2

    .line 563
    const/4 v8, 0x0

    .line 564
    .local v8, "found":Z
    iget-object v15, v13, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, v15}, Lcom/android/systemui/statusbar/phone/NetPopupWindow$Multimap;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    .line 565
    .restart local v1    # "accessPoint":Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;
    invoke-virtual {v1, v13}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->update(Landroid/net/wifi/ScanResult;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 566
    const/4 v8, 0x1

    goto :goto_2

    .line 570
    .end local v1    # "accessPoint":Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;
    :cond_4
    if-nez v8, :cond_2

    .line 572
    iget-object v15, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v16, "WAPI-PSK"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 574
    iget-object v15, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v16, "WAPI-CERT"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 576
    iget-object v15, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v16, "EAP"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_2

    .line 580
    new-instance v1, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v1, v15, v13}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;-><init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V

    .line 581
    .restart local v1    # "accessPoint":Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    iget-object v15, v1, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->ssid:Ljava/lang/String;

    invoke-virtual {v4, v15, v1}, Lcom/android/systemui/statusbar/phone/NetPopupWindow$Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 586
    .end local v1    # "accessPoint":Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;
    .end local v8    # "found":Z
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v13    # "result":Landroid/net/wifi/ScanResult;
    :cond_5
    if-nez v14, :cond_6

    .line 587
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mShowWifiList:Z

    if-eqz v15, :cond_6

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->dismiss()V

    .line 592
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 593
    .local v11, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;>;"
    :cond_7
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_8

    .line 594
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    .line 595
    .local v3, "ap":Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->isInRange()Z

    move-result v15

    if-nez v15, :cond_7

    .line 596
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_3

    .line 601
    .end local v3    # "ap":Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;
    :cond_8
    new-instance v12, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-direct {v12, v15}, Ljava/util/ArrayList;-><init>(I)V

    .line 602
    .local v12, "origAccessPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;>;"
    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 604
    :try_start_0
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v12, v2

    .line 612
    .end local v12    # "origAccessPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;>;"
    :goto_4
    return-object v12

    .line 605
    .restart local v12    # "origAccessPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;>;"
    :catch_0
    move-exception v7

    .line 606
    .local v7, "e":Ljava/lang/ClassCastException;
    const-string v15, "NetPopupWindow"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "collection.sort exception;origAccessPoints="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 608
    .end local v7    # "e":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v7

    .line 609
    .local v7, "e":Ljava/lang/UnsupportedOperationException;
    const-string v15, "NetPopupWindow"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "collection.sort exception;origAccessPoints="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private constructMobileNetList()V
    .locals 5

    .prologue
    .line 386
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mShowWifiList:Z

    if-nez v2, :cond_2

    .line 389
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mNetworkPrefHelper:Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->getNetworkPrefList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 390
    .local v1, "networkPrefIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 391
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;

    .line 393
    .local v0, "item":Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mNetListItem:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 397
    .end local v0    # "item":Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->shouldDisableNetItem()Z

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mIsNetworkPadding:Z

    if-eqz v2, :cond_3

    .line 398
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mNetworkPrefHelper:Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->disableAllItem()V

    .line 404
    .end local v1    # "networkPrefIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;>;"
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiListAdapter:Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;

    if-nez v2, :cond_4

    .line 405
    new-instance v2, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mNetListItem:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiListAdapter:Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;

    .line 406
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiListAdapter:Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 410
    :goto_2
    return-void

    .line 400
    .restart local v1    # "networkPrefIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;>;"
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mNetworkPrefHelper:Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->enableAllItem()V

    goto :goto_1

    .line 408
    .end local v1    # "networkPrefIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;>;"
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiListAdapter:Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mNetListItem:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->setItems(Ljava/util/List;)V

    goto :goto_2
.end method

.method private constructNetList()V
    .locals 2

    .prologue
    .line 430
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mShowWifiList:Z

    if-eqz v0, :cond_0

    .line 432
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->constructWifiNetList()V

    .line 440
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->constructMobileNetList()V

    .line 441
    const-string v0, "NetPopupWindow"

    const-string v1, "constructNetList complete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    return-void

    .line 434
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mNetListItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method private constructWifiNetList()V
    .locals 9

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->constructAccessPoints()Ljava/util/List;

    move-result-object v5

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mAccessPoints:Ljava/util/List;

    .line 348
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mNetListItem:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 349
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mAccessPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 350
    .local v3, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;>;"
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mAccessPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    .line 351
    .local v0, "accessPointSize":I
    const/4 v1, 0x0

    .line 352
    .local v1, "iAddApCount":I
    const/4 v4, 0x1

    .line 355
    .local v4, "needAddMore":Z
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiListCountLimit:Z

    if-eqz v5, :cond_5

    .line 356
    sget-object v5, Landroid/os/BuildExt;->IS_MX3:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 357
    const/4 v1, 0x4

    .line 359
    const/4 v5, 0x5

    if-ne v0, v5, :cond_0

    .line 360
    const/4 v4, 0x0

    .line 361
    const/4 v1, 0x5

    .line 371
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    add-int/lit8 v2, v1, -0x1

    .end local v1    # "iAddApCount":I
    .local v2, "iAddApCount":I
    if-eqz v1, :cond_2

    .line 372
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mNetListItem:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v2

    .end local v2    # "iAddApCount":I
    .restart local v1    # "iAddApCount":I
    goto :goto_0

    .line 364
    :cond_1
    const/4 v1, 0x3

    .line 366
    const/4 v5, 0x4

    if-ne v0, v5, :cond_0

    .line 367
    const/4 v4, 0x0

    .line 368
    const/4 v1, 0x4

    goto :goto_0

    .end local v1    # "iAddApCount":I
    .restart local v2    # "iAddApCount":I
    :cond_2
    move v1, v2

    .line 374
    .end local v2    # "iAddApCount":I
    .restart local v1    # "iAddApCount":I
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v4, :cond_4

    .line 375
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mNetListItem:Ljava/util/List;

    new-instance v6, Lcom/android/systemui/statusbar/phone/wifi/TextViewItem;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mContext:Landroid/content/Context;

    const v8, 0x7f0b0149

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/phone/wifi/TextViewItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_4
    return-void

    .line 379
    :cond_5
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 380
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mNetListItem:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    .line 711
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 713
    .local v0, "action":Ljava/lang/String;
    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 714
    const-string v4, "wifi_state"

    const/4 v5, 0x4

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->updateWifiState(I)V

    .line 786
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    const-string v4, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android.net.wifi.CONFIGURED_NETWORKS_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 719
    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->allowUpdateList:Z

    if-ne v4, v6, :cond_0

    .line 721
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->updateAccessPoints()V

    .line 722
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->allowUpdateList:Z

    goto :goto_0

    .line 724
    :cond_3
    const-string v4, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 736
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_4

    .line 737
    const-string v4, "newState"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/SupplicantState;

    invoke-static {v4}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    .line 741
    :cond_4
    const-string v4, "supplicantError"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 742
    .local v1, "errorCode":I
    if-ne v1, v6, :cond_0

    goto :goto_0

    .line 750
    .end local v1    # "errorCode":I
    :cond_5
    const-string v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 751
    const-string v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkInfo;

    .line 753
    .local v2, "info":Landroid/net/NetworkInfo;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 754
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->updateAccessPoints()V

    .line 755
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 756
    .end local v2    # "info":Landroid/net/NetworkInfo;
    :cond_6
    const-string v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 757
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_0

    .line 779
    :cond_7
    const-string v4, "action.change.phonestatusview"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 780
    const-string v4, "phone_status"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 781
    .local v3, "status":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 783
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->constructNetList()V

    goto/16 :goto_0
.end method

.method private saveNetwork(Landroid/net/wifi/WifiConfiguration;)V
    .locals 3
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 807
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, p1, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 812
    :goto_0
    return-void

    .line 808
    :catch_0
    move-exception v0

    .line 809
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private setPanelMaxHeight()V
    .locals 14

    .prologue
    .line 974
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mContext:Landroid/content/Context;

    const-string v10, "window"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/WindowManager;

    .line 975
    .local v7, "wm":Landroid/view/WindowManager;
    invoke-interface {v7}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Display;->getHeight()I

    move-result v6

    .line 976
    .local v6, "screenHeight":I
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->itemHeight:I

    if-nez v9, :cond_0

    .line 977
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0091

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    iput v9, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->itemHeight:I

    .line 980
    :cond_0
    const-string v9, "NetPopupWindow"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "measure List height: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->itemHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", screen height: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mShowPos:[I

    const/4 v10, 0x1

    aget v8, v9, v10

    .line 983
    .local v8, "y_position":I
    sub-int v9, v6, v8

    add-int/lit8 v0, v9, -0x5

    .line 984
    .local v0, "heightToShow":I
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->itemHeight:I

    int-to-double v10, v9

    const-wide v12, 0x401b333333333333L    # 6.8

    mul-double/2addr v10, v12

    double-to-int v1, v10

    .line 985
    .local v1, "listHeightFromLine1":I
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->itemHeight:I

    int-to-double v10, v9

    const-wide/high16 v12, 0x4016000000000000L    # 5.5

    mul-double/2addr v10, v12

    double-to-int v2, v10

    .line 986
    .local v2, "listHeightFromLine2":I
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->itemHeight:I

    int-to-double v10, v9

    const-wide v12, 0x400e666666666666L    # 3.8

    mul-double/2addr v10, v12

    double-to-int v3, v10

    .line 989
    .local v3, "listHeightFromLine3":I
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->itemHeight:I

    int-to-double v10, v9

    const-wide/high16 v12, 0x4004000000000000L    # 2.5

    mul-double/2addr v10, v12

    double-to-int v4, v10

    .line 990
    .local v4, "listHeightLandscapeline1":I
    iget v9, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->itemHeight:I

    mul-int/lit8 v5, v9, 0x1

    .line 991
    .local v5, "listHeightLandscapeline2":I
    if-le v0, v1, :cond_2

    .line 992
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mPanel:Lcom/meizu/widget/LimitedHeightLinearLayout;

    invoke-virtual {v9, v1}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    .line 1002
    :cond_1
    :goto_0
    return-void

    .line 993
    :cond_2
    if-le v0, v2, :cond_3

    .line 994
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mPanel:Lcom/meizu/widget/LimitedHeightLinearLayout;

    invoke-virtual {v9, v2}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    goto :goto_0

    .line 995
    :cond_3
    if-le v0, v3, :cond_4

    .line 996
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mPanel:Lcom/meizu/widget/LimitedHeightLinearLayout;

    invoke-virtual {v9, v3}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    goto :goto_0

    .line 997
    :cond_4
    if-le v0, v4, :cond_5

    .line 998
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mPanel:Lcom/meizu/widget/LimitedHeightLinearLayout;

    invoke-virtual {v9, v4}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    goto :goto_0

    .line 999
    :cond_5
    if-le v0, v5, :cond_1

    .line 1000
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mPanel:Lcom/meizu/widget/LimitedHeightLinearLayout;

    invoke-virtual {v9, v5}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    goto :goto_0
.end method

.method private shouldDisableNetItem()Z
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 413
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 415
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    .line 418
    .local v0, "isAirplaneMode":Z
    :goto_0
    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    if-eq v4, v6, :cond_0

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    if-ne v4, v6, :cond_1

    :cond_0
    if-eqz v0, :cond_3

    .line 423
    :cond_1
    :goto_1
    return v2

    .end local v0    # "isAirplaneMode":Z
    :cond_2
    move v0, v3

    .line 415
    goto :goto_0

    .restart local v0    # "isAirplaneMode":Z
    :cond_3
    move v2, v3

    .line 423
    goto :goto_1
.end method

.method private showDialog(Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;Z)V
    .locals 2
    .param p1, "accessPoint"    # Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;
    .param p2, "edit"    # Z

    .prologue
    .line 491
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->dismissWifiDialog()V

    .line 492
    new-instance v0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;Z)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mDialog:Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;

    .line 493
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mDialog:Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->show()V

    .line 494
    return-void
.end method

.method private updateAccessPoints()V
    .locals 2

    .prologue
    .line 620
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 622
    .local v0, "wifiState":I
    packed-switch v0, :pswitch_data_0

    .line 638
    :goto_0
    :pswitch_0
    return-void

    .line 625
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->constructNetList()V

    goto :goto_0

    .line 622
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateConnectionState(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 4
    .param p1, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    .line 642
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 643
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mScanner:Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;->pause()V

    .line 667
    :goto_0
    return-void

    .line 647
    :cond_0
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_2

    .line 648
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mScanner:Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;->pause()V

    .line 653
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 654
    if-eqz p1, :cond_1

    .line 655
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 658
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mAccessPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_2
    if-ltz v0, :cond_3

    .line 659
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mAccessPoints:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mLastInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V

    .line 658
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 650
    .end local v0    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mScanner:Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;->resume()V

    goto :goto_1

    .line 662
    .restart local v0    # "i":I
    :cond_3
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    if-ne p1, v1, :cond_4

    .line 663
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mList:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 666
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiListAdapter:Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private updateWifiState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 671
    packed-switch p1, :pswitch_data_0

    .line 704
    :goto_0
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mLastInfo:Landroid/net/wifi/WifiInfo;

    .line 705
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mLastState:Landroid/net/NetworkInfo$DetailedState;

    .line 706
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mScanner:Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;->pause()V

    .line 707
    :goto_1
    return-void

    .line 683
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mScanner:Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;->resume()V

    .line 687
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiEnabled:Z

    .line 688
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->updateAccessPoints()V

    goto :goto_1

    .line 692
    :pswitch_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiEnabled:Z

    goto :goto_0

    .line 696
    :pswitch_2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiEnabled:Z

    goto :goto_0

    .line 699
    :pswitch_3
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiEnabled:Z

    .line 700
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mPanel:Lcom/meizu/widget/LimitedHeightLinearLayout;

    const/16 v1, 0x226

    invoke-virtual {v0, v1}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    goto :goto_0

    .line 671
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private writeLogFile(Ljava/lang/String;)V
    .locals 6
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 958
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "/data/statusbar_netmode.log"

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 964
    .local v2, "pFile":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 965
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 966
    .local v1, "nowDate":Ljava/util/Date;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/RandomAccessFile;->writeBytes(Ljava/lang/String;)V

    .line 967
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 971
    .end local v1    # "nowDate":Ljava/util/Date;
    .end local v2    # "pFile":Ljava/io/RandomAccessFile;
    :goto_0
    return-void

    .line 959
    :catch_0
    move-exception v0

    .line 960
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 968
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "pFile":Ljava/io/RandomAccessFile;
    :catch_1
    move-exception v0

    .line 969
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 462
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 463
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mScanner:Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;->pause()V

    .line 465
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    :goto_0
    return-void

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public dismissWifiDialog()V
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mDialog:Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;

    if-eqz v0, :cond_0

    .line 498
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mDialog:Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->dismiss()V

    .line 499
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mDialog:Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;

    .line 501
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    .line 244
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 245
    .local v0, "down":Z
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 256
    invoke-super {p0, p1}, Landroid/app/Dialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_1
    return v1

    .line 244
    .end local v0    # "down":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 247
    .restart local v0    # "down":Z
    :pswitch_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mServices:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v2, :cond_1

    .line 248
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mServices:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels()V

    goto :goto_1

    .line 250
    :cond_1
    const-string v2, "NetPopupWindow"

    const-string v3, "PhoneStatusBar is null, can not call animateCollapsePanels"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 245
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method forget()V
    .locals 4

    .prologue
    .line 799
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mSelectedAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->networkId:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    :goto_0
    return-void

    .line 800
    :catch_0
    move-exception v0

    .line 801
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 456
    invoke-super {p0}, Landroid/app/Dialog;->hide()V

    .line 457
    const-string v0, "NetPopupWindow"

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 833
    const/4 v1, -0x3

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mSelectedAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    if-eqz v1, :cond_2

    .line 834
    const-string v1, "NetPopupWindow"

    const-string v2, "forget a network"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->forget()V

    .line 865
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mDialog:Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mDialog:Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 866
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mDialog:Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->hideSoftInput()V

    .line 868
    :cond_1
    return-void

    .line 836
    :cond_2
    if-ne p2, v2, :cond_6

    .line 837
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mDialog:Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 839
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_3

    .line 840
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mSelectedAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mSelectedAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->networkId:I

    if-eq v1, v2, :cond_0

    .line 842
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mIsNeedScroll2Head:Z

    .line 843
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mSelectedAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->networkId:I

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->connectNetwork(I)V

    .line 844
    const-string v1, "NetPopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect saved ap id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mSelectedAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    iget v3, v3, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->networkId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 846
    :cond_3
    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-eq v1, v2, :cond_4

    .line 847
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mSelectedAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    if-eqz v1, :cond_0

    .line 848
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 849
    const-string v1, "NetPopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "saveNetwork ssid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 852
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mDialog:Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->edit:Z

    if-eqz v1, :cond_5

    .line 853
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->saveNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 854
    const-string v1, "NetPopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDialog.edit saveNetwork ssid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 856
    :cond_5
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mIsNeedScroll2Head:Z

    .line 857
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->connectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 858
    const-string v1, "NetPopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connect a new ap ssid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 862
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :cond_6
    const/4 v1, -0x2

    if-ne p2, v1, :cond_0

    goto/16 :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 907
    const-string v6, "NetPopupWindow"

    const-string v7, "onItemClick"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mNetListItem:Ljava/util/List;

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 910
    .local v2, "currentObject":Ljava/lang/Object;
    instance-of v6, v2, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    if-eqz v6, :cond_6

    .line 911
    check-cast v2, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    .end local v2    # "currentObject":Ljava/lang/Object;
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mSelectedAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    .line 912
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mSelectedAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->ssid:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 953
    :cond_0
    :goto_0
    return-void

    .line 915
    :cond_1
    const-string v6, "NetPopupWindow"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onItemClick mSelectedAccessPoint:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mSelectedAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    iget-object v8, v8, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->ssid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mSelectedAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v6

    if-eqz v6, :cond_2

    move v0, v4

    .line 917
    .local v0, "bConnectConfiged":Z
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mSelectedAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->getState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    if-eqz v6, :cond_3

    move v1, v4

    .line 918
    .local v1, "bIsActive":Z
    :goto_2
    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 919
    const-string v5, "NetPopupWindow"

    const-string v6, "connectDirectly configured"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mIsNeedScroll2Head:Z

    .line 921
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mSelectedAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->networkId:I

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->connectNetwork(I)V

    .line 932
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->dismiss()V

    goto :goto_0

    .end local v0    # "bConnectConfiged":Z
    .end local v1    # "bIsActive":Z
    :cond_2
    move v0, v5

    .line 916
    goto :goto_1

    .restart local v0    # "bConnectConfiged":Z
    :cond_3
    move v1, v5

    .line 917
    goto :goto_2

    .line 922
    .restart local v1    # "bIsActive":Z
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mSelectedAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    iget v6, v6, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->security:I

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mSelectedAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    iget v6, v6, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->networkId:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    .line 924
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mSelectedAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->generateOpenNetworkConfig()V

    .line 925
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mIsNeedScroll2Head:Z

    .line 926
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mSelectedAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->connectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    .line 927
    const-string v4, "NetPopupWindow"

    const-string v5, "connectDirectly opend"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 929
    :cond_5
    const-string v4, "NetPopupWindow"

    const-string v6, "show config dialog"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mSelectedAccessPoint:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    invoke-direct {p0, v4, v5}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->showDialog(Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;Z)V

    goto :goto_3

    .line 933
    .end local v0    # "bConnectConfiged":Z
    .end local v1    # "bIsActive":Z
    .restart local v2    # "currentObject":Ljava/lang/Object;
    :cond_6
    instance-of v4, v2, Lcom/android/systemui/statusbar/phone/wifi/TextViewItem;

    if-eqz v4, :cond_7

    .line 934
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiListCountLimit:Z

    .line 935
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->constructNetList()V

    .line 936
    const-string v4, "NetPopupWindow"

    const-string v5, "TextViewItem"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 937
    :cond_7
    instance-of v4, v2, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 938
    check-cast v3, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;

    .line 939
    .local v3, "item":Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mIsNetworkPadding:Z

    if-nez v4, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->shouldDisableNetItem()Z

    move-result v4

    if-nez v4, :cond_0

    .line 942
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mNetworkPrefHelper:Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->getCheckedItem()Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;

    move-result-object v4

    if-eq v3, v4, :cond_8

    .line 944
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mNetworkPrefHelper:Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->setChecked(Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;)V

    .line 945
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiListAdapter:Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->notifyDataSetChanged()V

    .line 946
    iget-object v4, v3, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;->title:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->writeLogFile(Ljava/lang/String;)V

    .line 947
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/SystemUIMobEventUtils;->collectClickNetworkPrefHelper(Landroid/content/Context;)V

    .line 949
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->dismiss()V

    .line 950
    const-string v4, "NetPopupWindow"

    const-string v5, "CheckBoxItem"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 339
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 340
    const-string v0, "NetPopupWindow"

    const-string v1, "onStop===================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mScanner:Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mScanner:Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;->pause()V

    .line 344
    :cond_0
    return-void
.end method

.method public setShowPos([I)V
    .locals 0
    .param p1, "pos"    # [I

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mShowPos:[I

    .line 262
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 267
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v0, v2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 268
    .local v0, "anim":I
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 283
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mShowPos:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 308
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mPanel:Lcom/meizu/widget/LimitedHeightLinearLayout;

    if-eqz v2, :cond_0

    .line 310
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->setPanelMaxHeight()V

    .line 312
    :cond_0
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 313
    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 314
    const/16 v2, 0x7de

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 315
    const v2, 0x1021300

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 321
    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 322
    const/16 v2, 0x31

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 323
    const-string v2, "status_net_drop_down"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 324
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 325
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 326
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 329
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mWifiListCountLimit:Z

    .line 330
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->constructNetList()V

    .line 331
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 332
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mShowWifiList:Z

    if-eqz v2, :cond_1

    .line 333
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->mScanner:Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NetPopupWindow$Scanner;->resume()V

    .line 335
    :cond_1
    return-void
.end method
