.class public Lcom/meizu/common/widget/CustomTimePicker;
.super Landroid/widget/FrameLayout;
.source "CustomTimePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/CustomTimePicker$DayPicker;,
        Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;,
        Lcom/meizu/common/widget/CustomTimePicker$SavedState;,
        Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;
    }
.end annotation


# instance fields
.field private isLeapMonth:Z

.field private isLunar:Z

.field private mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

.field private final mAmText:Ljava/lang/String;

.field private final mCalendar:Ljava/util/Calendar;

.field private mCurrentHour:I

.field private mCurrentMinute:I

.field private mDay:I

.field private mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

.field private mDayUnit:Landroid/widget/TextView;

.field private mDuration:J

.field protected mFlipView:Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;

.field private mGregorianColor:I

.field private mGregorianIndicator:Landroid/view/View;

.field private mGregorianTab:Landroid/widget/TextView;

.field private mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

.field private mHourUnit:Landroid/widget/TextView;

.field private mIconLayout:Landroid/widget/FrameLayout;

.field private mIndicator:Landroid/view/View;

.field private mIs24HourView:Ljava/lang/Boolean;

.field private mIsAm:Z

.field private mLunarColor:I

.field private mLunarIndicator:Landroid/view/View;

.field private mLunarMonthCount:I

.field private mLunarNormalTextSize:I

.field private mLunarSelectTextSize:I

.field private mLunarTab:Landroid/widget/TextView;

.field private mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

.field private mMinuteUnit:Landroid/widget/TextView;

.field private mMonth:I

.field private volatile mMonthLocale:Ljava/util/Locale;

.field private mMonthOfDays:I

.field private mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

.field private mMonthUnit:Landroid/widget/TextView;

.field private mMonthUpdateLock:Ljava/lang/Object;

.field private mOneScreenCount:I

.field private mPickerHolder:Landroid/widget/FrameLayout;

.field private final mPmText:Ljava/lang/String;

