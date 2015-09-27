.class Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$1;
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
    .line 99
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$1;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 102
    const-string v1, "BluetoothPopupWindow"

    const-string v2, "DismissProgressBarHandler handleMessage"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$1;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mProgressBar:Lcom/meizu/common/widget/LoadingView;

    if-nez v1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$1;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mProgressBar:Lcom/meizu/common/widget/LoadingView;

    invoke-virtual {v1}, Lcom/meizu/common/widget/LoadingView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 108
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    const-string v1, "BluetoothPopupWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LayoutParams.height : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v2, 0x3

    if-gt v1, v2, :cond_2

    .line 112
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$1;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mProgressBar:Lcom/meizu/common/widget/LoadingView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/LoadingView;->setVisibility(I)V

    .line 113
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$1;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mList:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$1;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mHeaderView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z

    .line 114
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$1;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    # getter for: Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mDismissProgressBarThread:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->access$000(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 115
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$1;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    # getter for: Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mDismissProgressBarThread:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->access$000(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;->cancel()V

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$1;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    # getter for: Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mDismissProgressBarHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->access$100(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 120
    :cond_2
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 v1, v1, -0x3

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 121
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$1;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mProgressBar:Lcom/meizu/common/widget/LoadingView;

    invoke-virtual {v1, v0}, Lcom/meizu/common/widget/LoadingView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
