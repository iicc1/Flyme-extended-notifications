.class public Lcom/android/systemui/usb/OpenFileManagerActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "OpenFileManagerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private deviceName:Ljava/lang/String;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mSdcard:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/usb/OpenFileManagerActivity;->mSdcard:Z

    .line 69
    new-instance v0, Lcom/android/systemui/usb/OpenFileManagerActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/OpenFileManagerActivity$1;-><init>(Lcom/android/systemui/usb/OpenFileManagerActivity;)V

    iput-object v0, p0, Lcom/android/systemui/usb/OpenFileManagerActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private fileManagerExists()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 130
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/usb/OpenFileManagerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.meizu.filemanager"

    const/16 v5, 0x2000

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 132
    .local v1, "info":Landroid/content/pm/ApplicationInfo;
    if-eqz v1, :cond_0

    .line 133
    const/4 v2, 0x1

    .line 138
    .end local v1    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_0
    :goto_0
    return v2

    .line 134
    :catch_0
    move-exception v0

    .line 135
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private showDialog(Ljava/lang/String;)V
    .locals 4
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/systemui/usb/OpenFileManagerActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 83
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    const-string v1, "OpenFileManagerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sdcard:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/systemui/usb/OpenFileManagerActivity;->mSdcard:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-boolean v1, p0, Lcom/android/systemui/usb/OpenFileManagerActivity;->mSdcard:Z

    if-nez v1, :cond_0

    .line 85
    const v1, 0x7f0b00ef

    invoke-virtual {p0, v1}, Lcom/android/systemui/usb/OpenFileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 86
    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 90
    :goto_0
    const v1, 0xa020170

    iput v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mIconId:I

    .line 91
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 92
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 93
    iput-object p1, p0, Lcom/android/systemui/usb/OpenFileManagerActivity;->deviceName:Ljava/lang/String;

    .line 94
    const v1, 0x7f0b00f1

    invoke-virtual {p0, v1}, Lcom/android/systemui/usb/OpenFileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 95
    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Lcom/android/systemui/usb/OpenFileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/usb/OpenFileManagerActivity;->setupAlert()V

    .line 98
    return-void

    .line 88
    :cond_0
    const v1, 0x7f0b00f3

    invoke-virtual {p0, v1}, Lcom/android/systemui/usb/OpenFileManagerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 102
    packed-switch p2, :pswitch_data_0

    .line 126
    :cond_0
    :goto_0
    return-void

    .line 104
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/usb/OpenFileManagerActivity;->finish()V

    goto :goto_0

    .line 107
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/usb/OpenFileManagerActivity;->fileManagerExists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 109
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 110
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "com.meizu.filemanager"

    const-string v3, "com.meizu.filemanager.managefile.FileManagerActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const/high16 v2, 0x14200000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    const-string v2, "init_directory"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "otg://root/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/usb/OpenFileManagerActivity;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/usb/OpenFileManagerActivity;->startActivity(Landroid/content/Intent;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/usb/OpenFileManagerActivity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "OpenFileManagerActivity"

    const-string v3, "Cannot find FileManager"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/usb/OpenFileManagerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "device"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 43
    .local v0, "device":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/usb/OpenFileManagerActivity;->mSdcard:Z

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/usb/OpenFileManagerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xa0a0138

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/usb/OpenFileManagerActivity;->showDialog(Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 65
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 66
    iget-object v0, p0, Lcom/android/systemui/usb/OpenFileManagerActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/OpenFileManagerActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 67
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 53
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 54
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 55
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "action.external.volume.removed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v1, "action.external.volume.idle"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v1, "action.external.volume.unmounting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 58
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 59
    iget-object v1, p0, Lcom/android/systemui/usb/OpenFileManagerActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/usb/OpenFileManagerActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 60
    return-void
.end method
