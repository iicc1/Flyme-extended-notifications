.class public Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;
.super Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;
.source "AirplaneShortCut.java"


# instance fields
.field private mAirplaneReceiver:Landroid/content/BroadcastReceiver;

.field private mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

.field private mMobileDataShortCut:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mobileDataShortCut"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;-><init>(Landroid/content/Context;)V

    .line 146
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut$1;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->mAirplaneReceiver:Landroid/content/BroadcastReceiver;

    .line 30
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->mMobileDataShortCut:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    .line 31
    invoke-static {}, Lcom/meizu/findphone/FindPhoneAbstract;->newFindphoneUtils()Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    invoke-virtual {v0, p1}, Lcom/meizu/findphone/FindPhoneAbstract;->init(Landroid/content/Context;)V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;)Lcom/meizu/findphone/FindPhoneAbstract;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    return-object v0
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isTelephoneOffhook(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 128
    .local v0, "telephonyManager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 181
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 182
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v1, "meizu.intent.action.FLYME_FINDPHONE_LOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v1, "meizu.intent.action.FLYME_FINDPHONE_UNLOCK"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->mAirplaneReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 188
    return-void
.end method

.method public static setAirplaneModeOn(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabling"    # Z

    .prologue
    .line 137
    const-string v1, "AirplaneShortCut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAirplaneModeOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 143
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 144
    return-void

    .line 138
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateViewsAtFirstStart()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    invoke-virtual {v0}, Lcom/meizu/findphone/FindPhoneAbstract;->isFindphoneLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    const v0, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->setViewAlpha(F)V

    .line 83
    :goto_0
    return-void

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->setViewAlpha(F)V

    goto :goto_0

    .line 81
    :cond_1
    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->setViewAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "AirplaneShortCut"

    return-object v0
.end method

.method protected onClickDescriptionArea(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    return-void
.end method

.method protected onClickIcon(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onClickIcon(Landroid/view/View;)V

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    invoke-virtual {v0}, Lcom/meizu/findphone/FindPhoneAbstract;->isFindphoneLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->isTelephoneOffhook(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->setAirplaneModeOn(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 42
    const v1, 0x7f04006d

    const v2, 0x7f0200b3

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->createViewFromResource(IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 44
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0b0021

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->setDescriptionLocaleStringFromRes(I)V

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->registerReceiver()V

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->updateViewsAtFirstStart()V

    .line 49
    return-object v0
.end method

.method public onStateChange()V
    .locals 3

    .prologue
    .line 102
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onStateChange()V

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SystemUIMobEventUtils;->collectOnOffStateOfShortCut(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 107
    return-void
.end method

.method public updateViews()V
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 88
    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->setViewAlpha(F)V

    .line 94
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->mMobileDataShortCut:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->mMobileDataShortCut:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->updateViews()V

    .line 97
    :cond_0
    return-void

    .line 90
    :cond_1
    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->setViewAlpha(F)V

    goto :goto_0
.end method
