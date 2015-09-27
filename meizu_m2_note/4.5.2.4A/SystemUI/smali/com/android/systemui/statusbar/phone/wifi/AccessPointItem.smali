.class public Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;
.super Lcom/android/systemui/statusbar/phone/wifi/NetListItem;
.source "AccessPointItem.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$1;,
        Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/statusbar/phone/wifi/NetListItem;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;",
        ">;"
    }
.end annotation


# instance fields
.field admode:Ljava/lang/String;

.field public hexssid:Ljava/lang/String;

.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mContext:Landroid/content/Context;

.field private mInfo:Landroid/net/wifi/WifiInfo;

.field mRssi:I

.field private mState:Landroid/net/NetworkInfo$DetailedState;

.field private mStatus:Ljava/lang/String;

.field public networkId:I

.field pskType:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

.field public security:I

.field public ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 157
    sget-object v0, Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;->TYPE_ACCESSPOINT:Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/wifi/NetListItem;-><init>(Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;)V

    .line 58
    sget-object v0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;->UNKNOWN:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->pskType:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

    .line 158
    iget-object v0, p2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->ssid:Ljava/lang/String;

    .line 159
    iget-object v0, p2, Landroid/net/wifi/ScanResult;->HexSSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->hexssid:Ljava/lang/String;

    .line 160
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->security:I

    .line 161
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->networkId:I

    .line 162
    iget v0, p2, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mRssi:I

    .line 164
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mStatus:Ljava/lang/String;

    .line 165
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mContext:Landroid/content/Context;

    .line 166
    iget-object v0, p2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "IBSS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    const-string v0, "1"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->admode:Ljava/lang/String;

    .line 171
    :goto_0
    return-void

    .line 169
    :cond_0
    const-string v0, "0"

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->admode:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 141
    sget-object v0, Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;->TYPE_ACCESSPOINT:Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/wifi/NetListItem;-><init>(Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;)V

    .line 58
    sget-object v0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;->UNKNOWN:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->pskType:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

    .line 142
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->ssid:Ljava/lang/String;

    .line 143
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->HexSSID:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->hexssid:Ljava/lang/String;

    .line 144
    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->getSecurity(Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->security:I

    .line 145
    iget v0, p2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->networkId:I

    .line 146
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 147
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mRssi:I

    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const v0, 0x7f0b012a

    :goto_2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mStatus:Ljava/lang/String;

    .line 152
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mContext:Landroid/content/Context;

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->adhocMode:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->admode:Ljava/lang/String;

    .line 154
    return-void

    .line 142
    :cond_1
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 143
    :cond_2
    iget-object v0, p2, Landroid/net/wifi/WifiConfiguration;->HexSSID:Ljava/lang/String;

    goto :goto_1

    .line 149
    :cond_3
    const v0, 0x7f0b0129

    goto :goto_2
.end method

.method public static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 285
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;
    .locals 5
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 201
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 202
    .local v0, "wpa":Z
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v3, "WPA2-PSK"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 203
    .local v1, "wpa2":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 204
    sget-object v2, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;->WPA_WPA2:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

    .line 211
    :goto_0
    return-object v2

    .line 205
    :cond_0
    if-eqz v1, :cond_1

    .line 206
    sget-object v2, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;->WPA2:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

    goto :goto_0

    .line 207
    :cond_1
    if-eqz v0, :cond_2

    .line 208
    sget-object v2, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;->WPA:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

    goto :goto_0

    .line 210
    :cond_2
    const-string v2, "AccessPointItem"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received abnormal flag string: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    sget-object v2, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;->UNKNOWN:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

    goto :goto_0
.end method

.method public static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 91
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x4

    .line 102
    :goto_0
    return v0

    .line 93
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-CERT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    const/4 v0, 0x5

    goto :goto_0

    .line 95
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 96
    const/4 v0, 0x2

    goto :goto_0

    .line 97
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WEP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    const/4 v0, 0x1

    goto :goto_0

    .line 99
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "EAP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 100
    const/4 v0, 0x3

    goto :goto_0

    .line 102
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 7
    .param p0, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v2, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 74
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 75
    const/4 v0, 0x4

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 77
    :cond_1
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move v0, v2

    .line 78
    goto :goto_0

    .line 80
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move v0, v3

    .line 81
    goto :goto_0

    .line 83
    :cond_3
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move v0, v4

    .line 85
    goto :goto_0

    .line 87
    :cond_5
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private refresh()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mContext:Landroid/content/Context;

    .line 290
    .local v0, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-eqz v1, :cond_0

    .line 291
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mState:Landroid/net/NetworkInfo$DetailedState;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/wifi/Summary;->get(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mStatus:Ljava/lang/String;

    .line 293
    :cond_0
    return-void
.end method

.method public static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x22

    const/4 v2, 0x1

    .line 276
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 277
    .local v0, "length":I
    if-le v0, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_0

    .line 279
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 281
    .end local p0    # "string":Ljava/lang/String;
    :cond_0
    return-object p0
.end method


# virtual methods
.method public compareTo(Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;)I
    .locals 4
    .param p1, "other"    # Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    .prologue
    const v3, 0x7fffffff

    const/4 v0, 0x1

    const/4 v1, -0x1

    .line 297
    instance-of v2, p1, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    if-nez v2, :cond_1

    .line 320
    :cond_0
    :goto_0
    return v0

    .line 301
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 302
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_3

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mInfo:Landroid/net/wifi/WifiInfo;

    if-nez v2, :cond_0

    .line 305
    :cond_3
    iget v2, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mRssi:I

    if-eq v2, v3, :cond_4

    iget v2, p1, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mRssi:I

    if-ne v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 306
    :cond_4
    iget v2, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mRssi:I

    if-ne v2, v3, :cond_5

    iget v2, p1, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mRssi:I

    if-ne v2, v3, :cond_0

    .line 309
    :cond_5
    iget v2, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->networkId:I

    if-eq v2, v1, :cond_6

    iget v2, p1, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->networkId:I

    if-ne v2, v1, :cond_6

    move v0, v1

    .line 310
    goto :goto_0

    .line 311
    :cond_6
    iget v2, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->networkId:I

    if-ne v2, v1, :cond_7

    iget v2, p1, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->networkId:I

    if-ne v2, v1, :cond_0

    .line 315
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->ssid:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->ssid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 316
    .local v0, "diff":I
    if-nez v0, :cond_0

    .line 320
    iget v1, p1, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mRssi:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mRssi:I

    invoke-static {v1, v2}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 40
    check-cast p1, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->compareTo(Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 325
    instance-of v1, p1, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    if-nez v1, :cond_1

    .line 326
    .end local p1    # "other":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .restart local p1    # "other":Ljava/lang/Object;
    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;

    .end local p1    # "other":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->compareTo(Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public generateOpenNetworkConfig()V
    .locals 2

    .prologue
    .line 335
    iget v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->security:I

    if-eqz v0, :cond_0

    .line 336
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    .line 346
    :cond_1
    :goto_0
    return-void

    .line 339
    :cond_2
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 340
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->ssid:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->hexssid:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->HexSSID:Ljava/lang/String;

    .line 342
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 343
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->admode:Ljava/lang/String;

    const-string v1, "1"

    if-ne v0, v1, :cond_1

    .line 344
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->admode:Ljava/lang/String;

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->adhocMode:Ljava/lang/String;

    goto :goto_0
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method public getIcon()I
    .locals 2

    .prologue
    .line 232
    iget v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->security:I

    if-nez v0, :cond_0

    .line 233
    const v0, 0xa0201e0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->getLevel()I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    .line 236
    :goto_0
    return v0

    :cond_0
    const v0, 0xa0201db

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->getLevel()I

    move-result v1

    rem-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public getLevel()I
    .locals 2

    .prologue
    .line 241
    iget v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mRssi:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    .line 242
    const/4 v0, 0x0

    .line 244
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mRssi:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    goto :goto_0
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 3
    .param p1, "concise"    # Z

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mContext:Landroid/content/Context;

    .line 107
    .local v0, "context":Landroid/content/Context;
    iget v1, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->security:I

    packed-switch v1, :pswitch_data_0

    .line 136
    if-eqz p1, :cond_6

    const-string v1, ""

    :goto_0
    return-object v1

    .line 109
    :pswitch_0
    if-eqz p1, :cond_0

    const v1, 0x7f0b0133

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const v1, 0x7f0b013b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 112
    :pswitch_1
    sget-object v1, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$1;->$SwitchMap$com$android$systemui$statusbar$phone$wifi$AccessPointItem$PskType:[I

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->pskType:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_1

    .line 124
    if-eqz p1, :cond_4

    const v1, 0x7f0b0132

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 114
    :pswitch_2
    if-eqz p1, :cond_1

    const v1, 0x7f0b012f

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const v1, 0x7f0b0137

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 117
    :pswitch_3
    if-eqz p1, :cond_2

    const v1, 0x7f0b0130

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const v1, 0x7f0b0138

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 120
    :pswitch_4
    if-eqz p1, :cond_3

    const v1, 0x7f0b0131

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const v1, 0x7f0b0139

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 124
    :cond_4
    const v1, 0x7f0b013a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 128
    :pswitch_5
    if-eqz p1, :cond_5

    const v1, 0x7f0b012e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const v1, 0x7f0b0136

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 131
    :pswitch_6
    const v1, 0x7f0b013c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 133
    :pswitch_7
    const v1, 0x7f0b013d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 136
    :cond_6
    const v1, 0x7f0b0134

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 112
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getState()Landroid/net/NetworkInfo$DetailedState;
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mState:Landroid/net/NetworkInfo$DetailedState;

    return-object v0
.end method

.method public getStatusString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mStatus:Ljava/lang/String;

    return-object v0
.end method

.method public isInRange()Z
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mState:Landroid/net/NetworkInfo$DetailedState;

    if-nez v0, :cond_0

    const v0, 0x7fffffff

    iget v1, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mRssi:I

    if-ne v0, v1, :cond_0

    .line 269
    const/4 v0, 0x0

    .line 271
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public update(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 3
    .param p1, "info"    # Landroid/net/wifi/WifiInfo;
    .param p2, "state"    # Landroid/net/NetworkInfo$DetailedState;

    .prologue
    const/4 v2, 0x0

    .line 216
    if-eqz p1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->networkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 218
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    const/16 v1, -0xc8

    if-eq v0, v1, :cond_0

    .line 219
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mRssi:I

    .line 221
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 222
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 223
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->refresh()V

    .line 229
    :cond_1
    :goto_0
    return-void

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_1

    .line 225
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mInfo:Landroid/net/wifi/WifiInfo;

    .line 226
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mState:Landroid/net/NetworkInfo$DetailedState;

    .line 227
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->refresh()V

    goto :goto_0
.end method

.method public update(Landroid/net/wifi/ScanResult;)Z
    .locals 2
    .param p1, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->ssid:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->security:I

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->getSecurity(Landroid/net/wifi/ScanResult;)I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 187
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mRssi:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->compareSignalLevel(II)I

    move-result v0

    if-lez v0, :cond_0

    .line 188
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->mRssi:I

    .line 191
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->security:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 192
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->getPskType(Landroid/net/wifi/ScanResult;)Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->pskType:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

    .line 194
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;->refresh()V

    .line 195
    const/4 v0, 0x1

    .line 197
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
