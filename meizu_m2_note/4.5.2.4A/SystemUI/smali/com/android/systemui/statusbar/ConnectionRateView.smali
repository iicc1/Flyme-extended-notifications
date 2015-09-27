.class public Lcom/android/systemui/statusbar/ConnectionRateView;
.super Landroid/widget/LinearLayout;
.source "ConnectionRateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ConnectionRateView$ConnectionRateSampler;
    }
.end annotation


# instance fields
.field mConnectionRateSampler:Lcom/android/systemui/statusbar/ConnectionRateView$ConnectionRateSampler;

.field private mHandler:Landroid/os/Handler;

.field private mRateView:Landroid/widget/TextView;

.field private mUnitView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ConnectionRateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/ConnectionRateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ConnectionRateView;->mConnectionRateSampler:Lcom/android/systemui/statusbar/ConnectionRateView$ConnectionRateSampler;

    .line 108
    new-instance v0, Lcom/android/systemui/statusbar/ConnectionRateView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ConnectionRateView$1;-><init>(Lcom/android/systemui/statusbar/ConnectionRateView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ConnectionRateView;->mHandler:Landroid/os/Handler;

    .line 41
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/ConnectionRateView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ConnectionRateView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/systemui/statusbar/ConnectionRateView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/ConnectionRateView;D)V
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/ConnectionRateView;
    .param p1, "x1"    # D

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ConnectionRateView;->updateConnectionRate(D)V

    return-void
.end method

.method private updateConnectionRate(D)V
    .locals 7
    .param p1, "rate"    # D

    .prologue
    .line 123
    new-instance v0, Ljava/text/DecimalFormat;

    invoke-direct {v0}, Ljava/text/DecimalFormat;-><init>()V

    .line 124
    .local v0, "formatter":Ljava/text/DecimalFormat;
    const-string v1, ""

    .line 125
    .local v1, "style":Ljava/lang/String;
    const/4 v2, 0x0

    .line 127
    .local v2, "unitIconId":I
    const-wide/16 v4, 0x0

    cmpl-double v3, p1, v4

    if-lez v3, :cond_2

    const-wide v4, 0x408f400000000000L    # 1000.0

    cmpg-double v3, p1, v4

    if-gez v3, :cond_2

    .line 128
    const v2, 0x7f02041c

    .line 138
    :goto_0
    const-wide/16 v4, 0x0

    cmpl-double v3, p1, v4

    if-nez v3, :cond_4

    .line 139
    const-string v1, "0"

    .line 148
    :cond_0
    :goto_1
    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    .line 150
    iget-object v3, p0, Lcom/android/systemui/statusbar/ConnectionRateView;->mRateView:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/ConnectionRateView;->mUnitView:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    .line 151
    iget-object v3, p0, Lcom/android/systemui/statusbar/ConnectionRateView;->mRateView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v3, p0, Lcom/android/systemui/statusbar/ConnectionRateView;->mUnitView:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 154
    :cond_1
    return-void

    .line 129
    :cond_2
    const-wide v4, 0x408f400000000000L    # 1000.0

    cmpl-double v3, p1, v4

    if-ltz v3, :cond_3

    const-wide v4, 0x412f400000000000L    # 1024000.0

    cmpg-double v3, p1, v4

    if-gez v3, :cond_3

    .line 130
    const v2, 0x7f02041d

    .line 131
    const-wide/high16 v4, 0x4090000000000000L    # 1024.0

    div-double/2addr p1, v4

    goto :goto_0

    .line 134
    :cond_3
    const v2, 0x7f02041c

    .line 135
    const-wide/16 p1, 0x0

    goto :goto_0

    .line 140
    :cond_4
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpg-double v3, p1, v4

    if-gez v3, :cond_5

    .line 141
    const-string v1, "0.00"

    goto :goto_1

    .line 142
    :cond_5
    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    cmpl-double v3, p1, v4

    if-ltz v3, :cond_6

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    cmpg-double v3, p1, v4

    if-gez v3, :cond_6

    .line 143
    const-string v1, "00.0"

    goto :goto_1

    .line 144
    :cond_6
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    cmpl-double v3, p1, v4

    if-ltz v3, :cond_0

    const-wide v4, 0x408f400000000000L    # 1000.0

    cmpg-double v3, p1, v4

    if-gez v3, :cond_0

    .line 145
    const-string v1, "000"

    goto :goto_1
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 47
    const v0, 0x7f0e0043

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ConnectionRateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/ConnectionRateView;->mRateView:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0e0044

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ConnectionRateView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/ConnectionRateView;->mUnitView:Landroid/widget/ImageView;

    .line 49
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/android/systemui/statusbar/ConnectionRateView;->mRateView:Landroid/widget/TextView;

    .line 54
    iput-object v0, p0, Lcom/android/systemui/statusbar/ConnectionRateView;->mUnitView:Landroid/widget/ImageView;

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/ConnectionRateView;->mConnectionRateSampler:Lcom/android/systemui/statusbar/ConnectionRateView$ConnectionRateSampler;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/ConnectionRateView;->mConnectionRateSampler:Lcom/android/systemui/statusbar/ConnectionRateView$ConnectionRateSampler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ConnectionRateView$ConnectionRateSampler;->stopRequest()V

    .line 59
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 60
    return-void
.end method

.method public startSampling()V
    .locals 3

    .prologue
    .line 64
    new-instance v1, Lcom/android/systemui/statusbar/ConnectionRateView$ConnectionRateSampler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/ConnectionRateView$ConnectionRateSampler;-><init>(Lcom/android/systemui/statusbar/ConnectionRateView;Lcom/android/systemui/statusbar/ConnectionRateView$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/ConnectionRateView;->mConnectionRateSampler:Lcom/android/systemui/statusbar/ConnectionRateView$ConnectionRateSampler;

    .line 65
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ConnectionRateView;->mConnectionRateSampler:Lcom/android/systemui/statusbar/ConnectionRateView$ConnectionRateSampler;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 66
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 67
    return-void
.end method

.method public stopSampling()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/systemui/statusbar/ConnectionRateView;->mConnectionRateSampler:Lcom/android/systemui/statusbar/ConnectionRateView$ConnectionRateSampler;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/ConnectionRateView;->mConnectionRateSampler:Lcom/android/systemui/statusbar/ConnectionRateView$ConnectionRateSampler;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ConnectionRateView$ConnectionRateSampler;->stopRequest()V

    .line 74
    :cond_0
    return-void
.end method
