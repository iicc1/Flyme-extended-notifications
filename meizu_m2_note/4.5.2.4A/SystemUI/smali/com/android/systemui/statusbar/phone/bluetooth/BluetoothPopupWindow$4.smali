.class Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$4;
.super Landroid/os/Handler;
.source "BluetoothPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)V
    .locals 0

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$4;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 394
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 408
    :goto_0
    return-void

    .line 396
    :sswitch_0
    const-string v0, "BluetoothPopupWindow"

    const-string v1, "MSG_START_DISCOVERY"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$4;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 398
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$4;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mProgressBar:Lcom/meizu/common/widget/LoadingView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/LoadingView;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$4;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mProgressBar:Lcom/meizu/common/widget/LoadingView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/LoadingView;->startAnimator()V

    goto :goto_0

    .line 402
    :sswitch_1
    const-string v0, "BluetoothPopupWindow"

    const-string v1, "MSG_CONSTRUCT_LIST"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$4;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    # invokes: Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->constructBluetoothList()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->access$900(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)V

    goto :goto_0

    .line 394
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method
