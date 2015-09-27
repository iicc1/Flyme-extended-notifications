.class public Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;
.super Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;
.source "GpsShortCut.java"


# instance fields
.field private mCurrentMode:I

.field private mFindPhoneUtils:Lcom/meizu/findphone/FindPhoneAbstract;

.field private mGpsObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;-><init>(Landroid/content/Context;)V

    .line 147
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut$1;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->mGpsObserver:Landroid/database/ContentObserver;

    .line 41
    invoke-static {}, Lcom/meizu/findphone/FindPhoneAbstract;->newFindphoneUtils()Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->mFindPhoneUtils:Lcom/meizu/findphone/FindPhoneAbstract;

    .line 42
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->mFindPhoneUtils:Lcom/meizu/findphone/FindPhoneAbstract;

    invoke-virtual {v0, p1}, Lcom/meizu/findphone/FindPhoneAbstract;->init(Landroid/content/Context;)V

    .line 43
    return-void
.end method

.method private isRestricted(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 174
    const-string v1, "user"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 175
    .local v0, "um":Landroid/os/UserManager;
    const-string v1, "no_share_location"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private registerReceiver()V
    .locals 5

    .prologue
    .line 168
    const-string v1, "location_providers_allowed"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 169
    .local v0, "gpsUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->mGpsObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 171
    return-void
.end method

.method private setAgpsEnabled(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabling"    # Z

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "assisted_gps_enabled"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 108
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setLocationMode(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.location.MODE_CHANGING"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 180
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "CURRENT_MODE"

    iget v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->mCurrentMode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 181
    const-string v1, "NEW_MODE"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    const/4 v3, -0x2

    invoke-static {v1, v2, p2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 184
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "GpsShortCut"

    return-object v0
.end method

.method public isGPSModeOn(Landroid/content/Context;I)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # I

    .prologue
    .line 82
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    .line 83
    .local v0, "result":Z
    :goto_0
    const-string v1, "GpsShortCut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isGPSModeOn result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    return v0

    .line 82
    .end local v0    # "result":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onClickDescriptionArea(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    return-void
.end method

.method protected onClickIcon(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onClickIcon(Landroid/view/View;)V

    .line 67
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->mFindPhoneUtils:Lcom/meizu/findphone/FindPhoneAbstract;

    invoke-virtual {v1}, Lcom/meizu/findphone/FindPhoneAbstract;->isFindphoneLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->isRestricted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->getToast()Lcom/android/systemui/statusbar/phone/widget/util/MyToast;

    move-result-object v1

    const v2, 0x7f0b00f6

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/widget/util/MyToast;->show(II)V

    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->mCurrentMode:I

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->isGPSModeOn(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->setGPSModeOn(Landroid/content/Context;Z)V

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->onStateChange()V

    goto :goto_0
.end method

.method public onCreateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onCreateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    const v1, 0x7f04006d

    const v2, 0x7f0200c5

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->createViewFromResource(IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 56
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0b0019

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->setDescriptionLocaleStringFromRes(I)V

    .line 58
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->registerReceiver()V

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->updateViews()V

    .line 61
    return-object v0
.end method

.method public onStateChange()V
    .locals 4

    .prologue
    .line 131
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onStateChange()V

    .line 135
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->mCurrentMode:I

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->isGPSModeOn(Landroid/content/Context;I)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SystemUIMobEventUtils;->collectOnOffStateOfShortCut(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 136
    return-void
.end method

.method public setGPSModeOn(Landroid/content/Context;Z)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabling"    # Z

    .prologue
    .line 88
    if-eqz p2, :cond_0

    .line 89
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->setLocationMode(Landroid/content/Context;I)V

    .line 97
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->setAgpsEnabled(Landroid/content/Context;Z)V

    .line 98
    return-void

    .line 91
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->setLocationMode(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method public updateViews()V
    .locals 4

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->mCurrentMode:I

    .line 120
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->mCurrentMode:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->isGPSModeOn(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->setViewAlpha(F)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->setViewAlpha(F)V

    goto :goto_0
.end method
