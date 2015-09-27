.class Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;
.super Ljava/lang/Thread;
.source "BluetoothPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DismissProgressBarThread"
.end annotation


# instance fields
.field private mNeedStop:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)V
    .locals 2

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 465
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;->mNeedStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$1;

    .prologue
    .line 464
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;-><init>(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;->mNeedStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 469
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 474
    :goto_0
    const-wide/16 v2, 0x3

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;->mNeedStop:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 485
    :cond_0
    return-void

    .line 481
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mProgressBar:Lcom/meizu/common/widget/LoadingView;

    invoke-virtual {v1}, Lcom/meizu/common/widget/LoadingView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 482
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    const-string v1, "BluetoothPopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LayoutParams.height in thread: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_0

    .line 487
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    # getter for: Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mDismissProgressBarHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->access$100(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 475
    .end local v0    # "params":Landroid/view/ViewGroup$LayoutParams;
    :catch_0
    move-exception v1

    goto :goto_1
.end method
