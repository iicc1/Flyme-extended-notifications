.class Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy$1;
.super Ljava/lang/Object;
.source "BluetoothProfileProxy.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy$1;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .prologue
    .line 100
    const-string v0, "BluetoothProfileProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected, proxy is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    monitor-enter p0

    .line 102
    packed-switch p1, :pswitch_data_0

    .line 116
    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :goto_0
    :pswitch_0
    :try_start_0
    monitor-exit p0

    .line 117
    return-void

    .line 104
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy$1;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    iput-object p2, v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    goto :goto_0

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 107
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy$1;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    check-cast p2, Landroid/bluetooth/BluetoothHeadset;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    iput-object p2, v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    goto :goto_0

    .line 110
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy$1;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    check-cast p2, Landroid/bluetooth/BluetoothInputDevice;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    iput-object p2, v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    goto :goto_0

    .line 113
    .restart local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy$1;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    .end local p2    # "proxy":Landroid/bluetooth/BluetoothProfile;
    iput-object p2, v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mPan:Landroid/bluetooth/BluetoothPan;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 102
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .prologue
    .line 121
    monitor-enter p0

    .line 122
    packed-switch p1, :pswitch_data_0

    .line 136
    :goto_0
    :pswitch_0
    :try_start_0
    monitor-exit p0

    .line 137
    return-void

    .line 124
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy$1;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    goto :goto_0

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 127
    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy$1;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    goto :goto_0

    .line 130
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy$1;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    goto :goto_0

    .line 133
    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy$1;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mPan:Landroid/bluetooth/BluetoothPan;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 122
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
