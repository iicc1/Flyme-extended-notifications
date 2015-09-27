.class public Lcom/android/systemui/statusbar/SignalClusterViewTelecom;
.super Landroid/widget/LinearLayout;
.source "SignalClusterViewTelecom.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;


# instance fields
.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneIconId:I

.field private mGeminiSimNum:I

.field private mIsAirplaneMode:Z

.field mMobile:[Landroid/widget/ImageView;

.field mMobileActiveDataWrapper:[Landroid/view/ViewGroup;

.field mMobileActivity:[Lcom/android/systemui/statusbar/AnimatedImageView;

.field private mMobileActivityId:[I

.field private mMobileCdma1x:Landroid/view/ViewGroup;

.field private mMobileCdma1xId:I

.field private mMobileCdma1xSignal:Landroid/widget/ImageView;

.field private mMobileCdma1xType:Landroid/widget/ImageView;

.field private mMobileCdma3g:Landroid/view/ViewGroup;

.field private mMobileCdma3gId:I

.field private mMobileCdma3gSignal:Landroid/widget/ImageView;

.field private mMobileCdma3gType:Landroid/widget/ImageView;

.field private mMobileCdmaActiveDataWrapper:Landroid/view/ViewGroup;

.field private mMobileCdmaDataActivity:Lcom/android/systemui/statusbar/AnimatedImageView;

.field private mMobileCdmaDataType:Landroid/widget/ImageView;

.field private mMobileCdmaGroup:Landroid/view/ViewGroup;

.field mMobileDataType:[Landroid/widget/ImageView;

.field private mMobileDescription:[Ljava/lang/String;

.field mMobileGroup:[Landroid/view/ViewGroup;

.field private mMobileStrengthId:[I

.field mMobileType:[Landroid/widget/ImageView;

.field private mMobileTypeDescription:[Ljava/lang/String;

.field private mMobileTypeId:[I

.field private mMobileVisible:[Z

.field mNC:Lcom/android/systemui/statusbar/policy/NetworkController;

.field mSpacer:[Landroid/view/View;

.field mWifi:Lcom/android/systemui/statusbar/AnimatedImageView;

.field mWifiActivity:Lcom/android/systemui/statusbar/AnimatedImageView;

.field private mWifiActivityId:I

.field private mWifiConnecting:Z

.field private mWifiDescription:Ljava/lang/String;

.field mWifiGroup:Landroid/view/ViewGroup;

.field private mWifiStrengthId:I

.field private mWifiVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifiVisible:Z

    .line 48
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifiConnecting:Z

    .line 49
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifiStrengthId:I

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifiActivityId:I

    .line 54
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mIsAirplaneMode:Z

    .line 55
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mAirplaneIconId:I

    .line 66
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdma3gId:I

    .line 67
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdma1xId:I

    .line 72
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mGeminiSimNum:I

    .line 85
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SIMHelper;->getNumOfSim(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mGeminiSimNum:I

    .line 86
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mGeminiSimNum:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileDescription:[Ljava/lang/String;

    .line 87
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mGeminiSimNum:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileTypeDescription:[Ljava/lang/String;

    .line 88
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mGeminiSimNum:I

    new-array v1, v1, [Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileGroup:[Landroid/view/ViewGroup;

    .line 89
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mGeminiSimNum:I

    new-array v1, v1, [Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileActiveDataWrapper:[Landroid/view/ViewGroup;

    .line 90
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mGeminiSimNum:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobile:[Landroid/widget/ImageView;

    .line 91
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mGeminiSimNum:I

    new-array v1, v1, [Lcom/android/systemui/statusbar/AnimatedImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileActivity:[Lcom/android/systemui/statusbar/AnimatedImageView;

    .line 92
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mGeminiSimNum:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileType:[Landroid/widget/ImageView;

    .line 93
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mGeminiSimNum:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileDataType:[Landroid/widget/ImageView;

    .line 94
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mGeminiSimNum:I

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mSpacer:[Landroid/view/View;

    .line 95
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mGeminiSimNum:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileActivityId:[I

    .line 96
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mGeminiSimNum:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileTypeId:[I

    .line 97
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mGeminiSimNum:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileStrengthId:[I

    .line 98
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mGeminiSimNum:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileVisible:[Z

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mGeminiSimNum:I

    if-ge v0, v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileStrengthId:[I

    aput v2, v1, v0

    .line 102
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileTypeId:[I

    aput v2, v1, v0

    .line 103
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileActivityId:[I

    aput v2, v1, v0

    .line 100
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    return-void
.end method

.method private apply()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 302
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 510
    :cond_0
    return-void

    .line 313
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifiVisible:Z

    if-eqz v2, :cond_10

    .line 314
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 315
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifi:Lcom/android/systemui/statusbar/AnimatedImageView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifiConnecting:Z

    if-eqz v2, :cond_d

    const v2, 0x7f020400

    :goto_0
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/AnimatedImageView;->setImageResource(I)V

    .line 316
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifiActivity:Lcom/android/systemui/statusbar/AnimatedImageView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifiConnecting:Z

    if-eqz v2, :cond_e

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/AnimatedImageView;->setImageResource(I)V

    .line 317
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifiGroup:Landroid/view/ViewGroup;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifiConnecting:Z

    if-eqz v2, :cond_f

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 327
    :goto_3
    const/4 v1, 0x1

    .line 329
    .local v1, "noSim":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mGeminiSimNum:I

    if-ge v0, v2, :cond_22

    .line 332
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileVisible:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_21

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mIsAirplaneMode:Z

    if-nez v2, :cond_21

    .line 333
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobile:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileStrengthId:[I

    aget v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 337
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->isRoaming(I)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 338
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileType:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileTypeId:[I

    aget v4, v4, v0

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->getRoamingIconId(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 342
    :goto_5
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->hasDataConnection(I)Z

    move-result v2

    if-nez v2, :cond_12

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->isRoaming(I)Z

    move-result v2

    if-nez v2, :cond_12

    .line 344
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileDataType:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    .line 345
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileDataType:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 347
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileActiveDataWrapper:[Landroid/view/ViewGroup;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    .line 348
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileActiveDataWrapper:[Landroid/view/ViewGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 373
    :cond_3
    :goto_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileActivity:[Lcom/android/systemui/statusbar/AnimatedImageView;

    aget-object v2, v2, v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileActivityId:[I

    aget v4, v4, v0

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/AnimatedImageView;->setImageResource(I)V

    .line 374
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v2, v2, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileTypeDescription:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileDescription:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 378
    if-nez v0, :cond_1e

    sget-object v2, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 379
    const-string v2, "SignalClusterView"

    const-string v4, "telecom sim slot, needs show special signal indicators."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->showDataAndVoice()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 382
    const-string v2, "SignalClusterView"

    const-string v4, "telecom slot: showDataAndVoice is true"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdma3gSignal:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    .line 385
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdma3gSignal:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileStrengthId:[I

    aget v4, v4, v0

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->getCdmaDataSignalId(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 387
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdma3gType:Landroid/widget/ImageView;

    if-eqz v2, :cond_5

    .line 388
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdma3gType:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileTypeId:[I

    aget v4, v4, v0

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->getCdmaDataNetTypeId(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 390
    :cond_5
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->hasDataConnection(I)Z

    move-result v2

    if-nez v2, :cond_17

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->isRoaming(I)Z

    move-result v2

    if-nez v2, :cond_17

    .line 392
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdmaDataType:Landroid/widget/ImageView;

    if-eqz v2, :cond_6

    .line 393
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdmaDataType:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 395
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdmaActiveDataWrapper:Landroid/view/ViewGroup;

    if-eqz v2, :cond_7

    .line 396
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdmaActiveDataWrapper:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 423
    :cond_7
    :goto_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdmaDataActivity:Lcom/android/systemui/statusbar/AnimatedImageView;

    if-eqz v2, :cond_8

    .line 424
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdmaDataActivity:Lcom/android/systemui/statusbar/AnimatedImageView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileActivityId:[I

    aget v4, v4, v0

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/AnimatedImageView;->setImageResource(I)V

    .line 427
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdma1xSignal:Landroid/widget/ImageView;

    if-eqz v2, :cond_9

    .line 428
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdma1xSignal:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileStrengthId:[I

    aget v4, v4, v0

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->getCdmaVoiceSignalId(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 430
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdma1xType:Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    .line 431
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdma1xType:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileTypeId:[I

    aget v4, v4, v0

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->getCdmaVoiceNetTypeId(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 434
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_b

    .line 435
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 437
    :cond_b
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 329
    :cond_c
    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 315
    .end local v0    # "i":I
    .end local v1    # "noSim":Z
    :cond_d
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifiStrengthId:I

    goto/16 :goto_0

    .line 316
    :cond_e
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifiActivityId:I

    goto/16 :goto_1

    .line 317
    :cond_f
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifiDescription:Ljava/lang/String;

    goto/16 :goto_2

    .line 319
    :cond_10
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    .line 340
    .restart local v0    # "i":I
    .restart local v1    # "noSim":Z
    :cond_11
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileType:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileTypeId:[I

    aget v4, v4, v0

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->getGsmDataNetTypeId(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_5

    .line 350
    :cond_12
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->isDataActivityDormant(I)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 353
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileActiveDataWrapper:[Landroid/view/ViewGroup;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    .line 354
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileActiveDataWrapper:[Landroid/view/ViewGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 355
    const-string v2, "SignalClusterView"

    const-string v4, "data activity dormant, hide data connectin layout."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 359
    :cond_13
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileDataType:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    if-eqz v2, :cond_14

    .line 360
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileDataType:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileTypeId:[I

    aget v4, v4, v0

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->getGsmDataNetTypeId(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 362
    :cond_14
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileActiveDataWrapper:[Landroid/view/ViewGroup;

    aget-object v2, v2, v0

    if-eqz v2, :cond_15

    .line 363
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileActiveDataWrapper:[Landroid/view/ViewGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 365
    :cond_15
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->hasDataConnection(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 367
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileActivity:[Lcom/android/systemui/statusbar/AnimatedImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/AnimatedImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 370
    :cond_16
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileActivity:[Lcom/android/systemui/statusbar/AnimatedImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/AnimatedImageView;->setVisibility(I)V

    goto/16 :goto_6

    .line 398
    :cond_17
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->isDataActivityDormant(I)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 401
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdmaActiveDataWrapper:Landroid/view/ViewGroup;

    if-eqz v2, :cond_7

    .line 402
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdmaActiveDataWrapper:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 403
    const-string v2, "SignalClusterView"

    const-string v4, "data activity dormant, hide data connectin layout(dual bar)."

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .line 407
    :cond_18
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdmaDataType:Landroid/widget/ImageView;

    if-eqz v2, :cond_19

    .line 408
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdmaDataType:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileTypeId:[I

    aget v4, v4, v0

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->getCdmaDataNetTypeId(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->convertCdmaDataNetTypeId(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 410
    :cond_19
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdmaActiveDataWrapper:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1a

    .line 411
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdmaActiveDataWrapper:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 413
    :cond_1a
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdmaDataActivity:Lcom/android/systemui/statusbar/AnimatedImageView;

    if-eqz v2, :cond_7

    .line 414
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->hasDataConnection(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 416
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdmaDataActivity:Lcom/android/systemui/statusbar/AnimatedImageView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/AnimatedImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 419
    :cond_1b
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdmaDataActivity:Lcom/android/systemui/statusbar/AnimatedImageView;

    invoke-virtual {v2, v6}, Lcom/android/systemui/statusbar/AnimatedImageView;->setVisibility(I)V

    goto/16 :goto_7

    .line 439
    :cond_1c
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1d

    .line 440
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 442
    :cond_1d
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_8

    .line 445
    :cond_1e
    sget-object v2, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_20

    .line 452
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/SIMHelper;->isSimInserted(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 453
    const/4 v1, 0x0

    .line 454
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 459
    :goto_9
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mGeminiSimNum:I

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_c

    if-eqz v1, :cond_c

    .line 460
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v2, v2, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_8

    .line 456
    :cond_1f
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_9

    .line 466
    :cond_20
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_8

    .line 470
    :cond_21
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 471
    if-nez v0, :cond_c

    .line 472
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    if-eqz v2, :cond_c

    .line 473
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_8

    .line 479
    :cond_22
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mIsAirplaneMode:Z

    if-eqz v2, :cond_23

    .line 480
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mAirplane:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mAirplaneIconId:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 481
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 496
    :goto_a
    const/4 v0, 0x0

    :goto_b
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mGeminiSimNum:I

    if-ge v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 484
    :cond_23
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a
.end method

.method private convertCdmaDataNetTypeId(I)I
    .locals 1
    .param p1, "typeIcon"    # I

    .prologue
    .line 652
    const/4 v0, 0x0

    .line 653
    .local v0, "returnVal":I
    sparse-switch p1, :sswitch_data_0

    .line 666
    :goto_0
    return v0

    .line 655
    :sswitch_0
    const v0, 0x7f020391

    .line 656
    goto :goto_0

    .line 658
    :sswitch_1
    const v0, 0x7f020393

    .line 659
    goto :goto_0

    .line 661
    :sswitch_2
    const v0, 0x7f020397

    .line 662
    goto :goto_0

    .line 653
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f020392 -> :sswitch_0
        0x7f020394 -> :sswitch_1
        0x7f020398 -> :sswitch_2
    .end sparse-switch
.end method

.method private getCdmaDataNetTypeId(I)I
    .locals 1
    .param p1, "typeIcon"    # I

    .prologue
    .line 619
    const/4 v0, 0x0

    .line 620
    .local v0, "returnVal":I
    sparse-switch p1, :sswitch_data_0

    .line 642
    :goto_0
    return v0

    .line 626
    :sswitch_0
    const v0, 0x7f020392

    .line 627
    goto :goto_0

    .line 632
    :sswitch_1
    const v0, 0x7f020394

    .line 633
    goto :goto_0

    .line 637
    :sswitch_2
    const v0, 0x7f020398

    .line 638
    goto :goto_0

    .line 620
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f020390 -> :sswitch_0
        0x7f020391 -> :sswitch_0
        0x7f020393 -> :sswitch_1
        0x7f020397 -> :sswitch_2
        0x7f02039c -> :sswitch_0
        0x7f02039f -> :sswitch_0
        0x7f0203a2 -> :sswitch_1
        0x7f0203a4 -> :sswitch_1
        0x7f0203a8 -> :sswitch_0
        0x7f0203a9 -> :sswitch_1
        0x7f0203aa -> :sswitch_2
        0x7f0203ae -> :sswitch_2
    .end sparse-switch
.end method

.method private getCdmaDataSignalId(I)I
    .locals 1
    .param p1, "strengthIcon"    # I

    .prologue
    .line 519
    const/4 v0, 0x0

    .line 520
    .local v0, "returnVal":I
    sparse-switch p1, :sswitch_data_0

    .line 559
    :goto_0
    return v0

    .line 522
    :sswitch_0
    const v0, 0x7f0203e1

    .line 523
    goto :goto_0

    .line 525
    :sswitch_1
    const v0, 0x7f0203e2

    .line 526
    goto :goto_0

    .line 528
    :sswitch_2
    const v0, 0x7f0203e3

    .line 529
    goto :goto_0

    .line 531
    :sswitch_3
    const v0, 0x7f0203e4

    .line 532
    goto :goto_0

    .line 534
    :sswitch_4
    const v0, 0x7f0203e5

    .line 535
    goto :goto_0

    .line 537
    :sswitch_5
    const v0, 0x7f0203e6

    .line 538
    goto :goto_0

    .line 540
    :sswitch_6
    const v0, 0x7f0203c6

    .line 541
    goto :goto_0

    .line 543
    :sswitch_7
    const v0, 0x7f0203c7

    .line 544
    goto :goto_0

    .line 546
    :sswitch_8
    const v0, 0x7f0203c8

    .line 547
    goto :goto_0

    .line 549
    :sswitch_9
    const v0, 0x7f0203c9

    .line 550
    goto :goto_0

    .line 552
    :sswitch_a
    const v0, 0x7f0203ca

    .line 553
    goto :goto_0

    .line 555
    :sswitch_b
    const v0, 0x7f0203cb

    goto :goto_0

    .line 520
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0203cc -> :sswitch_6
        0x7f0203ce -> :sswitch_7
        0x7f0203d0 -> :sswitch_8
        0x7f0203d2 -> :sswitch_9
        0x7f0203d4 -> :sswitch_a
        0x7f0203d6 -> :sswitch_b
        0x7f0203e7 -> :sswitch_0
        0x7f0203e9 -> :sswitch_1
        0x7f0203eb -> :sswitch_2
        0x7f0203ed -> :sswitch_3
        0x7f0203ef -> :sswitch_4
        0x7f0203f1 -> :sswitch_5
    .end sparse-switch
.end method

.method private getCdmaVoiceNetTypeId(I)I
    .locals 1
    .param p1, "typeIcon"    # I

    .prologue
    .line 675
    const/4 v0, 0x0

    .line 676
    .local v0, "returnVal":I
    sparse-switch p1, :sswitch_data_0

    .line 689
    :goto_0
    return v0

    .line 684
    :sswitch_0
    const v0, 0x7f020392

    .line 685
    goto :goto_0

    .line 676
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f020393 -> :sswitch_0
        0x7f020397 -> :sswitch_0
        0x7f0203a2 -> :sswitch_0
        0x7f0203a4 -> :sswitch_0
        0x7f0203a9 -> :sswitch_0
        0x7f0203aa -> :sswitch_0
        0x7f0203ae -> :sswitch_0
    .end sparse-switch
.end method

.method private getCdmaVoiceSignalId(I)I
    .locals 1
    .param p1, "strengthIcon"    # I

    .prologue
    .line 569
    const/4 v0, 0x0

    .line 570
    .local v0, "returnVal":I
    sparse-switch p1, :sswitch_data_0

    .line 609
    :goto_0
    return v0

    .line 572
    :sswitch_0
    const v0, 0x7f0203db

    .line 573
    goto :goto_0

    .line 575
    :sswitch_1
    const v0, 0x7f0203dc

    .line 576
    goto :goto_0

    .line 578
    :sswitch_2
    const v0, 0x7f0203dd

    .line 579
    goto :goto_0

    .line 581
    :sswitch_3
    const v0, 0x7f0203de

    .line 582
    goto :goto_0

    .line 584
    :sswitch_4
    const v0, 0x7f0203df

    .line 585
    goto :goto_0

    .line 587
    :sswitch_5
    const v0, 0x7f0203e0

    .line 588
    goto :goto_0

    .line 590
    :sswitch_6
    const v0, 0x7f0203c0

    .line 591
    goto :goto_0

    .line 593
    :sswitch_7
    const v0, 0x7f0203c1

    .line 594
    goto :goto_0

    .line 596
    :sswitch_8
    const v0, 0x7f0203c2

    .line 597
    goto :goto_0

    .line 599
    :sswitch_9
    const v0, 0x7f0203c3

    .line 600
    goto :goto_0

    .line 602
    :sswitch_a
    const v0, 0x7f0203c4

    .line 603
    goto :goto_0

    .line 605
    :sswitch_b
    const v0, 0x7f0203c5

    goto :goto_0

    .line 570
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0203cc -> :sswitch_6
        0x7f0203ce -> :sswitch_7
        0x7f0203d0 -> :sswitch_8
        0x7f0203d2 -> :sswitch_9
        0x7f0203d4 -> :sswitch_a
        0x7f0203d6 -> :sswitch_b
        0x7f0203e7 -> :sswitch_0
        0x7f0203e9 -> :sswitch_1
        0x7f0203eb -> :sswitch_2
        0x7f0203ed -> :sswitch_3
        0x7f0203ef -> :sswitch_4
        0x7f0203f1 -> :sswitch_5
    .end sparse-switch
.end method

.method private getGsmDataNetTypeId(I)I
    .locals 2
    .param p1, "typeIcon"    # I

    .prologue
    .line 699
    const/4 v0, 0x0

    .line 700
    .local v0, "returnVal":I
    sget-object v1, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 730
    .end local p1    # "typeIcon":I
    :goto_0
    return p1

    .line 706
    .restart local p1    # "typeIcon":I
    :cond_0
    sparse-switch p1, :sswitch_data_0

    :goto_1
    move p1, v0

    .line 730
    goto :goto_0

    .line 712
    :sswitch_0
    const v0, 0x7f020391

    .line 713
    goto :goto_1

    .line 718
    :sswitch_1
    const v0, 0x7f020393

    .line 719
    goto :goto_1

    .line 723
    :sswitch_2
    const v0, 0x7f020397

    .line 724
    goto :goto_1

    .line 706
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f020390 -> :sswitch_0
        0x7f020391 -> :sswitch_0
        0x7f020393 -> :sswitch_1
        0x7f020397 -> :sswitch_2
        0x7f02039c -> :sswitch_0
        0x7f02039f -> :sswitch_0
        0x7f0203a2 -> :sswitch_1
        0x7f0203a4 -> :sswitch_1
        0x7f0203a8 -> :sswitch_0
        0x7f0203a9 -> :sswitch_1
        0x7f0203aa -> :sswitch_2
        0x7f0203ae -> :sswitch_2
    .end sparse-switch
.end method

.method private getRoamingIconId(I)I
    .locals 2
    .param p1, "typeIcon"    # I

    .prologue
    .line 790
    const/4 v0, 0x0

    .line 792
    .local v0, "returnVal":I
    sget-object v1, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 793
    if-eqz p1, :cond_0

    .line 799
    const v0, 0x7f0203af

    .line 808
    :cond_0
    :goto_0
    return v0

    .line 805
    :cond_1
    move v0, p1

    goto :goto_0
.end method

.method private hasDataConnection(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 763
    const/4 v0, 0x0

    .line 764
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mNC:Lcom/android/systemui/statusbar/policy/NetworkController;

    if-eqz v1, :cond_0

    .line 765
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mNC:Lcom/android/systemui/statusbar/policy/NetworkController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->hasDataConnection(I)Z

    move-result v0

    .line 768
    :cond_0
    return v0
.end method

.method private isDataActivityDormant(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 754
    const/4 v0, 0x0

    .line 755
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mNC:Lcom/android/systemui/statusbar/policy/NetworkController;

    if-eqz v1, :cond_0

    .line 756
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mNC:Lcom/android/systemui/statusbar/policy/NetworkController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->isDataActivityDormant(I)Z

    move-result v0

    .line 759
    :cond_0
    return v0
.end method

.method private isLteOnlyMode(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 781
    const/4 v0, 0x0

    .line 782
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mNC:Lcom/android/systemui/statusbar/policy/NetworkController;

    if-eqz v1, :cond_0

    .line 783
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mNC:Lcom/android/systemui/statusbar/policy/NetworkController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->isLteOnlyMode(I)Z

    move-result v0

    .line 786
    :cond_0
    return v0
.end method

.method private isRoaming(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 772
    const/4 v0, 0x0

    .line 773
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mNC:Lcom/android/systemui/statusbar/policy/NetworkController;

    if-eqz v1, :cond_0

    .line 774
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mNC:Lcom/android/systemui/statusbar/policy/NetworkController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;->isRoaming(I)Z

    move-result v0

    .line 777
    :cond_0
    return v0
.end method

.method private showDataAndVoice()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 742
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->isRoaming(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->isLteOnlyMode(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileTypeId:[I

    aget v1, v1, v0

    const v2, 0x7f020393

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileTypeId:[I

    aget v1, v1, v0

    const v2, 0x7f0203a9

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileTypeId:[I

    aget v1, v1, v0

    const v2, 0x7f0203a2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileTypeId:[I

    aget v1, v1, v0

    const v2, 0x7f0203a4

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileTypeId:[I

    aget v1, v1, v0

    const v2, 0x7f020397

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileTypeId:[I

    aget v1, v1, v0

    const v2, 0x7f0203aa

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileTypeId:[I

    aget v1, v1, v0

    const v2, 0x7f0203ae

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v2, 0x0

    .line 263
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifiVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileVisible:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 267
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 116
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 118
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/SIMHelper;->isGemini(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    const v3, 0x7f0e0017

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 123
    .local v2, "stub":Landroid/view/ViewStub;
    sget-object v3, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 124
    const v3, 0x7f04000a

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 128
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 142
    :goto_1
    const v3, 0x7f0e006d

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifiGroup:Landroid/view/ViewGroup;

    .line 143
    const v3, 0x7f0e006e

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/AnimatedImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifi:Lcom/android/systemui/statusbar/AnimatedImageView;

    .line 144
    const v3, 0x7f0e006f

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/AnimatedImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifiActivity:Lcom/android/systemui/statusbar/AnimatedImageView;

    .line 145
    const v3, 0x7f0e0071

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mAirplane:Landroid/widget/ImageView;

    .line 147
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mGeminiSimNum:I

    if-ge v0, v3, :cond_4

    .line 148
    add-int/lit8 v1, v0, 0x1

    .line 150
    .local v1, "k":I
    if-nez v0, :cond_3

    .line 152
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobile:[Landroid/widget/ImageView;

    const v3, 0x7f0e0046

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v0

    .line 153
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileGroup:[Landroid/view/ViewGroup;

    const v3, 0x7f0e0045

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    aput-object v3, v4, v0

    .line 154
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileActiveDataWrapper:[Landroid/view/ViewGroup;

    const v3, 0x7f0e0065

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    aput-object v3, v4, v0

    .line 155
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileActivity:[Lcom/android/systemui/statusbar/AnimatedImageView;

    const v3, 0x7f0e0048

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/AnimatedImageView;

    aput-object v3, v4, v0

    .line 156
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileType:[Landroid/widget/ImageView;

    const v3, 0x7f0e0047

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v0

    .line 157
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileDataType:[Landroid/widget/ImageView;

    const v3, 0x7f0e0066

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v0

    .line 158
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mSpacer:[Landroid/view/View;

    const v4, 0x7f0e0070

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v0

    .line 147
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 126
    .end local v0    # "i":I
    .end local v1    # "k":I
    :cond_0
    const v3, 0x7f040008

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    goto/16 :goto_0

    .line 133
    .end local v2    # "stub":Landroid/view/ViewStub;
    :cond_1
    const v3, 0x7f0e0159

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 134
    .restart local v2    # "stub":Landroid/view/ViewStub;
    sget-object v3, Landroid/os/BuildExt;->CUSTOMIZE_CHINATELECOM:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 135
    const v3, 0x7f04003c

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 139
    :goto_4
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto/16 :goto_1

    .line 137
    :cond_2
    const v3, 0x7f04003a

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    goto :goto_4

    .line 161
    .restart local v0    # "i":I
    .restart local v1    # "k":I
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobile:[Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_signal_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v0

    .line 162
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileGroup:[Landroid/view/ViewGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_combo_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    aput-object v3, v4, v0

    .line 163
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileActiveDataWrapper:[Landroid/view/ViewGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_active_data_wrapper_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    aput-object v3, v4, v0

    .line 164
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileActivity:[Lcom/android/systemui/statusbar/AnimatedImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_inout_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/AnimatedImageView;

    aput-object v3, v4, v0

    .line 165
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileType:[Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_type_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v0

    .line 166
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileDataType:[Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_data_type_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v0

    .line 167
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mSpacer:[Landroid/view/View;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "spacer_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v0

    goto/16 :goto_3

    .line 171
    .end local v1    # "k":I
    :cond_4
    const v3, 0x7f0e005b

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    .line 172
    const v3, 0x7f0e005f

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdma3g:Landroid/view/ViewGroup;

    .line 173
    const v3, 0x7f0e0062

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdma1x:Landroid/view/ViewGroup;

    .line 175
    const v3, 0x7f0e0061

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdma3gSignal:Landroid/widget/ImageView;

    .line 176
    const v3, 0x7f0e005e

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/AnimatedImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdmaDataActivity:Lcom/android/systemui/statusbar/AnimatedImageView;

    .line 177
    const v3, 0x7f0e0060

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdma3gType:Landroid/widget/ImageView;

    .line 178
    const v3, 0x7f0e005d

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdmaDataType:Landroid/widget/ImageView;

    .line 179
    const v3, 0x7f0e005c

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdmaActiveDataWrapper:Landroid/view/ViewGroup;

    .line 181
    const v3, 0x7f0e0064

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdma1xSignal:Landroid/widget/ImageView;

    .line 182
    const v3, 0x7f0e0063

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdma1xType:Landroid/widget/ImageView;

    .line 184
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->apply()V

    .line 185
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 189
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifiGroup:Landroid/view/ViewGroup;

    .line 190
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifi:Lcom/android/systemui/statusbar/AnimatedImageView;

    .line 191
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifiActivity:Lcom/android/systemui/statusbar/AnimatedImageView;

    .line 192
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mAirplane:Landroid/widget/ImageView;

    .line 193
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdmaGroup:Landroid/view/ViewGroup;

    .line 194
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdma3g:Landroid/view/ViewGroup;

    .line 195
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdma1x:Landroid/view/ViewGroup;

    .line 196
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdma3gSignal:Landroid/widget/ImageView;

    .line 197
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdmaDataActivity:Lcom/android/systemui/statusbar/AnimatedImageView;

    .line 198
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdma3gType:Landroid/widget/ImageView;

    .line 199
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdmaDataType:Landroid/widget/ImageView;

    .line 200
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdma1xSignal:Landroid/widget/ImageView;

    .line 201
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdma1xType:Landroid/widget/ImageView;

    .line 202
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileCdmaActiveDataWrapper:Landroid/view/ViewGroup;

    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mGeminiSimNum:I

    if-ge v0, v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileGroup:[Landroid/view/ViewGroup;

    aput-object v2, v1, v0

    .line 206
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileActiveDataWrapper:[Landroid/view/ViewGroup;

    aput-object v2, v1, v0

    .line 207
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobile:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 208
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileActivity:[Lcom/android/systemui/statusbar/AnimatedImageView;

    aput-object v2, v1, v0

    .line 209
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileType:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 210
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileDataType:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 211
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mSpacer:[Landroid/view/View;

    aput-object v2, v1, v0

    .line 204
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 214
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 215
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 3
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v2, 0x0

    .line 273
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 275
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifi:Lcom/android/systemui/statusbar/AnimatedImageView;

    if-eqz v1, :cond_0

    .line 276
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifi:Lcom/android/systemui/statusbar/AnimatedImageView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/AnimatedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mGeminiSimNum:I

    if-ge v0, v1, :cond_4

    .line 280
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobile:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobile:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileType:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 285
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileType:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 288
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileDataType:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 289
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileDataType:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 279
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 293
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mAirplane:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 294
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 297
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->apply()V

    .line 298
    return-void
.end method

.method public setIsAirplaneMode(ZI)V
    .locals 0
    .param p1, "is"    # Z
    .param p2, "airplaneIconId"    # I

    .prologue
    .line 253
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mIsAirplaneMode:Z

    .line 254
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mAirplaneIconId:I

    .line 256
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->apply()V

    .line 257
    return-void
.end method

.method public setMobileDataIndicators(IZIIILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "visible"    # Z
    .param p3, "strengthIcon"    # I
    .param p4, "activityIcon"    # I
    .param p5, "typeIcon"    # I
    .param p6, "contentDescription"    # Ljava/lang/String;
    .param p7, "typeContentDescription"    # Ljava/lang/String;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileVisible:[Z

    aput-boolean p2, v0, p1

    .line 239
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileStrengthId:[I

    aput p3, v0, p1

    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileActivityId:[I

    aput p4, v0, p1

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileTypeId:[I

    aput p5, v0, p1

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileDescription:[Ljava/lang/String;

    aput-object p6, v0, p1

    .line 243
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mMobileTypeDescription:[Ljava/lang/String;

    aput-object p7, v0, p1

    .line 245
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->apply()V

    .line 246
    return-void
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 1
    .param p1, "nc"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 109
    instance-of v0, p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImplTelecom;

    if-eqz v0, :cond_0

    .line 110
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mNC:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 112
    :cond_0
    return-void
.end method

.method public setWifiIndicators(ZZIILjava/lang/String;)V
    .locals 0
    .param p1, "visible"    # Z
    .param p2, "connecting"    # Z
    .param p3, "strengthIcon"    # I
    .param p4, "activityIcon"    # I
    .param p5, "contentDescription"    # Ljava/lang/String;

    .prologue
    .line 219
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifiVisible:Z

    .line 220
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifiConnecting:Z

    .line 221
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifiStrengthId:I

    .line 222
    iput p4, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifiActivityId:I

    .line 223
    iput-object p5, p0, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->mWifiDescription:Ljava/lang/String;

    .line 225
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterViewTelecom;->apply()V

    .line 226
    return-void
.end method
