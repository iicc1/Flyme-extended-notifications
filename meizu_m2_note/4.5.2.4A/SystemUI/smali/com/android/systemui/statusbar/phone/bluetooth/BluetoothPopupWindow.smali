.class public Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;
.super Landroid/app/Dialog;
.source "BluetoothPopupWindow.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$ConstructBluetoothListThread;,
        Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;
    }
.end annotation


# static fields
.field private static CONSTRUCT_THREAD_SLEEP:I

.field private static bondingDevice:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;


# instance fields
.field private firstSetPanelHeight:Z

.field private mBluetoothCachedDevices:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;

.field mBluetoothDevice:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;",
            ">;"
        }
    .end annotation
.end field

.field mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mConstructCount:I

.field mConstructThread:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$ConstructBluetoothListThread;

.field private mContext:Landroid/content/Context;

.field private mDismissProgressBarHandler:Landroid/os/Handler;

.field private mDismissProgressBarThread:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;

.field mHeaderView:Landroid/view/View;

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

.field mPanel:Lcom/meizu/widget/LimitedHeightLinearLayout;

.field private mPreSearching:Z

.field mProgressBar:Lcom/meizu/common/widget/LoadingView;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverMsgHandler:Landroid/os/Handler;

.field mServices:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mShowPos:[I

.field private mWifiListAdapter:Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->bondingDevice:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;

    .line 92
    const/16 v0, 0x5dc

    sput v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->CONSTRUCT_THREAD_SLEEP:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .param p3, "showWifiList"    # Z

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 129
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mBluetoothDevice:Ljava/util/ArrayList;

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mNetListItem:Ljava/util/List;

    .line 86
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->firstSetPanelHeight:Z

    .line 87
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mShowPos:[I

    .line 91
    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mConstructThread:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$ConstructBluetoothListThread;

    .line 93
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mConstructCount:I

    .line 98
    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mDismissProgressBarThread:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;

    .line 99
    new-instance v2, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$1;-><init>(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mDismissProgressBarHandler:Landroid/os/Handler;

    .line 324
    new-instance v2, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$3;-><init>(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 391
    new-instance v2, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$4;-><init>(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mReceiverMsgHandler:Landroid/os/Handler;

    .line 130
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mServices:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 131
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mContext:Landroid/content/Context;

    .line 132
    const v2, 0x7f040003

    invoke-static {p1, v2, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 136
    .local v0, "dropdown":Landroid/view/ViewGroup;
    const v2, 0x7f0e003f

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/widget/LimitedHeightLinearLayout;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mPanel:Lcom/meizu/widget/LimitedHeightLinearLayout;

    .line 137
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mPanel:Lcom/meizu/widget/LimitedHeightLinearLayout;

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mPanel:Lcom/meizu/widget/LimitedHeightLinearLayout;

    const/16 v3, 0x498

    invoke-virtual {v2, v3}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    .line 142
    :cond_0
    const v2, 0x7f0e0040

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mList:Landroid/widget/ListView;

    .line 146
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040004

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mHeaderView:Landroid/view/View;

    .line 148
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mHeaderView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 149
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mHeaderView:Landroid/view/View;

    const v3, 0x7f0e0041

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/widget/LoadingView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mProgressBar:Lcom/meizu/common/widget/LoadingView;

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 153
    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0089

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    const v2, 0x7f0e003e

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 159
    .local v1, "view":Landroid/view/View;
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 160
    new-instance v2, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$2;-><init>(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mList:Landroid/widget/ListView;

    invoke-virtual {v2, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 171
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 172
    new-instance v2, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mBluetoothCachedDevices:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;

    .line 173
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mBluetoothCachedDevices:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->getBluetoothDeviceList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mBluetoothDevice:Ljava/util/ArrayList;

    .line 175
    new-instance v2, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mNetListItem:Ljava/util/List;

    invoke-direct {v2, v3, v4}, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mWifiListAdapter:Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;

    .line 176
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mList:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mWifiListAdapter:Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mDismissProgressBarThread:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;)Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mDismissProgressBarThread:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mDismissProgressBarHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mConstructCount:I

    return v0
.end method

.method static synthetic access$1010(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    .prologue
    .line 63
    iget v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mConstructCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mConstructCount:I

    return v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .prologue
    .line 63
    sget v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->CONSTRUCT_THREAD_SLEEP:I

    return v0
.end method

.method static synthetic access$1102(I)I
    .locals 0
    .param p0, "x0"    # I

    .prologue
    .line 63
    sput p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->CONSTRUCT_THREAD_SLEEP:I

    return p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mReceiverMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->isDeviceExist(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->notifyConstructBluetoothList()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mPreSearching:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mPreSearching:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mBluetoothCachedDevices:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->constructBluetoothList()V

    return-void
.end method

.method private addBondDeviceToList()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mBluetoothCachedDevices:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->addBondDeviceToList()V

    .line 309
    return-void
.end method

.method private constructBluetoothList()V
    .locals 4

    .prologue
    .line 280
    const-string v1, "BluetoothPopupWindow"

    const-string v2, "constructBluetoothList"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->sortBluetoothList()V

    .line 283
    monitor-enter p0

    .line 284
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mNetListItem:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 286
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mBluetoothDevice:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 287
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mNetListItem:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 292
    .end local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 291
    .restart local v0    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;>;"
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mWifiListAdapter:Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mNetListItem:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->setItems(Ljava/util/List;)V

    .line 292
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 293
    const-string v1, "BluetoothPopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BT list size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mNetListItem:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mNetListItem:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->firstSetPanelHeight:Z

    if-eqz v1, :cond_1

    .line 297
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->setPanelMaxHeight()V

    .line 298
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->firstSetPanelHeight:Z

    .line 300
    :cond_1
    return-void
.end method

.method private initBluetoothList()V
    .locals 4

    .prologue
    .line 258
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->addBondDeviceToList()V

    .line 259
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mPreSearching:Z

    .line 261
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 263
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mPreSearching:Z

    .line 270
    :goto_0
    new-instance v1, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$ConstructBluetoothListThread;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$ConstructBluetoothListThread;-><init>(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mConstructThread:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$ConstructBluetoothListThread;

    .line 271
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mConstructThread:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$ConstructBluetoothListThread;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$ConstructBluetoothListThread;->start()V

    .line 272
    return-void

    .line 266
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mReceiverMsgHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 267
    .local v0, "msg1":Landroid/os/Message;
    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    .line 268
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mReceiverMsgHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private isDeviceExist(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mBluetoothCachedDevices:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->isDeviceExist(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method private notifyConstructBluetoothList()V
    .locals 2

    .prologue
    .line 275
    const-string v0, "BluetoothPopupWindow"

    const-string v1, "notifyConstructBluetoothList"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mReceiverMsgHandler:Landroid/os/Handler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 277
    return-void
.end method

.method private setPanelMaxHeight()V
    .locals 18

    .prologue
    .line 186
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mWifiListAdapter:Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mList:Landroid/widget/ListView;

    move-object/from16 v17, v0

    invoke-virtual/range {v14 .. v17}, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 187
    .local v10, "listItem":Landroid/view/View;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v10, v14, v15}, Landroid/view/View;->measure(II)V

    .line 188
    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 190
    .local v3, "itemHeight":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mContext:Landroid/content/Context;

    const-string v15, "window"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 191
    .local v12, "wm":Landroid/view/WindowManager;
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v14

    invoke-virtual {v14}, Landroid/view/Display;->getHeight()I

    move-result v11

    .line 192
    .local v11, "screenHeight":I
    const-string v14, "BluetoothPopupWindow"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "measure List height: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", screen height: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mShowPos:[I

    const/4 v15, 0x1

    aget v13, v14, v15

    .line 195
    .local v13, "y_position":I
    sub-int v14, v11, v13

    add-int/lit8 v2, v14, -0x5

    .line 196
    .local v2, "heightToShow":I
    mul-int/lit8 v4, v3, 0x7

    .line 197
    .local v4, "listHeightFromLine1":I
    int-to-double v14, v3

    const-wide/high16 v16, 0x4016000000000000L    # 5.5

    mul-double v14, v14, v16

    double-to-int v5, v14

    .line 198
    .local v5, "listHeightFromLine2":I
    mul-int/lit8 v6, v3, 0x4

    .line 201
    .local v6, "listHeightFromLine3":I
    mul-int/lit8 v7, v3, 0x3

    .line 202
    .local v7, "listHeightLandscapeline1":I
    mul-int/lit8 v8, v3, 0x2

    .line 203
    .local v8, "listHeightLandscapeline2":I
    mul-int/lit8 v9, v3, 0x1

    .line 205
    .local v9, "listHeightLandscapeline3":I
    if-le v2, v4, :cond_1

    .line 206
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mPanel:Lcom/meizu/widget/LimitedHeightLinearLayout;

    invoke-virtual {v14, v4}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    .line 218
    :cond_0
    :goto_0
    return-void

    .line 207
    :cond_1
    if-le v2, v5, :cond_2

    .line 208
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mPanel:Lcom/meizu/widget/LimitedHeightLinearLayout;

    invoke-virtual {v14, v5}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    goto :goto_0

    .line 209
    :cond_2
    if-le v2, v6, :cond_3

    .line 210
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mPanel:Lcom/meizu/widget/LimitedHeightLinearLayout;

    invoke-virtual {v14, v6}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    goto :goto_0

    .line 211
    :cond_3
    if-le v2, v7, :cond_4

    .line 212
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mPanel:Lcom/meizu/widget/LimitedHeightLinearLayout;

    invoke-virtual {v14, v7}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    goto :goto_0

    .line 213
    :cond_4
    if-le v2, v8, :cond_5

    .line 214
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mPanel:Lcom/meizu/widget/LimitedHeightLinearLayout;

    invoke-virtual {v14, v8}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    goto :goto_0

    .line 215
    :cond_5
    if-le v2, v9, :cond_0

    .line 216
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mPanel:Lcom/meizu/widget/LimitedHeightLinearLayout;

    invoke-virtual {v14, v9}, Lcom/meizu/widget/LimitedHeightLinearLayout;->setMaxHeight(I)V

    goto :goto_0
.end method

.method private sortBluetoothList()V
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mBluetoothCachedDevices:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->sortBluetoothList()V

    .line 305
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 419
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 422
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 426
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 427
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 429
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mConstructThread:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$ConstructBluetoothListThread;

    if-eqz v1, :cond_1

    .line 430
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mConstructThread:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$ConstructBluetoothListThread;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$ConstructBluetoothListThread;->cancel()V

    .line 432
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mDismissProgressBarThread:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;

    if-eqz v1, :cond_2

    .line 433
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mDismissProgressBarThread:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;->cancel()V

    .line 435
    :cond_2
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 424
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 413
    invoke-super {p0}, Landroid/app/Dialog;->hide()V

    .line 414
    const-string v0, "BluetoothPopupWindow"

    const-string v1, "hide"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "button"    # I

    .prologue
    .line 438
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .line 442
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mList:Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v4

    sub-int v2, p3, v4

    .line 443
    .local v2, "fixPosition":I
    const-string v4, "BluetoothPopupWindow"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onItemClick, fixPosition is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", getHeaderViewsCount: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mList:Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    if-gez v2, :cond_1

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    monitor-enter p0

    .line 450
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mNetListItem:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 451
    .local v1, "currentObject":Ljava/lang/Object;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 452
    instance-of v4, v1, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;

    if-eqz v4, :cond_0

    move-object v3, v1

    .line 453
    check-cast v3, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;

    .line 454
    .local v3, "item":Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->getBondState()I

    move-result v0

    .line 455
    .local v0, "bondState":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->dismiss()V

    .line 456
    const/16 v4, 0xc

    if-ne v0, v4, :cond_2

    .line 457
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->connectProfile()V

    goto :goto_0

    .line 451
    .end local v0    # "bondState":I
    .end local v1    # "currentObject":Ljava/lang/Object;
    .end local v3    # "item":Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 458
    .restart local v0    # "bondState":I
    .restart local v1    # "currentObject":Ljava/lang/Object;
    .restart local v3    # "item":Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;
    :cond_2
    const/16 v4, 0xa

    if-ne v0, v4, :cond_0

    .line 459
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->startPairing()Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 533
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 534
    const-string v0, "BluetoothPopupWindow"

    const-string v1, "onStop===================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->dismiss()V

    .line 536
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasFocus"    # Z

    .prologue
    .line 522
    invoke-super {p0, p1}, Landroid/app/Dialog;->onWindowFocusChanged(Z)V

    .line 523
    const-string v0, "BluetoothPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onWindowFocusChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 526
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->dismiss()V

    .line 528
    :cond_0
    return-void
.end method

.method public setShowPos([I)V
    .locals 4
    .param p1, "pos"    # [I

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mShowPos:[I

    .line 182
    const-string v0, "BluetoothPopupWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "y possition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mShowPos:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, -0x2

    .line 223
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v0, v3, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 224
    .local v0, "anim":I
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 226
    .local v1, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mShowPos:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 227
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 228
    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 229
    const/16 v3, 0x7de

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 230
    const v3, 0x1021300

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 236
    const/4 v3, -0x3

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 237
    const/16 v3, 0x31

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 238
    const-string v3, "status_net_drop_down"

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 239
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 240
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 241
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 244
    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.device.action.FOUND"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 245
    .local v2, "mBluetoothFilter":Landroid/content/IntentFilter;
    const-string v3, "meizu.intent.action.DEVICE_CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 246
    const-string v3, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 248
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 249
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 251
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->initBluetoothList()V

    .line 252
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->notifyConstructBluetoothList()V

    .line 253
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 254
    return-void
.end method
