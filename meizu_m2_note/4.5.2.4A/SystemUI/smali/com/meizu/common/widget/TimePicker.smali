.class public Lcom/meizu/common/widget/TimePicker;
.super Landroid/widget/FrameLayout;
.source "TimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/TimePicker$1;,
        Lcom/meizu/common/widget/TimePicker$SavedState;,
        Lcom/meizu/common/widget/TimePicker$TimeAdapter;,
        Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;
    }
.end annotation


# instance fields
.field private mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

.field private final mAmText:Ljava/lang/String;

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

.field private mHourUnit:Landroid/widget/TextView;

.field private mIs24HourView:Ljava/lang/Boolean;

.field private mIsAm:Z

.field private mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

.field private mMinuteUnit:Landroid/widget/TextView;

.field private mOnTimeChangedListener:Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;

.field private final mPmText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 151
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/TimePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 155
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/16 v7, 0xc

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 158
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    iput v5, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    .line 55
    iput v5, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    .line 56
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    .line 57
    iput-boolean v6, p0, Lcom/meizu/common/widget/TimePicker;->mIsAm:Z

    .line 162
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 164
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v4, 0xb

    :try_start_0
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    .line 165
    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    iput v4, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    .line 166
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :goto_0
    iget-object v4, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_0

    iget v4, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    if-lt v4, v7, :cond_0

    .line 175
    iget v4, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    add-int/lit8 v4, v4, -0xc

    iput v4, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    .line 176
    iput-boolean v5, p0, Lcom/meizu/common/widget/TimePicker;->mIsAm:Z

    .line 180
    :cond_0
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 181
    .local v1, "dfs":Ljava/text/DateFormatSymbols;
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "dfsAmPm":[Ljava/lang/String;
    aget-object v4, v2, v5

    iput-object v4, p0, Lcom/meizu/common/widget/TimePicker;->mAmText:Ljava/lang/String;

    .line 183
    aget-object v4, v2, v6

    iput-object v4, p0, Lcom/meizu/common/widget/TimePicker;->mPmText:Ljava/lang/String;

    .line 185
    invoke-direct {p0}, Lcom/meizu/common/widget/TimePicker;->inflateLayout()V

    .line 186
    return-void

    .line 167
    .end local v1    # "dfs":Ljava/text/DateFormatSymbols;
    .end local v2    # "dfsAmPm":[Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 168
    .local v3, "e":Ljava/lang/Exception;
    iput v7, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    .line 169
    const/16 v4, 0x1e

    iput v4, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    .line 170
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/meizu/common/widget/TimePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/TimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    return p1
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/TimePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/TimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    return p1
.end method

.method static synthetic access$202(Lcom/meizu/common/widget/TimePicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/TimePicker;
    .param p1, "x1"    # Z

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/meizu/common/widget/TimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/TimePicker;)Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/TimePicker;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mOnTimeChangedListener:Lcom/meizu/common/widget/TimePicker$OnTimeChangedListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/TimePicker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/TimePicker;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mAmText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/TimePicker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/TimePicker;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mPmText:Ljava/lang/String;

    return-object v0
.end method

.method private inflateLayout()V
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 190
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->removeAllViews()V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    invoke-direct {p0}, Lcom/meizu/common/widget/TimePicker;->init24HourView()V

    .line 198
    :goto_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TimePicker;->setEnabled(Z)V

    .line 201
    :cond_1
    return-void

    .line 195
    :cond_2
    invoke-direct {p0}, Lcom/meizu/common/widget/TimePicker;->init12HourView()V

    goto :goto_0
.end method

.method private init12HourView()V
    .locals 9

    .prologue
    .line 233
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    :goto_0
    return-void

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04002c

    invoke-static {v0, v1, p0}, Lcom/meizu/common/widget/TimePicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 239
    const v0, 0x7f0e00ce

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    .line 240
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 241
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    const v1, 0x7f0b01b1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 244
    :cond_1
    const v0, 0x7f0e00d2

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    .line 245
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    const v1, 0x7f0b01b2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 249
    :cond_2
    const v0, 0x7f0e00cd

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 250
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/TimePicker$TimeAdapter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/meizu/common/widget/TimePicker$TimeAdapter;-><init>(Lcom/meizu/common/widget/TimePicker;I)V

    const/high16 v2, -0x40800000    # -1.0f

    iget v3, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    const/16 v4, 0xc

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/16 v7, 0xb

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 252
    const v0, 0x7f0e00d1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 253
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/TimePicker$TimeAdapter;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/meizu/common/widget/TimePicker$TimeAdapter;-><init>(Lcom/meizu/common/widget/TimePicker;I)V

    const/high16 v2, -0x40800000    # -1.0f

    iget v3, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    const/16 v4, 0x3c

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/16 v7, 0x3b

    const/4 v8, 0x1

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 255
    const v0, 0x7f0e00d5

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 256
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/TimePicker$TimeAdapter;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/meizu/common/widget/TimePicker$TimeAdapter;-><init>(Lcom/meizu/common/widget/TimePicker;I)V

    const/high16 v2, -0x40800000    # -1.0f

    iget-boolean v3, p0, Lcom/meizu/common/widget/TimePicker;->mIsAm:Z

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x2

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 257
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0156

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FF)V

    goto/16 :goto_0

    .line 256
    :cond_3
    const/4 v3, 0x1

    goto :goto_1
