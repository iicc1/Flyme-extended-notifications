.class public Lcom/android/systemui/usb/ExternalStorageActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "ExternalStorageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mDiskLabel:Ljava/lang/String;

.field mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mHandler:Landroid/os/Handler;

    .line 67
    new-instance v0, Lcom/android/systemui/usb/ExternalStorageActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/usb/ExternalStorageActivity$1;-><init>(Lcom/android/systemui/usb/ExternalStorageActivity;)V

    iput-object v0, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 77
    packed-switch p2, :pswitch_data_0

    .line 99
    :goto_0
    return-void

    .line 79
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/usb/ExternalStorageActivity;->finish()V

    goto :goto_0

    .line 82
    :pswitch_1
    const-string v1, "mount"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v0

    .line 84
    .local v0, "mountService":Landroid/os/storage/IMountService;
    new-instance v1, Lcom/android/systemui/usb/ExternalStorageActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/usb/ExternalStorageActivity$2;-><init>(Lcom/android/systemui/usb/ExternalStorageActivity;Landroid/os/storage/IMountService;)V

    invoke-virtual {v1}, Lcom/android/systemui/usb/ExternalStorageActivity$2;->start()V

    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/usb/ExternalStorageActivity;->finish()V

    goto :goto_0

    .line 77
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
    .line 34
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/usb/ExternalStorageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 36
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "disklabel"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mDiskLabel:Ljava/lang/String;

    .line 39
    iget-object v0, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 40
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x7f0b00f0

    invoke-virtual {p0, v2}, Lcom/android/systemui/usb/ExternalStorageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 41
    iget-object v2, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mDiskLabel:Ljava/lang/String;

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 42
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 43
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 44
    const v2, 0x7f0b00f2

    invoke-virtual {p0, v2}, Lcom/android/systemui/usb/ExternalStorageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 45
    const/high16 v2, 0x1040000

    invoke-virtual {p0, v2}, Lcom/android/systemui/usb/ExternalStorageActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/usb/ExternalStorageActivity;->setupAlert()V

    .line 47
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 63
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    .line 64
    iget-object v0, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/ExternalStorageActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 65
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 54
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "action.external.volume.removed"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string v1, "action.external.volume.idle"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v1, "action.external.volume.unmounting"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/android/systemui/usb/ExternalStorageActivity;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/usb/ExternalStorageActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    return-void
.end method
