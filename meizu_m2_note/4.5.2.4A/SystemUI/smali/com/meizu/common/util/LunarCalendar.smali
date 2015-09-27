.class public Lcom/meizu/common/util/LunarCalendar;
.super Ljava/lang/Object;
.source "LunarCalendar.java"


# static fields
.field private static final DATE_PATTERN:Ljava/util/regex/Pattern;

.field private static final DAYS_BEFORE_MONTH:[I

.field private static final LUNAR_INFO:[I

.field private static final TZ_UTC:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/meizu/common/util/LunarCalendar;->DAYS_BEFORE_MONTH:[I

    .line 39
    const/16 v0, 0xc8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/meizu/common/util/LunarCalendar;->LUNAR_INFO:[I

    .line 82
    new-instance v0, Ljava/util/SimpleTimeZone;

    const/4 v1, 0x0

    const-string v2, "UTC"

    invoke-direct {v0, v1, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/meizu/common/util/LunarCalendar;->TZ_UTC:Ljava/util/TimeZone;

    .line 353
    const-string v0, "(19|20)[0-9]{2}-((0)?[1-9]|1[012])-((0)?[1-9]|(1|2)[0-9]|30)$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/util/LunarCalendar;->DATE_PATTERN:Ljava/util/regex/Pattern;

    return-void

    .line 30
    nop

    :array_0
    .array-data 4
        0x0
        0x1f
        0x3b
        0x5a
        0x78
        0x97
        0xb5
        0xd4
        0xf3
        0x111
        0x130
        0x14e
        0x16d
    .end array-data

    .line 39
    :array_1
    .array-data 4
        0x84b6bf
        0x4ae53
        0xa5748
        0x5526bd
        0xd2650
        0xd9544
        0x46aab9
        0x56a4d
        0x9ad42
        0x24aeb6
        0x4ae4a
        0x6a4dbe
        0xa4d52
        0xd2546
        0x5d52ba
        0xb544e
        0xd6a43
        0x296d37
        0x95b4b
        0x749bc1
        0x49754
        0xa4b48
        0x5b25bc
        0x6a550
        0x6d445
        0x4adab8
        0x2b64d
        0x95742
        0x2497b7
        0x4974a
        0x664b3e
        0xd4a51
        0xea546
        0x56d4ba
        0x5ad4e
        0x2b644
        0x393738
        0x92e4b
        0x7c96bf
        0xc9553
        0xd4a48
        0x6da53b
        0xb554f
        0x56a45
        0x4aadb9
        0x25d4d
        0x92d42
        0x2c95b6
        0xa954a
        0x7b4abd
        0x6ca51
        0xb5546
        0x555abb
        0x4da4e
        0xa5b43
        0x352bb8
        0x52b4c
        0x8a953f
        0xe9552
        0x6aa48
        0x6ad53c
        0xab54f
        0x4b645
        0x4a5739
        0xa574d
        0x52642
        0x3e9335
        0xd9549
        0x75aabe
        0x56a51
        0x96d46
        0x54aebb
        0x4ad4f
        0xa4d43
        0x4d26b7
        0xd254b
        0x8d52bf
        0xb5452
        0xb6a47
        0x696d3c
        0x95b50
        0x49b45
        0x4a4bb9
        0xa4b4d
        0xab25c2
        0x6a554
        0x6d449
        0x6ada3d
        0xab651
        0x95746
        0x5497bb
        0x4974f
        0x64b44
        0x36a537
        0xea54a
        0x86b2bf
        0x5ac53
        0xab647
        0x5936bc
        0x92e50
        0xc9645
        0x4d4ab8
        0xd4a4c
        0xda541
        0x25aab6
        0x56a49
        0x7aadbd
        0x25d52
        0x92d47
        0x5c95ba
        0xa954e
        0xb4a43
        0x4b5537
        0xad54a
        0x955abf
        0x4ba53
        0xa5b48
        0x652bbc
        0x52b50
        0xa9345
        0x474ab9
        0x6aa4c
        0xad541
        0x24dab6
        0x4b64a
        0x6a573d
        0xa4e51
        0xd2646
        0x5e933a
        0xd534d
        0x5aa43
        0x36b537
        0x96d4b
        0xb4aebf
        0x4ad53
        0xa4d48
        0x6d25bc
        0xd254f
        0xd5244
        0x5daa38
        0xb5a4c
        0x56d41
        0x24adb6
        0x49b4a
        0x7a4bbe
        0xa4b51
        0xaa546
        0x5b52ba
        0x6d24e
        0xada42
        0x355b37    # 4.900003E-39f
        0x9374b
        0x8497c1
        0x49753
        0x64b48
        0x66a53c
        0xea54f
        0x6aa44
        0x4ab638
        0xaae4c
        0x92e42
        0x3c9735
        0xc9649
        0x7d4abd
        0xd4a51
        0xda545
        0x55aaba
        0x56a4e
        0xa6d43
        0x452eb7
        0x52d4b
        0x8a95bf
        0xa9553
        0xb4a47
        0x6b553b
        0xad54f
        0x55a45
        0x4a5d38
        0xa5b4c
        0x52b42
        0x3a93b6
        0x69349
        0x7729bd
        0x6aa51
        0xad546
        0x54daba
        0x4b64e
        0xa5743
        0x452738
        0xd264a
        0x8e933e
        0xd5252
        0xdaa47
        0x66b53b
        0x56d4f
        0x4ae45
        0x4a4eb9
        0xa4d4c
        0xd1541
        0x2d92b5
    .end array-data
.end method

.method private static daysInLunarMonth(II)I
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I

    .prologue
    .line 327
    sget-object v0, Lcom/meizu/common/util/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v1, p0, -0x76c

    aget v0, v0, v1

    const/high16 v1, 0x100000

    shr-int/2addr v1, p1

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 328
    const/16 v0, 0x1d

    .line 330
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x1e

    goto :goto_0
.end method

.method private static daysInLunarYear(I)I
    .locals 5
    .param p0, "year"    # I

    .prologue
    .line 305
    const/16 v2, 0x15c

    .line 306
    .local v2, "sum":I
    invoke-static {p0}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v3

    if-eqz v3, :cond_0

    .line 307
    const/16 v2, 0x179

    .line 309
    :cond_0
    sget-object v3, Lcom/meizu/common/util/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v4, p0, -0x76c

    aget v3, v3, v4

    const v4, 0xfff80

    and-int v1, v3, v4

    .line 310
    .local v1, "monthInfo":I
    const/high16 v0, 0x80000

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x7

    if-le v0, v3, :cond_2

    .line 311
    and-int v3, v1, v0

    if-eqz v3, :cond_1

    .line 312
    add-int/lit8 v2, v2, 0x1

    .line 310
    :cond_1
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 314
    :cond_2
    return v2
.end method

.method public static final daysInMonth(IIZ)I
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "leap"    # Z

    .prologue
    .line 276
    invoke-static {p0}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v0

    .line 277
    .local v0, "leapMonth":I
    const/4 v1, 0x0

    .line 280
    .local v1, "offset":I
    if-eqz v0, :cond_0

    if-le p1, v0, :cond_0

    .line 281
    const/4 v1, 0x1

    .line 285
    :cond_0
    if-nez p2, :cond_1

    .line 286
    add-int v2, p1, v1

    invoke-static {p0, v2}, Lcom/meizu/common/util/LunarCalendar;->daysInLunarMonth(II)I

    move-result v2

    .line 294
    :goto_0
    return v2

    .line 289
    :cond_1
    if-eqz v0, :cond_2

    if-ne v0, p1, :cond_2

    .line 290
    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2}, Lcom/meizu/common/util/LunarCalendar;->daysInLunarMonth(II)I

    move-result v2

    goto :goto_0

    .line 294
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static leapMonth(I)I
    .locals 2
    .param p0, "year"    # I

    .prologue
    .line 341
    sget-object v0, Lcom/meizu/common/util/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v1, p0, -0x76c

    aget v0, v0, v1

    const/high16 v1, 0xf00000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x14

    return v0
.end method

.method public static final lunarToSolar(IIIZ)[I
    .locals 10
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "monthDay"    # I
    .param p3, "isLeapMonth"    # Z

    .prologue
    const/high16 v9, 0x80000

    const/4 v7, 0x1

    const/4 v8, 0x2

    .line 104
    const/16 v5, 0x76c

    if-lt p0, v5, :cond_0

    const/16 v5, 0x833

    if-gt p0, v5, :cond_0

    if-lt p1, v7, :cond_0

    const/16 v5, 0xc

    if-gt p1, v5, :cond_0

    if-lt p2, v7, :cond_0

    const/16 v5, 0x1e

    if-le p2, v5, :cond_1

    .line 106
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Illegal lunar date, must be like that:\n\tyear : 1900~2099\n\tmonth : 1~12\n\tday : 1~30"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 112
    :cond_1
    sget-object v5, Lcom/meizu/common/util/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v6, p0, -0x76c

    aget v5, v5, v6

    and-int/lit8 v5, v5, 0x1f

    add-int/lit8 v0, v5, -0x1

    .line 114
    .local v0, "dayOffset":I
    sget-object v5, Lcom/meizu/common/util/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v6, p0, -0x76c

    aget v5, v5, v6

    and-int/lit8 v5, v5, 0x60

    shr-int/lit8 v5, v5, 0x5

    if-ne v5, v8, :cond_2

    .line 115
    add-int/lit8 v0, v0, 0x1f

    .line 117
    :cond_2
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_4

    .line 118
    sget-object v5, Lcom/meizu/common/util/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v6, p0, -0x76c

    aget v5, v5, v6

    add-int/lit8 v6, v1, -0x1

    shr-int v6, v9, v6

    and-int/2addr v5, v6

    if-nez v5, :cond_3

    .line 119
    add-int/lit8 v0, v0, 0x1d

    .line 117
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_3
    add-int/lit8 v0, v0, 0x1e

    goto :goto_1

    .line 124
    :cond_4
    add-int/2addr v0, p2

    .line 125
    sget-object v5, Lcom/meizu/common/util/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v6, p0, -0x76c

    aget v5, v5, v6

    const/high16 v6, 0xf00000

    and-int/2addr v5, v6

    shr-int/lit8 v3, v5, 0x14

    .line 128
    .local v3, "leapMonth":I
    if-eqz v3, :cond_6

    .line 129
    if-gt p1, v3, :cond_5

    if-ne p1, v3, :cond_6

    if-eqz p3, :cond_6

    .line 130
    :cond_5
    sget-object v5, Lcom/meizu/common/util/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v6, p0, -0x76c

    aget v5, v5, v6

    add-int/lit8 v6, p1, -0x1

    shr-int v6, v9, v6

    and-int/2addr v5, v6

    if-nez v5, :cond_b

    .line 131
    add-int/lit8 v0, v0, 0x1d

    .line 137
    :cond_6
    :goto_2
    const/16 v5, 0x16e

    if-gt v0, v5, :cond_7

    rem-int/lit8 v5, p0, 0x4

    if-eqz v5, :cond_8

    const/16 v5, 0x16d

    if-le v0, v5, :cond_8

    .line 138
    :cond_7
    add-int/lit8 p0, p0, 0x1

    .line 139
    rem-int/lit8 v5, p0, 0x4

    if-ne v5, v7, :cond_c

    .line 140
    add-int/lit16 v0, v0, -0x16e

    .line 145
    :cond_8
    :goto_3
    const/4 v5, 0x3

    new-array v4, v5, [I

    .line 146
    .local v4, "solarInfo":[I
    const/4 v1, 0x1

    :goto_4
    const/16 v5, 0xd

    if-ge v1, v5, :cond_a

    .line 147
    sget-object v5, Lcom/meizu/common/util/LunarCalendar;->DAYS_BEFORE_MONTH:[I

    aget v2, v5, v1

    .line 148
    .local v2, "iPos":I
    rem-int/lit8 v5, p0, 0x4

    if-nez v5, :cond_9

    if-le v1, v8, :cond_9

    .line 149
    add-int/lit8 v2, v2, 0x1

    .line 152
    :cond_9
    rem-int/lit8 v5, p0, 0x4

    if-nez v5, :cond_d

    if-ne v1, v8, :cond_d

    add-int/lit8 v5, v2, 0x1

    if-ne v5, v0, :cond_d

    .line 153
    aput v1, v4, v7

    .line 154
    add-int/lit8 v5, v0, -0x1f

    aput v5, v4, v8

    .line 179
    .end local v2    # "iPos":I
    :cond_a
    :goto_5
    const/4 v5, 0x0

    aput p0, v4, v5

    .line 181
    return-object v4

    .line 133
    .end local v4    # "solarInfo":[I
    :cond_b
    add-int/lit8 v0, v0, 0x1e

    goto :goto_2

    .line 142
    :cond_c
    add-int/lit16 v0, v0, -0x16d

    goto :goto_3

    .line 158
    .restart local v2    # "iPos":I
    .restart local v4    # "solarInfo":[I
    :cond_d
    if-lt v2, v0, :cond_12

    .line 159
    aput v1, v4, v7

    .line 160
    sget-object v5, Lcom/meizu/common/util/LunarCalendar;->DAYS_BEFORE_MONTH:[I

    add-int/lit8 v6, v1, -0x1

    aget v2, v5, v6

    .line 161
    rem-int/lit8 v5, p0, 0x4

    if-nez v5, :cond_e

    if-le v1, v8, :cond_e

    .line 162
    add-int/lit8 v2, v2, 0x1

    .line 164
    :cond_e
    if-le v0, v2, :cond_f

    .line 165
    sub-int v5, v0, v2

    aput v5, v4, v8

    goto :goto_5

    .line 166
    :cond_f
    if-ne v0, v2, :cond_11

    .line 167
    rem-int/lit8 v5, p0, 0x4

    if-nez v5, :cond_10

    if-ne v1, v8, :cond_10

    .line 168
    sget-object v5, Lcom/meizu/common/util/LunarCalendar;->DAYS_BEFORE_MONTH:[I

    aget v5, v5, v1

    sget-object v6, Lcom/meizu/common/util/LunarCalendar;->DAYS_BEFORE_MONTH:[I

    add-int/lit8 v7, v1, -0x1

    aget v6, v6, v7

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v8

    goto :goto_5

    .line 171
    :cond_10
    sget-object v5, Lcom/meizu/common/util/LunarCalendar;->DAYS_BEFORE_MONTH:[I

    aget v5, v5, v1

    sget-object v6, Lcom/meizu/common/util/LunarCalendar;->DAYS_BEFORE_MONTH:[I

    add-int/lit8 v7, v1, -0x1

    aget v6, v6, v7

    sub-int/2addr v5, v6

    aput v5, v4, v8

    goto :goto_5

    .line 175
    :cond_11
    aput v0, v4, v8

    goto :goto_5

    .line 146
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_4
.end method

.method public static final solarToLunar(III)[I
    .locals 18
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "monthDay"    # I

    .prologue
    .line 194
    const/4 v14, 0x4

    new-array v10, v14, [I

    .line 196
    .local v10, "lunarDate":[I
    new-instance v2, Ljava/util/GregorianCalendar;

    const/16 v14, 0x76c

    const/4 v15, 0x0

    const/16 v16, 0x1f

    move/from16 v0, v16

    invoke-direct {v2, v14, v15, v0}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 197
    .local v2, "baseCalendar":Ljava/util/GregorianCalendar;
    sget-object v14, Lcom/meizu/common/util/LunarCalendar;->TZ_UTC:Ljava/util/TimeZone;

    invoke-virtual {v2, v14}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 198
    new-instance v11, Ljava/util/GregorianCalendar;

    add-int/lit8 v14, p1, -0x1

    move/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v11, v0, v14, v1}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 200
    .local v11, "objCalendar":Ljava/util/GregorianCalendar;
    sget-object v14, Lcom/meizu/common/util/LunarCalendar;->TZ_UTC:Ljava/util/TimeZone;

    invoke-virtual {v11, v14}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 201
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 202
    .local v3, "baseDate":Ljava/util/Date;
    invoke-virtual {v11}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v12

    .line 204
    .local v12, "objDate":Ljava/util/Date;
    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    sub-long v14, v14, v16

    const-wide/32 v16, 0x5265c00

    div-long v14, v14, v16

    long-to-int v13, v14

    .line 208
    .local v13, "offset":I
    const/4 v5, 0x0

    .line 209
    .local v5, "daysOfYear":I
    const/16 v7, 0x76c

    .local v7, "iYear":I
    :goto_0
    const/16 v14, 0x833

    if-gt v7, v14, :cond_0

    if-lez v13, :cond_0

    .line 210
    invoke-static {v7}, Lcom/meizu/common/util/LunarCalendar;->daysInLunarYear(I)I

    move-result v5

    .line 211
    sub-int/2addr v13, v5

    .line 209
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 213
    :cond_0
    if-gez v13, :cond_1

    .line 214
    add-int/2addr v13, v5

    .line 215
    add-int/lit8 v7, v7, -0x1

    .line 219
    :cond_1
    const/4 v14, 0x0

    aput v7, v10, v14

    .line 221
    invoke-static {v7}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v9

    .line 222
    .local v9, "leapMonth":I
    const/4 v8, 0x0

    .line 224
    .local v8, "isLeap":Z
    const/4 v4, 0x0

    .line 225
    .local v4, "daysOfMonth":I
    const/4 v6, 0x1

    .local v6, "iMonth":I
    :goto_1
    const/16 v14, 0xd

    if-gt v6, v14, :cond_2

    if-lez v13, :cond_2

    .line 226
    invoke-static {v7, v6}, Lcom/meizu/common/util/LunarCalendar;->daysInLunarMonth(II)I

    move-result v4

    .line 227
    sub-int/2addr v13, v4

    .line 225
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 230
    :cond_2
    if-gez v13, :cond_3

    .line 231
    add-int/2addr v13, v4

    .line 232
    add-int/lit8 v6, v6, -0x1

    .line 236
    :cond_3
    if-eqz v9, :cond_4

    if-le v6, v9, :cond_4

    .line 237
    add-int/lit8 v6, v6, -0x1

    .line 239
    if-ne v6, v9, :cond_4

    .line 240
    const/4 v8, 0x1

    .line 244
    :cond_4
    const/4 v14, 0x1

    aput v6, v10, v14

    .line 245
    const/4 v14, 0x2

    add-int/lit8 v15, v13, 0x1

    aput v15, v10, v14

    .line 246
    const/4 v15, 0x3

    if-eqz v8, :cond_5

    const/4 v14, 0x1

    :goto_2
    aput v14, v10, v15

    .line 248
    return-object v10

    .line 246
    :cond_5
    const/4 v14, 0x0

    goto :goto_2
.end method