.end method

.method private init24HourView()V
    .locals 9

    .prologue
    const/4 v5, 0x5

    const/4 v6, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v8, 0x1

    .line 204
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 230
    :goto_0
    return-void

    .line 208
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04002b

    invoke-static {v0, v1, p0}, Lcom/meizu/common/widget/TimePicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 210
    const v0, 0x7f0e00ce

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    .line 211
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourUnit:Landroid/widget/TextView;

    const v1, 0x7f0b01b1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 215
    :cond_1
    const v0, 0x7f0e00d2

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    .line 216
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinuteUnit:Landroid/widget/TextView;

    const v1, 0x7f0b01b2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 220
    :cond_2
    const v0, 0x7f0e00cd

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 221
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/TimePicker$TimeAdapter;

    invoke-direct {v1, p0, v8}, Lcom/meizu/common/widget/TimePicker$TimeAdapter;-><init>(Lcom/meizu/common/widget/TimePicker;I)V

    iget v3, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    const/16 v4, 0x18

    const/16 v7, 0x17

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 224
    const v0, 0x7f0e00d1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/ScrollTextView;

    iput-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 225
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/TimePicker$TimeAdapter;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v3}, Lcom/meizu/common/widget/TimePicker$TimeAdapter;-><init>(Lcom/meizu/common/widget/TimePicker;I)V

    iget v3, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    const/16 v4, 0x3c

    const/16 v7, 0x3b

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 228
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    goto :goto_0
.end method


