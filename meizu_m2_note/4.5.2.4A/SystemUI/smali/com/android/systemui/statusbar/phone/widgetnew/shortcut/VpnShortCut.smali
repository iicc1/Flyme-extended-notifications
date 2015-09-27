.class public Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;
.super Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;
.source "VpnShortCut.java"


# instance fields
.field private mCurrentState:I

.field private mICM:Landroid/net/IConnectivityManager;

.field private mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

.field private mSBM:Landroid/app/StatusBarManager;

.field private mVpnReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;-><init>(Landroid/content/Context;)V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->mCurrentState:I

    .line 211
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut$3;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->mVpnReceiver:Landroid/content/BroadcastReceiver;

    .line 40
    const-string v0, "connectivity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->mICM:Landroid/net/IConnectivityManager;

    .line 42
    const-string v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->mSBM:Landroid/app/StatusBarManager;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->getVpnCurrentState()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;)Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;)Landroid/app/StatusBarManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->mSBM:Landroid/app/StatusBarManager;

    return-object v0
.end method

.method private getVpnCurrentState()I
    .locals 4

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->mICM:Landroid/net/IConnectivityManager;

    .line 116
    .local v0, "cm":Landroid/net/IConnectivityManager;
    const/4 v3, 0x0

    .line 118
    .local v3, "state":I
    :try_start_0
    invoke-interface {v0}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo()Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v2

    .line 119
    .local v2, "info":Lcom/android/internal/net/LegacyVpnInfo;
    if-eqz v2, :cond_0

    .line 120
    iget v3, v2, Lcom/android/internal/net/LegacyVpnInfo;->state:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v2    # "info":Lcom/android/internal/net/LegacyVpnInfo;
    :goto_0
    return v3

    .line 124
    .restart local v2    # "info":Lcom/android/internal/net/LegacyVpnInfo;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 127
    .end local v2    # "info":Lcom/android/internal/net/LegacyVpnInfo;
    :catch_0
    move-exception v1

    .line 128
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 129
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 236
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 237
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "meizu.intent.action.VPN_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->mVpnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 239
    return-void
.end method

.method public static setVpnModeOn(Landroid/content/Context;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabling"    # Z

    .prologue
    .line 199
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut$2;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut$2;-><init>(ZLandroid/content/Context;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 209
    return-void
.end method

.method private toggle()V
    .locals 3

    .prologue
    .line 89
    iget v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->mCurrentState:I

    .line 90
    .local v0, "state":I
    if-eqz v0, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->setVpnModeOn(Landroid/content/Context;Z)V

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 94
    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->setVpnModeOn(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private updateViewsAtFirstStart()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->mCurrentState:I

    .line 111
    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->setViewAlpha(F)V

    .line 112
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "VpnShortCut"

    return-object v0
.end method

.method protected onClickDescriptionArea(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    return-void
.end method

.method protected onClickIcon(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onClickIcon(Landroid/view/View;)V

    .line 84
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->toggle()V

    .line 85
    return-void
.end method

.method public onCreateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 52
    const v1, 0x7f040071

    const v2, 0x7f0200d7

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->createViewFromResource(IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 54
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0b001b

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->setDescriptionLocaleStringFromRes(I)V

    .line 56
    const v1, 0x7f0e0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    .line 57
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut$1;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 75
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->registerReceiver()V

    .line 77
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->updateViewsAtFirstStart()V

    .line 78
    return-object v0
.end method

.method public onStateChange()V
    .locals 4

    .prologue
    .line 180
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onStateChange()V

    .line 181
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->getVpnCurrentState()I

    move-result v0

    .line 183
    .local v0, "state":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->getTag()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/systemui/SystemUIMobEventUtils;->collectOnOffStateOfShortCut(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 193
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    if-nez v0, :cond_0

    .line 188
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->getTag()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/systemui/SystemUIMobEventUtils;->collectOnOffStateOfShortCut(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public updateViews()V
    .locals 4

    .prologue
    const v2, 0x3e4ccccd    # 0.2f

    .line 136
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->getVpnCurrentState()I

    move-result v0

    .line 138
    .local v0, "state":I
    iget v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->mCurrentState:I

    if-ne v1, v0, :cond_0

    .line 175
    :goto_0
    return-void

    .line 142
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 165
    const-string v1, "VpnShortCut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u672a\u77e5\u7684VPN\u72b6\u6001  state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v0, 0x0

    .line 174
    :cond_1
    :goto_1
    iput v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->mCurrentState:I

    goto :goto_0

    .line 146
    :pswitch_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->setViewAlpha(F)V

    goto :goto_1

    .line 150
    :pswitch_1
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->setViewAlpha(F)V

    .line 154
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->setVisibility(I)V

    .line 155
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->isStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->start()V

    goto :goto_1

    .line 161
    :pswitch_3
    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->setViewAlpha(F)V

    goto :goto_1

    .line 142
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
