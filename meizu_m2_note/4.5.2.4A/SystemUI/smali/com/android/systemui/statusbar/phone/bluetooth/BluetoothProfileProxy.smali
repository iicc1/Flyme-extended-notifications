.class public Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;
.super Ljunit/framework/Assert;
.source "BluetoothProfileProxy.java"


# instance fields
.field public mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;

.field public mHeadset:Landroid/bluetooth/BluetoothHeadset;

.field public mInput:Landroid/bluetooth/BluetoothInputDevice;

.field public mPan:Landroid/bluetooth/BluetoothPan;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0}, Ljunit/framework/Assert;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 23
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 24
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 25
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    .line 26
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mPan:Landroid/bluetooth/BluetoothPan;

    .line 96
    new-instance v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy$1;-><init>(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 33
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mContext:Landroid/content/Context;

    .line 34
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->connectProxy(Landroid/bluetooth/BluetoothAdapter;I)Landroid/bluetooth/BluetoothProfile;

    .line 37
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->connectProxy(Landroid/bluetooth/BluetoothAdapter;I)Landroid/bluetooth/BluetoothProfile;

    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->connectProxy(Landroid/bluetooth/BluetoothAdapter;I)Landroid/bluetooth/BluetoothProfile;

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->connectProxy(Landroid/bluetooth/BluetoothAdapter;I)Landroid/bluetooth/BluetoothProfile;

    .line 40
    return-void
.end method

.method private connectProxy(Landroid/bluetooth/BluetoothAdapter;I)Landroid/bluetooth/BluetoothProfile;
    .locals 3
    .param p1, "adapter"    # Landroid/bluetooth/BluetoothAdapter;
    .param p2, "profile"    # I

    .prologue
    const/4 v0, 0x0

    .line 43
    packed-switch p2, :pswitch_data_0

    .line 68
    :goto_0
    :pswitch_0
    return-object v0

    .line 45
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v1, :cond_0

    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    goto :goto_0

    .line 50
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    goto :goto_0

    .line 55
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    if-eqz v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    goto :goto_0

    .line 60
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mPan:Landroid/bluetooth/BluetoothPan;

    if-eqz v1, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mPan:Landroid/bluetooth/BluetoothPan;

    goto :goto_0

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-virtual {p1, v1, v2, p2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto :goto_0

    .line 43
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
