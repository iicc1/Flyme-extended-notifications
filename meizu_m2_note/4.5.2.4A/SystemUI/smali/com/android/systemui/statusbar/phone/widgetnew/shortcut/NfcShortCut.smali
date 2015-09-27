.class public Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;
.super Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;
.source "NfcShortCut.java"


# instance fields
.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcReceiver:Landroid/content/BroadcastReceiver;

.field private mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;-><init>(Landroid/content/Context;)V

    .line 207
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut$4;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    .line 37
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 38
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;)Landroid/nfc/NfcAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;)Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    return-object v0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 217
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 218
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->mNfcReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 220
    return-void
.end method

.method private toggle()V
    .locals 4

    .prologue
    .line 84
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 90
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_1

    .line 91
    const-string v0, "NfcAdapter.getDefaultAdapter() still equals NULL  when toggle the NfcShortCut!"

    .line 92
    .local v0, "errorMessage":Ljava/lang/String;
    const-string v1, "NfcShortCut"

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->getToast()Lcom/android/systemui/statusbar/phone/widget/util/MyToast;

    move-result-object v1

    const v2, 0x7f0b0026

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/widget/util/MyToast;->show(II)V

    .line 114
    .end local v0    # "errorMessage":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 99
    new-instance v1, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut$2;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 106
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 107
    new-instance v1, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut$3;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private updateViewsAtFirstStart()V
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v0, :cond_0

    .line 125
    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->setViewAlpha(F)V

    .line 130
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->updateViews()V

    goto :goto_0
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const-string v0, "NfcShortCut"

    return-object v0
.end method

.method protected onClickDescriptionArea(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 119
    return-void
.end method

.method protected onClickIcon(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onClickIcon(Landroid/view/View;)V

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->toggle()V

    .line 81
    return-void
.end method

.method public onCreateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 47
    const v1, 0x7f04006f

    const v2, 0x7f0200ce

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->createViewFromResource(IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 51
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0b001d

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->setDescriptionLocaleStringFromRes(I)V

    .line 53
    const v1, 0x7f0e0002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    .line 54
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut$1;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 71
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->registerReceiver()V

    .line 73
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->updateViewsAtFirstStart()V

    .line 74
    return-object v0
.end method

.method public onStateChange()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 135
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onStateChange()V

    .line 136
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_1

    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 139
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_1

    .line 140
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/android/systemui/SystemUIMobEventUtils;->collectOnOffStateOfShortCut(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 145
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    .line 146
    .local v0, "state":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 148
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/systemui/SystemUIMobEventUtils;->collectOnOffStateOfShortCut(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 150
    :cond_2
    if-ne v0, v4, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v3}, Lcom/android/systemui/SystemUIMobEventUtils;->collectOnOffStateOfShortCut(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public updateViews()V
    .locals 4

    .prologue
    const v3, 0x3e4ccccd    # 0.2f

    .line 160
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 163
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v1, :cond_1

    .line 164
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->setViewAlpha(F)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    .line 171
    .local v0, "state":I
    packed-switch v0, :pswitch_data_0

    .line 201
    const-string v1, "NfcShortCut"

    const-string v2, "updateViews()_NfcAdapter.default state is off"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->setViewAlpha(F)V

    goto :goto_0

    .line 173
    :pswitch_0
    const-string v1, "NfcShortCut"

    const-string v2, "updateViews()_NfcAdapter.STATE_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->setViewAlpha(F)V

    goto :goto_0

    .line 177
    :pswitch_1
    const-string v1, "NfcShortCut"

    const-string v2, "updateViews()_NfcAdapter.STATE_ON"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->isStarted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->cancel()V

    .line 184
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->setVisibility(I)V

    .line 186
    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->setViewAlpha(F)V

    goto :goto_0

    .line 190
    :pswitch_2
    const-string v1, "NfcShortCut"

    const-string v2, "updateViews()_NfcAdapter.STATE_TURNING_ON"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->setVisibility(I)V

    .line 195
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->start()V

    goto :goto_0

    .line 198
    :pswitch_3
    const-string v1, "NfcShortCut"

    const-string v2, "updateViews()_NfcAdapter.STATE_TURNING_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
