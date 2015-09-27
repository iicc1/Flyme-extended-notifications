.class public Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;
.super Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;
.source "MuteShortCut.java"


# instance fields
.field private mMuteReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;-><init>(Landroid/content/Context;)V

    .line 135
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut$1;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;->mMuteReceiver:Landroid/content/BroadcastReceiver;

    .line 23
    return-void
.end method

.method public static isNormalRingerModeOn(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 100
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 145
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 146
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;->mMuteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 148
    return-void
.end method

.method public static setMuteSwitchOn(Landroid/content/Context;Z)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabling"    # Z

    .prologue
    const/4 v7, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 118
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 119
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "vibrate_when_ringing"

    const/4 v6, -0x2

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v2, :cond_0

    move v1, v2

    .line 120
    .local v1, "isVibrateSwitchOn":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 121
    if-eqz p1, :cond_1

    .line 122
    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 133
    :goto_1
    return-void

    .end local v1    # "isVibrateSwitchOn":Z
    :cond_0
    move v1, v3

    .line 119
    goto :goto_0

    .line 124
    .restart local v1    # "isVibrateSwitchOn":Z
    :cond_1
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_1

    .line 127
    :cond_2
    if-eqz p1, :cond_3

    .line 128
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_1

    .line 130
    :cond_3
    invoke-virtual {v0, v7}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_1
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    const-string v0, "MuteShortCut"

    return-object v0
.end method

.method protected onClickDescriptionArea(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 54
    return-void
.end method

.method protected onClickIcon(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onClickIcon(Landroid/view/View;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;->isNormalRingerModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 46
    .local v0, "enabling":Z
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;->setMuteSwitchOn(Landroid/content/Context;Z)V

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;->onStateChange()V

    .line 49
    return-void
.end method

.method public onCreateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 32
    const v1, 0x7f04006d

    const v2, 0x7f0200cd

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;->createViewFromResource(IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0b0022

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;->setDescriptionLocaleStringFromRes(I)V

    .line 36
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;->registerReceiver()V

    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;->updateViews()V

    .line 39
    return-object v0
.end method

.method public onStateChange()V
    .locals 3

    .prologue
    .line 75
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onStateChange()V

    .line 79
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;->isNormalRingerModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->collectOnOffStateOfShortCut(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 80
    return-void

    .line 79
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateViews()V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;->isNormalRingerModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 66
    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;->setViewAlpha(F)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;->setViewAlpha(F)V

    goto :goto_0
.end method
