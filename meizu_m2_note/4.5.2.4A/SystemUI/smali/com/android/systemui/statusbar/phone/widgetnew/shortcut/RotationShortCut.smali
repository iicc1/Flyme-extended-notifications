.class public Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;
.super Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;
.source "RotationShortCut.java"


# instance fields
.field private mRotationObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;-><init>(Landroid/content/Context;)V

    .line 92
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut$1;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;->mRotationObserver:Landroid/database/ContentObserver;

    .line 22
    return-void
.end method

.method public static isRotationModeOn(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 77
    .local v0, "result":Z
    :cond_0
    return v0
.end method

.method private registerObserver()V
    .locals 5

    .prologue
    .line 87
    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 88
    .local v0, "accelerometerRotationUri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;->mRotationObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 90
    return-void
.end method

.method public static setRotationModeOn(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabling"    # Z

    .prologue
    .line 82
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accelerometer_rotation"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 84
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    const-string v0, "RotationShortCut"

    return-object v0
.end method

.method protected onClickDescriptionArea(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    return-void
.end method

.method protected onClickIcon(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onClickIcon(Landroid/view/View;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;->isRotationModeOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;->setRotationModeOn(Landroid/content/Context;Z)V

    .line 47
    return-void

    .line 46
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
    .line 31
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onCreateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 33
    const v1, 0x7f04006d

    const v2, 0x7f0200d5

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;->createViewFromResource(IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 35
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0b001a

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;->setDescriptionLocaleStringFromRes(I)V

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;->registerObserver()V

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;->updateViews()V

    .line 40
    return-object v0
.end method

.method public onStateChange()V
    .locals 3

    .prologue
    .line 66
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onStateChange()V

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;->isRotationModeOn(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SystemUIMobEventUtils;->collectOnOffStateOfShortCut(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 71
    return-void
.end method

.method public updateViews()V
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;->isRotationModeOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;->setViewAlpha(F)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;->setViewAlpha(F)V

    goto :goto_0
.end method
