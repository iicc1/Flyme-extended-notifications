.class public Lcom/android/systemui/nfc/MzNfcP2pNotiView;
.super Landroid/widget/LinearLayout;
.source "MzNfcP2pNotiView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static LAUNCHER_ACTIVITY_FILE:Ljava/lang/String;

.field private static LAUNCHER_ACTIVITY_GALLERY:Ljava/lang/String;

.field private static LAUNCHER_ACTIVITY_NOTEPAPER:Ljava/lang/String;

.field private static LAUNCHER_ACTIVITY_RECORDER:Ljava/lang/String;

.field private static LAUNCHER_ACTIVITY_VIDEO:Ljava/lang/String;

.field private static PACKAGE_FILE:Ljava/lang/String;

.field private static PACKAGE_GALLERY:Ljava/lang/String;

.field private static PACKAGE_NOTEPAPER:Ljava/lang/String;

.field private static PACKAGE_RECORDER:Ljava/lang/String;

.field private static PACKAGE_VIDEO:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private fileImg:Landroid/widget/ImageView;

.field private galleryImg:Landroid/widget/ImageView;

.field private launcherImg:Landroid/widget/ImageView;

.field private mBeingGuide:Z

.field private mConnectedTxt:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private mThemeChangeCnt:I

.field private notepapeImg:Landroid/widget/ImageView;

.field private recorderImg:Landroid/widget/ImageView;

