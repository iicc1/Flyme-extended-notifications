.class public Lcom/android/systemui/statusbar/SignalClusterView;
.super Landroid/widget/LinearLayout;
.source "SignalClusterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCluster;


# instance fields
.field mAirplane:Landroid/widget/ImageView;

.field private mAirplaneIconId:I

.field private mGeminiSimNum:I

.field private mIsAirplaneMode:Z

.field mMobile:[Landroid/widget/ImageView;

.field mMobileActivity:[Lcom/android/systemui/statusbar/AnimatedImageView;

.field private mMobileActivityId:[I

.field private mMobileDescription:[Ljava/lang/String;

.field mMobileGroup:[Landroid/view/ViewGroup;

.field private mMobileStrengthId:[I

.field mMobileType:[Landroid/widget/ImageView;

.field private mMobileTypeDescription:[Ljava/lang/String;

.field private mMobileTypeId:[I

.field private mMobileVisible:[Z

.field mNC:Lcom/android/systemui/statusbar/policy/NetworkController;

.field mSimIndicator:[Landroid/widget/ImageView;

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
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/SignalClusterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 49
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiConnecting:Z

    .line 50
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    .line 55
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 56
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 66
    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mGeminiSimNum:I

    .line 79
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/SIMHelper;->getNumOfSim(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mGeminiSimNum:I

    .line 80
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mGeminiSimNum:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDescription:[Ljava/lang/String;

    .line 81
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mGeminiSimNum:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeDescription:[Ljava/lang/String;

    .line 82
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mGeminiSimNum:I

    new-array v1, v1, [Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    .line 83
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mGeminiSimNum:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:[Landroid/widget/ImageView;

    .line 84
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mGeminiSimNum:I

    new-array v1, v1, [Lcom/android/systemui/statusbar/AnimatedImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:[Lcom/android/systemui/statusbar/AnimatedImageView;

    .line 85
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mGeminiSimNum:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    .line 86
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mGeminiSimNum:I

    new-array v1, v1, [Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimIndicator:[Landroid/widget/ImageView;

    .line 87
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mGeminiSimNum:I

    new-array v1, v1, [Landroid/view/View;

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacer:[Landroid/view/View;

    .line 88
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mGeminiSimNum:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:[I

    .line 89
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mGeminiSimNum:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:[I

    .line 90
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mGeminiSimNum:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:[I

    .line 91
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mGeminiSimNum:I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:[Z

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mGeminiSimNum:I

    if-ge v0, v1, :cond_0

    .line 94
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:[I

    aput v2, v1, v0

    .line 95
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:[I

    aput v2, v1, v0

    .line 96
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:[I

    aput v2, v1, v0

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    return-void
.end method

.method private apply()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v3, 0x0

    .line 269
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v2, :cond_1

    .line 381
    :cond_0
    return-void

    .line 280
    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v2, :cond_7

    .line 281
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 282
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Lcom/android/systemui/statusbar/AnimatedImageView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiConnecting:Z

    if-eqz v2, :cond_4

    const v2, 0x7f020400

    :goto_0
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/AnimatedImageView;->setImageResource(I)V

    .line 283
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Lcom/android/systemui/statusbar/AnimatedImageView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiConnecting:Z

    if-eqz v2, :cond_5

    move v2, v3

    :goto_1
    invoke-virtual {v4, v2}, Lcom/android/systemui/statusbar/AnimatedImageView;->setImageResource(I)V

    .line 284
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiConnecting:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 294
    :goto_3
    const/4 v1, 0x1

    .line 296
    .local v1, "noSim":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mGeminiSimNum:I

    if-ge v0, v2, :cond_b

    .line 299
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_a

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-nez v2, :cond_a

    .line 300
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:[I

    aget v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 301
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:[I

    aget v4, v4, v0

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 302
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:[Lcom/android/systemui/statusbar/AnimatedImageView;

    aget-object v2, v2, v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:[I

    aget v4, v4, v0

    invoke-virtual {v2, v4}, Lcom/android/systemui/statusbar/AnimatedImageView;->setImageResource(I)V

    .line 303
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v2, v2, v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeDescription:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDescription:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/systemui/statusbar/SIMHelper;->isSimInserted(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 312
    const/4 v1, 0x0

    .line 313
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 318
    :goto_5
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mGeminiSimNum:I

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_2

    if-eqz v1, :cond_2

    .line 319
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v2, v2, v3

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 335
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimIndicator:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    .line 337
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->showSimIndicator(I)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 338
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimIndicator:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterView;->getSimIndicatorIcon(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 339
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimIndicator:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 296
    :cond_3
    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 282
    .end local v0    # "i":I
    .end local v1    # "noSim":Z
    :cond_4
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    goto/16 :goto_0

    .line 283
    :cond_5
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    goto/16 :goto_1

    .line 284
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    goto/16 :goto_2

    .line 286
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    .line 315
    .restart local v0    # "i":I
    .restart local v1    # "noSim":Z
    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_5

    .line 341
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimIndicator:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_6

    .line 346
    :cond_a
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v2, v2, v0

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_6

    .line 350
    :cond_b
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    if-eqz v2, :cond_c

    .line 351
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    iget v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 352
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 367
    :goto_7
    const/4 v0, 0x0

    :goto_8
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mGeminiSimNum:I

    if-ge v0, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 355
    :cond_c
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7
.end method

.method private getSimIndicatorIcon(I)I
    .locals 1
    .param p1, "slotId"    # I

    .prologue
    .line 395
    const/4 v0, 0x0

    .line 397
    .local v0, "ret":I
    packed-switch p1, :pswitch_data_0

    .line 405
    const v0, 0x7f0203fa

    .line 409
    :goto_0
    return v0

    .line 399
    :pswitch_0
    const v0, 0x7f0203f4

    .line 400
    goto :goto_0

    .line 402
    :pswitch_1
    const v0, 0x7f0203f6

    .line 403
    goto :goto_0

    .line 397
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private showSimIndicator(I)Z
    .locals 2
    .param p1, "slotId"    # I

    .prologue
    .line 388
    sget-object v0, Landroid/os/BuildExt;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:[I

    aget v0, v0, p1

    const v1, 0x7f0203f5

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:[I

    aget v0, v0, p1

    const v1, 0x7f0203f7

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:[I

    aget v0, v0, p1

    const v1, 0x7f0203fa

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v2, 0x0

    .line 230
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 234
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .prologue
    .line 109
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 111
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/SIMHelper;->isGemini(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 115
    const v3, 0x7f0e0017

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 116
    .local v2, "stub":Landroid/view/ViewStub;
    sget-object v3, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Landroid/os/BuildExt;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 117
    :cond_0
    const v3, 0x7f040009

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 121
    :goto_0
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 135
    :goto_1
    const v3, 0x7f0e006d

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 136
    const v3, 0x7f0e006e

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/AnimatedImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Lcom/android/systemui/statusbar/AnimatedImageView;

    .line 137
    const v3, 0x7f0e006f

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/AnimatedImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Lcom/android/systemui/statusbar/AnimatedImageView;

    .line 138
    const v3, 0x7f0e0071

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 140
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mGeminiSimNum:I

    if-ge v0, v3, :cond_6

    .line 141
    add-int/lit8 v1, v0, 0x1

    .line 143
    .local v1, "k":I
    if-nez v0, :cond_5

    .line 145
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:[Landroid/widget/ImageView;

    const v3, 0x7f0e0046

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v0

    .line 146
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    const v3, 0x7f0e0045

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    aput-object v3, v4, v0

    .line 147
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:[Lcom/android/systemui/statusbar/AnimatedImageView;

    const v3, 0x7f0e0048

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/AnimatedImageView;

    aput-object v3, v4, v0

    .line 148
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    const v3, 0x7f0e0047

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v0

    .line 149
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimIndicator:[Landroid/widget/ImageView;

    const v3, 0x7f0e0006

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v0

    .line 150
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacer:[Landroid/view/View;

    const v4, 0x7f0e0070

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v0

    .line 140
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 119
    .end local v0    # "i":I
    .end local v1    # "k":I
    :cond_1
    const v3, 0x7f040008

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    goto/16 :goto_0

    .line 126
    .end local v2    # "stub":Landroid/view/ViewStub;
    :cond_2
    const v3, 0x7f0e0159

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewStub;

    .line 127
    .restart local v2    # "stub":Landroid/view/ViewStub;
    sget-object v3, Landroid/os/BuildExt;->CUSTOMIZE_CHINAMOBILE:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Landroid/os/BuildExt;->CUSTOMIZE_CHINAUNICOM:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 128
    :cond_3
    const v3, 0x7f04003b

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 132
    :goto_4
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    goto/16 :goto_1

    .line 130
    :cond_4
    const v3, 0x7f04003a

    invoke-virtual {v2, v3}, Landroid/view/ViewStub;->setLayoutResource(I)V

    goto :goto_4

    .line 153
    .restart local v0    # "i":I
    .restart local v1    # "k":I
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:[Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_signal_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v0

    .line 154
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_combo_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    aput-object v3, v4, v0

    .line 155
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:[Lcom/android/systemui/statusbar/AnimatedImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_inout_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/AnimatedImageView;

    aput-object v3, v4, v0

    .line 156
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_type_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v0

    .line 157
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimIndicator:[Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim_indicator_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v0

    .line 158
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacer:[Landroid/view/View;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "spacer_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/SignalClusterView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v0

    goto/16 :goto_3

    .line 162
    .end local v1    # "k":I
    :cond_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 163
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 167
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiGroup:Landroid/view/ViewGroup;

    .line 168
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Lcom/android/systemui/statusbar/AnimatedImageView;

    .line 169
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivity:Lcom/android/systemui/statusbar/AnimatedImageView;

    .line 170
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    .line 172
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mGeminiSimNum:I

    if-ge v0, v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileGroup:[Landroid/view/ViewGroup;

    aput-object v2, v1, v0

    .line 174
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 175
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivity:[Lcom/android/systemui/statusbar/AnimatedImageView;

    aput-object v2, v1, v0

    .line 176
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 177
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimIndicator:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 178
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSpacer:[Landroid/view/View;

    aput-object v2, v1, v0

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 181
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 182
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 3
    .param p1, "layoutDirection"    # I

    .prologue
    const/4 v2, 0x0

    .line 240
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRtlPropertiesChanged(I)V

    .line 242
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Lcom/android/systemui/statusbar/AnimatedImageView;

    if-eqz v1, :cond_0

    .line 243
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifi:Lcom/android/systemui/statusbar/AnimatedImageView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/AnimatedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mGeminiSimNum:I

    if-ge v0, v1, :cond_4

    .line 247
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    .line 248
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobile:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 251
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    .line 252
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileType:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 255
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimIndicator:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_3

    .line 256
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mSimIndicator:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 246
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    .line 261
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplane:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 265
    return-void
.end method

.method public setIsAirplaneMode(ZI)V
    .locals 0
    .param p1, "is"    # Z
    .param p2, "airplaneIconId"    # I

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mIsAirplaneMode:Z

    .line 221
    iput p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mAirplaneIconId:I

    .line 223
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 224
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
    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileVisible:[Z

    aput-boolean p2, v0, p1

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileStrengthId:[I

    aput p3, v0, p1

    .line 207
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileActivityId:[I

    aput p4, v0, p1

    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeId:[I

    aput p5, v0, p1

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileDescription:[Ljava/lang/String;

    aput-object p6, v0, p1

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mMobileTypeDescription:[Ljava/lang/String;

    aput-object p7, v0, p1

    .line 212
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 213
    return-void
.end method

.method public setNetworkController(Lcom/android/systemui/statusbar/policy/NetworkController;)V
    .locals 1
    .param p1, "nc"    # Lcom/android/systemui/statusbar/policy/NetworkController;

    .prologue
    .line 102
    instance-of v0, p1, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    if-eqz v0, :cond_0

    .line 103
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mNC:Lcom/android/systemui/statusbar/policy/NetworkController;

    .line 105
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
    .line 186
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiVisible:Z

    .line 187
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiConnecting:Z

    .line 188
    iput p3, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiStrengthId:I

    .line 189
    iput p4, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiActivityId:I

    .line 190
    iput-object p5, p0, Lcom/android/systemui/statusbar/SignalClusterView;->mWifiDescription:Ljava/lang/String;

    .line 192
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterView;->apply()V

    .line 193
    return-void
.end method
