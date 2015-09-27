.class public Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;
.super Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;
.source "HotspotShortCut.java"


# instance fields
.field private mAnimationRepeatCount:I

.field private mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

.field private mHandler:Landroid/os/Handler;

.field private mIsInProgress:Z

.field private mIsTetherEnabled:Z

.field private mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

.field private mTetherEnablerObServer:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;-><init>(Landroid/content/Context;)V

    .line 152
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut$2;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mHandler:Landroid/os/Handler;

    .line 174
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut$3;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mTetherEnablerObServer:Landroid/database/ContentObserver;

    .line 45
    invoke-static {}, Lcom/meizu/findphone/FindPhoneAbstract;->newFindphoneUtils()Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    invoke-virtual {v0, p1}, Lcom/meizu/findphone/FindPhoneAbstract;->init(Landroid/content/Context;)V

    .line 47
    iput v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mAnimationRepeatCount:I

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->isTetherEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mIsTetherEnabled:Z

    .line 49
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mIsInProgress:Z

    .line 50
    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mAnimationRepeatCount:I

    return p1
.end method

.method static synthetic access$008(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;

    .prologue
    .line 30
    iget v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mAnimationRepeatCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mAnimationRepeatCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;)Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mIsInProgress:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mIsTetherEnabled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mIsTetherEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->isTetherEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private isTetherEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_enable_tether_total"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 145
    .local v0, "result":Z
    :goto_0
    const-string v2, "HotspotShortCut"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tether enabled: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_1

    const-string v1, "true"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return v0

    .end local v0    # "result":Z
    :cond_0
    move v0, v1

    .line 143
    goto :goto_0

    .line 145
    .restart local v0    # "result":Z
    :cond_1
    const-string v1, "false"

    goto :goto_1
.end method

.method private registerObserver()V
    .locals 4

    .prologue
    .line 201
    const-string v1, "mz_enable_tether_total"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 202
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mTetherEnablerObServer:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 204
    return-void
.end method

.method private setTetherEnabled(Z)V
    .locals 3
    .param p1, "enabling"    # Z

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mz_enable_tether_total"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 140
    return-void

    .line 138
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "HotspotShortCut"

    return-object v0
.end method

.method protected onClickDescriptionArea(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 115
    return-void
.end method

.method protected onClickIcon(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 90
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onClickIcon(Landroid/view/View;)V

    .line 91
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;

    invoke-virtual {v5}, Lcom/meizu/findphone/FindPhoneAbstract;->isFindphoneLocked()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 95
    :cond_1
    sget-object v5, Landroid/os/BuildExt;->IS_SHOPDEMO:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->getToast()Lcom/android/systemui/statusbar/phone/widget/util/MyToast;

    move-result-object v3

    const v5, 0x7f0b00f5

    invoke-virtual {v3, v5, v4}, Lcom/android/systemui/statusbar/phone/widget/util/MyToast;->show(II)V

    goto :goto_0

    .line 100
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "user"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 101
    .local v2, "userManager":Landroid/os/UserManager;
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 102
    .local v1, "user":Landroid/content/pm/UserInfo;
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    .line 103
    .local v0, "isGuestUser":Z
    :goto_1
    if-eqz v0, :cond_4

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->getToast()Lcom/android/systemui/statusbar/phone/widget/util/MyToast;

    move-result-object v3

    const v5, 0x7f0b00f6

    invoke-virtual {v3, v5, v4}, Lcom/android/systemui/statusbar/phone/widget/util/MyToast;->show(II)V

    goto :goto_0

    .end local v0    # "isGuestUser":Z
    :cond_3
    move v0, v4

    .line 102
    goto :goto_1

    .line 108
    .restart local v0    # "isGuestUser":Z
    :cond_4
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mIsInProgress:Z

    if-nez v5, :cond_0

    .line 109
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mIsInProgress:Z

    .line 110
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mIsTetherEnabled:Z

    if-nez v5, :cond_5

    :goto_2
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->setTetherEnabled(Z)V

    goto :goto_0

    :cond_5
    move v3, v4

    goto :goto_2
.end method

.method public onCreateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 59
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onCreateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    const v1, 0x7f040070

    const v2, 0x7f0200c9

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->createViewFromResource(IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 63
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0b001c

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->setDescriptionLocaleStringFromRes(I)V

    .line 65
    const v1, 0x7f0e0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    .line 66
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut$1;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 83
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->registerObserver()V

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->updateViews()V

    .line 85
    return-object v0
.end method

.method public onStateChange()V
    .locals 3

    .prologue
    .line 130
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onStateChange()V

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->isTetherEnabled()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SystemUIMobEventUtils;->collectOnOffStateOfShortCut(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 135
    return-void
.end method

.method public updateViews()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->isTetherEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mIsTetherEnabled:Z

    .line 120
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mIsTetherEnabled:Z

    if-eqz v0, :cond_0

    .line 121
    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->setViewAlpha(F)V

    .line 125
    :goto_0
    return-void

    .line 123
    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->setViewAlpha(F)V

    goto :goto_0
.end method
