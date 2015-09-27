.class public Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;
.super Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;
.source "VibrateShortCut.java"


# instance fields
.field private mVibrateObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;-><init>(Landroid/content/Context;)V

    .line 125
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut$1;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;->mVibrateObserver:Landroid/database/ContentObserver;

    .line 24
    return-void
.end method

.method public static isVibrateModeOn(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "vibrate_when_ringing"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerObserver()V
    .locals 5

    .prologue
    .line 120
    const-string v1, "vibrate_when_ringing"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 121
    .local v0, "vibrateUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;->mVibrateObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 123
    return-void
.end method

.method public static setVibrateModeOn(Landroid/content/Context;Z)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabling"    # Z

    .prologue
    const/4 v9, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "vibrate_when_ringing"

    if-eqz p1, :cond_1

    move v3, v4

    :goto_0
    const/4 v8, -0x2

    invoke-static {v6, v7, v3, v8}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 96
    const-string v3, "audio"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 97
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    if-ne v3, v4, :cond_2

    :cond_0
    move v2, v4

    .line 99
    .local v2, "isMuteSwitchOn":Z
    :goto_1
    if-eqz v2, :cond_4

    .line 100
    if-eqz p1, :cond_3

    .line 101
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 113
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, "intent":Landroid/content/Intent;
    const/high16 v3, 0x20000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 115
    const-string v3, "state"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 116
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 117
    return-void

    .end local v0    # "am":Landroid/media/AudioManager;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "isMuteSwitchOn":Z
    :cond_1
    move v3, v5

    .line 89
    goto :goto_0

    .restart local v0    # "am":Landroid/media/AudioManager;
    :cond_2
    move v2, v5

    .line 97
    goto :goto_1

    .line 103
    .restart local v2    # "isMuteSwitchOn":Z
    :cond_3
    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2

    .line 106
    :cond_4
    if-eqz p1, :cond_5

    .line 107
    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2

    .line 109
    :cond_5
    invoke-virtual {v0, v9}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "VibrateShortCut"

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
    .line 47
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onClickIcon(Landroid/view/View;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;->isVibrateModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;->setVibrateModeOn(Landroid/content/Context;Z)V

    .line 49
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 33
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onCreateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    const v1, 0x7f04006d

    const v2, 0x7f0200d6

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;->createViewFromResource(IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 37
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0b0023

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;->setDescriptionLocaleStringFromRes(I)V

    .line 39
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;->registerObserver()V

    .line 41
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;->updateViews()V

    .line 42
    return-object v0
.end method

.method public onStateChange()V
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onStateChange()V

    .line 72
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;->isVibrateModeOn(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SystemUIMobEventUtils;->collectOnOffStateOfShortCut(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 73
    return-void
.end method

.method public updateViews()V
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;->isVibrateModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;->setViewAlpha(F)V

    .line 63
    :goto_0
    return-void

    .line 61
    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;->setViewAlpha(F)V

    goto :goto_0
.end method
