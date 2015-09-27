.class Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$3;
.super Landroid/content/BroadcastReceiver;
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
    .line 324
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$3;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v10, 0xc

    const/4 v9, 0x0

    const/16 v8, 0xa

    .line 327
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 328
    .local v1, "action":Ljava/lang/String;
    const-string v5, "BluetoothPopupWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const-string v5, "android.bluetooth.device.action.FOUND"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 331
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 332
    .local v3, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v5, "android.bluetooth.device.extra.RSSI"

    const/16 v6, -0x8000

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getShortExtra(Ljava/lang/String;S)S

    move-result v4

    .line 334
    .local v4, "rssi":S
    const-string v5, "BluetoothPopupWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addr :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 388
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "rssi":S
    :cond_0
    :goto_0
    return-void

    .line 337
    .restart local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .restart local v4    # "rssi":S
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$3;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    # invokes: Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->isDeviceExist(Landroid/bluetooth/BluetoothDevice;)Z
    invoke-static {v5, v3}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->access$300(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 339
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v5

    if-eq v5, v10, :cond_0

    .line 340
    new-instance v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$3;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    # getter for: Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->access$400(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v0, v5, v3, v4}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;S)V

    .line 341
    .local v0, "BTlist":Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$3;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mBluetoothDevice:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 344
    .end local v0    # "BTlist":Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v4    # "rssi":S
    :cond_2
    const-string v5, "meizu.intent.action.DEVICE_CONNECTION_STATE_CHANGED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 346
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$3;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    # invokes: Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->notifyConstructBluetoothList()V
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->access$500(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)V

    goto :goto_0

    .line 347
    :cond_3
    const-string v5, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 348
    const-string v5, "BluetoothPopupWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_DISCOVERY_FINISHED, mPreSearching is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$3;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    # getter for: Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mPreSearching:Z
    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->access$600(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$3;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    # getter for: Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mPreSearching:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->access$600(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 350
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$3;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    .line 351
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$3;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mProgressBar:Lcom/meizu/common/widget/LoadingView;

    invoke-virtual {v5, v9}, Lcom/meizu/common/widget/LoadingView;->setVisibility(I)V

    .line 352
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$3;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mProgressBar:Lcom/meizu/common/widget/LoadingView;

    invoke-virtual {v5}, Lcom/meizu/common/widget/LoadingView;->startAnimator()V

    .line 353
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$3;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    # setter for: Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mPreSearching:Z
    invoke-static {v5, v9}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->access$602(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;Z)Z

    goto :goto_0

    .line 355
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$3;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    new-instance v6, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$3;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    const/4 v8, 0x0

    invoke-direct {v6, v7, v8}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;-><init>(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$1;)V

    # setter for: Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mDismissProgressBarThread:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->access$002(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;)Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;

    .line 356
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$3;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    # getter for: Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mDismissProgressBarThread:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->access$000(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$DismissProgressBarThread;->start()V

    .line 358
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$3;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mConstructThread:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$ConstructBluetoothListThread;

    if-eqz v5, :cond_0

    .line 359
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$3;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mConstructThread:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$ConstructBluetoothListThread;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$ConstructBluetoothListThread;->cancel()V

    goto/16 :goto_0

    .line 363
    :cond_5
    const-string v5, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 365
    const-string v5, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v6, -0x80000000

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 367
    .local v2, "bondState":I
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 368
    .restart local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v3, :cond_0

    .line 371
    const-string v5, "BluetoothPopupWindow"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "addr :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ",name:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "bondState: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/16 v5, 0xb

    if-eq v2, v5, :cond_6

    if-ne v2, v10, :cond_8

    .line 374
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$3;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    # getter for: Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mBluetoothCachedDevices:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->access$800(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->addDeviceToList(Landroid/bluetooth/BluetoothDevice;)Z

    .line 378
    :cond_7
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$3;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    # invokes: Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->notifyConstructBluetoothList()V
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->access$500(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)V

    goto/16 :goto_0

    .line 375
    :cond_8
    if-ne v2, v8, :cond_7

    .line 376
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$3;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    # getter for: Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mBluetoothCachedDevices:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->access$800(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->removeDeviceInList(Landroid/bluetooth/BluetoothDevice;)Z

    goto :goto_1

    .line 379
    .end local v2    # "bondState":I
    .end local v3    # "device":Landroid/bluetooth/BluetoothDevice;
    :cond_9
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 380
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v8, v5, :cond_0

    .line 381
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$3;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 382
    const-string v5, "BluetoothPopupWindow"

    const-string v6, "dismiss BluetoothPopupWindow when BT is off"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$3;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->dismiss()V

    goto/16 :goto_0
.end method
