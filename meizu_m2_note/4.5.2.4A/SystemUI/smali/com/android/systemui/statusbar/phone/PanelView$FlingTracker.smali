.class Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
.super Ljava/lang/Object;
.source "PanelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FlingTracker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;
    }
.end annotation


# static fields
.field static sTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;


# instance fields
.field final DECAY:F

.field final MAX_EVENTS:I

.field mEventBuf:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;",
            ">;"
        }
    .end annotation
.end field

.field mVX:F

.field mVY:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput v1, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->MAX_EVENTS:I

    .line 94
    const/high16 v0, 0x3f400000    # 0.75f

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->DECAY:F

    .line 95
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mEventBuf:Ljava/util/ArrayDeque;

    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    .line 107
    return-void
.end method

.method static obtain()Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->sTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    if-nez v0, :cond_0

    .line 196
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->sTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    .line 198
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->sTracker:Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;

    return-object v0
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mEventBuf:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mEventBuf:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mEventBuf:Ljava/util/ArrayDeque;

    new-instance v1, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;-><init>(FFJ)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 113
    return-void
.end method

.method public computeCurrentVelocity(J)V
    .locals 17
    .param p1, "timebase"    # J

    .prologue
    .line 118
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    .line 119
    const/4 v8, 0x0

    .line 120
    .local v8, "last":Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;
    const/4 v6, 0x0

    .line 121
    .local v6, "i":I
    const/4 v9, 0x0

    .line 122
    .local v9, "totalweight":F
    const/high16 v10, 0x41200000    # 10.0f

    .line 123
    .local v10, "weight":F
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mEventBuf:Ljava/util/ArrayDeque;

    invoke-virtual {v11}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 124
    .local v7, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;>;"
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 125
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;

    .line 126
    .local v5, "event":Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;
    if-eqz v8, :cond_1

    .line 127
    iget-wide v12, v5, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;->t:J

    iget-wide v14, v8, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;->t:J

    sub-long/2addr v12, v14

    long-to-float v11, v12

    move-wide/from16 v0, p1

    long-to-float v12, v0

    div-float v2, v11, v12

    .line 128
    .local v2, "dt":F
    iget v11, v5, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;->x:F

    iget v12, v8, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;->x:F

    sub-float v3, v11, v12

    .line 129
    .local v3, "dx":F
    iget v11, v5, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;->y:F

    iget v12, v8, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;->y:F

    sub-float v4, v11, v12

    .line 139
    .local v4, "dy":F
    iget-wide v12, v5, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;->t:J

    iget-wide v14, v8, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;->t:J

    cmp-long v11, v12, v14

    if-nez v11, :cond_0

    .line 143
    const-string v11, "FlingTracker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "skipping simultaneous event at t="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v14, v5, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;->t:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 147
    :cond_0
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    mul-float v12, v10, v3

    div-float/2addr v12, v2

    add-float/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    .line 148
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    mul-float v12, v10, v4

    div-float/2addr v12, v2

    add-float/2addr v11, v12

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    .line 149
    add-float/2addr v9, v10

    .line 150
    const/high16 v11, 0x3f400000    # 0.75f

    mul-float/2addr v10, v11

    .line 152
    .end local v2    # "dt":F
    .end local v3    # "dx":F
    .end local v4    # "dy":F
    :cond_1
    move-object v8, v5

    .line 153
    add-int/lit8 v6, v6, 0x1

    .line 154
    goto :goto_0

    .line 155
    .end local v5    # "event":Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker$MotionEventCopy;
    :cond_2
    const/4 v11, 0x0

    cmpl-float v11, v9, v11

    if-lez v11, :cond_3

    .line 156
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    div-float/2addr v11, v9

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    .line 157
    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    div-float/2addr v11, v9

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    .line 170
    :goto_1
    return-void

    .line 160
    :cond_3
    const-string v11, "FlingTracker"

    const-string v12, "computeCurrentVelocity warning: totalweight=0"

    new-instance v13, Ljava/lang/Throwable;

    invoke-direct {v13}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v11, v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    move-object/from16 v0, p0

    iput v11, v0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    goto :goto_1
.end method

.method public getXVelocity()F
    .locals 3

    .prologue
    .line 172
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 174
    :cond_0
    const-string v0, "FlingTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "warning: vx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    .line 178
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    return v0
.end method

.method public getYVelocity()F
    .locals 3

    .prologue
    .line 181
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVX:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 183
    :cond_0
    const-string v0, "FlingTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "warning: vx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    .line 187
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mVY:F

    return v0
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelView$FlingTracker;->mEventBuf:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 191
    return-void
.end method
