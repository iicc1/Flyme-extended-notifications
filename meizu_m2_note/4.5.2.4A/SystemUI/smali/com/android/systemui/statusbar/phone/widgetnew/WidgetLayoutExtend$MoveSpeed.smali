.class public Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;
.super Ljava/lang/Object;
.source "WidgetLayoutExtend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MoveSpeed"
.end annotation


# instance fields
.field firstIndex:I

.field lastIndex:I

.field final length:I

.field record:[F

.field shouldMoveLast:Z

.field time:[J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x6

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->length:I

    .line 187
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->shouldMoveLast:Z

    .line 188
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->record:[F

    .line 189
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->time:[J

    .line 190
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->firstIndex:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->lastIndex:I

    return-void
.end method


# virtual methods
.method public addRecord(F)V
    .locals 4
    .param p1, "px"    # F

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 193
    iget v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->firstIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->firstIndex:I

    if-ne v0, v2, :cond_0

    .line 194
    iput v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->firstIndex:I

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->shouldMoveLast:Z

    .line 197
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->shouldMoveLast:Z

    if-eqz v0, :cond_1

    .line 198
    iget v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->lastIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->lastIndex:I

    if-ne v0, v2, :cond_1

    .line 199
    iput v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->lastIndex:I

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->record:[F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->firstIndex:I

    aput p1, v0, v1

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->time:[J

    iget v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->firstIndex:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 204
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 217
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->shouldMoveLast:Z

    .line 218
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->firstIndex:I

    .line 219
    iput v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->lastIndex:I

    .line 220
    return-void
.end method

.method public getSpeed()F
    .locals 6

    .prologue
    .line 207
    iget v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->firstIndex:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->firstIndex:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->lastIndex:I

    if-ne v1, v2, :cond_1

    .line 208
    :cond_0
    const/4 v0, 0x0

    .line 212
    :goto_0
    return v0

    .line 210
    :cond_1
    const/high16 v1, 0x447a0000    # 1000.0f

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->record:[F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->firstIndex:I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->record:[F

    iget v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->lastIndex:I

    aget v3, v3, v4

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->time:[J

    iget v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->firstIndex:I

    aget-wide v2, v2, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->time:[J

    iget v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->lastIndex:I

    aget-wide v4, v4, v5

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float v0, v1, v2

    .line 211
    .local v0, "speed":F
    const-string v1, "animationtest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "1000f*("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->record:[F

    iget v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->firstIndex:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->record:[F

    iget v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->lastIndex:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->time:[J

    iget v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->firstIndex:I

    aget-wide v4, v3, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->time:[J

    iget v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->lastIndex:I

    aget-wide v4, v3, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " firstIndex - lastIndex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->firstIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/WidgetLayoutExtend$MoveSpeed;->lastIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method
