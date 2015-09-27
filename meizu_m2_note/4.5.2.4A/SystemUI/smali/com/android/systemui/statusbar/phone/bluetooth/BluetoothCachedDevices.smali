.class public Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;
.super Ljava/lang/Object;
.source "BluetoothCachedDevices.java"


# instance fields
.field mBluetoothDevice:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;",
            ">;"
        }
    .end annotation
.end field

.field mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->mBluetoothDevice:Ljava/util/ArrayList;

    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->mContext:Landroid/content/Context;

    .line 39
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 40
    return-void
.end method


# virtual methods
.method public addBondDeviceToList()V
    .locals 6

    .prologue
    .line 61
    const-string v4, "BluetoothCachedDevices"

    const-string v5, "addBondDeviceToList"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v4, :cond_0

    .line 63
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 65
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v3

    .line 66
    .local v3, "pairedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->mBluetoothDevice:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 67
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 68
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 69
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_1

    .line 73
    new-instance v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, v1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .line 74
    .local v0, "BTlist":Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->mBluetoothDevice:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    .end local v0    # "BTlist":Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public addDeviceToList(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 124
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->mBluetoothDevice:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;

    .line 125
    .local v1, "bluetoothDevice":Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 126
    const-string v3, "BluetoothCachedDevices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "no need addDeviceToList :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", addr :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v3, 0x0

    .line 133
    .end local v1    # "bluetoothDevice":Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;
    :goto_0
    return v3

    .line 130
    :cond_1
    const-string v3, "BluetoothCachedDevices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addDeviceToList :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", addr :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, p1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)V

    .line 132
    .local v0, "BTlist":Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->mBluetoothDevice:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getBluetoothDeviceList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->mBluetoothDevice:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getConnectedDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 5

    .prologue
    .line 81
    const-string v2, "BluetoothCachedDevices"

    const-string v3, "getConnectedDevice"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->addBondDeviceToList()V

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->sortBluetoothList()V

    .line 86
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->mBluetoothDevice:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;

    .line 87
    .local v0, "bluetoothDevice":Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b014c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->getConnectionStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 88
    const-string v2, "BluetoothCachedDevices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectedDevice is :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 92
    .end local v0    # "bluetoothDevice":Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isDeviceConnecting(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    const/4 v2, 0x1

    .line 96
    const-string v3, "BluetoothCachedDevices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDeviceConnecting :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->addBondDeviceToList()V

    .line 100
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->mBluetoothDevice:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;

    .line 101
    .local v0, "bluetoothDevice":Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->getConnectionStatus()Ljava/lang/String;

    .line 102
    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->isProfileConnected:Z

    if-ne v3, v2, :cond_0

    .line 103
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 104
    const-string v3, "BluetoothCachedDevices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "device not in disconnect states :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    .end local v0    # "bluetoothDevice":Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isDeviceExist(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 113
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->mBluetoothDevice:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;

    .line 114
    .local v0, "bluetoothDevice":Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    const-string v2, "BluetoothCachedDevices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device already in the list :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", addr :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const/4 v2, 0x1

    .line 120
    .end local v0    # "bluetoothDevice":Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;
    :goto_0
    return v2

    .line 119
    :cond_1
    const-string v2, "BluetoothCachedDevices"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device not in the list, got to show : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", addr :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeDeviceInList(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .prologue
    .line 137
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->mBluetoothDevice:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 139
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;>;"
    :cond_0
    :try_start_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;

    .line 141
    .local v0, "bluetoothDevice":Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 142
    const-string v3, "BluetoothCachedDevices"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeDeviceInList :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", addr :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    const/4 v3, 0x1

    .line 151
    .end local v0    # "bluetoothDevice":Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;
    :goto_0
    return v3

    .line 147
    :catch_0
    move-exception v1

    .line 148
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string v3, "BluetoothCachedDevices"

    const-string v4, "removeDeviceInList get NullPointException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :cond_1
    const-string v3, "BluetoothCachedDevices"

    const-string v4, "removeDeviceInList can\'t match devices"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public sortBluetoothList()V
    .locals 4

    .prologue
    .line 47
    const-string v2, "BluetoothCachedDevices"

    const-string v3, "sortBluetoothList"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->mBluetoothDevice:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;

    .line 51
    .local v0, "bluetoothDevice":Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->mUUIDs:[Landroid/os/ParcelUuid;

    if-nez v2, :cond_0

    .line 52
    const-string v2, "BluetoothCachedDevices"

    const-string v3, "bluetoothDevice.mUUIDs == null, init UUID again"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->getSupportProfiles()Z

    .line 55
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->getConnectionStatus()Ljava/lang/String;

    goto :goto_0

    .line 57
    .end local v0    # "bluetoothDevice":Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothCachedDevices;->mBluetoothDevice:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 58
    return-void
.end method
