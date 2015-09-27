.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothShortCut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0xc

    const/16 v10, 0xa

    const/16 v9, -0x64

    const/4 v8, 0x0

    .line 278
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 280
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 281
    const-string v5, "BluetoothShortCut"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WidgetLayoutExtends  -\u5f53\u524d\u84dd\u7259\u72b6\u6001 =  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  ,off=10  oning=11 on=12 offing=13"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    const-string v6, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    # setter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mCurrentState:I
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->access$202(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;I)I

    .line 286
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->updateViews()V

    .line 287
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->onStateChange()V

    .line 289
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v5, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v10, v5, :cond_1

    .line 292
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->getDescriptionArrow()Landroid/widget/ImageView;

    move-result-object v5

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 294
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->getDescription()Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->getDescriptionLocaleString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v5, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v11, v5, :cond_0

    .line 298
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->getDescriptionArrow()Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 305
    :cond_2
    const-string v5, "meizu.intent.action.DEVICE_CONNECTION_STATE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 306
    const-string v5, "BluetoothShortCut"

    const-string v6, "yuwenjie, get ACTION_CONNECTION_STATE_CHANGED"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 308
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    const-string v5, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 309
    .local v4, "state":I
    const-string v5, "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 310
    .local v3, "prevState":I
    if-eqz v1, :cond_0

    .line 314
    const-string v5, "BluetoothShortCut"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "yuwenjie, got connect state change: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", device name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    .line 317
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    # setter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mConnectingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->access$302(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    .line 318
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->getDescription()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    :cond_3
    :goto_1
    if-eqz v1, :cond_c

    .line 346
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    # setter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mDeviceName:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->access$602(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;Ljava/lang/String;)Ljava/lang/String;

    .line 347
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    # setter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mDescriptionDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->access$502(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto/16 :goto_0

    .line 319
    :cond_4
    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    .line 320
    if-nez v3, :cond_6

    .line 321
    const-string v5, "BluetoothShortCut"

    const-string v6, "yuwenjie, connection start from remote, should set descri"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_5
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->getDescription()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 322
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mConnectingDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->access$300(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 323
    const-string v5, "BluetoothShortCut"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "yuwenjie, do not update connected for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 327
    :cond_7
    if-nez v4, :cond_3

    .line 328
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBluetoothCachedDevices:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->access$400(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;)Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;

    move-result-object v5

    if-nez v5, :cond_8

    .line 329
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    new-instance v6, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBluetoothCachedDevices:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;
    invoke-static {v5, v6}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->access$402(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;)Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;

    .line 331
    :cond_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBluetoothCachedDevices:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->access$400(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;)Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->isDeviceConnecting(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mDescriptionDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->access$500(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 333
    :cond_9
    const-string v5, "BluetoothShortCut"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "yuwenjie, do not update disconnected for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 336
    :cond_a
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBluetoothCachedDevices:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->access$400(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;)Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->getConnectedDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 338
    if-eqz v1, :cond_b

    .line 339
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->getDescription()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 341
    :cond_b
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->getDescription()Landroid/widget/TextView;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->getDescriptionLocaleString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 349
    :cond_c
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    # setter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mDeviceName:Ljava/lang/String;
    invoke-static {v5, v12}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->access$602(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;Ljava/lang/String;)Ljava/lang/String;

    .line 350
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    # setter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mDescriptionDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5, v12}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->access$502(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto/16 :goto_0

    .line 358
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "prevState":I
    .end local v4    # "state":I
    :cond_d
    const-string v5, "android.bluetooth.device.action.NAME_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 359
    const-string v5, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 360
    .restart local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    const-string v5, "android.bluetooth.device.extra.NAME"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 361
    .local v2, "newName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 364
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mDescriptionDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->access$500(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 367
    if-nez v2, :cond_e

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 368
    const-string v5, "BluetoothShortCut"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_NAME_CHANGED, new name is null, use get name is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 371
    :cond_e
    if-eqz v2, :cond_0

    .line 373
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mDeviceName:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->access$600(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 376
    const-string v5, "BluetoothShortCut"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTION_NAME_CHANGED, new name is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->getDescription()Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 378
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    # setter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mDeviceName:Ljava/lang/String;
    invoke-static {v5, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->access$602(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;Ljava/lang/String;)Ljava/lang/String;

    .line 379
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    # setter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mDescriptionDevice:Landroid/bluetooth/BluetoothDevice;
    invoke-static {v5, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->access$502(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;

    goto/16 :goto_0
.end method
