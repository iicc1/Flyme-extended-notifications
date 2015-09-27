.class public Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;
.super Ljava/lang/Object;
.source "NetworkPrefHelper.java"


# static fields
.field public static NETWORK_PRE_GSM_ONLY:I

.field public static NETWORK_PRE_GSM_WCDMA:I

.field public static NETWORK_PRE_WCDMA_ONLY:I

.field private static TAG:Ljava/lang/String;

.field private static isSupport4GProduct:Z

.field public static final preferredNetworkMode:I


# instance fields
.field private mCheckedItem:Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;

.field private mContext:Landroid/content/Context;

.field private mIsTurnning:Z

.field private mNetworkPrefList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    const-string v2, "NetworkPrefHelper"

    sput-object v2, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->TAG:Ljava/lang/String;

    .line 44
    sput v1, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->NETWORK_PRE_GSM_WCDMA:I

    .line 45
    sput v0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->NETWORK_PRE_GSM_ONLY:I

    .line 46
    const/4 v2, 0x2

    sput v2, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->NETWORK_PRE_WCDMA_ONLY:I

    .line 47
    sget v2, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    sput v2, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->preferredNetworkMode:I

    .line 52
    sget-object v2, Landroid/os/BuildExt;->IS_MX3:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/os/BuildExt;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->isSupport4GProduct:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mNetworkPrefList:Ljava/util/ArrayList;

    .line 56
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mIsTurnning:Z

    .line 67
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mContext:Landroid/content/Context;

    .line 72
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->getNetTitleFromRes(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    .line 74
    .local v2, "network_title_arry":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 75
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mNetworkPrefList:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;

    aget-object v5, v2, v0

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->getPreMode()I

    move-result v1

    .line 79
    .local v1, "mode":I
    sget-object v3, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "======getPreMode is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    sget-boolean v3, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->isSupport4GProduct:Z

    if-eqz v3, :cond_1

    .line 81
    sparse-switch v1, :sswitch_data_0

    .line 93
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mNetworkPrefList:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mCheckedItem:Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;

    .line 105
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mCheckedItem:Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;

    invoke-virtual {v3, v7}, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;->setChecked(Z)V

    .line 111
    sget-object v3, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->TAG:Ljava/lang/String;

    const-string v4, "NetworkPrefHelper"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 83
    :sswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mNetworkPrefList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mCheckedItem:Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;

    goto :goto_1

    .line 86
    :sswitch_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mNetworkPrefList:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mCheckedItem:Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;

    goto :goto_1

    .line 90
    :sswitch_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mNetworkPrefList:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mCheckedItem:Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;

    goto :goto_1

    .line 99
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mNetworkPrefList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_2

    .line 100
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mNetworkPrefList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->getPreMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mCheckedItem:Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;

    goto :goto_1

    .line 102
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mNetworkPrefList:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mCheckedItem:Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;

    goto :goto_1

    .line 81
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x9 -> :sswitch_2
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mIsTurnning:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private changeIdIndex(I)I
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 182
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->isSupport4GProduct:Z

    if-eqz v1, :cond_4

    .line 184
    packed-switch p1, :pswitch_data_0

    .line 203
    sget-object v1, Landroid/os/BuildExt;->IS_MX4_Pro:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 204
    const/16 v0, 0x15

    .line 217
    .local v0, "model":I
    :goto_0
    return v0

    .line 186
    .end local v0    # "model":I
    :pswitch_0
    const/4 v0, 0x1

    .line 187
    .restart local v0    # "model":I
    goto :goto_0

    .line 189
    .end local v0    # "model":I
    :pswitch_1
    const/4 v0, 0x0

    .line 190
    .restart local v0    # "model":I
    goto :goto_0

    .line 192
    .end local v0    # "model":I
    :pswitch_2
    sget-object v1, Landroid/os/BuildExt;->IS_MX4_Pro:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    const/16 v0, 0x15

    .restart local v0    # "model":I
    goto :goto_0

    .line 195
    .end local v0    # "model":I
    :cond_0
    const/16 v0, 0x9

    .line 201
    .restart local v0    # "model":I
    goto :goto_0

    .line 205
    .end local v0    # "model":I
    :cond_1
    sget-object v1, Landroid/os/BuildExt;->IS_MX4:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/BuildExt;->IS_M1_NOTE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Landroid/os/BuildExt;->IS_M1:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 206
    :cond_2
    const/16 v0, 0x9

    .restart local v0    # "model":I
    goto :goto_0

    .line 208
    .end local v0    # "model":I
    :cond_3
    sget-object v1, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->TAG:Ljava/lang/String;

    const-string v2, "change Id Index to 4G but product is neither mx4_pro nor mx4!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    const/16 v0, 0x15

    .line 211
    .restart local v0    # "model":I
    goto :goto_0

    .line 215
    .end local v0    # "model":I
    :cond_4
    move v0, p1

    .restart local v0    # "model":I
    goto :goto_0

    .line 184
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static changeToStrIndex(II)I
    .locals 3
    .param p0, "m"    # I
    .param p1, "arryLength"    # I

    .prologue
    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 222
    if-gez p0, :cond_1

    move p0, v0

    .line 243
    .end local p0    # "m":I
    :cond_0
    :goto_0
    return p0

    .line 224
    .restart local p0    # "m":I
    :cond_1
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->isSupport4GProduct:Z

    if-eqz v2, :cond_2

    .line 225
    sparse-switch p0, :sswitch_data_0

    move p0, v1

    .line 234
    goto :goto_0

    :sswitch_0
    move p0, v0

    .line 227
    goto :goto_0

    .line 229
    :sswitch_1
    const/4 p0, 0x1

    goto :goto_0

    :sswitch_2
    move p0, v1

    .line 232
    goto :goto_0

    .line 239
    :cond_2
    if-gt p1, p0, :cond_0

    move p0, v0

    .line 243
    goto :goto_0

    .line 225
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_0
        0x9 -> :sswitch_2
        0x15 -> :sswitch_2
    .end sparse-switch
.end method

.method public static get34GCapabilityPhoneId()I
    .locals 5

    .prologue
    .line 348
    const/4 v1, 0x0

    .line 350
    .local v1, "phoneId":I
    :try_start_0
    const-string v2, "phone_ext"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ITelephonyExt$Stub;->asInterface(Landroid/os/IBinder;)Landroid/telephony/ITelephonyExt;

    move-result-object v0

    .line 351
    .local v0, "phone":Landroid/telephony/ITelephonyExt;
    if-eqz v0, :cond_0

    .line 352
    invoke-interface {v0}, Landroid/telephony/ITelephonyExt;->get34GCapabilityPhoneId()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 357
    .end local v0    # "phone":Landroid/telephony/ITelephonyExt;
    :cond_0
    :goto_0
    sget-object v2, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get34GCapabilityPhoneId, phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return v1

    .line 353
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static get34GCapabilitySubId()I
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 361
    const/4 v1, 0x0

    .line 362
    .local v1, "capabilitySubId":I
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->get34GCapabilityPhoneId()I

    move-result v0

    .line 363
    .local v0, "capabilityPhoneId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v2

    .line 364
    .local v2, "subId":[I
    if-eqz v2, :cond_0

    aget v3, v2, v6

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 365
    sget-object v3, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get34GCapabilitySubId subId[0] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    aget v1, v2, v6

    .line 371
    :goto_0
    return v1

    .line 368
    :cond_0
    sget-object v3, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->TAG:Ljava/lang/String;

    const-string v4, "get34GCapabilitySubId Invalid subId"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getNetTitleFromRes(Landroid/content/Context;)[Ljava/lang/String;
    .locals 2
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    .line 132
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->isSupport4GProduct:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 138
    :goto_0
    return-object v0

    .line 135
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->isSupportOnly3G(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static isSupportOnly3G(Landroid/content/Context;)Z
    .locals 4
    .param p0, "con"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 115
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "imsi":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 127
    :cond_0
    :goto_0
    return v1

    .line 118
    :cond_1
    sget-object v3, Landroid/os/BuildExt;->IS_TD_PLATFORM:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 119
    const-string v3, "46001"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "46006"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    .line 120
    goto :goto_0

    .line 124
    :cond_3
    const-string v3, "46000"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "46002"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_4
    move v1, v2

    .line 125
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized disableAllItem()V
    .locals 3

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mNetworkPrefList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 283
    .local v0, "networkPrefIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 282
    .end local v0    # "networkPrefIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 286
    .restart local v0    # "networkPrefIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized enableAllItem()V
    .locals 3

    .prologue
    .line 289
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->TAG:Ljava/lang/String;

    const-string v2, "enableAllItem"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mNetworkPrefList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 291
    .local v0, "networkPrefIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;->enabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 289
    .end local v0    # "networkPrefIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 294
    .restart local v0    # "networkPrefIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;>;"
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public getCheckedItem()Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mCheckedItem:Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;

    return-object v0
.end method

.method public getNetworkPrefList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mNetworkPrefList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPreMode()I
    .locals 5

    .prologue
    .line 148
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->get34GCapabilitySubId()I

    move-result v1

    .line 149
    .local v1, "phoneSubId":I
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preferred_network_mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->preferredNetworkMode:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 155
    .local v0, "mode":I
    if-gez v0, :cond_0

    .line 156
    const-string v2, "NetworkPrefHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error read mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const/4 v0, 0x0

    .line 160
    .end local v0    # "mode":I
    :cond_0
    return v0
.end method

.method public declared-synchronized setChecked(Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;)V
    .locals 4
    .param p1, "checkedItem"    # Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    sget-object v2, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->TAG:Ljava/lang/String;

    const-string v3, "setChecked called"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mNetworkPrefList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 166
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mNetworkPrefList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;

    .line 167
    .local v1, "item":Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;
    iget-object v2, v1, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;->checked:Z

    .line 169
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mCheckedItem:Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;

    if-eq v1, v2, :cond_0

    .line 170
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->changeIdIndex(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->setPrefMode(I)Z

    .line 171
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mCheckedItem:Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;->setChecked(Z)V

    .line 172
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mCheckedItem:Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .end local v1    # "item":Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;
    :cond_0
    monitor-exit p0

    return-void

    .line 165
    .restart local v1    # "item":Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    .end local v0    # "i":I
    .end local v1    # "item":Lcom/android/systemui/statusbar/phone/wifi/CheckBoxItem;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setPrefMode(I)Z
    .locals 6
    .param p1, "mode"    # I

    .prologue
    .line 304
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->get34GCapabilitySubId()I

    move-result v1

    .line 305
    .local v1, "phoneSubId":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preferred_network_mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->preferredNetworkMode:I

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 308
    .local v2, "settingsNetworkMode":I
    sget-object v3, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPrefMode phoneSubId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "get setted is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " set to mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    if-eq p1, v2, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->disableAllItem()V

    .line 312
    move v0, p1

    .line 313
    .local v0, "netTypeTo":I
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper$1;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper$1;-><init>(Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 339
    .end local v0    # "netTypeTo":I
    :cond_0
    const/4 v3, 0x1

    return v3
.end method