.field private mShortMonths:[Ljava/lang/String;

.field private mSolarNormalTextSize:I

.field private mSolarSelectTextSize:I

.field private mTabHolder:Landroid/widget/FrameLayout;

.field private mUnSlectColor:I

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private mYear:I


# direct methods
.method static synthetic access$002(Lcom/meizu/common/widget/CustomTimePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    return p1
.end method

.method static synthetic access$1000(Lcom/meizu/common/widget/CustomTimePicker;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mGregorianIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/meizu/common/widget/CustomTimePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    return p1
.end method

.method static synthetic access$2002(Lcom/meizu/common/widget/CustomTimePicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLeapMonth:Z

    return p1
.end method

.method static synthetic access$202(Lcom/meizu/common/widget/CustomTimePicker;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;
    .param p1, "x1"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIsAm:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/meizu/common/widget/CustomTimePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;

    .prologue
    .line 66
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarMonthCount:I

    return v0
.end method

.method static synthetic access$2102(Lcom/meizu/common/widget/CustomTimePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarMonthCount:I

    return p1
.end method

.method static synthetic access$2200(Lcom/meizu/common/widget/CustomTimePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;

    .prologue
    .line 66
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    return v0
.end method

.method static synthetic access$2202(Lcom/meizu/common/widget/CustomTimePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    return p1
.end method

.method static synthetic access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;

    .prologue
    .line 66
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    return v0
.end method

.method static synthetic access$2302(Lcom/meizu/common/widget/CustomTimePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    return p1
.end method

.method static synthetic access$2400(Lcom/meizu/common/widget/CustomTimePicker;IIZ)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/common/widget/CustomTimePicker;->getMonthDays(IIZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/meizu/common/widget/CustomTimePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;

    .prologue
    .line 66
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I

    return v0
.end method

.method static synthetic access$2700(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/util/Locale;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthLocale:Ljava/util/Locale;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/meizu/common/widget/CustomTimePicker;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;
    .param p1, "x1"    # Ljava/util/Locale;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mShortMonths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/meizu/common/widget/CustomTimePicker;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mShortMonths:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/CustomTimePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;

    .prologue
    .line 66
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDay:I

    return v0
.end method

.method static synthetic access$3000(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthUpdateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$302(Lcom/meizu/common/widget/CustomTimePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDay:I

    return p1
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mAmText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mPmText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;

    .prologue
    .line 66
    iget-boolean v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    return v0
.end method

.method static synthetic access$700(Lcom/meizu/common/widget/CustomTimePicker;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;
    .param p1, "x1"    # I

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/CustomTimePicker;->getLunarDays(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/common/widget/CustomTimePicker;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIndicator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/common/widget/CustomTimePicker;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/CustomTimePicker;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarIndicator:Landroid/view/View;

    return-object v0
.end method

.method private doTabAnimate()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 346
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mFlipView:Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;

    iget-boolean v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    invoke-virtual {v1, v3}, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->setFilpViewPrefer(Z)V

    .line 347
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 349
    iget-boolean v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mGregorianColor:I

    .line 350
    .local v0, "selectcolor":I
    :goto_0
    iget-boolean v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    invoke-direct {p0, v0, v1, v2}, Lcom/meizu/common/widget/CustomTimePicker;->setTabColor(IZZ)V

    .line 351
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mUnSlectColor:I

    invoke-virtual {p0, v0, v1, v0}, Lcom/meizu/common/widget/CustomTimePicker;->setTextColor(III)V

    .line 352
    return-void

    .line 349
    .end local v0    # "selectcolor":I
    :cond_0
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarColor:I

    goto :goto_0

    .line 350
    .restart local v0    # "selectcolor":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private getLunarDays(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 845
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 847
    .local v0, "days":[Ljava/lang/String;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_0

    .line 848
    const/4 v1, 0x0

    .line 851
    :goto_0
    return-object v1

    :cond_0
    aget-object v1, v0, p1

    goto :goto_0
.end method

.method private getMonthDays(IIZ)I
    .locals 6
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "isLunar"    # Z

    .prologue
    const/4 v5, 0x5

    const/4 v3, 0x1

    .line 748
    if-eqz p3, :cond_2

    .line 749
    invoke-static {p1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v2

    .line 750
    .local v2, "leapMonth":I
    const/4 v1, 0x0

    .line 751
    .local v1, "isLeapMonth":Z
    if-eqz v2, :cond_0

    .line 752
    if-ne v2, p2, :cond_1

    move v1, v3

    .line 755
    :cond_0
    :goto_0
    invoke-static {p1, p2, v1}, Lcom/meizu/common/util/LunarCalendar;->daysInMonth(IIZ)I

    move-result v3

    .line 761
    .end local v1    # "isLeapMonth":Z
    .end local v2    # "leapMonth":I
    :goto_1
    return v3

    .line 752
    .restart local v1    # "isLeapMonth":Z
    .restart local v2    # "leapMonth":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 757
    .end local v1    # "isLeapMonth":Z
    .end local v2    # "leapMonth":I
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 758
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v5, v3}, Ljava/util/Calendar;->set(II)V

    .line 759
    invoke-virtual {v0, v3, p1}, Ljava/util/Calendar;->set(II)V

    .line 760
    const/4 v3, 0x2

    add-int/lit8 v4, p2, -0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 761
    invoke-virtual {v0, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    goto :goto_1
.end method

.method private getMonthIndex(I)I
    .locals 5
    .param p1, "month"    # I

    .prologue
    .line 504
    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I

    div-int/lit8 v0, v3, 0x2

    .line 506
    .local v0, "id":I
    if-ltz p1, :cond_0

    const/16 v3, 0xb

    if-le p1, v3, :cond_1

    :cond_0
    move v1, v0

    .line 517
    .end local v0    # "id":I
    .local v1, "id":I
    :goto_0
    return v1

    .line 509
    .end local v1    # "id":I
    .restart local v0    # "id":I
    :cond_1
    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCalendar:Ljava/util/Calendar;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 511
    .local v2, "m":I
    if-lt p1, v2, :cond_2

    .line 512
    sub-int v3, p1, v2

    add-int/2addr v0, v3

    :goto_1
    move v1, v0

    .line 517
    .end local v0    # "id":I
    .restart local v1    # "id":I
    goto :goto_0

    .line 514
    .end local v1    # "id":I
    .restart local v0    # "id":I
    :cond_2
    rsub-int/lit8 v3, v2, 0xc

    add-int/2addr v3, p1

    add-int/2addr v0, v3

    goto :goto_1
.end method

.method private inflateLayout()V
    .locals 22

    .prologue
    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomTimePicker;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 259
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomTimePicker;->removeAllViews()V

    .line 264
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v18

    .line 266
    .local v18, "metrics":Landroid/util/DisplayMetrics;
    const/4 v2, 0x3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I

    .line 267
    const v20, 0x7f04001d

    .line 268
    .local v20, "resid":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01cf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v21

    .line 270
    .local v21, "selectItemHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomTimePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    move/from16 v0, v20

    move-object/from16 v1, p0

    invoke-static {v2, v0, v1}, Lcom/meizu/common/widget/CustomTimePicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 272
    const v2, 0x7f0e00bb

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mPickerHolder:Landroid/widget/FrameLayout;

    .line 273
    const v2, 0x7f0e00c5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mHourUnit:Landroid/widget/TextView;

    .line 274
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mHourUnit:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 275
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mHourUnit:Landroid/widget/TextView;

    const v3, 0x7f0b01b1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 278
    :cond_1
    const v2, 0x7f0e00c8

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mMinuteUnit:Landroid/widget/TextView;

    .line 279
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mMinuteUnit:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 280
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mMinuteUnit:Landroid/widget/TextView;

    const v3, 0x7f0b01b2

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 283
    :cond_2
    const v2, 0x7f0e00c4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/widget/ScrollTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v3, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;-><init>(Lcom/meizu/common/widget/CustomTimePicker;I)V

    const/high16 v4, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v6, 0x18

    :goto_0
    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_6

    const/16 v9, 0x17

    :goto_1
    const/4 v10, 0x1

    invoke-virtual/range {v2 .. v10}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    move/from16 v0, v21

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/ScrollTextView;->setSelectItemHeight(F)V

    .line 288
    const v2, 0x7f0e00c7

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/widget/ScrollTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 289
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v3, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;-><init>(Lcom/meizu/common/widget/CustomTimePicker;I)V

    const/high16 v4, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    const/16 v6, 0x3c

    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I

    const/4 v8, 0x0

    const/16 v9, 0x3b

    const/4 v10, 0x1

    invoke-virtual/range {v2 .. v10}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 291
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    move/from16 v0, v21

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/ScrollTextView;->setSelectItemHeight(F)V

    .line 293
    const v2, 0x7f0e00ca

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/widget/ScrollTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 294
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v3, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;-><init>(Lcom/meizu/common/widget/CustomTimePicker;I)V

    const/high16 v4, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/meizu/common/widget/CustomTimePicker;->mIsAm:Z

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomTimePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0157

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomTimePicker;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0156

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FF)V

    .line 301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    move/from16 v0, v21

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/ScrollTextView;->setSelectItemHeight(F)V

    .line 303
    const v2, 0x7f0e00c9

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/FrameLayout;

    .line 304
    .local v16, "ampmholder":Landroid/widget/FrameLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 305
    const/16 v2, 0x8

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 310
    :goto_3
    const v2, 0x7f0e00bf

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthUnit:Landroid/widget/TextView;

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthUnit:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 312
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthUnit:Landroid/widget/TextView;

    const v3, 0x7f0b01ae

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 315
    :cond_3
    const v2, 0x7f0e00c2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mDayUnit:Landroid/widget/TextView;

    .line 316
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mDayUnit:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 317
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mDayUnit:Landroid/widget/TextView;

    const v3, 0x7f0b01b0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 320
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    .line 321
    .local v17, "cal":Ljava/util/Calendar;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    .line 322
    const/4 v2, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    .line 323
    const/4 v2, 0x5

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mDay:I

    .line 325
    const/4 v2, 0x5

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    .line 327
    .local v6, "max":I
    const v2, 0x7f0e00c1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Lcom/meizu/common/widget/ScrollTextView;

    .line 328
    .local v19, "picker":Lcom/meizu/common/widget/ScrollTextView;
    new-instance v2, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v2, v0, v1}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;-><init>(Lcom/meizu/common/widget/CustomTimePicker;Lcom/meizu/common/widget/ScrollTextView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    .line 329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    new-instance v3, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;

    const/4 v4, 0x5

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;-><init>(Lcom/meizu/common/widget/CustomTimePicker;I)V

    const/4 v4, -0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/common/widget/CustomTimePicker;->mDay:I

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/meizu/common/widget/CustomTimePicker;->mDay:I

    add-int/lit8 v8, v8, -0x1

    add-int/lit8 v9, v6, -0x1

    const/4 v10, 0x1

    invoke-virtual/range {v2 .. v10}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setData(Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;IIIIIIZ)V

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setSelectItemHeight(I)V

    .line 333
    const v2, 0x7f0e00be

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v19

    .end local v19    # "picker":Lcom/meizu/common/widget/ScrollTextView;
    check-cast v19, Lcom/meizu/common/widget/ScrollTextView;

    .line 334
    .restart local v19    # "picker":Lcom/meizu/common/widget/ScrollTextView;
    new-instance v2, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v2, v0, v1}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;-><init>(Lcom/meizu/common/widget/CustomTimePicker;Lcom/meizu/common/widget/ScrollTextView;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    .line 335
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    const/4 v8, 0x0

    const/high16 v9, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/meizu/common/widget/CustomTimePicker;->getMonthIndex(I)I

    move-result v10

    const/16 v11, 0xc

    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I

    const/4 v13, 0x0

    const/16 v14, 0xb

    const/4 v15, 0x0

    invoke-virtual/range {v7 .. v15}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setSelectItemHeight(I)V

    .line 340
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/CustomTimePicker;->initTabView()V

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/CustomTimePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/meizu/common/widget/CustomTimePicker;->initIcomView(Landroid/content/Context;)V

    .line 343
    return-void

    .line 284
    .end local v6    # "max":I
    .end local v16    # "ampmholder":Landroid/widget/FrameLayout;
    .end local v17    # "cal":Ljava/util/Calendar;
    .end local v19    # "picker":Lcom/meizu/common/widget/ScrollTextView;
    :cond_5
    const/16 v6, 0xc

    goto/16 :goto_0

    :cond_6
    const/16 v9, 0xb

    goto/16 :goto_1

    .line 294
    :cond_7
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 307
    .restart local v16    # "ampmholder":Landroid/widget/FrameLayout;
    :cond_8
    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method private initIcomView(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    .line 824
    const v0, 0x7f0e00b3

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIconLayout:Landroid/widget/FrameLayout;

    .line 825
    new-instance v0, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;

    invoke-direct {v0, p1}, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mFlipView:Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;

    .line 826
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIconLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mFlipView:Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 829
    return-void
.end method

.method private initTabView()V
    .locals 2

    .prologue
    .line 355
    const v0, 0x7f0e00b5

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarTab:Landroid/widget/TextView;

    .line 356
    const v0, 0x7f0e00b4

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mGregorianTab:Landroid/widget/TextView;

    .line 358
    const v0, 0x7f0e00b8

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mTabHolder:Landroid/widget/FrameLayout;

    .line 359
    const v0, 0x7f0e00b6

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIndicator:Landroid/view/View;

    .line 360
    const v0, 0x7f0e00ba

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarIndicator:Landroid/view/View;

    .line 361
    const v0, 0x7f0e00b9

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CustomTimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mGregorianIndicator:Landroid/view/View;

    .line 363
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090063

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarColor:I

    .line 365
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090064

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mGregorianColor:I

    .line 367
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090062

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mUnSlectColor:I

    .line 370
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarTab:Landroid/widget/TextView;

    new-instance v1, Lcom/meizu/common/widget/CustomTimePicker$2;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/CustomTimePicker$2;-><init>(Lcom/meizu/common/widget/CustomTimePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mGregorianTab:Landroid/widget/TextView;

    new-instance v1, Lcom/meizu/common/widget/CustomTimePicker$3;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/CustomTimePicker$3;-><init>(Lcom/meizu/common/widget/CustomTimePicker;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    return-void
.end method

.method private setTabColor(IZZ)V
    .locals 12
    .param p1, "color"    # I
    .param p2, "bLunar"    # Z
    .param p3, "doAnimate"    # Z

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 390
    const/4 v11, 0x1

    .line 391
    .local v11, "xyType":I
    const/high16 v2, 0x3f800000    # 1.0f

    .line 392
    .local v2, "fromXValue":F
    const/4 v4, 0x0

    .line 394
    .local v4, "toXValue":F
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f090066

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v10

    .line 396
    .local v10, "unselectedTabColor":I
    if-eqz p2, :cond_1

    .line 397
    const/4 v2, 0x0

    .line 398
    const/high16 v4, 0x3f800000    # 1.0f

    .line 400
    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarTab:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 401
    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mGregorianTab:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 410
    :goto_0
    if-eqz p3, :cond_2

    .line 411
    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIndicator:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    iget-object v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarTab:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    if-eq v3, v5, :cond_0

    .line 412
    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIndicator:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 413
    .local v9, "p":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarTab:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    iput v3, v9, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 414
    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIndicator:Landroid/view/View;

    invoke-virtual {v3, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 417
    .end local v9    # "p":Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move v3, v1

    move v5, v1

    move v7, v1

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 420
    .local v0, "animation":Landroid/view/animation/TranslateAnimation;
    iget-wide v6, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDuration:J

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 421
    new-instance v1, Lcom/meizu/common/widget/CustomTimePicker$4;

    invoke-direct {v1, p0}, Lcom/meizu/common/widget/CustomTimePicker$4;-><init>(Lcom/meizu/common/widget/CustomTimePicker;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 445
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIndicator:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 446
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIndicator:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 457
    .end local v0    # "animation":Landroid/view/animation/TranslateAnimation;
    :goto_1
    return-void

    .line 403
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    .line 404
    const/4 v4, 0x0

    .line 406
    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarTab:Landroid/widget/TextView;

    invoke-virtual {v3, v10}, Landroid/widget/TextView;->setTextColor(I)V

    .line 407
    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mGregorianTab:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 448
    :cond_2
    if-eqz p2, :cond_3

    .line 449
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarIndicator:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    .line 450
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mGregorianIndicator:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    .line 452
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarIndicator:Landroid/view/View;

    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 453
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mGregorianIndicator:Landroid/view/View;

    invoke-virtual {v1, v7}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1
.end method


# virtual methods
.method public getCurrentHour()I
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    .line 638
    :goto_0
    return v0

    .line 635
    :cond_0
    iget-boolean v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIsAm:Z

    if-eqz v0, :cond_1

    .line 636
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    goto :goto_0

    .line 638
    :cond_1
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    add-int/lit8 v0, v0, 0xc

    goto :goto_0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 645
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 12
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v11, 0x0

    .line 1333
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1335
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0270

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1336
    .local v1, "marginTop":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d01ce

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1337
    .local v2, "padding":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d01cf

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 1338
    .local v5, "selectItemHeight":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0271

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 1339
    .local v6, "tabHeight":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0272

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 1340
    .local v7, "tabTextHeight":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0d0273

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1342
    .local v3, "pickerHeight":I
    iget-object v9, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarTab:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setHeight(I)V

    .line 1343
    iget-object v9, p0, Lcom/meizu/common/widget/CustomTimePicker;->mGregorianTab:Landroid/widget/TextView;

    invoke-virtual {v9, v7}, Landroid/widget/TextView;->setHeight(I)V

    .line 1345
    iget-object v9, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    invoke-virtual {v9, v5}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setSelectItemHeight(I)V

    .line 1346
    iget-object v9, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    invoke-virtual {v9, v5}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setSelectItemHeight(I)V

    .line 1347
    iget-object v9, p0, Lcom/meizu/common/widget/CustomTimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    int-to-float v10, v5

    invoke-virtual {v9, v10}, Lcom/meizu/common/widget/ScrollTextView;->setSelectItemHeight(F)V

    .line 1348
    iget-object v9, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    int-to-float v10, v5

    invoke-virtual {v9, v10}, Lcom/meizu/common/widget/ScrollTextView;->setSelectItemHeight(F)V

    .line 1350
    iget-object v9, p0, Lcom/meizu/common/widget/CustomTimePicker;->mPickerHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 1351
    .local v4, "plp":Landroid/widget/LinearLayout$LayoutParams;
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1352
    iput v2, v4, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 1353
    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1354
    iget-object v9, p0, Lcom/meizu/common/widget/CustomTimePicker;->mPickerHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1356
    iget-object v9, p0, Lcom/meizu/common/widget/CustomTimePicker;->mTabHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 1357
    .local v8, "tlp":Landroid/widget/LinearLayout$LayoutParams;
    iput v6, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1358
    iget-object v9, p0, Lcom/meizu/common/widget/CustomTimePicker;->mTabHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v2, v11, v2, v11}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1359
    iget-object v9, p0, Lcom/meizu/common/widget/CustomTimePicker;->mTabHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v8}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1361
    iget-object v9, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIconLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v9}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 1362
    .local v0, "ilp":Landroid/widget/LinearLayout$LayoutParams;
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1363
    iget-object v9, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIconLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v9, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1364
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 10
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 619
    move-object v8, p1

    check-cast v8, Lcom/meizu/common/widget/CustomTimePicker$SavedState;

    .line 620
    .local v8, "ss":Lcom/meizu/common/widget/CustomTimePicker$SavedState;
    invoke-virtual {v8}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 621
    # getter for: Lcom/meizu/common/widget/CustomTimePicker$SavedState;->h:I
    invoke-static {v8}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->access$1300(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I

    move-result v0

    # getter for: Lcom/meizu/common/widget/CustomTimePicker$SavedState;->min:I
    invoke-static {v8}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->access$1400(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/meizu/common/widget/CustomTimePicker;->updateTime(IIZ)V

    .line 622
    # getter for: Lcom/meizu/common/widget/CustomTimePicker$SavedState;->y:I
    invoke-static {v8}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->access$1500(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I

    move-result v1

    # getter for: Lcom/meizu/common/widget/CustomTimePicker$SavedState;->mon:I
    invoke-static {v8}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->access$1600(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I

    move-result v2

    # getter for: Lcom/meizu/common/widget/CustomTimePicker$SavedState;->d:I
    invoke-static {v8}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->access$1700(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I

    move-result v3

    # getter for: Lcom/meizu/common/widget/CustomTimePicker$SavedState;->lunar:I
    invoke-static {v8}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->access$1800(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I

    move-result v0

    if-ne v0, v9, :cond_0

    move v4, v9

    :goto_0
    # getter for: Lcom/meizu/common/widget/CustomTimePicker$SavedState;->leapmonth:I
    invoke-static {v8}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->access$1900(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I

    move-result v0

    if-ne v0, v9, :cond_1

    move v5, v9

    :goto_1
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/common/widget/CustomTimePicker;->updateDate(IIIZZZ)V

    .line 623
    # getter for: Lcom/meizu/common/widget/CustomTimePicker$SavedState;->lunar:I
    invoke-static {v8}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->access$1800(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I

    move-result v0

    if-ne v0, v9, :cond_2

    iget v7, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarColor:I

    .line 624
    .local v7, "selectColor":I
    :goto_2
    # getter for: Lcom/meizu/common/widget/CustomTimePicker$SavedState;->lunar:I
    invoke-static {v8}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;->access$1800(Lcom/meizu/common/widget/CustomTimePicker$SavedState;)I

    move-result v0

    if-ne v0, v9, :cond_3

    :goto_3
    invoke-direct {p0, v7, v9, v6}, Lcom/meizu/common/widget/CustomTimePicker;->setTabColor(IZZ)V

    .line 625
    return-void

    .end local v7    # "selectColor":I
    :cond_0
    move v4, v6

    .line 622
    goto :goto_0

    :cond_1
    move v5, v6

    goto :goto_1

    .line 623
    :cond_2
    iget v7, p0, Lcom/meizu/common/widget/CustomTimePicker;->mGregorianColor:I

    goto :goto_2

    .restart local v7    # "selectColor":I
    :cond_3
    move v9, v6

    .line 624
    goto :goto_3
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 10

    .prologue
    .line 613
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 614
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/meizu/common/widget/CustomTimePicker$SavedState;

    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getCurrentHour()I

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    iget v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    iget v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    iget v6, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDay:I

    iget-boolean v7, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    iget-boolean v8, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLeapMonth:Z

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/meizu/common/widget/CustomTimePicker$SavedState;-><init>(Landroid/os/Parcelable;IIIIIZZLcom/meizu/common/widget/CustomTimePicker$1;)V

    return-object v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 8
    .param p1, "hasWindowFocus"    # Z

    .prologue
    const/4 v7, 0x0

    .line 674
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 675
    if-nez p1, :cond_0

    .line 721
    :goto_0
    return-void

    .line 679
    :cond_0
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 681
    .local v2, "is24Hour":Z
    :try_start_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 686
    :goto_1
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq v2, v4, :cond_1

    .line 687
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker;->getCurrentHour()I

    move-result v1

    .line 688
    .local v1, "hour":I
    iget v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    invoke-virtual {p0, v1, v4, v2}, Lcom/meizu/common/widget/CustomTimePicker;->updateTime(IIZ)V

    .line 692
    .end local v1    # "hour":I
    :cond_1
    iget-boolean v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    if-eqz v4, :cond_2

    .line 693
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    iget v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarSelectTextSize:I

    iget v6, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarNormalTextSize:I

    invoke-virtual {v4, v5, v6}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setTextSize(II)V

    .line 694
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    iget v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarSelectTextSize:I

    iget v6, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarNormalTextSize:I

    invoke-virtual {v4, v5, v6}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setTextSize(II)V

    .line 695
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayUnit:Landroid/widget/TextView;

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setAlpha(F)V

    .line 697
    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarColor:I

    .line 698
    .local v3, "selectColor":I
    iget-boolean v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/meizu/common/widget/CustomTimePicker;->setTabColor(IZZ)V

    .line 708
    :goto_2
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    iget v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mUnSlectColor:I

    invoke-virtual {v4, v3, v5}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setTextColor(II)V

    .line 709
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    iget v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mUnSlectColor:I

    invoke-virtual {v4, v3, v5}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setTextColor(II)V

    .line 710
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mUnSlectColor:I

    invoke-virtual {v4, v3, v5}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 711
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mUnSlectColor:I

    invoke-virtual {v4, v3, v5}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 712
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mUnSlectColor:I

    invoke-virtual {v4, v3, v5}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 714
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthUnit:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 715
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayUnit:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 716
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 717
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMinuteUnit:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 719
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mFlipView:Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;

    iget-boolean v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    invoke-virtual {v4, v5}, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->setFilpViewPrefer(Z)V

    .line 720
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mFlipView:Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;

    invoke-virtual {v4, v7}, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->setFoldFactor(F)V

    goto/16 :goto_0

    .line 682
    .end local v3    # "selectColor":I
    :catch_0
    move-exception v0

    .line 683
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 700
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    iget v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mSolarSelectTextSize:I

    iget v6, p0, Lcom/meizu/common/widget/CustomTimePicker;->mSolarNormalTextSize:I

    invoke-virtual {v4, v5, v6}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setTextSize(II)V

    .line 701
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    iget v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mSolarSelectTextSize:I

    iget v6, p0, Lcom/meizu/common/widget/CustomTimePicker;->mSolarNormalTextSize:I

    invoke-virtual {v4, v5, v6}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setTextSize(II)V

    .line 702
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayUnit:Landroid/widget/TextView;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setAlpha(F)V

    .line 704
    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mGregorianColor:I

    .restart local v3    # "selectColor":I
    goto :goto_2
.end method

.method public setLunar(Z)V
    .locals 9
    .param p1, "isLunar"    # Z

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 766
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomTimePicker;->doTabAnimate()V

    .line 768
    const/4 v0, 0x4

    new-array v6, v0, [I

    .line 769
    .local v6, "date":[I
    new-array v7, v8, [I

    .line 770
    .local v7, "monthData":[I
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    aput v0, v6, v5

    .line 771
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    invoke-virtual {v0, v7}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->getMonth([I)I

    move-result v0

    aput v0, v6, v4

    .line 772
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    invoke-virtual {v0}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->getCurrentItem()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    aput v0, v6, v8

    .line 773
    const/4 v0, 0x3

    aput v5, v6, v0

    .line 775
    if-eqz p1, :cond_1

    .line 776
    aget v0, v6, v5

    aget v1, v6, v4

    aget v2, v6, v8

    invoke-static {v0, v1, v2}, Lcom/meizu/common/util/LunarCalendar;->solarToLunar(III)[I

    move-result-object v6

    .line 782
    :goto_0
    aget v1, v6, v5

    aget v2, v6, v4

    aget v3, v6, v8

    aget v0, v7, v4

    if-ne v0, v4, :cond_0

    move v5, v4

    :cond_0
    move-object v0, p0

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/CustomTimePicker;->updateDate(IIIZZ)V

    .line 783
    return-void

    .line 778
    :cond_1
    aget v1, v6, v5

    aget v2, v6, v4

    aget v3, v6, v8

    aget v0, v7, v4

    if-ne v0, v4, :cond_2

    move v0, v4

    :goto_1
    invoke-static {v1, v2, v3, v0}, Lcom/meizu/common/util/LunarCalendar;->lunarToSolar(IIIZ)[I

    move-result-object v6

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_1
.end method

.method public setTextColor(III)V
    .locals 1
    .param p1, "selectedColor"    # I
    .param p2, "normalColor"    # I
    .param p3, "unitColor"    # I

    .prologue
    .line 733
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setTextColor(II)V

    .line 734
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setTextColor(II)V

    .line 735
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 736
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 737
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    if-eqz v0, :cond_0

    .line 738
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 741
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mHourUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 742
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMinuteUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 743
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 744
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayUnit:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 745
    return-void
.end method

.method public updateDate(IIIZZ)V
    .locals 7
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "islunar"    # Z
    .param p5, "isleapmonth"    # Z

    .prologue
    .line 814
    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/meizu/common/widget/CustomTimePicker;->updateDate(IIIZZZ)V

    .line 815
    return-void
.end method

.method public updateDate(IIIZZZ)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "islunar"    # Z
    .param p5, "isleapmonth"    # Z
    .param p6, "doAnimate"    # Z

    .prologue
    .line 787
    iput-boolean p4, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    .line 788
    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    .line 789
    iput p2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    .line 790
    iput p3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDay:I

    .line 792
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDay:I

    invoke-virtual {v0, v1, v2, v3, p5}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setMonth(IIIZ)V

    .line 794
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthOfDays:I

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    invoke-direct {p0, v1, v2, p4}, Lcom/meizu/common/widget/CustomTimePicker;->getMonthDays(IIZ)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 795
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    invoke-direct {p0, v0, v1, p4}, Lcom/meizu/common/widget/CustomTimePicker;->getMonthDays(IIZ)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthOfDays:I

    .line 796
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mYear:I

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I

    invoke-direct {p0, v1, v2, p4}, Lcom/meizu/common/widget/CustomTimePicker;->getMonthDays(IIZ)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->refreshCount(I)V

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDay:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p6}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setCurrentItem(IZ)V

    .line 800
    iget-boolean v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z

    if-eqz v0, :cond_1

    .line 801
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarSelectTextSize:I

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarNormalTextSize:I

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setTextSize(II)V

    .line 802
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarSelectTextSize:I

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mLunarNormalTextSize:I

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setTextSize(II)V

    .line 803
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayUnit:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 810
    :goto_0
    return-void

    .line 805
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMonthPicker:Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mSolarSelectTextSize:I

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mSolarNormalTextSize:I

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setTextSize(II)V

    .line 806
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mSolarSelectTextSize:I

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mSolarNormalTextSize:I

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setTextSize(II)V

    .line 807
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker;->mDayUnit:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method public updateTime(IIZ)V
    .locals 6
    .param p1, "hour"    # I
    .param p2, "min"    # I
    .param p3, "is24hour"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 460
    const/4 v0, 0x0

    .line 461
    .local v0, "updateHourPicker":Z
    const/4 v1, 0x0

    .line 463
    .local v1, "updateMinPicker":Z
    if-eqz p3, :cond_6

    .line 464
    iget v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    if-eq v4, p1, :cond_0

    .line 465
    const/4 v0, 0x1

    .line 466
    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    .line 480
    :cond_0
    :goto_0
    iget v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    if-eq v4, p2, :cond_1

    .line 481
    const/4 v1, 0x1

    .line 482
    iput p2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    .line 485
    :cond_1
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eq p3, v4, :cond_2

    .line 486
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIs24HourView:Ljava/lang/Boolean;

    .line 487
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomTimePicker;->inflateLayout()V

    .line 490
    :cond_2
    if-eqz v0, :cond_3

    .line 491
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mHourPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    invoke-virtual {v4, v5}, Lcom/meizu/common/widget/ScrollTextView;->refreshCurrent(I)V

    .line 493
    :cond_3
    if-eqz v1, :cond_4

    .line 494
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mMinutePicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentMinute:I

    invoke-virtual {v4, v5}, Lcom/meizu/common/widget/ScrollTextView;->refreshCurrent(I)V

    .line 496
    :cond_4
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    if-eqz v4, :cond_5

    .line 497
    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mAmPmPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget-boolean v5, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIsAm:Z

    if-eqz v5, :cond_8

    :goto_1
    invoke-virtual {v4, v2}, Lcom/meizu/common/widget/ScrollTextView;->refreshCurrent(I)V

    .line 501
    :cond_5
    return-void

    .line 469
    :cond_6
    iput-boolean v3, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIsAm:Z

    .line 470
    iget v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    if-eq v4, p1, :cond_7

    .line 471
    const/4 v0, 0x1

    .line 472
    iput p1, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    .line 474
    :cond_7
    iget v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    const/16 v5, 0xc

    if-lt v4, v5, :cond_0

    .line 475
    iget v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    add-int/lit8 v4, v4, -0xc

    iput v4, p0, Lcom/meizu/common/widget/CustomTimePicker;->mCurrentHour:I

    .line 476
    iput-boolean v2, p0, Lcom/meizu/common/widget/CustomTimePicker;->mIsAm:Z

    goto :goto_0

    :cond_8
    move v2, v3

    .line 497
    goto :goto_1
.end method
