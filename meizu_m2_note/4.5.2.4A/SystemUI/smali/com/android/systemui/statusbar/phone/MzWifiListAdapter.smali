.class public Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;
.super Landroid/widget/BaseAdapter;
.source "MzWifiListAdapter.java"


# instance fields
.field private mCon:Landroid/content/Context;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mListItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/wifi/NetListItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/wifi/NetListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/phone/wifi/NetListItem;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 33
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->mListItems:Ljava/util/List;

    .line 34
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->mCon:Landroid/content/Context;

    .line 35
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->mListItems:Ljava/util/List;

    if-nez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 43
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->mListItems:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 53
    :goto_0
    return-object v1

    .line 51
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 101
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 65
    .local v0, "currentItem":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 72
    :cond_0
    :goto_0
    return v1

    .line 69
    :cond_1
    instance-of v2, v0, Lcom/android/systemui/statusbar/phone/wifi/CategoryItem;

    if-eqz v2, :cond_0

    .line 70
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/high16 v11, 0x1060000

    const/4 v5, 0x0

    const v10, 0x106000c

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 110
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 111
    .local v0, "currentItem":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 204
    :goto_0
    return-object v5

    .line 115
    :cond_0
    if-nez p2, :cond_1

    .line 116
    instance-of v6, v0, Lcom/android/systemui/statusbar/phone/wifi/CategoryItem;

    if-eqz v6, :cond_4

    .line 117
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040054

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 124
    :cond_1
    :goto_1
    const v6, 0x7f0e0001

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 125
    .local v1, "icon":Landroid/widget/ImageView;
    const v6, 0x7f0e0125

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 126
    .local v3, "name":Landroid/widget/TextView;
    const v6, 0x7f0e0126

    invoke-virtual {p2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 129
    .local v4, "state":Landroid/widget/TextView;
    if-eqz v1, :cond_2

    .line 130
    invoke-virtual {p2, v9}, Landroid/view/View;->setEnabled(Z)V

    .line 131
    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 132
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 133
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 136
    :cond_2
    instance-of v6, v0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    if-eqz v6, :cond_7

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    .line 139
    .local v2, "item":Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;
    if-eqz v2, :cond_3

    .line 140
    iget-object v6, v2, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->ssid:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->mCon:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    if-nez p1, :cond_5

    .line 143
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->getStatusString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :goto_2
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->getIcon()I

    move-result v6

    if-nez v6, :cond_6

    .line 149
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .end local v2    # "item":Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;
    :cond_3
    :goto_3
    move-object v5, p2

    .line 204
    goto :goto_0

    .line 120
    .end local v1    # "icon":Landroid/widget/ImageView;
    .end local v3    # "name":Landroid/widget/TextView;
    .end local v4    # "state":Landroid/widget/TextView;
    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040055

    invoke-virtual {v6, v7, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    goto :goto_1

    .line 145
    .restart local v1    # "icon":Landroid/widget/ImageView;
    .restart local v2    # "item":Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;
    .restart local v3    # "name":Landroid/widget/TextView;
    .restart local v4    # "state":Landroid/widget/TextView;
    :cond_5
    const-string v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 151
    :cond_6
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->getIcon()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 155
    .end local v2    # "item":Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;
    :cond_7
    instance-of v6, v0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;

    if-eqz v6, :cond_8

    .line 156
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;

    .line 157
    .local v2, "item":Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;
    if-eqz v2, :cond_3

    .line 158
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->getDeviceName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->mCon:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 160
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->getConnectionStatus()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;->getDeviceIcon()I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 164
    .end local v2    # "item":Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothDeviceItem;
    :cond_8
    instance-of v6, v0, Lcom/android/systemui/statusbar/phone/wifi/TextViewItem;

    if-eqz v6, :cond_9

    .line 165
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/wifi/TextViewItem;

    .line 166
    .local v2, "item":Lcom/android/systemui/statusbar/phone/wifi/TextViewItem;
    iget-object v6, v2, Lcom/android/systemui/statusbar/phone/wifi/TextViewItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->mCon:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 168
    const-string v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 170
    .end local v2    # "item":Lcom/android/systemui/statusbar/phone/wifi/TextViewItem;
    :cond_9
    instance-of v6, v0, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;

    if-eqz v6, :cond_d

    .line 171
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;

    .line 172
    .local v2, "item":Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;
    iget-object v6, v2, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    const-string v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    iget-boolean v6, v2, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;->checked:Z

    if-eqz v6, :cond_b

    .line 175
    iget-boolean v5, v2, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;->enabled:Z

    if-eqz v5, :cond_a

    .line 176
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->mCon:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1060013

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 177
    const v5, 0x7f020008

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 190
    :goto_4
    iget-boolean v5, v2, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;->enabled:Z

    if-nez v5, :cond_3

    .line 191
    invoke-virtual {p2, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 192
    if-eqz v1, :cond_3

    .line 193
    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 194
    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 195
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/16 :goto_3

    .line 179
    :cond_a
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->mCon:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 180
    const v5, 0x7f020009

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4

    .line 183
    :cond_b
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-boolean v5, v2, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;->enabled:Z

    if-eqz v5, :cond_c

    .line 185
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->mCon:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 187
    :cond_c
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->mCon:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_4

    .line 199
    .end local v2    # "item":Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;
    :cond_d
    instance-of v5, v0, Lcom/android/systemui/statusbar/phone/wifi/CategoryItem;

    if-eqz v5, :cond_3

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/wifi/CategoryItem;

    .line 201
    .local v2, "item":Lcom/android/systemui/statusbar/phone/wifi/CategoryItem;
    iget-object v5, v2, Lcom/android/systemui/statusbar/phone/wifi/CategoryItem;->title:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x1

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 85
    .local v0, "currentItem":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v1

    .line 89
    :cond_1
    instance-of v2, v0, Lcom/android/systemui/statusbar/phone/wifi/CategoryItem;

    if-eqz v2, :cond_2

    .line 90
    const/4 v1, 0x0

    goto :goto_0

    .line 91
    :cond_2
    instance-of v2, v0, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/wifi/NetListItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 208
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/phone/wifi/NetListItem;>;"
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->mListItems:Ljava/util/List;

    monitor-enter v1

    .line 209
    :try_start_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->mListItems:Ljava/util/List;

    .line 210
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MzWifiListAdapter;->notifyDataSetChanged()V

    .line 212
    return-void

    .line 210
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
