.class Lcom/android/systemui/usb/ExternalStorageActivity$2;
.super Ljava/lang/Thread;
.source "ExternalStorageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/ExternalStorageActivity;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/ExternalStorageActivity;

.field final synthetic val$mountService:Landroid/os/storage/IMountService;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/ExternalStorageActivity;Landroid/os/storage/IMountService;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/systemui/usb/ExternalStorageActivity$2;->this$0:Lcom/android/systemui/usb/ExternalStorageActivity;

    iput-object p2, p0, Lcom/android/systemui/usb/ExternalStorageActivity$2;->val$mountService:Landroid/os/storage/IMountService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 87
    :try_start_0
    const-string v1, "ExternalStorageActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDiskLabel "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/usb/ExternalStorageActivity$2;->this$0:Lcom/android/systemui/usb/ExternalStorageActivity;

    iget-object v3, v3, Lcom/android/systemui/usb/ExternalStorageActivity;->mDiskLabel:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget-object v1, p0, Lcom/android/systemui/usb/ExternalStorageActivity$2;->val$mountService:Landroid/os/storage/IMountService;

    iget-object v2, p0, Lcom/android/systemui/usb/ExternalStorageActivity$2;->this$0:Lcom/android/systemui/usb/ExternalStorageActivity;

    iget-object v2, v2, Lcom/android/systemui/usb/ExternalStorageActivity;->mDiskLabel:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/os/storage/IMountService;->unmountExternalVolume(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    :goto_0
    return-void

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
