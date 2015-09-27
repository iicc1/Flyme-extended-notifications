.class public Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;
.super Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;
.source "MobileDataShortCut.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/PhoneStatusBar$IOnAllPanelsCollapsedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$SimStateReceive;,
        Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$LanguageReceiver;
    }
.end annotation


# instance fields
.field private mConnManager:Landroid/net/ConnectivityManager;

.field private mCurrentDataSubId:I

.field private mDescriptionArrow:Landroid/widget/ImageView;

.field private mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

.field private mIsSimReceiveHideAction:Z

.field private mLanguageReceiver:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$LanguageReceiver;

.field private mMobileDataObserver:Landroid/database/ContentObserver;

.field private mMobilePreferObserver:Landroid/database/ContentObserver;

.field private mMultiSimDataCallSubObserver:Landroid/database/ContentObserver;

.field private mNetDropdownWindow:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

.field private mOldOrientation:I

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mSubIntentFilter:Landroid/content/IntentFilter;

.field private mSubReceiver:Landroid/content/BroadcastReceiver;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private networkTitleArry:[Ljava/lang/String;

.field private simStateReceive:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$SimStateReceive;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;-><init>(Landroid/content/Context;)V

    .line 46
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mIsSimReceiveHideAction:Z

    .line 60
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mOldOrientation:I

    .line 309
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$3;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mMobileDataObserver:Landroid/database/ContentObserver;

    .line 319
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$4;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mMultiSimDataCallSubObserver:Landroid/database/ContentObserver;

    .line 344
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$5;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mMobilePreferObserver:Landroid/database/ContentObserver;

    .line 504
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$6;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mSubReceiver:Landroid/content/BroadcastReceiver;

    .line 68
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 69
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addOnAllPanelsCollapsedListener(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$IOnAllPanelsCollapsedListener;)V

    .line 71
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mConnManager:Landroid/net/ConnectivityManager;

    .line 73
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 77
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mCurrentDataSubId:I

    .line 79
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->initStrArrays()V

    .line 80
    invoke-static {}, Lcom/meizu/findphone/FindPhoneAbstract;->newFindphoneUtils()Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    .line 81
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    invoke-virtual {v0, p1}, Lcom/meizu/findphone/FindPhoneAbstract;->init(Landroid/content/Context;)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    .prologue
    .line 41
    iget v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mCurrentDataSubId:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;
    .param p1, "x1"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mCurrentDataSubId:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)Landroid/database/ContentObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mMobileDataObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->setDescriptionStr()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->initStrArrays()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mIsSimReceiveHideAction:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mIsSimReceiveHideAction:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->registerPreferredNetworkModeObserverForSubRecordChange(Landroid/content/Intent;)V

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mNetDropdownWindow:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mNetDropdownWindow:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->dismissWifiDialog()V

    .line 393
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mNetDropdownWindow:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mNetDropdownWindow:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->dismiss()V

    .line 396
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mNetDropdownWindow:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    .line 398
    :cond_1
    return-void
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "userHandle"    # I

    .prologue
    .line 196
    invoke-static {p0, p1, p3}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .line 200
    .end local p2    # "def":I
    :cond_0
    :goto_0
    return p2

    .line 199
    .restart local p2    # "def":I
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private initStrArrays()V
    .locals 1

    .prologue
    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->getNetTitleFromRes(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->networkTitleArry:[Ljava/lang/String;

    .line 270
    return-void
.end method

.method public static isValidSubId(ILandroid/content/Context;)Z
    .locals 6
    .param p0, "subId"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 540
    const-string v3, "MobileDataShortCut"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isValidSubId subId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    const/4 v1, 0x0

    .line 542
    .local v1, "isValid":Z
    const/4 v2, 0x0

    .line 543
    .local v2, "subIds":[I
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v2

    .line 544
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 545
    aget v3, v2, v0

    if-ne v3, p0, :cond_1

    .line 546
    const/4 v1, 0x1

    .line 550
    :cond_0
    const-string v3, "MobileDataShortCut"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "is valid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    return v1

    .line 544
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private registerObserver()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x2

    .line 353
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v4

    if-ne v4, v9, :cond_1

    .line 354
    const-string v4, "MobileDataShortCut"

    const-string v5, "single sim, registerContentObserver with MOBILE_DATA"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    const-string v4, "mobile_data"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 357
    .local v0, "mobileDataUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v0, v8, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 377
    .end local v0    # "mobileDataUri":Landroid/net/Uri;
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->get34GCapabilitySubId()I

    move-result v3

    .line 378
    .local v3, "phoneSubId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preferred_network_mode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 381
    .local v1, "mobilePreferUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mMobilePreferObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v1, v8, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 383
    return-void

    .line 360
    .end local v1    # "mobilePreferUri":Landroid/net/Uri;
    .end local v3    # "phoneSubId":I
    :cond_1
    const-string v4, "MobileDataShortCut"

    const-string v5, "dual sim, registerContentObserver with MULTI_SIM_DATA_CALL_SUBSCRIPTION"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    const-string v4, "multi_sim_data_call"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 363
    .local v2, "multiSimDataCallSubUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mMultiSimDataCallSubObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v2, v8, v5, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 369
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mCurrentDataSubId:I

    .line 370
    iget v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mCurrentDataSubId:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->isValidSubId(ILandroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 371
    const-string v4, "MobileDataShortCut"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerContentObserver mDataUseObserverUsingSub with sub"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mCurrentDataSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mobile_data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mCurrentDataSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mMobileDataObserver:Landroid/database/ContentObserver;

    invoke-virtual {v4, v5, v9, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto/16 :goto_0
.end method

.method private registerPreferredNetworkModeObserver()V
    .locals 6

    .prologue
    .line 523
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->get34GCapabilitySubId()I

    move-result v0

    .line 524
    .local v0, "phoneSubId":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preferred_network_mode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mMobilePreferObserver:Landroid/database/ContentObserver;

    const/4 v5, -0x2

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 526
    const-string v1, "MobileDataShortCut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Register registerPreferredNetworkModeObserver phoneSubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    return-void
.end method

.method private registerPreferredNetworkModeObserverForSubRecordChange(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 515
    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 516
    const-string v0, "MobileDataShortCut"

    const-string v1, "registerPreferredNetworkModeObserverForSubRecordChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->setDescriptionStr()V

    .line 518
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->unregisterPreferredNetworkModeObserver()V

    .line 519
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->registerPreferredNetworkModeObserver()V

    .line 521
    :cond_0
    return-void
.end method

.method private registerReceivers()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 427
    new-instance v2, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$SimStateReceive;

    invoke-direct {v2, p0, v4}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$SimStateReceive;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$1;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->simStateReceive:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$SimStateReceive;

    .line 428
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 429
    .local v1, "simIntentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 431
    sget-object v2, Landroid/os/BuildExt;->IS_M1_NOTE:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Landroid/os/BuildExt;->IS_M1:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 432
    :cond_0
    const-string v2, "android.intent.action.hide_ntmode_menu"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 434
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->simStateReceive:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$SimStateReceive;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 436
    new-instance v2, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$LanguageReceiver;

    invoke-direct {v2, p0, v4}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$LanguageReceiver;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$1;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mLanguageReceiver:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$LanguageReceiver;

    .line 437
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 439
    .local v0, "languageFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mLanguageReceiver:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$LanguageReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 441
    return-void
.end method

.method private setDescriptionStr()V
    .locals 7

    .prologue
    const v6, 0x7f0b0017

    .line 274
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->get34GCapabilitySubId()I

    move-result v1

    .line 275
    .local v1, "phoneSubId":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v3

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

    move-result v0

    .line 279
    .local v0, "mode":I
    const-string v3, "MobileDataShortCut"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDescriptionStr mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    sget-object v3, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/BuildExt;->IS_MOBILE_PUBLIC:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 285
    :cond_0
    const-string v3, "MobileDataShortCut"

    const-string v4, "setDescriptionStr CDMA PRJ disable network mode change"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getDescription()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    .line 307
    :goto_0
    return-void

    .line 291
    :cond_1
    if-gez v0, :cond_2

    .line 292
    const-string v3, "MobileDataShortCut"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error read mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v0, 0x0

    .line 295
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->networkTitleArry:[Ljava/lang/String;

    array-length v3, v3

    invoke-static {v0, v3}, Lcom/android/systemui/statusbar/phone/NetworkPrefHelper;->changeToStrIndex(II)I

    move-result v2

    .line 296
    .local v2, "strIndex":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->networkTitleArry:[Ljava/lang/String;

    if-nez v3, :cond_3

    .line 297
    const-string v3, "MobileDataShortCut"

    const-string v4, "networkTitleArry is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getDescription()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 301
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->networkTitleArry:[Ljava/lang/String;

    array-length v3, v3

    if-lt v2, v3, :cond_4

    .line 302
    const-string v3, "MobileDataShortCut"

    const-string v4, "mode >= networkTitleArry.length"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getDescription()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 306
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getDescription()Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->networkTitleArry:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private shouldDisableNetItem()Z
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 406
    sget-object v4, Landroid/os/BuildExt;->IS_TD_PLATFORM:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroid/os/BuildExt;->IS_MOBILE_PUBLIC:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 423
    :cond_0
    :goto_0
    return v2

    .line 409
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mIsSimReceiveHideAction:Z

    if-nez v4, :cond_0

    .line 413
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 415
    .local v1, "tele":Landroid/telephony/TelephonyManager;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    .line 418
    .local v0, "isAirplaneMode":Z
    :goto_1
    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    if-eq v4, v6, :cond_2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    if-ne v4, v6, :cond_0

    :cond_2
    if-nez v0, :cond_0

    move v2, v3

    .line 423
    goto :goto_0

    .end local v0    # "isAirplaneMode":Z
    :cond_3
    move v0, v3

    .line 415
    goto :goto_1
.end method

.method private toggle(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const v3, 0x3f4ccccd    # 0.8f

    const v2, 0x3e4ccccd    # 0.2f

    .line 144
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    .line 145
    .local v0, "dataEnabled":Z
    if-eqz v0, :cond_1

    .line 147
    new-instance v1, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$1;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->shouldDisableNetItem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->setViewAlpha(F)V

    .line 172
    :goto_0
    return-void

    .line 158
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->setIconAlpha(F)V

    .line 159
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->setDescriptionAlpha(F)V

    goto :goto_0

    .line 163
    :cond_1
    new-instance v1, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$2;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 169
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->setViewAlpha(F)V

    goto :goto_0
.end method

.method private unregisterPreferredNetworkModeObserver()V
    .locals 2

    .prologue
    .line 529
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mMobilePreferObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 530
    const-string v0, "MobileDataShortCut"

    const-string v1, "Register unregisterPreferredNetworkModeObserver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    return-void
.end method


# virtual methods
.method protected getDescriptionArrow()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mDescriptionArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-string v0, "MobileDataShortCut"

    return-object v0
.end method

.method public onAllPanelsCollapsed()V
    .locals 0

    .prologue
    .line 387
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->dismissDialog()V

    .line 388
    return-void
.end method

.method protected onClickDescriptionArea(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->shouldDisableNetItem()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    :goto_0
    return-void

    .line 184
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->dismissDialog()V

    .line 185
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mNetDropdownWindow:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    if-nez v1, :cond_1

    .line 186
    new-instance v1, Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mNetDropdownWindow:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    .line 188
    :cond_1
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 189
    .local v0, "location":[I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 190
    const/4 v1, 0x1

    aget v2, v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 191
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mNetDropdownWindow:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->setShowPos([I)V

    .line 192
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mNetDropdownWindow:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->show()V

    goto :goto_0
.end method

.method protected onClickIcon(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 124
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onClickIcon(Landroid/view/View;)V

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    invoke-virtual {v0}, Lcom/meizu/findphone/FindPhoneAbstract;->isFindphoneLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getToast()Lcom/android/systemui/statusbar/phone/widget/util/MyToast;

    move-result-object v0

    const v1, 0x7f0b00f4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/widget/util/MyToast;->show(II)V

    goto :goto_0

    .line 134
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mCurrentDataSubId:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->isValidSubId(ILandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getToast()Lcom/android/systemui/statusbar/phone/widget/util/MyToast;

    move-result-object v0

    const v1, 0x7f0b00f8

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/widget/util/MyToast;->show(II)V

    goto :goto_0

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->toggle(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 492
    const-string v0, "MobileDataShortCut"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged orientation old: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mOldOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 495
    iget v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mOldOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 496
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mNetDropdownWindow:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mNetDropdownWindow:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->dismiss()V

    .line 499
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mOldOrientation:I

    .line 501
    :cond_1
    return-void
.end method

.method public onCreateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onCreateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 93
    const v1, 0x7f04006e

    const v2, 0x7f0200ba

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->createViewFromResource(IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 94
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0e0005

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mDescriptionArrow:Landroid/widget/ImageView;

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->registerObserver()V

    .line 100
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mSubIntentFilter:Landroid/content/IntentFilter;

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mSubReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mSubIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->updateViews()V

    .line 106
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->shouldDisableNetItem()Z

    move-result v1

    if-nez v1, :cond_2

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getDescriptionArrow()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->setDescriptionStr()V

    .line 112
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->simStateReceive:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$SimStateReceive;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mLanguageReceiver:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$LanguageReceiver;

    if-nez v1, :cond_1

    .line 115
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->registerReceivers()V

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mOldOrientation:I

    .line 119
    return-object v0

    .line 109
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getDescriptionArrow()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onStateChange()V
    .locals 3

    .prologue
    .line 260
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onStateChange()V

    .line 261
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mConnManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v0

    .line 265
    .local v0, "dataEnabled":Z
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->collectOnOffStateOfShortCut(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 266
    return-void
.end method

.method public updateViews()V
    .locals 9

    .prologue
    const v8, 0x3e4ccccd    # 0.2f

    const v7, 0x3dcccccd    # 0.1f

    const/4 v6, 0x4

    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 208
    iget v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mCurrentDataSubId:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->isValidSubId(ILandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 209
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    if-ne v3, v0, :cond_2

    .line 210
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "mobile_data"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v0, :cond_1

    .line 219
    .local v0, "dataEnabled":Z
    :goto_0
    const-string v3, "MobileDataShortCut"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateViews - dataEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const/4 v1, 0x0

    .line 222
    .local v1, "useAirMode":Z
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    const/4 v1, 0x1

    .line 226
    :cond_0
    if-eqz v0, :cond_7

    .line 227
    if-eqz v1, :cond_5

    .line 228
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->setViewAlpha(F)V

    .line 229
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getDescriptionArrow()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    :goto_1
    return-void

    .end local v0    # "dataEnabled":Z
    .end local v1    # "useAirMode":Z
    :cond_1
    move v0, v2

    .line 210
    goto :goto_0

    .line 213
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mCurrentDataSubId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v0, :cond_3

    .restart local v0    # "dataEnabled":Z
    :goto_2
    goto :goto_0

    .end local v0    # "dataEnabled":Z
    :cond_3
    move v0, v2

    goto :goto_2

    .line 217
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "dataEnabled":Z
    goto :goto_0

    .line 231
    .restart local v1    # "useAirMode":Z
    :cond_5
    const v3, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->setViewAlpha(F)V

    .line 232
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->shouldDisableNetItem()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 233
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getDescriptionArrow()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 235
    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getDescriptionArrow()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 239
    :cond_7
    if-eqz v1, :cond_8

    .line 240
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->setViewAlpha(F)V

    .line 241
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getDescriptionArrow()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 244
    :cond_8
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->shouldDisableNetItem()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 245
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->setViewAlpha(F)V

    .line 246
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getDescriptionArrow()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 248
    :cond_9
    invoke-virtual {p0, v8}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->setIconAlpha(F)V

    .line 249
    const v3, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->setDescriptionAlpha(F)V

    .line 250
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getDescriptionArrow()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method
