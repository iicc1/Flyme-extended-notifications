.class public Lcom/meizu/common/widget/DatePicker;
.super Landroid/widget/FrameLayout;
.source "DatePicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/DatePicker$1;,
        Lcom/meizu/common/widget/DatePicker$SavedState;,
        Lcom/meizu/common/widget/DatePicker$DateAdapter;,
        Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;
    }
.end annotation


# instance fields
.field private isLunar:Z

.field private mDay:I

.field private mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

.field private mDayUnit:Landroid/widget/TextView;

.field private mEndYear:I

.field private mLayoutResId:I

.field private mLunarNormalTextSize:I

.field private mLunarSelectTextSize:I

.field private mMonth:I

.field private volatile mMonthLocale:Ljava/util/Locale;

.field private mMonthOfDays:I

.field private mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

.field private mMonthUnit:Landroid/widget/TextView;

.field private mMonthUpdateLock:Ljava/lang/Object;

.field private mMonths:[Ljava/lang/String;

.field private mNormalItemHeight:F

.field private mOnDateChangedListener:Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;

.field private mOneScreenCount:I

.field mOrder:Ljava/lang/String;

.field private mSelectItemHeight:F

.field private mShortMonths:[Ljava/lang/String;

.field private mSolarNormalTextSize:I

.field private mSolarSelectTextSize:I

.field private mStartYear:I

.field private mYear:I

.field private mYearOfMonths:I

.field private mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

.field private mYearUnit:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 228
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 231
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/common/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 232
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 235
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 71
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    .line 87
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonthUpdateLock:Ljava/lang/Object;

    .line 95
    const/4 v2, 0x5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    .line 96
    const v2, 0x7f04001e

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mLayoutResId:I

    .line 239
    sget-object v2, Lcom/meizu/common/R$styleable;->DatePicker:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v16

    .line 241
    .local v16, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    const/16 v3, 0x7b2

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    .line 243
    const/4 v2, 0x1

    const/16 v3, 0x7f5

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mEndYear:I

    .line 245
    const/4 v2, 0x6

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/DatePicker;->mLayoutResId:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mLayoutResId:I

    .line 248
    const/4 v2, 0x7

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    .line 251
    const/16 v2, 0x8

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    .line 253
    const/16 v2, 0x9

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    .line 254
    invoke-virtual/range {v16 .. v16}, Landroid/content/res/TypedArray;->recycle()V

    .line 256
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/DatePicker;->mLayoutResId:I

    move-object/from16 v0, p0

    invoke-static {v2, v3, v0}, Lcom/meizu/common/widget/DatePicker;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 258
    const v2, 0x7f0e00ce

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    .line 259
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    const v3, 0x7f0b01ae

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 263
    :cond_0
    const v2, 0x7f0e00d2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    .line 264
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    .line 265
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    const v3, 0x7f0b01b0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 268
    :cond_1
    const v2, 0x7f0e00d6

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    .line 269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    if-eqz v2, :cond_2

    .line 270
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    const v3, 0x7f0b01af

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 274
    :cond_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    .line 275
    .local v17, "cal":Ljava/util/Calendar;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    .line 276
    const/4 v2, 0x2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    .line 277
    const/4 v2, 0x5

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    .line 278
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mOnDateChangedListener:Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;

    .line 280
    const/4 v2, 0x5

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v6

    .line 282
    .local v6, "max":I
    const v2, 0x7f0e00d1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/widget/ScrollTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 283
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    .line 284
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    float-to-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/meizu/common/widget/ScrollTextView;->setItemHeight(FF)V

    .line 287
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v3, Lcom/meizu/common/widget/DatePicker$DateAdapter;

    const/4 v4, 0x3

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/meizu/common/widget/DatePicker$DateAdapter;-><init>(Lcom/meizu/common/widget/DatePicker;I)V

    const/high16 v4, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget v5, v0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, p0

    iget v7, v0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    const/4 v8, 0x0

    add-int/lit8 v9, v6, -0x1

    const/4 v10, 0x1

    invoke-virtual/range {v2 .. v10}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 290
    const v2, 0x7f0e00cd

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/widget/ScrollTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 291
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    .line 292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    float-to-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/meizu/common/widget/ScrollTextView;->setItemHeight(FF)V

    .line 295
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getShortMonths()[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    .line 296
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v8, Lcom/meizu/common/widget/DatePicker$DateAdapter;

    const/4 v2, 0x2

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v2}, Lcom/meizu/common/widget/DatePicker$DateAdapter;-><init>(Lcom/meizu/common/widget/DatePicker;I)V

    const/high16 v9, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget v10, v0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    const/16 v11, 0xc

    move-object/from16 v0, p0

    iget v12, v0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    const/4 v13, 0x0

    const/16 v14, 0xb

    const/4 v15, 0x1

    invoke-virtual/range {v7 .. v15}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 299
    const v2, 0x7f0e00d5

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/widget/ScrollTextView;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    .line 300
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    .line 301
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/widget/DatePicker;->mEndYear:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mEndYear:I

    .line 303
    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget v2, v0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_5

    .line 304
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/meizu/common/widget/DatePicker;->mSelectItemHeight:F

    float-to-int v3, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/meizu/common/widget/DatePicker;->mNormalItemHeight:F

    float-to-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/meizu/common/widget/ScrollTextView;->setItemHeight(FF)V

    .line 308
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->updateYearPicker()V

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/meizu/common/widget/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    invoke-static {v2}, Lcom/meizu/common/widget/DatePicker;->isNumeric(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 314
    invoke-direct/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->adjustLayout4FocusedPosition()V

    .line 316
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_6

    .line 317
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/meizu/common/widget/DatePicker;->setEnabled(Z)V

    .line 320
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mLunarNormalTextSize:I

    .line 321
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mLunarSelectTextSize:I

    .line 322
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01d0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mSolarNormalTextSize:I

    .line 323
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d01d1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/meizu/common/widget/DatePicker;->mSolarSelectTextSize:I

    .line 324
    return-void

    .line 312
    :cond_7
    const/16 v2, 0x8

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/meizu/common/widget/DatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 54
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    return v0
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/DatePicker;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/meizu/common/widget/DatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 54
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    return v0
.end method

.method static synthetic access$1002(Lcom/meizu/common/widget/DatePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    return p1
.end method

.method static synthetic access$1100(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mOnDateChangedListener:Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/DatePicker;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/DatePicker;->getLunarMonths(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/common/widget/DatePicker;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/meizu/common/widget/DatePicker;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/DatePicker;->getLunarDays(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/common/widget/DatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getMonthDays()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/DatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getYearMonths()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/meizu/common/widget/DatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 54
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    return v0
.end method

.method static synthetic access$702(Lcom/meizu/common/widget/DatePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    return p1
.end method

.method static synthetic access$800(Lcom/meizu/common/widget/DatePicker;)Lcom/meizu/common/widget/ScrollTextView;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/common/widget/DatePicker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;

    .prologue
    .line 54
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    return v0
.end method

.method static synthetic access$902(Lcom/meizu/common/widget/DatePicker;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/DatePicker;
    .param p1, "x1"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    return p1
.end method

.method private adjustLayout4FocusedPosition()V
    .locals 2

    .prologue
    .line 809
    const v0, 0x7f0e00ce

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    .line 810
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUnit:Landroid/widget/TextView;

    const v1, 0x7f0b01ae

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 814
    :cond_0
    const v0, 0x7f0e00d2

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    .line 815
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 816
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayUnit:Landroid/widget/TextView;

    const v1, 0x7f0b01b0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 819
    :cond_1
    const v0, 0x7f0e00d6

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    .line 820
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 821
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearUnit:Landroid/widget/TextView;

    const v1, 0x7f0b01af

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 823
    :cond_2
    return-void
.end method

.method private getLunarDays(I)Ljava/lang/String;
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 506
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08002e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 508
    .local v0, "days":[Ljava/lang/String;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    if-le p1, v1, :cond_0

    .line 509
    const/4 v1, 0x0

    .line 512
    :goto_0
    return-object v1

    :cond_0
    aget-object v1, v0, p1

    goto :goto_0
.end method

.method private getLunarMonths(I)Ljava/lang/String;
    .locals 5
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x0

    .line 481
    iget v4, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    invoke-static {v4}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v1

    .line 482
    .local v1, "leapMonth":I
    if-nez v1, :cond_1

    .line 483
    const/16 v4, 0xc

    if-le p1, v4, :cond_2

    .line 501
    :cond_0
    :goto_0
    return-object v3

    .line 487
    :cond_1
    const/16 v4, 0xd

    if-gt p1, v4, :cond_0

    .line 492
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08002f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 493
    .local v2, "mouths":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 494
    .local v0, "leap":Ljava/lang/String;
    if-eqz v1, :cond_4

    add-int/lit8 v3, v1, -0x1

    if-le p1, v3, :cond_4

    .line 495
    if-ne p1, v1, :cond_3

    .line 496
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, -0x1

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 498
    :cond_3
    add-int/lit8 v3, p1, -0x1

    aget-object v3, v2, v3

    goto :goto_0

    .line 501
    :cond_4
    aget-object v3, v2, p1

    goto :goto_0
.end method

.method private getMonthDays()I
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v4, 0x1

    .line 776
    iget-boolean v5, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    if-eqz v5, :cond_4

    .line 777
    iget v3, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    .line 778
    .local v3, "m":I
    iget v5, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    invoke-static {v5}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v2

    .line 779
    .local v2, "leapMonth":I
    const/4 v1, 0x0

    .line 780
    .local v1, "isLeapMonth":Z
    if-eqz v2, :cond_0

    .line 781
    if-ne v2, v3, :cond_3

    move v1, v4

    .line 784
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    if-eqz v2, :cond_2

    iget v4, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    if-ge v4, v2, :cond_2

    .line 785
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 788
    :cond_2
    iget v4, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    invoke-static {v4, v3, v1}, Lcom/meizu/common/util/LunarCalendar;->daysInMonth(IIZ)I

    move-result v4

    .line 794
    .end local v1    # "isLeapMonth":Z
    .end local v2    # "leapMonth":I
    .end local v3    # "m":I
    :goto_1
    return v4

    .line 781
    .restart local v1    # "isLeapMonth":Z
    .restart local v2    # "leapMonth":I
    .restart local v3    # "m":I
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 790
    .end local v1    # "isLeapMonth":Z
    .end local v2    # "leapMonth":I
    .end local v3    # "m":I
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 791
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, v6, v4}, Ljava/util/Calendar;->set(II)V

    .line 792
    iget v5, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 793
    const/4 v4, 0x2

    iget v5, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 794
    invoke-virtual {v0, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    goto :goto_1
.end method

.method private getShortMonths()[Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xc

    .line 450
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 451
    .local v0, "currentLocale":Ljava/util/Locale;
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mMonthLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 452
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 476
    :goto_0
    return-object v2

    .line 454
    :cond_0
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker;->mMonthUpdateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 455
    :try_start_0
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mMonthLocale:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 456
    const/16 v2, 0xc

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    .line 457
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_1

    .line 458
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x0

    const/16 v5, 0x14

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 457
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 467
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 468
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 469
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 468
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 472
    :cond_2
    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthLocale:Ljava/util/Locale;

    .line 474
    .end local v1    # "i":I
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    iget-object v2, p0, Lcom/meizu/common/widget/DatePicker;->mShortMonths:[Ljava/lang/String;

    goto :goto_0

    .line 474
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private getYearMonths()I
    .locals 2

    .prologue
    const/16 v0, 0xc

    .line 799
    iget-boolean v1, p0, Lcom/meizu/common/widget/DatePicker;->isLunar:Z

    if-eqz v1, :cond_0

    .line 800
    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    invoke-static {v1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v1

    if-nez v1, :cond_1

    .line 802
    :cond_0
    :goto_0
    return v0

    .line 800
    :cond_1
    const/16 v0, 0xd

    goto :goto_0
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 826
    const-string v1, "[0-9]*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 827
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method private reorderPickers([Ljava/lang/String;)V
    .locals 20
    .param p1, "months"    # [Ljava/lang/String;

    .prologue
    .line 343
    const/16 v18, 0x0

    aget-object v18, p1, v18

    const-string v19, "1"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 344
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v11

    .line 349
    .local v11, "format":Ljava/text/DateFormat;
    :goto_0
    instance-of v0, v11, Ljava/text/SimpleDateFormat;

    move/from16 v18, v0

    if-eqz v18, :cond_4

    .line 350
    check-cast v11, Ljava/text/SimpleDateFormat;

    .end local v11    # "format":Ljava/text/DateFormat;
    invoke-virtual {v11}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/common/widget/DatePicker;->mOrder:Ljava/lang/String;

    .line 360
    :goto_1
    const v18, 0x7f0e00cc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/FrameLayout;

    .line 361
    .local v13, "monthLayout":Landroid/widget/FrameLayout;
    const v18, 0x7f0e00d0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 362
    .local v3, "dayLayout":Landroid/widget/FrameLayout;
    const v18, 0x7f0e00d4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout;

    .line 363
    .local v17, "yearLayout":Landroid/widget/FrameLayout;
    const v18, 0x7f0e00cf

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 364
    .local v9, "divider1":Landroid/widget/ImageView;
    const v18, 0x7f0e00d3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 366
    .local v10, "divider2":Landroid/widget/ImageView;
    const v18, 0x7f0e00bc

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 367
    .local v15, "parent":Landroid/widget/LinearLayout;
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 369
    const/16 v16, 0x0

    .line 370
    .local v16, "quoted":Z
    const/4 v4, 0x0

    .local v4, "didDay":Z
    const/4 v7, 0x0

    .local v7, "didMonth":Z
    const/4 v8, 0x0

    .local v8, "didYear":Z
    const/4 v5, 0x0

    .local v5, "didDiv1":Z
    const/4 v6, 0x0

    .line 372
    .local v6, "didDiv2":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/DatePicker;->mOrder:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    move/from16 v0, v18

    if-ge v12, v0, :cond_a

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/DatePicker;->mOrder:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 375
    .local v2, "c":C
    const/16 v18, 0x27

    move/from16 v0, v18

    if-ne v2, v0, :cond_0

    .line 376
    if-nez v16, :cond_5

    const/16 v16, 0x1

    .line 379
    :cond_0
    :goto_3
    if-nez v16, :cond_2

    .line 380
    const/4 v14, 0x0

    .line 381
    .local v14, "need_divider":Z
    const/16 v18, 0x64

    move/from16 v0, v18

    if-ne v2, v0, :cond_6

    if-nez v4, :cond_6

    .line 382
    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 383
    const/4 v4, 0x1

    .line 384
    const/4 v14, 0x1

    .line 395
    :cond_1
    :goto_4
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v0, v14, :cond_2

    .line 396
    if-nez v5, :cond_9

    .line 397
    invoke-virtual {v15, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 398
    const/4 v5, 0x1

    .line 372
    .end local v14    # "need_divider":Z
    :cond_2
    :goto_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 346
    .end local v2    # "c":C
    .end local v3    # "dayLayout":Landroid/widget/FrameLayout;
    .end local v4    # "didDay":Z
    .end local v5    # "didDiv1":Z
    .end local v6    # "didDiv2":Z
    .end local v7    # "didMonth":Z
    .end local v8    # "didYear":Z
    .end local v9    # "divider1":Landroid/widget/ImageView;
    .end local v10    # "divider2":Landroid/widget/ImageView;
    .end local v12    # "i":I
    .end local v13    # "monthLayout":Landroid/widget/FrameLayout;
    .end local v15    # "parent":Landroid/widget/LinearLayout;
    .end local v16    # "quoted":Z
    .end local v17    # "yearLayout":Landroid/widget/FrameLayout;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v11

    .restart local v11    # "format":Ljava/text/DateFormat;
    goto/16 :goto_0

    .line 353
    :cond_4
    new-instance v18, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/String;-><init>([C)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/meizu/common/widget/DatePicker;->mOrder:Ljava/lang/String;

    goto/16 :goto_1

    .line 376
    .end local v11    # "format":Ljava/text/DateFormat;
    .restart local v2    # "c":C
    .restart local v3    # "dayLayout":Landroid/widget/FrameLayout;
    .restart local v4    # "didDay":Z
    .restart local v5    # "didDiv1":Z
    .restart local v6    # "didDiv2":Z
    .restart local v7    # "didMonth":Z
    .restart local v8    # "didYear":Z
    .restart local v9    # "divider1":Landroid/widget/ImageView;
    .restart local v10    # "divider2":Landroid/widget/ImageView;
    .restart local v12    # "i":I
    .restart local v13    # "monthLayout":Landroid/widget/FrameLayout;
    .restart local v15    # "parent":Landroid/widget/LinearLayout;
    .restart local v16    # "quoted":Z
    .restart local v17    # "yearLayout":Landroid/widget/FrameLayout;
    :cond_5
    const/16 v16, 0x0

    goto :goto_3

    .line 385
    .restart local v14    # "need_divider":Z
    :cond_6
    const/16 v18, 0x4d

    move/from16 v0, v18

    if-eq v2, v0, :cond_7

    const/16 v18, 0x4c

    move/from16 v0, v18

    if-ne v2, v0, :cond_8

    :cond_7
    if-nez v7, :cond_8

    .line 386
    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 387
    const/4 v7, 0x1

    .line 388
    const/4 v14, 0x1

    goto :goto_4

    .line 389
    :cond_8
    const/16 v18, 0x79

    move/from16 v0, v18

    if-ne v2, v0, :cond_1

    if-nez v8, :cond_1

    .line 390
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 391
    const/4 v8, 0x1

    .line 392
    const/4 v14, 0x1

    goto :goto_4

    .line 400
    :cond_9
    if-nez v6, :cond_2

    .line 401
    invoke-virtual {v15, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 402
    const/4 v6, 0x1

    goto :goto_5

    .line 410
    .end local v2    # "c":C
    .end local v14    # "need_divider":Z
    :cond_a
    if-nez v7, :cond_b

    .line 411
    invoke-virtual {v15, v13}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 413
    :cond_b
    if-nez v4, :cond_c

    .line 414
    invoke-virtual {v15, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 416
    :cond_c
    if-nez v8, :cond_d

    .line 417
    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 419
    :cond_d
    return-void
.end method

.method private updateYearPicker()V
    .locals 9

    .prologue
    .line 690
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    new-instance v1, Lcom/meizu/common/widget/DatePicker$DateAdapter;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/meizu/common/widget/DatePicker$DateAdapter;-><init>(Lcom/meizu/common/widget/DatePicker;I)V

    const/high16 v2, -0x40800000    # -1.0f

    iget v3, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    iget v4, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/meizu/common/widget/DatePicker;->mEndYear:I

    iget v5, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    iget v5, p0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    iget v6, p0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    iget v7, p0, Lcom/meizu/common/widget/DatePicker;->mEndYear:I

    iget v8, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/meizu/common/widget/DatePicker;->mOneScreenCount:I

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 694
    return-void
.end method


# virtual methods
.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 579
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Lcom/meizu/common/widget/DatePicker;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 580
    return-void
.end method

.method public getDayOfMonth()I
    .locals 1

    .prologue
    .line 656
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 652
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 648
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    return v0
.end method

.method public init(IIILcom/meizu/common/widget/DatePicker$OnDateChangedListener;Z)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;
    .param p5, "doAnimate"    # Z

    .prologue
    .line 607
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    if-eq v0, p3, :cond_1

    .line 608
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/meizu/common/widget/DatePicker;->updateDate(IIIZ)V

    .line 611
    :cond_1
    iput-object p4, p0, Lcom/meizu/common/widget/DatePicker;->mOnDateChangedListener:Lcom/meizu/common/widget/DatePicker$OnDateChangedListener;

    .line 612
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 590
    move-object v0, p1

    check-cast v0, Lcom/meizu/common/widget/DatePicker$SavedState;

    .line 591
    .local v0, "ss":Lcom/meizu/common/widget/DatePicker$SavedState;
    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePicker$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 592
    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePicker$SavedState;->getYear()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    .line 593
    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePicker$SavedState;->getMonth()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    .line 594
    invoke-virtual {v0}, Lcom/meizu/common/widget/DatePicker$SavedState;->getDay()I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    .line 595
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 6

    .prologue
    .line 584
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 585
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/meizu/common/widget/DatePicker$SavedState;

    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    iget v3, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    iget v4, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/DatePicker$SavedState;-><init>(Landroid/os/Parcelable;IIILcom/meizu/common/widget/DatePicker$1;)V

    return-object v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 661
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 662
    if-nez p1, :cond_1

    .line 687
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getShortMonths()[Ljava/lang/String;

    move-result-object v1

    .line 669
    .local v1, "months":[Ljava/lang/String;
    const/4 v3, 0x0

    aget-object v3, v1, v3

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 670
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .line 675
    .local v0, "format":Ljava/text/DateFormat;
    :goto_1
    instance-of v3, v0, Ljava/text/SimpleDateFormat;

    if-eqz v3, :cond_3

    .line 676
    check-cast v0, Ljava/text/SimpleDateFormat;

    .end local v0    # "format":Ljava/text/DateFormat;
    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    .line 681
    .local v2, "order":Ljava/lang/String;
    :goto_2
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker;->mOrder:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 685
    iput-object v1, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    .line 686
    iget-object v3, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/meizu/common/widget/DatePicker;->reorderPickers([Ljava/lang/String;)V

    goto :goto_0

    .line 672
    .end local v2    # "order":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getMediumDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    .restart local v0    # "format":Ljava/text/DateFormat;
    goto :goto_1

    .line 678
    :cond_3
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/meizu/common/widget/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([C)V

    .restart local v2    # "order":Ljava/lang/String;
    goto :goto_2
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 328
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 329
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setEnabled(Z)V

    .line 330
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setEnabled(Z)V

    .line 331
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1}, Lcom/meizu/common/widget/ScrollTextView;->setEnabled(Z)V

    .line 332
    return-void
.end method

.method public updateDate(IIIZ)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "doAnimate"    # Z

    .prologue
    .line 426
    iput p1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    .line 427
    iput p2, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    .line 428
    iput p3, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    .line 430
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    .line 432
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mYear:I

    iget v2, p0, Lcom/meizu/common/widget/DatePicker;->mStartYear:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, p4}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 434
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearOfMonths:I

    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getYearMonths()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 435
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getYearMonths()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DatePicker;->mYearOfMonths:I

    .line 436
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mYearOfMonths:I

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->refreshCount(I)V

    .line 438
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mMonth:I

    invoke-virtual {v0, v1, p4}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 440
    iget v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthOfDays:I

    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getMonthDays()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 441
    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getMonthDays()I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonthOfDays:I

    .line 442
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-direct {p0}, Lcom/meizu/common/widget/DatePicker;->getMonthDays()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->refreshCount(I)V

    .line 444
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mDayPicker:Lcom/meizu/common/widget/ScrollTextView;

    iget v1, p0, Lcom/meizu/common/widget/DatePicker;->mDay:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p4}, Lcom/meizu/common/widget/ScrollTextView;->setCurrentItem(IZ)V

    .line 446
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker;->mMonths:[Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/DatePicker;->reorderPickers([Ljava/lang/String;)V

    .line 447
    return-void
.end method
