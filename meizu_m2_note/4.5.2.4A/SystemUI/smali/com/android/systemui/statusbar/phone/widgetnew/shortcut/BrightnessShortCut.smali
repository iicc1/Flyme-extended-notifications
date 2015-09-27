.class public Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;
.super Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;
.source "BrightnessShortCut.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/PhoneStatusBar$IOnAllPanelsCollapsedListener;


# instance fields
.field private mAutoBrightnessObserver:Landroid/database/ContentObserver;

.field private mBrightnessDialog:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;

.field private mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneStatusBar"    # Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;-><init>(Landroid/content/Context;)V

    .line 117
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut$2;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->mAutoBrightnessObserver:Landroid/database/ContentObserver;

    .line 33
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    .line 34
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addOnAllPanelsCollapsedListener(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$IOnAllPanelsCollapsedListener;)V

    .line 35
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;)Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;
    .param p1, "x1"    # Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;

    .prologue
    .line 22
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->mBrightnessDialog:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;

    return-object p1
.end method

.method public static isAutoBrightnessModeOn(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 136
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 138
    .local v1, "flag":Ljava/lang/Boolean;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_brightness_mode"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_0

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 143
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    :cond_0
    move v2, v3

    .line 138
    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method private registerObserver()V
    .locals 5

    .prologue
    .line 129
    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 130
    .local v0, "autoBrightnessUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->mAutoBrightnessObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 131
    return-void
.end method

.method public static setAutoBrightnessOn(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabling"    # Z

    .prologue
    .line 154
    const-string v0, "BrightnessShortCut"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAutoBrightnessOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 158
    return-void

    .line 155
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dismissBrightnessDialog()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->mBrightnessDialog:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->mBrightnessDialog:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->mBrightnessDialog:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;->dismiss()V

    .line 151
    :cond_0
    return-void
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "BrightnessShortCut"

    return-object v0
.end method

.method public onAllPanelsCollapsed()V
    .locals 0

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->dismissBrightnessDialog()V

    .line 115
    return-void
.end method

.method protected onClickDescriptionArea(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->mBrightnessDialog:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->mBrightnessDialog:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;

    .line 74
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->mBrightnessDialog:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;

    new-instance v2, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut$1;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 83
    :cond_0
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 84
    .local v0, "location":[I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 85
    const/4 v1, 0x1

    aget v2, v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 86
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->mBrightnessDialog:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;->setDialogPosOnScreen([I)V

    .line 87
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->mBrightnessDialog:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->mBrightnessDialog:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;->show()V

    .line 91
    :cond_1
    return-void
.end method

.method protected onClickIcon(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onClickIcon(Landroid/view/View;)V

    .line 59
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->isAutoBrightnessModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->setAutoBrightnessOn(Landroid/content/Context;Z)V

    .line 60
    return-void

    .line 59
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
    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onCreateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    const v1, 0x7f04006c

    const v2, 0x7f0200b6

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->createViewFromResource(IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 48
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0b0020

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->setDescriptionLocaleStringFromRes(I)V

    .line 50
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->registerObserver()V

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->updateViews()V

    .line 53
    return-object v0
.end method

.method public onStateChange()V
    .locals 3

    .prologue
    .line 105
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onStateChange()V

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->isAutoBrightnessModeOn(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SystemUIMobEventUtils;->collectOnOffStateOfShortCut(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 110
    return-void
.end method

.method public updateViews()V
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->isAutoBrightnessModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->setIconAlpha(F)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->setIconAlpha(F)V

    goto :goto_0
.end method
