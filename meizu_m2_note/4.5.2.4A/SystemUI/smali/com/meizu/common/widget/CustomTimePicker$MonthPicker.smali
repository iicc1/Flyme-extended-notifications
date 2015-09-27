.class Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;
.super Ljava/lang/Object;
.source "CustomTimePicker.java"

# interfaces
.implements Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/CustomTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MonthPicker"
.end annotation


# instance fields
.field private endDate:[I

.field private endIndex:I

.field private endLunarDate:[I

.field private leapMonthIn1stYear:I

.field private leapMonthIn2ndYear:I

.field private lunarMonthsIn1stYear:I

.field private lunarMonthsIn2ndYear:I

.field private mMonths:[Ljava/lang/String;

.field private picker:Lcom/meizu/common/widget/ScrollTextView;

.field private startDate:[I

.field private startIndex:I

.field private startLunarDate:[I

.field final synthetic this$0:Lcom/meizu/common/widget/CustomTimePicker;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/CustomTimePicker;Lcom/meizu/common/widget/ScrollTextView;)V
    .locals 2
    .param p2, "picker"    # Lcom/meizu/common/widget/ScrollTextView;

    .prologue
    const/4 v1, 0x4

    .line 872
    iput-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 858
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    .line 859
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    .line 860
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    .line 861
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    .line 873
    iput-object p2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    .line 874
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->mMonths:[Ljava/lang/String;

    .line 875
    invoke-direct {p0}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->calculateValidDateField()V

    .line 876
    return-void
.end method

.method private calculateValidDateField()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1054
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mCalendar:Ljava/util/Calendar;
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2700(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1055
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mCalendar:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2700(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aput v2, v1, v6

    .line 1056
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mCalendar:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2700(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    aput v2, v1, v5

    .line 1057
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mCalendar:Ljava/util/Calendar;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2700(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/util/Calendar;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    aput v2, v1, v7

    .line 1058
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aput v6, v1, v8

    .line 1060
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v5

    if-ne v1, v5, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v6

    :goto_0
    aput v1, v2, v6

    .line 1061
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v5

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_1

    const/16 v1, 0xc

    :goto_1
    aput v1, v2, v5

    .line 1062
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v3, v3, v6

    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v4, v4, v5

    # invokes: Lcom/meizu/common/widget/CustomTimePicker;->getMonthDays(IIZ)I
    invoke-static {v2, v3, v4, v6}, Lcom/meizu/common/widget/CustomTimePicker;->access$2400(Lcom/meizu/common/widget/CustomTimePicker;IIZ)I

    move-result v2

    aput v2, v1, v7

    .line 1063
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aput v6, v1, v8

    .line 1065
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v6

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v3, v3, v7

    invoke-static {v1, v2, v3}, Lcom/meizu/common/util/LunarCalendar;->solarToLunar(III)[I

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    .line 1068
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v1, v1, v6

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v2, v2, v5

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v3, v3, v7

    invoke-static {v1, v2, v3}, Lcom/meizu/common/util/LunarCalendar;->solarToLunar(III)[I

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    .line 1071
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v6

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v2, v2, v6

    if-ne v1, v2, :cond_2

    .line 1072
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v1, v1, v5

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v5

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    .line 1073
    iput v6, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn2ndYear:I

    .line 1074
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn2ndYear:I

    add-int/2addr v2, v3

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->mLunarMonthCount:I
    invoke-static {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2102(Lcom/meizu/common/widget/CustomTimePicker;I)I

    .line 1099
    :goto_2
    return-void

    .line 1060
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1061
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1078
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v5

    rsub-int/lit8 v1, v1, 0xc

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    .line 1079
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v6

    invoke-static {v1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v0

    .line 1080
    .local v0, "leapMonth":I
    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    .line 1081
    if-eqz v0, :cond_4

    .line 1082
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v5

    if-lt v1, v0, :cond_3

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v5

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v8

    if-eq v1, v5, :cond_4

    .line 1084
    :cond_3
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    .line 1088
    :cond_4
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v1, v1, v5

    iput v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn2ndYear:I

    .line 1089
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v1, v1, v6

    invoke-static {v1}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v0

    .line 1090
    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    .line 1091
    if-eqz v0, :cond_6

    .line 1092
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v1, v1, v5

    if-gt v1, v0, :cond_5

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v1, v1, v5

    if-ne v1, v0, :cond_6

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v1, v1, v8

    if-ne v1, v5, :cond_6

    .line 1094
    :cond_5
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn2ndYear:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn2ndYear:I

    .line 1098
    :cond_6
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn2ndYear:I

    add-int/2addr v2, v3

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->mLunarMonthCount:I
    invoke-static {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2102(Lcom/meizu/common/widget/CustomTimePicker;I)I

    goto :goto_2
.end method

.method private getLunarMonths(II)Ljava/lang/String;
    .locals 5
    .param p1, "position"    # I
    .param p2, "year"    # I

    .prologue
    const/4 v3, 0x0

    .line 1229
    rem-int/lit8 p1, p1, 0xd

    .line 1230
    invoke-static {p2}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v1

    .line 1231
    .local v1, "leapMonth":I
    if-nez v1, :cond_1

    .line 1232
    const/16 v4, 0xc

    if-lt p1, v4, :cond_2

    .line 1251
    :cond_0
    :goto_0
    return-object v3

    .line 1236
    :cond_1
    const/16 v4, 0xd

    if-ge p1, v4, :cond_0

    .line 1241
    :cond_2
    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08002f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 1242
    .local v2, "mouths":[Ljava/lang/String;
    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-virtual {v3}, Lcom/meizu/common/widget/CustomTimePicker;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b01e1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1244
    .local v0, "leap":Ljava/lang/String;
    if-eqz v1, :cond_4

    add-int/lit8 v3, v1, -0x1

    if-le p1, v3, :cond_4

    .line 1245
    if-ne p1, v1, :cond_3

    .line 1246
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

    .line 1248
    :cond_3
    add-int/lit8 v3, p1, -0x1

    aget-object v3, v2, v3

    goto :goto_0

    .line 1251
    :cond_4
    aget-object v3, v2, p1

    goto :goto_0
.end method

.method private getShortMonths()[Ljava/lang/String;
    .locals 7

    .prologue
    const/16 v6, 0xc

    .line 1197
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1198
    .local v0, "currentLocale":Ljava/util/Locale;
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mMonthLocale:Ljava/util/Locale;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2800(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mShortMonths:[Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2900(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1199
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mShortMonths:[Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2900(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;

    move-result-object v2

    .line 1224
    :goto_0
    return-object v2

    .line 1201
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mMonthUpdateLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$3000(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 1202
    :try_start_0
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mMonthLocale:Ljava/util/Locale;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2800(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1203
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    const/16 v4, 0xc

    new-array v4, v4, [Ljava/lang/String;

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->mShortMonths:[Ljava/lang/String;
    invoke-static {v2, v4}, Lcom/meizu/common/widget/CustomTimePicker;->access$2902(Lcom/meizu/common/widget/CustomTimePicker;[Ljava/lang/String;)[Ljava/lang/String;

    .line 1204
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v6, :cond_1

    .line 1205
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mShortMonths:[Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2900(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v1, 0x0

    const/16 v5, 0x14

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 1204
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1215
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mShortMonths:[Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2900(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v2, v2, v4

    const-string v4, "1"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1216
    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mShortMonths:[Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2900(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 1217
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mShortMonths:[Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2900(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    .line 1216
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1220
    :cond_2
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->mMonthLocale:Ljava/util/Locale;
    invoke-static {v2, v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$2802(Lcom/meizu/common/widget/CustomTimePicker;Ljava/util/Locale;)Ljava/util/Locale;

    .line 1222
    .end local v1    # "i":I
    :cond_3
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1224
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mShortMonths:[Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2900(Lcom/meizu/common/widget/CustomTimePicker;)[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1222
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method public getCurrentItem()I
    .locals 2

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView;->getCurrentItem()I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2600(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getItemText(I)Ljava/lang/String;
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1103
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1104
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2600(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    .line 1106
    if-ltz p1, :cond_0

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mLunarMonthCount:I
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2100(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_1

    .line 1108
    :cond_0
    const-string v2, ""

    .line 1134
    :goto_0
    return-object v2

    .line 1112
    :cond_1
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    if-lt p1, v2, :cond_2

    .line 1113
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    sub-int/2addr p1, v2

    .line 1114
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v1, v2, v5

    .line 1126
    .local v1, "year":I
    :goto_1
    invoke-direct {p0, p1, v1}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->getLunarMonths(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1116
    .end local v1    # "year":I
    :cond_2
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v4

    add-int/lit8 v2, v2, -0x1

    add-int/2addr p1, v2

    .line 1117
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-eqz v2, :cond_4

    .line 1118
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v4

    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-gt v2, v3, :cond_3

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    if-eq v2, v4, :cond_3

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v4

    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-ge v2, v3, :cond_4

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-lt p1, v2, :cond_4

    .line 1119
    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 1123
    :cond_4
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v2, v5

    .restart local v1    # "year":I
    goto :goto_1

    .line 1128
    .end local v1    # "year":I
    :cond_5
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2600(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    if-lt p1, v2, :cond_6

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2600(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0xb

    if-le p1, v2, :cond_7

    .line 1130
    :cond_6
    const-string v2, ""

    goto :goto_0

    .line 1133
    :cond_7
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v4

    add-int/lit8 v2, v2, -0x1

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I
    invoke-static {v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$2600(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    rem-int/lit8 v0, v2, 0xc

    .line 1134
    .local v0, "m":I
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->mMonths:[Ljava/lang/String;

    aget-object v2, v2, v0

    goto :goto_0
.end method

.method public getMonth([I)I
    .locals 5
    .param p1, "data"    # [I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 889
    invoke-virtual {p0}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->getCurrentItem()I

    move-result v0

    .line 891
    .local v0, "id":I
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 892
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    if-lt v0, v1, :cond_3

    .line 893
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v0, v1

    .line 894
    if-eqz p1, :cond_0

    .line 895
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v1, v1, v4

    aput v1, p1, v4

    .line 897
    :cond_0
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_2

    .line 898
    aput v3, p1, v3

    .line 903
    :goto_0
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    if-le v0, v1, :cond_1

    .line 904
    add-int/lit8 v0, v0, -0x1

    .line 942
    :cond_1
    :goto_1
    return v0

    .line 900
    :cond_2
    aput v4, p1, v3

    goto :goto_0

    .line 907
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v3

    add-int/2addr v0, v1

    .line 908
    if-eqz p1, :cond_4

    .line 909
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v4

    aput v1, p1, v4

    .line 912
    :cond_4
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-eqz v1, :cond_7

    .line 913
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    if-ne v1, v3, :cond_5

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-ne v0, v1, :cond_5

    .line 914
    aput v3, p1, v3

    goto :goto_1

    .line 915
    :cond_5
    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    rsub-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0x1

    if-le v1, v2, :cond_6

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-le v0, v1, :cond_6

    .line 916
    aput v3, p1, v3

    .line 917
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 919
    :cond_6
    aput v4, p1, v3

    goto :goto_1

    .line 922
    :cond_7
    aput v4, p1, v3

    goto :goto_1

    .line 927
    :cond_8
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v3

    rsub-int/lit8 v1, v1, 0xc

    if-le v0, v1, :cond_9

    .line 928
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v3

    rsub-int/lit8 v1, v1, 0xc

    sub-int/2addr v0, v1

    .line 929
    if-eqz p1, :cond_1

    .line 930
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v1, v1, v4

    aput v1, p1, v4

    .line 931
    aput v4, p1, v3

    goto :goto_1

    .line 934
    :cond_9
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v3

    add-int/2addr v0, v1

    .line 935
    if-eqz p1, :cond_1

    .line 936
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v4

    aput v1, p1, v4

    .line 937
    aput v4, p1, v3

    goto :goto_1
.end method

.method public onChanged(Landroid/view/View;II)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "fromOld"    # I
    .param p3, "toNew"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1140
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mYear:I
    invoke-static {v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I
    invoke-static {v4}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z
    invoke-static {v5}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v5

    # invokes: Lcom/meizu/common/widget/CustomTimePicker;->getMonthDays(IIZ)I
    invoke-static {v2, v3, v4, v5}, Lcom/meizu/common/widget/CustomTimePicker;->access$2400(Lcom/meizu/common/widget/CustomTimePicker;IIZ)I

    move-result v1

    .line 1142
    .local v1, "maxdays":I
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2600(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v0, p3, v2

    .line 1144
    .local v0, "id":I
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1145
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    if-lt v0, v2, :cond_2

    .line 1146
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v3, v3, v7

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->mYear:I
    invoke-static {v2, v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$2202(Lcom/meizu/common/widget/CustomTimePicker;I)I

    .line 1158
    :goto_0
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1159
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    if-lt v0, v2, :cond_5

    .line 1160
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v0, v2

    .line 1162
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    if-le v0, v2, :cond_0

    .line 1163
    add-int/lit8 v0, v0, -0x1

    .line 1182
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I
    invoke-static {v2, v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$2302(Lcom/meizu/common/widget/CustomTimePicker;I)I

    .line 1186
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mYear:I
    invoke-static {v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I
    invoke-static {v4}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z
    invoke-static {v5}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v5

    # invokes: Lcom/meizu/common/widget/CustomTimePicker;->getMonthDays(IIZ)I
    invoke-static {v2, v3, v4, v5}, Lcom/meizu/common/widget/CustomTimePicker;->access$2400(Lcom/meizu/common/widget/CustomTimePicker;IIZ)I

    move-result v2

    if-eq v1, v2, :cond_1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2500(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1188
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mYear:I
    invoke-static {v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I
    invoke-static {v4}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z
    invoke-static {v5}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v5

    # invokes: Lcom/meizu/common/widget/CustomTimePicker;->getMonthDays(IIZ)I
    invoke-static {v2, v3, v4, v5}, Lcom/meizu/common/widget/CustomTimePicker;->access$2400(Lcom/meizu/common/widget/CustomTimePicker;IIZ)I

    move-result v1

    .line 1190
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2500(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->refreshCount(I)V

    .line 1193
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2500(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->getCurrentItem()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setDayPickerValidField(I)V

    .line 1194
    return-void

    .line 1148
    :cond_2
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v3, v3, v7

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->mYear:I
    invoke-static {v2, v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$2202(Lcom/meizu/common/widget/CustomTimePicker;I)I

    goto :goto_0

    .line 1151
    :cond_3
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v6

    rsub-int/lit8 v2, v2, 0xc

    if-le v0, v2, :cond_4

    .line 1152
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v3, v3, v7

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->mYear:I
    invoke-static {v2, v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$2202(Lcom/meizu/common/widget/CustomTimePicker;I)I

    goto/16 :goto_0

    .line 1154
    :cond_4
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v3, v3, v7

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->mYear:I
    invoke-static {v2, v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$2202(Lcom/meizu/common/widget/CustomTimePicker;I)I

    goto/16 :goto_0

    .line 1166
    :cond_5
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v6

    add-int/2addr v0, v2

    .line 1168
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v6

    iget v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    if-eq v2, v6, :cond_0

    .line 1169
    iget v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-le v0, v2, :cond_0

    .line 1170
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_1

    .line 1176
    :cond_6
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v6

    rsub-int/lit8 v2, v2, 0xc

    if-le v0, v2, :cond_7

    .line 1177
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v6

    rsub-int/lit8 v2, v2, 0xc

    sub-int/2addr v0, v2

    goto/16 :goto_1

    .line 1179
    :cond_7
    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v6

    add-int/2addr v0, v2

    goto/16 :goto_1
.end method

.method public refreshCountAndCurrent(II)V
    .locals 3
    .param p1, "count"    # I
    .param p2, "current"    # I

    .prologue
    .line 1030
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2600(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mOneScreenCount:I
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2600(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->refreshCountAndCurrent(II)V

    .line 1032
    return-void
.end method

.method public setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V
    .locals 9
    .param p1, "dataAdapter"    # Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;
    .param p2, "lineOffset"    # F
    .param p3, "currentItem"    # I
    .param p4, "count"    # I
    .param p5, "oneScreenCount"    # I
    .param p6, "validStart"    # I
    .param p7, "validEnd"    # I
    .param p8, "cycleEnabled"    # Z

    .prologue
    .line 1045
    iput p6, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startIndex:I

    .line 1046
    div-int/lit8 v0, p5, 0x2

    mul-int/lit8 v0, v0, 0x2

    add-int v0, v0, p7

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endIndex:I

    .line 1048
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    div-int/lit8 v1, p5, 0x2

    mul-int/lit8 v1, v1, 0x2

    add-int v4, p4, v1

    iget v6, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startIndex:I

    iget v7, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endIndex:I

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v5, p5

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/meizu/common/widget/ScrollTextView;->setData(Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;FIIIIIZ)V

    .line 1051
    return-void
.end method

.method public setDayPickerValidField(I)V
    .locals 8
    .param p1, "day"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 989
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mYear:I
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I
    invoke-static {v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z
    invoke-static {v4}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v4

    # invokes: Lcom/meizu/common/widget/CustomTimePicker;->getMonthDays(IIZ)I
    invoke-static {v1, v2, v3, v4}, Lcom/meizu/common/widget/CustomTimePicker;->access$2400(Lcom/meizu/common/widget/CustomTimePicker;IIZ)I

    move-result v0

    .line 990
    .local v0, "maxdays":I
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 991
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mYear:I
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v6

    if-ne v1, v2, :cond_0

    .line 992
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2500(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v2, v2, v7

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidStart(I)V

    .line 997
    :goto_0
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mYear:I
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v2, v2, v5

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v2, v2, v6

    if-ne v1, v2, :cond_1

    .line 998
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2500(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v2, v2, v7

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidEnd(I)V

    .line 1017
    :goto_1
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->mDay:I
    invoke-static {v1, p1}, Lcom/meizu/common/widget/CustomTimePicker;->access$302(Lcom/meizu/common/widget/CustomTimePicker;I)I

    .line 1018
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDay:I
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->mDay:I
    invoke-static {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$302(Lcom/meizu/common/widget/CustomTimePicker;I)I

    .line 1019
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDay:I
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    invoke-static {v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$2500(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->getValidEnd()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->mDay:I
    invoke-static {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$302(Lcom/meizu/common/widget/CustomTimePicker;I)I

    .line 1020
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDay:I
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    invoke-static {v3}, Lcom/meizu/common/widget/CustomTimePicker;->access$2500(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->getValidStart()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->mDay:I
    invoke-static {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$302(Lcom/meizu/common/widget/CustomTimePicker;I)I

    .line 1022
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2500(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDay:I
    invoke-static {v2}, Lcom/meizu/common/widget/CustomTimePicker;->access$300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2, v6}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setCurrentItem(IZ)V

    .line 1023
    return-void

    .line 994
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2500(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidStart(I)V

    goto/16 :goto_0

    .line 1000
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2500(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidEnd(I)V

    goto :goto_1

    .line 1003
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mYear:I
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v5

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v6

    if-ne v1, v2, :cond_3

    .line 1004
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2500(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v2, v2, v7

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidStart(I)V

    .line 1009
    :goto_2
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mYear:I
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2200(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v2, v2, v5

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mMonth:I
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2300(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v2, v2, v6

    if-ne v1, v2, :cond_4

    .line 1010
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2500(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v2, v2, v7

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidEnd(I)V

    goto/16 :goto_1

    .line 1006
    :cond_3
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2500(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidStart(I)V

    goto :goto_2

    .line 1012
    :cond_4
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mDayPicker:Lcom/meizu/common/widget/CustomTimePicker$DayPicker;
    invoke-static {v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$2500(Lcom/meizu/common/widget/CustomTimePicker;)Lcom/meizu/common/widget/CustomTimePicker$DayPicker;

    move-result-object v1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/CustomTimePicker$DayPicker;->setValidEnd(I)V

    goto/16 :goto_1
.end method

.method public setMonth(IIIZ)V
    .locals 4
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I
    .param p4, "isleapmonth"    # Z

    .prologue
    const/16 v3, 0xc

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 946
    if-gez p2, :cond_0

    .line 986
    :goto_0
    return-void

    .line 949
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # setter for: Lcom/meizu/common/widget/CustomTimePicker;->isLeapMonth:Z
    invoke-static {v0, p4}, Lcom/meizu/common/widget/CustomTimePicker;->access$2002(Lcom/meizu/common/widget/CustomTimePicker;Z)Z

    .line 950
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z
    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 951
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v0, v0, v1

    if-ne p1, v0, :cond_4

    .line 952
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-eqz v0, :cond_2

    .line 953
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v0, v0, v1

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    if-eq v0, v2, :cond_2

    .line 954
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-gt p2, v0, :cond_1

    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn1stYear:I

    if-ne v0, p2, :cond_2

    if-eqz p4, :cond_2

    .line 956
    :cond_1
    add-int/lit8 p2, p2, 0x1

    .line 960
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mLunarMonthCount:I
    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$2100(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startLunarDate:[I

    aget v1, v1, v2

    sub-int v1, p2, v1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->refreshCountAndCurrent(II)V

    .line 985
    :cond_3
    :goto_1
    invoke-virtual {p0, p3}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->setDayPickerValidField(I)V

    goto :goto_0

    .line 963
    :cond_4
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endLunarDate:[I

    aget v0, v0, v1

    if-ne p1, v0, :cond_3

    .line 964
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    if-eqz v0, :cond_6

    .line 965
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    if-gt p2, v0, :cond_5

    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->leapMonthIn2ndYear:I

    if-ne v0, p2, :cond_6

    if-eqz p4, :cond_6

    .line 967
    :cond_5
    add-int/lit8 p2, p2, 0x1

    .line 970
    :cond_6
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mLunarMonthCount:I
    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$2100(Lcom/meizu/common/widget/CustomTimePicker;)I

    move-result v0

    iget v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->lunarMonthsIn1stYear:I

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->refreshCountAndCurrent(II)V

    goto :goto_1

    .line 974
    :cond_7
    if-gt p2, v3, :cond_3

    .line 975
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v0, v0, v1

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v0, v0, v2

    if-lt p2, v0, :cond_8

    .line 976
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->startDate:[I

    aget v1, v1, v2

    sub-int v1, p2, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 977
    invoke-virtual {p0, v3, p2}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->refreshCountAndCurrent(II)V

    goto :goto_1

    .line 978
    :cond_8
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v0, v0, v1

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v0, v0, v2

    if-gt p2, v0, :cond_3

    .line 979
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->endDate:[I

    aget v0, v0, v2

    sub-int/2addr v0, p2

    rsub-int/lit8 p2, v0, 0xb

    .line 980
    invoke-virtual {p0, v3, p2}, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->refreshCountAndCurrent(II)V

    goto :goto_1
.end method

.method public setSelectItemHeight(I)V
    .locals 2
    .param p1, "selectHeight"    # I

    .prologue
    .line 879
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/ScrollTextView;->setSelectItemHeight(F)V

    .line 880
    return-void
.end method

.method public setTextColor(II)V
    .locals 1
    .param p1, "selectedColor"    # I
    .param p2, "normalColor"    # I

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/ScrollTextView;->setTextColor(II)V

    .line 1040
    return-void
.end method

.method public setTextSize(II)V
    .locals 3
    .param p1, "selectedSize"    # I
    .param p2, "normalSize"    # I

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$MonthPicker;->picker:Lcom/meizu/common/widget/ScrollTextView;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/meizu/common/widget/ScrollTextView;->setTextSize(FF)V

    .line 1036
    return-void
.end method