.field private videoImg:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->TAG:Ljava/lang/String;

    .line 39
    const-string v0, "com.meizu.media.gallery"

    sput-object v0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->PACKAGE_GALLERY:Ljava/lang/String;

    .line 40
    const-string v0, "com.meizu.media.gallery.app.GalleryActivity"

    sput-object v0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->LAUNCHER_ACTIVITY_GALLERY:Ljava/lang/String;

    .line 42
    const-string v0, "com.meizu.media.video"

    sput-object v0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->PACKAGE_VIDEO:Ljava/lang/String;

    .line 43
    const-string v0, "com.meizu.media.video.VideoMainActivity"

    sput-object v0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->LAUNCHER_ACTIVITY_VIDEO:Ljava/lang/String;

    .line 45
    const-string v0, "com.meizu.filemanager"

    sput-object v0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->PACKAGE_FILE:Ljava/lang/String;

    .line 46
    const-string v0, "com.meizu.flyme.filemanager.activity.FileManagerActivity"

    sput-object v0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->LAUNCHER_ACTIVITY_FILE:Ljava/lang/String;

    .line 48
    const-string v0, "com.meizu.notepaper"

    sput-object v0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->PACKAGE_NOTEPAPER:Ljava/lang/String;

    .line 49
    const-string v0, "com.meizu.flyme.notepaper.NotePaperActivity"

    sput-object v0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->LAUNCHER_ACTIVITY_NOTEPAPER:Ljava/lang/String;

    .line 54
    const-string v0, "com.android.soundrecorder"

    sput-object v0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->PACKAGE_RECORDER:Ljava/lang/String;

    .line 55
    const-string v0, "com.android.soundrecorder.MzRecorderActivity"

    sput-object v0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->LAUNCHER_ACTIVITY_RECORDER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    iput-boolean v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mBeingGuide:Z

    .line 65
    iput v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mThemeChangeCnt:I

    .line 162
    new-instance v3, Lcom/android/systemui/nfc/MzNfcP2pNotiView$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/nfc/MzNfcP2pNotiView$1;-><init>(Lcom/android/systemui/nfc/MzNfcP2pNotiView;)V

    iput-object v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 219
    new-instance v3, Lcom/android/systemui/nfc/MzNfcP2pNotiView$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/nfc/MzNfcP2pNotiView$2;-><init>(Lcom/android/systemui/nfc/MzNfcP2pNotiView;)V

    iput-object v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mHandler:Landroid/os/Handler;

    .line 70
    iput-object p1, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mContext:Landroid/content/Context;

    .line 72
    sget-object v3, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->TAG:Ljava/lang/String;

    const-string v4, "MzNfcP2pNotiView initializing ..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f040057

    const/4 v5, 0x1

    invoke-virtual {v3, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 74
    .local v2, "root":Landroid/view/View;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 76
    const v3, 0x7f0e0129

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mConnectedTxt:Landroid/widget/TextView;

    .line 78
    const v3, 0x7f0e012e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->galleryImg:Landroid/widget/ImageView;

    .line 79
    iget-object v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->galleryImg:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v3, 0x7f0e012f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->videoImg:Landroid/widget/ImageView;

    .line 81
    iget-object v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->videoImg:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v3, 0x7f0e012a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->fileImg:Landroid/widget/ImageView;

    .line 83
    iget-object v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->fileImg:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    const v3, 0x7f0e012b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->notepapeImg:Landroid/widget/ImageView;

    .line 85
    iget-object v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->notepapeImg:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    const v3, 0x7f0e012d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->launcherImg:Landroid/widget/ImageView;

    .line 87
    iget-object v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->launcherImg:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    const v3, 0x7f0e012c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->recorderImg:Landroid/widget/ImageView;

    .line 89
    iget-object v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->recorderImg:Landroid/widget/ImageView;

    invoke-virtual {v3, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->loadIcon()V

    .line 93
    const v3, 0x7f0e0128

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 94
    .local v0, "disconnIcon":Landroid/widget/ImageView;
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "mz.android.nfc.action.MZ_NFC_P2P_STATE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 100
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v3, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    iget-object v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 105
    iget-object v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mContext:Landroid/content/Context;

    const-string v4, "statusbar"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    iput-object v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mStatusBarManager:Landroid/app/StatusBarManager;

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/nfc/MzNfcP2pNotiView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/nfc/MzNfcP2pNotiView;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->handleBtNfcp2pState(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/nfc/MzNfcP2pNotiView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/nfc/MzNfcP2pNotiView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/nfc/MzNfcP2pNotiView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/nfc/MzNfcP2pNotiView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mConnectedTxt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/nfc/MzNfcP2pNotiView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/nfc/MzNfcP2pNotiView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private handleBtNfcp2pState(I)V
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 197
    sparse-switch p1, :sswitch_data_0

    .line 214
    sget-object v0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknow state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_0
    return-void

    .line 202
    :sswitch_0
    iget-object v0, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 209
    :sswitch_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 197
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0xa -> :sswitch_0
    .end sparse-switch
.end method

.method private loadIcon()V
    .locals 13

    .prologue
    .line 109
    const/4 v2, 0x0

    .local v2, "galleryIcon":Landroid/graphics/drawable/Drawable;
    const/4 v10, 0x0

    .local v10, "videoIcon":Landroid/graphics/drawable/Drawable;
    const/4 v0, 0x0

    .local v0, "fileIcon":Landroid/graphics/drawable/Drawable;
    const/4 v8, 0x0

    .local v8, "notepapeIcon":Landroid/graphics/drawable/Drawable;
    const/4 v9, 0x0

    .line 111
    .local v9, "recorderIcon":Landroid/graphics/drawable/Drawable;
    const/16 v1, 0x20

    .line 112
    .local v1, "flags":I
    new-instance v6, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    const/4 v12, 0x0

    invoke-direct {v6, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 113
    .local v6, "intent":Landroid/content/Intent;
    const-string v11, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    iget-object v11, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v6, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v5

    .line 116
    .local v5, "infoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v7, 0x0

    .line 117
    .local v7, "name":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 118
    .local v4, "info":Landroid/content/pm/ResolveInfo;
    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 119
    const-string v11, "meizu"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 120
    const-string v11, "filemanager"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 121
    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sput-object v11, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->PACKAGE_FILE:Ljava/lang/String;

    .line 122
    sput-object v7, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->LAUNCHER_ACTIVITY_FILE:Ljava/lang/String;

    .line 123
    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v12}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_1
    const-string v11, "gallery"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 125
    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sput-object v11, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->PACKAGE_GALLERY:Ljava/lang/String;

    .line 126
    sput-object v7, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->LAUNCHER_ACTIVITY_GALLERY:Ljava/lang/String;

    .line 127
    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v12}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 128
    :cond_2
    const-string v11, "video"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 129
    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sput-object v11, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->PACKAGE_VIDEO:Ljava/lang/String;

    .line 130
    sput-object v7, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->LAUNCHER_ACTIVITY_VIDEO:Ljava/lang/String;

    .line 131
    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v12}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto :goto_0

    .line 132
    :cond_3
    const-string v11, "notepaper"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 133
    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sput-object v11, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->PACKAGE_NOTEPAPER:Ljava/lang/String;

    .line 134
    sput-object v7, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->LAUNCHER_ACTIVITY_NOTEPAPER:Ljava/lang/String;

    .line 135
    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v12}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto/16 :goto_0

    .line 137
    :cond_4
    const-string v11, "MzRecorderActivity"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 138
    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sput-object v11, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->PACKAGE_RECORDER:Ljava/lang/String;

    .line 139
    sput-object v7, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->LAUNCHER_ACTIVITY_RECORDER:Ljava/lang/String;

    .line 140
    iget-object v11, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v11, v12}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    goto/16 :goto_0

    .line 144
    .end local v4    # "info":Landroid/content/pm/ResolveInfo;
    :cond_5
    if-eqz v2, :cond_6

    .line 145
    iget-object v11, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->galleryImg:Landroid/widget/ImageView;

    invoke-virtual {v11, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 147
    :cond_6
    if-eqz v10, :cond_7

    .line 148
    iget-object v11, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->videoImg:Landroid/widget/ImageView;

    invoke-virtual {v11, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 150
    :cond_7
    if-eqz v0, :cond_8

    .line 151
    iget-object v11, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->fileImg:Landroid/widget/ImageView;

    invoke-virtual {v11, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 153
    :cond_8
    if-eqz v8, :cond_9

    .line 154
    iget-object v11, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->notepapeImg:Landroid/widget/ImageView;

    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 156
    :cond_9
    if-eqz v9, :cond_a

    .line 157
    iget-object v11, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->recorderImg:Landroid/widget/ImageView;

    invoke-virtual {v11, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 160
    :cond_a
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/high16 v8, 0x10000000

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 240
    const/4 v2, 0x0

    .line 241
    .local v2, "i":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 280
    :pswitch_0
    sget-object v5, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown view clicked: id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :goto_0
    if-eqz v2, :cond_1

    .line 283
    iget-object v5, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mz_nfcp2p_drag_guide"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mBeingGuide:Z

    .line 291
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->resumeAppSwitches()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    :goto_1
    invoke-virtual {v2, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 301
    iget-boolean v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mBeingGuide:Z

    if-eqz v3, :cond_3

    .line 302
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 303
    .local v1, "guideIntent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mContext:Landroid/content/Context;

    const-class v5, Lcom/android/systemui/nfc/NfcP2pDragShareGuideActivity;

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 304
    const-string v3, "target"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 305
    invoke-virtual {v1, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 306
    iget-object v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 308
    iget-object v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "mz_nfcp2p_drag_guide"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 313
    .end local v1    # "guideIntent":Landroid/content/Intent;
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v3}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 315
    :cond_1
    :goto_3
    return-void

    .line 244
    :pswitch_1
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "i":Landroid/content/Intent;
    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    .restart local v2    # "i":Landroid/content/Intent;
    sget-object v5, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->PACKAGE_GALLERY:Ljava/lang/String;

    sget-object v6, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->LAUNCHER_ACTIVITY_GALLERY:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 249
    :pswitch_2
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "i":Landroid/content/Intent;
    const-string v5, "com.meizu.media.video.nfc.view"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 250
    .restart local v2    # "i":Landroid/content/Intent;
    sget-object v5, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->PACKAGE_VIDEO:Ljava/lang/String;

    sget-object v6, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->LAUNCHER_ACTIVITY_VIDEO:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 254
    :pswitch_3
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "i":Landroid/content/Intent;
    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 255
    .restart local v2    # "i":Landroid/content/Intent;
    sget-object v5, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->PACKAGE_FILE:Ljava/lang/String;

    sget-object v6, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->LAUNCHER_ACTIVITY_FILE:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 259
    :pswitch_4
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "i":Landroid/content/Intent;
    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .restart local v2    # "i":Landroid/content/Intent;
    sget-object v5, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->PACKAGE_NOTEPAPER:Ljava/lang/String;

    sget-object v6, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->LAUNCHER_ACTIVITY_NOTEPAPER:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 264
    :pswitch_5
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "i":Landroid/content/Intent;
    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 265
    .restart local v2    # "i":Landroid/content/Intent;
    const-string v5, "com.android.launcher3"

    const-string v6, "com.android.launcher3.MzNfcShare"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 269
    :pswitch_6
    new-instance v2, Landroid/content/Intent;

    .end local v2    # "i":Landroid/content/Intent;
    const-string v5, "android.intent.action.MAIN"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 270
    .restart local v2    # "i":Landroid/content/Intent;
    sget-object v5, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->PACKAGE_RECORDER:Ljava/lang/String;

    sget-object v6, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->LAUNCHER_ACTIVITY_RECORDER:Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 274
    :pswitch_7
    iget-object v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v3, :cond_2

    .line 275
    iget-object v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 277
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/nfc/NfcAdapterMzExt;->getNfcAdapterMzExt(Landroid/content/Context;)Landroid/nfc/NfcAdapterMzExt;

    move-result-object v3

    invoke-virtual {v3}, Landroid/nfc/NfcAdapterMzExt;->disconnectMzNfcP2p()V

    goto :goto_3

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoteException = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 311
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/nfc/MzNfcP2pNotiView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 241
    :pswitch_data_0
    .packed-switch 0x7f0e0128
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
