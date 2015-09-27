.class Lcom/android/systemui/LoadAverageService$MemoryInfo;
.super Ljava/lang/Object;
.source "LoadAverageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/LoadAverageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoryInfo"
.end annotation


# instance fields
.field private final LEFT_PADDING:I

.field private final TEXT_COLOR:I

.field private final TEXT_SHADOW_COLOR:I

.field private final TEXT_SIZE:I

.field private mBeginParse:Z

.field private mContext:Landroid/content/Context;

.field private mEndParse:Z

.field private mInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLastTime:J

.field private mPaint:Landroid/graphics/Paint;

.field private mShadowPaint:Landroid/graphics/Paint;

.field private mTotalCount:I

.field private mUpdateInfoThread:Ljava/lang/Thread;

.field final synthetic this$0:Lcom/android/systemui/LoadAverageService;


# direct methods
.method private constructor <init>(Lcom/android/systemui/LoadAverageService;Landroid/content/Context;)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x41400000    # 12.0f

    const/4 v3, 0x0

    const/16 v2, 0xff

    .line 1199
    iput-object p1, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->this$0:Lcom/android/systemui/LoadAverageService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1185
    const/16 v1, 0xc

    iput v1, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->TEXT_SIZE:I

    .line 1186
    invoke-static {v2, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->TEXT_COLOR:I

    .line 1187
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->LEFT_PADDING:I

    .line 1188
    const/16 v1, 0xe8

    invoke-static {v1, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->TEXT_SHADOW_COLOR:I

    .line 1193
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mInfo:Ljava/util/ArrayList;

    .line 1194
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mLastInfo:Ljava/util/ArrayList;

    .line 1200
    iput-object p2, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mContext:Landroid/content/Context;

    .line 1201
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1202
    .local v0, "density":F
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mPaint:Landroid/graphics/Paint;

    .line 1203
    iget-object v1, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mPaint:Landroid/graphics/Paint;

    mul-float v2, v4, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1204
    iget-object v1, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->TEXT_COLOR:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1205
    iget-object v1, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1207
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mShadowPaint:Landroid/graphics/Paint;

    .line 1208
    iget-object v1, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mShadowPaint:Landroid/graphics/Paint;

    mul-float v2, v4, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1209
    iget-object v1, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mShadowPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->TEXT_SHADOW_COLOR:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1210
    iget-object v1, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1212
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/systemui/LoadAverageService$MemoryInfo$1;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/LoadAverageService$MemoryInfo$1;-><init>(Lcom/android/systemui/LoadAverageService$MemoryInfo;Lcom/android/systemui/LoadAverageService;)V

    const-string v3, "systemui"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mUpdateInfoThread:Ljava/lang/Thread;

    .line 1218
    iget-object v1, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mUpdateInfoThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mLastTime:J

    .line 1220
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/LoadAverageService;Landroid/content/Context;Lcom/android/systemui/LoadAverageService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/LoadAverageService;
    .param p2, "x1"    # Landroid/content/Context;
    .param p3, "x2"    # Lcom/android/systemui/LoadAverageService$1;

    .prologue
    .line 1180
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/LoadAverageService$MemoryInfo;-><init>(Lcom/android/systemui/LoadAverageService;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/LoadAverageService$MemoryInfo;Landroid/graphics/Canvas;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/LoadAverageService$MemoryInfo;
    .param p1, "x1"    # Landroid/graphics/Canvas;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 1180
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/LoadAverageService$MemoryInfo;->draw(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/LoadAverageService$MemoryInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/LoadAverageService$MemoryInfo;

    .prologue
    .line 1180
    invoke-direct {p0}, Lcom/android/systemui/LoadAverageService$MemoryInfo;->update()V

    return-void
.end method

.method private draw(Landroid/graphics/Canvas;II)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "y"    # I
    .param p3, "charHeight"    # I

    .prologue
    const/high16 v8, 0x40400000    # 3.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 1223
    invoke-direct {p0}, Lcom/android/systemui/LoadAverageService$MemoryInfo;->getInfo()Ljava/util/ArrayList;

    move-result-object v0

    .line 1224
    .local v0, "content":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1225
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1226
    add-int/2addr p2, p3

    .line 1227
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v8, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1228
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, p2, -0x1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1229
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, p2, -0x1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v8, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1230
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    add-int/lit8 v4, p2, 0x1

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v7, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1231
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/high16 v4, 0x40000000    # 2.0f

    int-to-float v5, p2

    iget-object v6, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1225
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1233
    :cond_0
    return-void
.end method

.method private getComplementSpace(I)Ljava/lang/String;
    .locals 5
    .param p1, "len"    # I

    .prologue
    .line 1332
    const/4 v1, 0x7

    .line 1333
    .local v1, "maxLen":I
    const-string v3, ""

    .line 1334
    .local v3, "str":Ljava/lang/String;
    const-string v2, "0"

    .line 1335
    .local v2, "space":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    rsub-int/lit8 v4, p1, 0x7

    if-ge v0, v4, :cond_0

    .line 1336
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1338
    :cond_0
    return-object v3
.end method

.method private getInfo()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1237
    .local v0, "now":J
    iget-wide v2, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mLastTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1238
    iget-object v2, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mUpdateInfoThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1239
    iget-object v2, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mLastInfo:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1240
    iget-object v2, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mLastInfo:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1241
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/systemui/LoadAverageService$MemoryInfo$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/LoadAverageService$MemoryInfo$2;-><init>(Lcom/android/systemui/LoadAverageService$MemoryInfo;)V

    const-string v4, "systemui"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mUpdateInfoThread:Ljava/lang/Thread;

    .line 1247
    iget-object v2, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mUpdateInfoThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 1248
    iput-wide v0, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mLastTime:J

    .line 1251
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mLastInfo:Ljava/util/ArrayList;

    return-object v2
.end method

.method private parseLine(Ljava/lang/String;)V
    .locals 14
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1296
    if-eqz p1, :cond_0

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mEndParse:Z

    if-eqz v6, :cond_1

    .line 1328
    :cond_0
    :goto_0
    return-void

    .line 1299
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 1300
    iget-boolean v6, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mBeginParse:Z

    if-nez v6, :cond_2

    .line 1301
    const-string v6, "Total PSS by process"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1302
    iput-boolean v11, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mBeginParse:Z

    goto :goto_0

    .line 1306
    :cond_2
    const-string v6, "Total PSS by OOM adjustment"

    invoke-virtual {p1, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1307
    iput-boolean v11, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mEndParse:Z

    goto :goto_0

    .line 1311
    :cond_3
    const/16 v6, 0x3a

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1312
    .local v0, "index1":I
    if-lt v0, v13, :cond_0

    .line 1313
    const/16 v6, 0x28

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1314
    .local v1, "index2":I
    add-int/lit8 v6, v0, 0x1

    invoke-virtual {p1, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1315
    .local v2, "k":Ljava/lang/String;
    add-int/lit8 v6, v0, -0x2

    invoke-virtual {p1, v12, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 1316
    .local v4, "v":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1317
    .local v5, "value":I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v3

    .line 1320
    .local v3, "len":I
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .line 1323
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mInfo:Ljava/util/ArrayList;

    const-string v7, "%.1f%sM -> %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    int-to-float v9, v5

    const/high16 v10, 0x447a0000    # 1000.0f

    div-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-direct {p0, v3}, Lcom/android/systemui/LoadAverageService$MemoryInfo;->getComplementSpace(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    aput-object v2, v8, v13

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1324
    iget v6, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mTotalCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mTotalCount:I

    .line 1325
    iget v6, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mTotalCount:I

    const/16 v7, 0x10

    if-lt v6, v7, :cond_0

    .line 1326
    iput-boolean v11, p0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mEndParse:Z

    goto :goto_0

    .line 1321
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private update()V
    .locals 18

    .prologue
    .line 1255
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mInfo:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    .line 1256
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mContext:Landroid/content/Context;

    const-string v14, "meminfo.txt"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 1257
    .local v5, "filename":Ljava/io/File;
    const/4 v9, 0x0

    .line 1258
    .local v9, "output":Ljava/io/FileOutputStream;
    const/4 v3, 0x0

    .line 1260
    .local v3, "dumpSucess":Z
    :try_start_0
    new-instance v10, Ljava/io/FileOutputStream;

    invoke-direct {v10, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1262
    .end local v9    # "output":Ljava/io/FileOutputStream;
    .local v10, "output":Ljava/io/FileOutputStream;
    :try_start_1
    const-string v13, "meminfo"

    invoke-virtual {v10}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "-d"

    aput-object v17, v15, v16

    invoke-static {v13, v14, v15}, Landroid/os/Debug;->dumpService(Ljava/lang/String;Ljava/io/FileDescriptor;[Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    move-result v3

    .line 1266
    if-eqz v10, :cond_b

    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v9, v10

    .line 1268
    .end local v10    # "output":Ljava/io/FileOutputStream;
    .restart local v9    # "output":Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    if-nez v3, :cond_2

    .line 1293
    :goto_1
    return-void

    .line 1266
    .end local v9    # "output":Ljava/io/FileOutputStream;
    .restart local v10    # "output":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v13

    move-object v9, v10

    .end local v10    # "output":Ljava/io/FileOutputStream;
    .restart local v9    # "output":Ljava/io/FileOutputStream;
    goto :goto_0

    .line 1263
    :catch_1
    move-exception v4

    .line 1264
    .local v4, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string v13, "systemui"

    const-string v14, "Can\'t dump meminfo service"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1266
    if-eqz v9, :cond_0

    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v13

    goto :goto_0

    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v13

    :goto_3
    if-eqz v9, :cond_1

    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    :cond_1
    :goto_4
    throw v13

    .line 1271
    :cond_2
    const/4 v6, 0x0

    .line 1272
    .local v6, "input":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 1273
    .local v11, "reader":Ljava/io/InputStreamReader;
    const/4 v1, 0x0

    .line 1275
    .local v1, "bufferedReader":Ljava/io/BufferedReader;
    :try_start_6
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1276
    .end local v6    # "input":Ljava/io/FileInputStream;
    .local v7, "input":Ljava/io/FileInputStream;
    :try_start_7
    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 1277
    .end local v11    # "reader":Ljava/io/InputStreamReader;
    .local v12, "reader":Ljava/io/InputStreamReader;
    :try_start_8
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_c
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 1278
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .local v2, "bufferedReader":Ljava/io/BufferedReader;
    const/4 v8, 0x0

    .line 1279
    .local v8, "line":Ljava/lang/String;
    const/4 v13, 0x0

    :try_start_9
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mBeginParse:Z

    .line 1280
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mEndParse:Z

    .line 1281
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mTotalCount:I

    .line 1282
    :cond_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    .line 1283
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/systemui/LoadAverageService$MemoryInfo;->parseLine(Ljava/lang/String;)V

    .line 1284
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/systemui/LoadAverageService$MemoryInfo;->mEndParse:Z
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    if-eqz v13, :cond_3

    .line 1289
    :cond_4
    if-eqz v7, :cond_5

    :try_start_a
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 1290
    :cond_5
    :goto_5
    if-eqz v2, :cond_a

    :try_start_b
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    move-object v1, v2

    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v11, v12

    .end local v12    # "reader":Ljava/io/InputStreamReader;
    .restart local v11    # "reader":Ljava/io/InputStreamReader;
    move-object v6, v7

    .line 1292
    .end local v7    # "input":Ljava/io/FileInputStream;
    .end local v8    # "line":Ljava/lang/String;
    .restart local v6    # "input":Ljava/io/FileInputStream;
    :cond_6
    :goto_6
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 1290
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "input":Ljava/io/FileInputStream;
    .end local v11    # "reader":Ljava/io/InputStreamReader;
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v12    # "reader":Ljava/io/InputStreamReader;
    :catch_3
    move-exception v13

    move-object v1, v2

    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v11, v12

    .end local v12    # "reader":Ljava/io/InputStreamReader;
    .restart local v11    # "reader":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "input":Ljava/io/FileInputStream;
    goto :goto_6

    .line 1286
    .end local v8    # "line":Ljava/lang/String;
    :catch_4
    move-exception v4

    .line 1287
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_c
    const-string v13, "systemui"

    const-string v14, "Can\'t read meminfo.txt "

    invoke-static {v13, v14, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 1289
    if-eqz v6, :cond_7

    :try_start_d
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_8

    .line 1290
    :cond_7
    :goto_8
    if-eqz v1, :cond_6

    :try_start_e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5

    goto :goto_6

    :catch_5
    move-exception v13

    goto :goto_6

    .line 1289
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v13

    :goto_9
    if-eqz v6, :cond_8

    :try_start_f
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    .line 1290
    :cond_8
    :goto_a
    if-eqz v1, :cond_9

    :try_start_10
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a

    :cond_9
    :goto_b
    throw v13

    .line 1266
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "input":Ljava/io/FileInputStream;
    .end local v11    # "reader":Ljava/io/InputStreamReader;
    :catch_6
    move-exception v14

    goto :goto_4

    .line 1289
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v12    # "reader":Ljava/io/InputStreamReader;
    :catch_7
    move-exception v13

    goto :goto_5

    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v7    # "input":Ljava/io/FileInputStream;
    .end local v8    # "line":Ljava/lang/String;
    .end local v12    # "reader":Ljava/io/InputStreamReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v4    # "e":Ljava/io/IOException;
    .restart local v6    # "input":Ljava/io/FileInputStream;
    .restart local v11    # "reader":Ljava/io/InputStreamReader;
    :catch_8
    move-exception v13

    goto :goto_8

    .end local v4    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v14

    goto :goto_a

    .line 1290
    :catch_a
    move-exception v14

    goto :goto_b

    .line 1289
    .end local v6    # "input":Ljava/io/FileInputStream;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    :catchall_2
    move-exception v13

    move-object v6, v7

    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "input":Ljava/io/FileInputStream;
    goto :goto_9

    .end local v6    # "input":Ljava/io/FileInputStream;
    .end local v11    # "reader":Ljava/io/InputStreamReader;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    .restart local v12    # "reader":Ljava/io/InputStreamReader;
    :catchall_3
    move-exception v13

    move-object v11, v12

    .end local v12    # "reader":Ljava/io/InputStreamReader;
    .restart local v11    # "reader":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "input":Ljava/io/FileInputStream;
    goto :goto_9

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "input":Ljava/io/FileInputStream;
    .end local v11    # "reader":Ljava/io/InputStreamReader;
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v12    # "reader":Ljava/io/InputStreamReader;
    :catchall_4
    move-exception v13

    move-object v1, v2

    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v11, v12

    .end local v12    # "reader":Ljava/io/InputStreamReader;
    .restart local v11    # "reader":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "input":Ljava/io/FileInputStream;
    goto :goto_9

    .line 1286
    .end local v6    # "input":Ljava/io/FileInputStream;
    .end local v8    # "line":Ljava/lang/String;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    :catch_b
    move-exception v4

    move-object v6, v7

    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "input":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v6    # "input":Ljava/io/FileInputStream;
    .end local v11    # "reader":Ljava/io/InputStreamReader;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    .restart local v12    # "reader":Ljava/io/InputStreamReader;
    :catch_c
    move-exception v4

    move-object v11, v12

    .end local v12    # "reader":Ljava/io/InputStreamReader;
    .restart local v11    # "reader":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "input":Ljava/io/FileInputStream;
    goto :goto_7

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "input":Ljava/io/FileInputStream;
    .end local v11    # "reader":Ljava/io/InputStreamReader;
    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v12    # "reader":Ljava/io/InputStreamReader;
    :catch_d
    move-exception v4

    move-object v1, v2

    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v11, v12

    .end local v12    # "reader":Ljava/io/InputStreamReader;
    .restart local v11    # "reader":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "input":Ljava/io/FileInputStream;
    goto :goto_7

    .line 1266
    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "input":Ljava/io/FileInputStream;
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "output":Ljava/io/FileOutputStream;
    .end local v11    # "reader":Ljava/io/InputStreamReader;
    .restart local v10    # "output":Ljava/io/FileOutputStream;
    :catchall_5
    move-exception v13

    move-object v9, v10

    .end local v10    # "output":Ljava/io/FileOutputStream;
    .restart local v9    # "output":Ljava/io/FileOutputStream;
    goto/16 :goto_3

    .line 1263
    .end local v9    # "output":Ljava/io/FileOutputStream;
    .restart local v10    # "output":Ljava/io/FileOutputStream;
    :catch_e
    move-exception v4

    move-object v9, v10

    .end local v10    # "output":Ljava/io/FileOutputStream;
    .restart local v9    # "output":Ljava/io/FileOutputStream;
    goto/16 :goto_2

    .restart local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v7    # "input":Ljava/io/FileInputStream;
    .restart local v8    # "line":Ljava/lang/String;
    .restart local v12    # "reader":Ljava/io/InputStreamReader;
    :cond_a
    move-object v1, v2

    .end local v2    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v1    # "bufferedReader":Ljava/io/BufferedReader;
    move-object v11, v12

    .end local v12    # "reader":Ljava/io/InputStreamReader;
    .restart local v11    # "reader":Ljava/io/InputStreamReader;
    move-object v6, v7

    .end local v7    # "input":Ljava/io/FileInputStream;
    .restart local v6    # "input":Ljava/io/FileInputStream;
    goto :goto_6

    .end local v1    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v6    # "input":Ljava/io/FileInputStream;
    .end local v8    # "line":Ljava/lang/String;
    .end local v9    # "output":Ljava/io/FileOutputStream;
    .end local v11    # "reader":Ljava/io/InputStreamReader;
    .restart local v10    # "output":Ljava/io/FileOutputStream;
    :cond_b
    move-object v9, v10

    .end local v10    # "output":Ljava/io/FileOutputStream;
    .restart local v9    # "output":Ljava/io/FileOutputStream;
    goto/16 :goto_0
.end method