# virtual methods
.method public getCurrentHour()I
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget v0, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    .line 397
    :goto_0
    return v0

    .line 394
    :cond_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/TimePicker;->mIsAm:Z

    if-eqz v0, :cond_1

    .line 395
    iget v0, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    goto :goto_0

    .line 397
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    add-int/lit8 v0, v0, 0xc

    goto :goto_0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 411
    iget v0, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 371
    move-object v0, p1

    check-cast v0, Lcom/meizu/common/widget/TimePicker$SavedState;

    .line 372
    .local v0, "ss":Lcom/meizu/common/widget/TimePicker$SavedState;
    invoke-virtual {v0}, Lcom/meizu/common/widget/TimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 373
    # getter for: Lcom/meizu/common/widget/TimePicker$SavedState;->mHour:I
    invoke-static {v0}, Lcom/meizu/common/widget/TimePicker$SavedState;->access$800(Lcom/meizu/common/widget/TimePicker$SavedState;)I

    move-result v1

    # getter for: Lcom/meizu/common/widget/TimePicker$SavedState;->mMinute:I
    invoke-static {v0}, Lcom/meizu/common/widget/TimePicker$SavedState;->access$900(Lcom/meizu/common/widget/TimePicker$SavedState;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/meizu/common/widget/TimePicker;->update(IIZ)V

    .line 374
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 5

    .prologue
    .line 365
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 366
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/meizu/common/widget/TimePicker$SavedState;

    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getCurrentHour()I

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    const/4 v4, 0x0

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/meizu/common/widget/TimePicker$SavedState;-><init>(Landroid/os/Parcelable;IILcom/meizu/common/widget/TimePicker$1;)V

    return-object v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 445
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 446
    if-nez p1, :cond_1

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 452
    .local v1, "is24Hour":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 457
    :goto_1
    iget-object v2, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_0

    .line 458
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    goto :goto_0

    .line 453
    :catch_0
    move-exception v0

    .line 454
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 306
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 307
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setEnabled(Z)V

    .line 308
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setEnabled(Z)V

    .line 309
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setEnabled(Z)V

    .line 312
    :cond_0
    return-void
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    .line 432
    invoke-virtual {p0}, Lcom/meizu/common/widget/TimePicker;->getCurrentHour()I

    move-result v0

    .line 433
    .local v0, "hour":I
    iget v1, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/common/widget/TimePicker;->update(IIZ)V

    .line 434
    return-void
.end method

.method public update(IIZ)V
    .locals 6
    .param p1, "hour"    # I
    .param p2, "min"    # I
    .param p3, "is24hour"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 263
    const/4 v0, 0x0

    .line 264
    .local v0, "updateHourPicker":Z
    const/4 v1, 0x0

    .line 266
    .local v1, "updateMinPicker":Z
    if-eqz p3, :cond_6

    .line 267
    iget v4, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    if-eq v4, p1, :cond_0

    .line 268
    const/4 v0, 0x1

    .line 269
    iput p1, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    .line 283
    :cond_0
    :goto_0
    iget v4, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    if-eq v4, p2, :cond_1

    .line 284
    const/4 v1, 0x1

    .line 285
    iput p2, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    .line 288
    :cond_1
    iget-object v4, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq p3, v4, :cond_2

    .line 289
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/TimePicker;->mIs24HourView:Ljava/lang/Boolean;

    .line 290
    invoke-direct {p0}, Lcom/meizu/common/widget/TimePicker;->inflateLayout()V

    .line 293
    :cond_2
    if-eqz v0, :cond_3

    .line 294
    iget-object v4, p0, Lcom/meizu/common/widget/TimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v5, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    invoke-virtual {v4, v5}, Lcom/meizu/common/widget/ScrollTextView;->refreshCurrent(I)V

    .line 296
    :cond_3
    if-eqz v1, :cond_4

    .line 297
    iget-object v4, p0, Lcom/meizu/common/widget/TimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v5, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentMinute:I

    invoke-virtual {v4, v5}, Lcom/meizu/common/widget/ScrollTextView;->refreshCurrent(I)V

    .line 299
    :cond_4
    iget-object v4, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    if-eqz v4, :cond_5

    .line 300
    iget-object v4, p0, Lcom/meizu/common/widget/TimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget-boolean v5, p0, Lcom/meizu/common/widget/TimePicker;->mIsAm:Z

    if-eqz v5, :cond_8

    :goto_1
    invoke-virtual {v4, v2}, Lcom/meizu/common/widget/ScrollTextView;->refreshCurrent(I)V

    .line 302
    :cond_5
    return-void

    .line 272
    :cond_6
    iput-boolean v3, p0, Lcom/meizu/common/widget/TimePicker;->mIsAm:Z

    .line 273
    iget v4, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    if-eq v4, p1, :cond_7

    .line 274
    const/4 v0, 0x1

    .line 275
    iput p1, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    .line 277
    :cond_7
    iget v4, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    const/16 v5, 0xc

    if-lt v4, v5, :cond_0

    .line 278
    iget v4, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    add-int/lit8 v4, v4, -0xc

    iput v4, p0, Lcom/meizu/common/widget/TimePicker;->mCurrentHour:I

    .line 279
    iput-boolean v2, p0, Lcom/meizu/common/widget/TimePicker;->mIsAm:Z

    goto :goto_0

    :cond_8
    move v2, v3

    .line 300
    goto :goto_1
.end method
