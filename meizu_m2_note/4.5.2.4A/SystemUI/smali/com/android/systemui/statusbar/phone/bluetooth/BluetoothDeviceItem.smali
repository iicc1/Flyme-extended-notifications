.class public Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;
.super Lcom/android/systemui/statusbar/phone/wifi/NetListItem;
.source "BluetoothDeviceItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/phone/wifi/NetListItem;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;",
        ">;"
    }
.end annotation


# static fields
.field static final SINK_UUIDS:[Landroid/os/ParcelUuid;


# instance fields
.field public isProfileConnected:Z

.field private mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mBtProfileProxy:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

.field private mConnectionState:Z

.field private mContext:Landroid/content/Context;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceName:Ljava/lang/String;

.field private final mProfileSupport:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRssi:S

.field public mUUIDs:[Landroid/os/ParcelUuid;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 63
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/os/ParcelUuid;

    const/4 v1, 0x0

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->AdvAudioDist:Landroid/os/ParcelUuid;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 71
    const/16 v0, -0x2710

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;S)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;S)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p3, "rssi"    # S

    .prologue
    const/4 v3, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/wifi/NetListItem;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 57
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mConnectionState:Z

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mProfileSupport:Ljava/util/Map;

    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mContext:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 77
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDeviceName:Ljava/lang/String;

    .line 78
    iput-short p3, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mRssi:S

    .line 79
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mUUIDs:[Landroid/os/ParcelUuid;

    .line 80
    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarPolicy;->mBtProfileProxy:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mBtProfileProxy:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    .line 83
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mProfileSupport:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mProfileSupport:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mProfileSupport:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mProfileSupport:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->getSupportProfiles()Z

    .line 95
    :cond_1
    return-void
.end method

.method static getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .param p0, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .prologue
    .line 296
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 303
    const v0, 0x7f020041

    :goto_0
    return v0

    .line 299
    :sswitch_0
    const v0, 0x7f02003f

    goto :goto_0

    .line 301
    :sswitch_1
    const v0, 0x7f020042

    goto :goto_0

    .line 296
    nop

    :sswitch_data_0
    .sparse-switch
        0x540 -> :sswitch_0
        0x580 -> :sswitch_1
        0x5c0 -> :sswitch_0
    .end sparse-switch
.end method

.method private isProfileSupport(I)Z
    .locals 4
    .param p1, "Profile"    # I

    .prologue
    const/4 v2, 0x0

    .line 172
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mProfileSupport:Ljava/util/Map;

    if-nez v1, :cond_0

    .line 173
    const-string v1, "BluetoothDeviceItem"

    const-string v3, "mProfileSupport is null, do not connect"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 193
    :goto_0
    return v1

    .line 177
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v1, v2

    .line 187
    goto :goto_0

    .line 179
    :pswitch_1
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mProfileSupport:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 181
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mProfileSupport:Ljava/util/Map;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 183
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mProfileSupport:Ljava/util/Map;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 185
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mProfileSupport:Ljava/util/Map;

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v1, "BluetoothDeviceItem"

    const-string v3, "fatal NullPointerException, isProfileSupport get null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    move v1, v2

    .line 193
    goto :goto_0

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public compareTo(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;)I
    .locals 6
    .param p1, "another"    # Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;

    .prologue
    const/16 v5, 0xb

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 360
    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->isProfileConnected:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->isProfileConnected:Z

    if-eqz v4, :cond_2

    move v4, v2

    :goto_1
    sub-int v0, v1, v4

    .line 361
    .local v0, "comparison":I
    if-eqz v0, :cond_3

    move v3, v0

    .line 379
    :cond_0
    :goto_2
    return v3

    .end local v0    # "comparison":I
    :cond_1
    move v1, v3

    .line 360
    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1

    .line 365
    .restart local v0    # "comparison":I
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->getBondState()I

    move-result v1

    if-lt v1, v5, :cond_4

    move v1, v2

    :goto_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    if-lt v4, v5, :cond_5

    :goto_4
    sub-int v0, v1, v2

    .line 367
    if-eqz v0, :cond_6

    move v3, v0

    .line 368
    goto :goto_2

    :cond_4
    move v1, v3

    .line 365
    goto :goto_3

    :cond_5
    move v2, v3

    goto :goto_4

    .line 371
    :cond_6
    iget-short v1, p1, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mRssi:S

    iget-short v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mRssi:S

    sub-int v0, v1, v2

    .line 372
    if-eqz v0, :cond_7

    move v3, v0

    .line 373
    goto :goto_2

    .line 376
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDeviceName:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDeviceName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 379
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDeviceName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    goto :goto_2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 42
    check-cast p1, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->compareTo(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;)I

    move-result v0

    return v0
.end method

.method public connectProfile()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->getConnectionStatus()Ljava/lang/String;

    .line 130
    const-string v2, "BluetoothDeviceItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isProfileConnected :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->isProfileConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->isProfileConnected:Z

    if-eq v2, v5, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mBtProfileProxy:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    if-nez v2, :cond_2

    .line 132
    :cond_0
    const-string v2, "BluetoothDeviceItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exit connectProfile, mBtProfileProxy is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mBtProfileProxy:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_1
    return-void

    .line 138
    :cond_2
    const/4 v1, 0x1

    .local v1, "currentProfile":I
    :goto_0
    const/4 v2, 0x5

    if-gt v1, v2, :cond_1

    .line 139
    const-string v2, "BluetoothDeviceItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentProfile is going to connect :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    packed-switch v1, :pswitch_data_0

    .line 138
    :cond_3
    :goto_1
    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->isProfileSupport(I)Z

    move-result v2

    if-ne v2, v5, :cond_3

    .line 143
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mBtProfileProxy:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothHeadset;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 144
    .local v0, "connectResult":Z
    const-string v2, "BluetoothDeviceItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mHeadset connect :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 148
    .end local v0    # "connectResult":Z
    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->isProfileSupport(I)Z

    move-result v2

    if-ne v2, v5, :cond_3

    .line 149
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mBtProfileProxy:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothA2dp;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 150
    .restart local v0    # "connectResult":Z
    const-string v2, "BluetoothDeviceItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mA2dp connect :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 154
    .end local v0    # "connectResult":Z
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->isProfileSupport(I)Z

    move-result v2

    if-ne v2, v5, :cond_3

    .line 155
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mBtProfileProxy:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothInputDevice;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 156
    .restart local v0    # "connectResult":Z
    const-string v2, "BluetoothDeviceItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mInput connect :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 160
    .end local v0    # "connectResult":Z
    :pswitch_4
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->isProfileSupport(I)Z

    move-result v2

    if-ne v2, v5, :cond_3

    .line 161
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mBtProfileProxy:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mPan:Landroid/bluetooth/BluetoothPan;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothPan;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 162
    .restart local v0    # "connectResult":Z
    const-string v2, "BluetoothDeviceItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mPan connect :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 140
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getBondState()I
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    return v0
.end method

.method public getConnectionStatus()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 242
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->isProfileConnected:Z

    .line 243
    const-string v2, "BluetoothDeviceItem"

    const-string v3, "getConnectionStatus"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getConnectionState()I

    move-result v2

    if-eqz v2, :cond_1

    .line 246
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mConnectionState:Z

    .line 251
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mBtProfileProxy:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    if-nez v2, :cond_2

    .line 252
    const-string v2, "BluetoothDeviceItem"

    const-string v3, "mBtProfileProxy = null, return"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_0
    :goto_1
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->isProfileConnected:Z

    .line 292
    const/4 v2, 0x0

    :goto_2
    return-object v2

    .line 248
    :cond_1
    iput-boolean v7, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mConnectionState:Z

    goto :goto_0

    .line 253
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_3

    .line 254
    const-string v2, "BluetoothDeviceItem"

    const-string v3, "getBondState != BOND_BONDED, return"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 255
    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mConnectionState:Z

    if-ne v2, v5, :cond_0

    .line 256
    const-string v2, "BluetoothDeviceItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mDevice addr :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 260
    .local v1, "res":Landroid/content/res/Resources;
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mBtProfileProxy:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-ne v2, v6, :cond_4

    .line 261
    const-string v2, "BluetoothDeviceItem"

    const-string v3, "mHeadset connected"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const v2, 0x7f0b014c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 263
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mBtProfileProxy:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-ne v2, v5, :cond_5

    .line 264
    const-string v2, "BluetoothDeviceItem"

    const-string v3, "mHeadset connecting"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const v2, 0x7f0b014b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 266
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mBtProfileProxy:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-ne v2, v6, :cond_6

    .line 267
    const-string v2, "BluetoothDeviceItem"

    const-string v3, "mA2dp connected"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    const v2, 0x7f0b014c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 269
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mBtProfileProxy:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothA2dp;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-ne v2, v5, :cond_7

    .line 270
    const-string v2, "BluetoothDeviceItem"

    const-string v3, "mA2dp connecting"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    const v2, 0x7f0b014b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 272
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mBtProfileProxy:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mPan:Landroid/bluetooth/BluetoothPan;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothPan;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-ne v2, v6, :cond_8

    .line 273
    const-string v2, "BluetoothDeviceItem"

    const-string v3, "mPan connected"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const v2, 0x7f0b014c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 275
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mBtProfileProxy:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mPan:Landroid/bluetooth/BluetoothPan;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothPan;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-ne v2, v5, :cond_9

    .line 276
    const-string v2, "BluetoothDeviceItem"

    const-string v3, "mPan connecting"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const v2, 0x7f0b014b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 278
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mBtProfileProxy:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothInputDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-ne v2, v6, :cond_a

    .line 279
    const-string v2, "BluetoothDeviceItem"

    const-string v3, "mInput connected"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const v2, 0x7f0b014c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    .line 281
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mBtProfileProxy:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothInputDevice;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 282
    const-string v2, "BluetoothDeviceItem"

    const-string v3, "mInput connecting"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const v2, 0x7f0b014b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto/16 :goto_2

    .line 285
    :catch_0
    move-exception v0

    .line 286
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v2, "BluetoothDeviceItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@@@@@ mBtProfileProxy hfp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mBtProfileProxy:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",a2dp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mBtProfileProxy:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",pan: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mBtProfileProxy:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mPan:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",hid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mBtProfileProxy:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothProfileProxy;->mInput:Landroid/bluetooth/BluetoothInputDevice;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method public getDeviceIcon()I
    .locals 7

    .prologue
    const v3, 0x7f02003d

    const v2, 0x7f02003c

    const v1, 0x7f02003b

    const/4 v6, 0x1

    .line 308
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    .line 310
    .local v0, "btClass":Landroid/bluetooth/BluetoothClass;
    if-eqz v0, :cond_1

    .line 311
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 331
    :goto_0
    if-eqz v0, :cond_3

    .line 332
    invoke-virtual {v0, v6}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 352
    :cond_0
    :goto_1
    :sswitch_0
    return v1

    .line 313
    :sswitch_1
    const v1, 0x7f020040

    goto :goto_1

    .line 319
    :sswitch_2
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result v1

    goto :goto_1

    .line 322
    :sswitch_3
    const v1, 0x7f02003e

    goto :goto_1

    .line 328
    :cond_1
    const-string v4, "BluetoothDeviceItem"

    const-string v5, "mBtClass is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 336
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move v1, v3

    .line 337
    goto :goto_1

    .line 341
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->isProfileSupport(I)Z

    move-result v4

    if-eqz v4, :cond_4

    move v1, v3

    .line 342
    goto :goto_1

    .line 343
    :cond_4
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->isProfileSupport(I)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    .line 344
    goto :goto_1

    .line 345
    :cond_5
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->isProfileSupport(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 346
    const v1, 0x7f020041

    goto :goto_1

    .line 347
    :cond_6
    const/4 v2, 0x5

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->isProfileSupport(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 352
    const v1, 0x7f020043

    goto :goto_1

    .line 311
    :sswitch_data_0
    .sparse-switch
        0x100 -> :sswitch_1
        0x200 -> :sswitch_0
        0x500 -> :sswitch_2
        0x600 -> :sswitch_3
    .end sparse-switch
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDeviceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDeviceName:Ljava/lang/String;

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getSupportProfiles()Z
    .locals 12

    .prologue
    const/4 v11, 0x5

    const/4 v10, 0x4

    const/4 v9, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 197
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mUUIDs:[Landroid/os/ParcelUuid;

    .line 198
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mUUIDs:[Landroid/os/ParcelUuid;

    if-nez v6, :cond_0

    .line 199
    const-string v5, "BluetoothDeviceItem"

    const-string v6, "Bluetooth device get uuid is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :goto_0
    return v4

    .line 202
    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mUUIDs:[Landroid/os/ParcelUuid;

    sget-object v7, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    invoke-static {v6, v7}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mUUIDs:[Landroid/os/ParcelUuid;

    sget-object v7, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {v6, v7}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 204
    :cond_1
    const-string v6, "BluetoothDeviceItem"

    const-string v7, "Add HeadsetProfile to connectable profile list"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mProfileSupport:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mUUIDs:[Landroid/os/ParcelUuid;

    sget-object v7, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v6, v7}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 211
    const-string v6, "BluetoothDeviceItem"

    const-string v7, "Add A2dpProfile to connectable profile list"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mProfileSupport:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mUUIDs:[Landroid/os/ParcelUuid;

    sget-object v7, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-static {v6, v7}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mUUIDs:[Landroid/os/ParcelUuid;

    sget-object v7, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    invoke-static {v6, v7}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 219
    :cond_2
    const-string v6, "BluetoothDeviceItem"

    const-string v7, "Add HidProfile to connectable profile list"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mProfileSupport:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    :goto_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mUUIDs:[Landroid/os/ParcelUuid;

    sget-object v7, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-static {v6, v7}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mUUIDs:[Landroid/os/ParcelUuid;

    sget-object v7, Landroid/bluetooth/BluetoothUuid;->PANU:Landroid/os/ParcelUuid;

    invoke-static {v6, v7}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 227
    :cond_3
    const-string v4, "BluetoothDeviceItem"

    const-string v6, "Add PanProfile to connectable profile list"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mProfileSupport:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :goto_4
    const-string v4, "BluetoothDeviceItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updating profiles for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v4, "BluetoothDeviceItem"

    const-string v6, "UUID:"

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mUUIDs:[Landroid/os/ParcelUuid;

    .local v0, "arr$":[Landroid/os/ParcelUuid;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_5
    if-ge v1, v2, :cond_8

    aget-object v3, v0, v1

    .line 236
    .local v3, "uuid":Landroid/os/ParcelUuid;
    const-string v4, "BluetoothDeviceItem"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 207
    .end local v0    # "arr$":[Landroid/os/ParcelUuid;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "uuid":Landroid/os/ParcelUuid;
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mProfileSupport:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 214
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mProfileSupport:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 222
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mProfileSupport:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 230
    :cond_7
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mProfileSupport:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .restart local v0    # "arr$":[Landroid/os/ParcelUuid;
    .restart local v1    # "i$":I
    .restart local v2    # "len$":I
    :cond_8
    move v4, v5

    .line 238
    goto/16 :goto_0
.end method

.method public startPairing()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 114
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 117
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    const/4 v0, 0x0

    .line 125
    :goto_0
    return v0

    .line 120
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_connect_after_pair"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 122
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bluetooth_host_start_pair"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method
