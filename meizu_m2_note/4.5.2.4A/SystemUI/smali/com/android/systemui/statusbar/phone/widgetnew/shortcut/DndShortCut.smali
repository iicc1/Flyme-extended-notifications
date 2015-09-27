.class public Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/DndShortCut;
.super Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;
.source "DndShortCut.java"


# instance fields
.field private mDNDObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;-><init>(Landroid/content/Context;)V

    .line 123
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/DndShortCut$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/DndShortCut$1;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/DndShortCut;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/DndShortCut;->mDNDObserver:Landroid/database/ContentObserver;

    .line 27
    return-void
.end method

.method public static isDNDModeOn(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 82
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 84
    .local v1, "flag":Ljava/lang/Boolean;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "mz_do_not_disturb_is_working"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 89
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    :cond_0
    move v2, v3

    .line 84
    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private registerObserver()V
    .locals 5

    .prologue
    .line 118
    const-string v1, "mz_do_not_disturb_is_working"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 119
    .local v0, "dndUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/DndShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/DndShortCut;->mDNDObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 121
    return-void
.end method

.method public static setDNDModeOn(Landroid/content/Context;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabling"    # Z

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 98
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "meizu.intent.action.DO_NOT_DISTURB_START"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    .restart local v0    # "intent":Landroid/content/Intent;
    :goto_0
    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 105
    return-void

    .line 101
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .end local v0    # "intent":Landroid/content/Intent;
    const-string v1, "meizu.intent.action.DO_NOT_DISTURB_END"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0    # "intent":Landroid/content/Intent;
    goto :goto_0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    const-string v0, "DndShortCut"

    return-object v0
.end method

.method protected onClickDescriptionArea(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 59
    return-void
.end method

.method protected onClickIcon(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onClickIcon(Landroid/view/View;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/DndShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/DndShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/DndShortCut;->isDNDModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/DndShortCut;->setDNDModeOn(Landroid/content/Context;Z)V

    .line 54
    return-void

    .line 53
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
    .line 36
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onCreateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    const v1, 0x7f04006d

    const v2, 0x7f0200be

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/DndShortCut;->createViewFromResource(IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0b0025

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/DndShortCut;->setDescriptionLocaleStringFromRes(I)V

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/DndShortCut;->registerObserver()V

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/DndShortCut;->updateViews()V

    .line 47
    return-object v0
.end method

.method public onStateChange()V
    .locals 3

    .prologue
    .line 73
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onStateChange()V

    .line 77
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/DndShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/DndShortCut;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/DndShortCut;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/DndShortCut;->isDNDModeOn(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SystemUIMobEventUtils;->collectOnOffStateOfShortCut(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 78
    return-void
.end method

.method public updateViews()V
    .locals 1

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/DndShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/DndShortCut;->isDNDModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/DndShortCut;->setViewAlpha(F)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/DndShortCut;->setViewAlpha(F)V

    goto :goto_0
.end method
