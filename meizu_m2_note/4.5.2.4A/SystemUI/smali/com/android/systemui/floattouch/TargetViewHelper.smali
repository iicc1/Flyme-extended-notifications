.class abstract Lcom/android/systemui/floattouch/TargetViewHelper;
.super Ljava/lang/Object;
.source "TargetViewHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/floattouch/TargetViewHelper$6;,
        Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private haveDeal:Z

.field private final moveHelper:Lcom/android/systemui/floattouch/WindowMoveHelper;

.field onClickAnimationRunnable:Ljava/lang/Runnable;

.field private final optimizeWhenBoundary:I

.field private final recentTask:Lcom/android/systemui/floattouch/RecentTask;

.field final resetShowRunnable:Ljava/lang/Runnable;

.field private final screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    new-instance v1, Lcom/android/systemui/floattouch/TargetViewHelper$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/floattouch/TargetViewHelper$4;-><init>(Lcom/android/systemui/floattouch/TargetViewHelper;)V

    iput-object v1, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->onClickAnimationRunnable:Ljava/lang/Runnable;

    .line 164
    new-instance v1, Lcom/android/systemui/floattouch/TargetViewHelper$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/floattouch/TargetViewHelper$5;-><init>(Lcom/android/systemui/floattouch/TargetViewHelper;)V

    iput-object v1, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->resetShowRunnable:Ljava/lang/Runnable;

    .line 35
    iput-object p1, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->context:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->handler:Landroid/os/Handler;

    .line 38
    new-instance v1, Lcom/android/systemui/floattouch/WindowMoveHelper;

    new-instance v2, Lcom/android/systemui/floattouch/TargetViewHelper$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/floattouch/TargetViewHelper$1;-><init>(Lcom/android/systemui/floattouch/TargetViewHelper;)V

    invoke-direct {v1, p1, p2, v2}, Lcom/android/systemui/floattouch/WindowMoveHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/floattouch/WindowMoveHelper$MoveListener;)V

    iput-object v1, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->moveHelper:Lcom/android/systemui/floattouch/WindowMoveHelper;

    .line 55
    new-instance v1, Lcom/android/systemui/floattouch/RecentTask;

    invoke-direct {v1, p1, p2}, Lcom/android/systemui/floattouch/RecentTask;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->recentTask:Lcom/android/systemui/floattouch/RecentTask;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 58
    .local v0, "dm":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->screenWidth:I

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->optimizeWhenBoundary:I

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/floattouch/TargetViewHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/floattouch/TargetViewHelper;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->haveDeal:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/floattouch/TargetViewHelper;Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/floattouch/TargetViewHelper;
    .param p1, "x1"    # Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/systemui/floattouch/TargetViewHelper;->processUserGesture(Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/floattouch/TargetViewHelper;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/floattouch/TargetViewHelper;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private moveDown()V
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->moveHelper:Lcom/android/systemui/floattouch/WindowMoveHelper;

    invoke-virtual {v0}, Lcom/android/systemui/floattouch/WindowMoveHelper;->windowMoveIfNeed()V

    .line 275
    return-void
.end method

.method private processUserGesture(Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;)V
    .locals 2
    .param p1, "userGesture"    # Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    .prologue
    .line 172
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->haveDeal:Z

    .line 173
    iget-object v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->moveHelper:Lcom/android/systemui/floattouch/WindowMoveHelper;

    invoke-virtual {v0}, Lcom/android/systemui/floattouch/WindowMoveHelper;->isMoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->moveHelper:Lcom/android/systemui/floattouch/WindowMoveHelper;

    invoke-virtual {v0}, Lcom/android/systemui/floattouch/WindowMoveHelper;->windowNormalIfNeed()V

    .line 254
    :goto_0
    return-void

    .line 176
    :cond_0
    sget-object v0, Lcom/android/systemui/floattouch/TargetViewHelper$6;->$SwitchMap$com$android$systemui$floattouch$TargetViewHelper$UserGesture:[I

    invoke-virtual {p1}, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 178
    :pswitch_0
    const-string v0, "SmartTouch"

    const-string v1, "gesture left"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sget-object v0, Lcom/android/systemui/floattouch/FloatTouch;->floatTouch:Lcom/android/systemui/floattouch/FloatTouch;

    iget v0, v0, Lcom/android/systemui/floattouch/FloatTouch;->behavior_leftright:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 181
    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/floattouch/TargetViewHelper;->recentL()V

    goto :goto_0

    .line 186
    :pswitch_2
    const-string v0, "SmartTouch"

    const-string v1, "gesture right"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    sget-object v0, Lcom/android/systemui/floattouch/FloatTouch;->floatTouch:Lcom/android/systemui/floattouch/FloatTouch;

    iget v0, v0, Lcom/android/systemui/floattouch/FloatTouch;->behavior_leftright:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 189
    :pswitch_3
    invoke-direct {p0}, Lcom/android/systemui/floattouch/TargetViewHelper;->recentR()V

    goto :goto_0

    .line 194
    :pswitch_4
    const-string v0, "SmartTouch"

    const-string v1, "gesture up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    sget-object v0, Lcom/android/systemui/floattouch/FloatTouch;->floatTouch:Lcom/android/systemui/floattouch/FloatTouch;

    iget v0, v0, Lcom/android/systemui/floattouch/FloatTouch;->behavior_up:I

    packed-switch v0, :pswitch_data_3

    goto :goto_0

    .line 197
    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/systemui/floattouch/Simulate;->lockNow(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_0

    .line 200
    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/systemui/floattouch/Simulate;->killTask(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_0

    .line 203
    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/systemui/floattouch/Simulate;->expandTask(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_0

    .line 206
    :pswitch_8
    iget-object v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/systemui/floattouch/Simulate;->toHome(Landroid/content/Context;Landroid/os/Handler;)V

    goto :goto_0

    .line 211
    :pswitch_9
    const-string v0, "SmartTouch"

    const-string v1, "gesture down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    sget-object v0, Lcom/android/systemui/floattouch/FloatTouch;->floatTouch:Lcom/android/systemui/floattouch/FloatTouch;

    iget v0, v0, Lcom/android/systemui/floattouch/FloatTouch;->behavior_down:I

    packed-switch v0, :pswitch_data_4

    goto :goto_0

    .line 214
    :pswitch_a
    invoke-direct {p0}, Lcom/android/systemui/floattouch/TargetViewHelper;->moveDown()V

    goto :goto_0

    .line 217
    :pswitch_b
    iget-object v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/floattouch/Simulate;->expandNotifications(Landroid/content/Context;)V

    goto :goto_0

    .line 220
    :pswitch_c
    iget-object v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/systemui/floattouch/Simulate;->lockNow(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 223
    :pswitch_d
    iget-object v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/systemui/floattouch/Simulate;->killTask(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 228
    :pswitch_e
    const-string v0, "SmartTouch"

    const-string v1, "gesture click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    sget-object v0, Lcom/android/systemui/floattouch/FloatTouch;->floatTouch:Lcom/android/systemui/floattouch/FloatTouch;

    iget v0, v0, Lcom/android/systemui/floattouch/FloatTouch;->behavior_click:I

    packed-switch v0, :pswitch_data_5

    goto/16 :goto_0

    .line 231
    :pswitch_f
    iget-object v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/systemui/floattouch/Simulate;->back(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 236
    :pswitch_10
    const-string v0, "SmartTouch"

    const-string v1, "gesture double click"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sget-object v0, Lcom/android/systemui/floattouch/FloatTouch;->floatTouch:Lcom/android/systemui/floattouch/FloatTouch;

    iget v0, v0, Lcom/android/systemui/floattouch/FloatTouch;->behavior_doubleclick:I

    packed-switch v0, :pswitch_data_6

    goto/16 :goto_0

    .line 239
    :pswitch_11
    invoke-direct {p0}, Lcom/android/systemui/floattouch/TargetViewHelper;->moveDown()V

    goto/16 :goto_0

    .line 242
    :pswitch_12
    iget-object v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/floattouch/Simulate;->expandNotifications(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 245
    :pswitch_13
    iget-object v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/systemui/floattouch/Simulate;->lockNow(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 248
    :pswitch_14
    iget-object v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/android/systemui/floattouch/Simulate;->expandTask(Landroid/content/Context;Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_9
        :pswitch_e
        :pswitch_10
    .end packed-switch

    .line 179
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    .line 187
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    .line 195
    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 212
    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 229
    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_f
    .end packed-switch

    .line 237
    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method private recentL()V
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->recentTask:Lcom/android/systemui/floattouch/RecentTask;

    invoke-virtual {v0}, Lcom/android/systemui/floattouch/RecentTask;->recentL()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 262
    :cond_0
    return-void
.end method

.method private recentR()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->recentTask:Lcom/android/systemui/floattouch/RecentTask;

    invoke-virtual {v0}, Lcom/android/systemui/floattouch/RecentTask;->recentR()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->handler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 270
    :cond_0
    return-void
.end method


# virtual methods
.method public animateOnUp(Landroid/view/MotionEvent;)V
    .locals 8
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const-wide/16 v6, 0x64

    .line 91
    iget-object v1, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->onClickAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    iget-object v1, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->resetShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    iget-object v1, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->resetShowRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v0, v1

    .line 96
    .local v0, "eX":I
    iget v1, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->optimizeWhenBoundary:I

    if-ge v0, v1, :cond_1

    .line 97
    iget-object v1, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/floattouch/TargetViewHelper$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/floattouch/TargetViewHelper$2;-><init>(Lcom/android/systemui/floattouch/TargetViewHelper;)V

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 115
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    iget v1, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->screenWidth:I

    iget v2, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->optimizeWhenBoundary:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/floattouch/TargetViewHelper$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/floattouch/TargetViewHelper$3;-><init>(Lcom/android/systemui/floattouch/TargetViewHelper;)V

    invoke-virtual {v1, v2, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final initOnDown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 71
    iput-boolean v1, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->haveDeal:Z

    .line 72
    return-void
.end method

.method public final onDoubleTapUp()Z
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;->DOUBLE:Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    invoke-direct {p0, v0}, Lcom/android/systemui/floattouch/TargetViewHelper;->processUserGesture(Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;)V

    .line 155
    const/4 v0, 0x1

    return v0
.end method

.method public final onFling(FF)V
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 75
    const-wide v4, 0x4066800000000000L    # 180.0

    float-to-double v6, p1

    float-to-double v8, p2

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    div-double v2, v4, v6

    .line 76
    .local v2, "p":D
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 77
    .local v0, "mp":I
    const/16 v1, 0x2d

    if-ge v0, v1, :cond_0

    .line 78
    sget-object v1, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;->DOWN:Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    invoke-direct {p0, v1}, Lcom/android/systemui/floattouch/TargetViewHelper;->processUserGesture(Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;)V

    .line 88
    :goto_0
    return-void

    .line 79
    :cond_0
    const/16 v1, 0x87

    if-ge v0, v1, :cond_2

    .line 80
    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    .line 81
    sget-object v1, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;->LEFT:Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    invoke-direct {p0, v1}, Lcom/android/systemui/floattouch/TargetViewHelper;->processUserGesture(Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;)V

    goto :goto_0

    .line 83
    :cond_1
    sget-object v1, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;->RIGHT:Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    invoke-direct {p0, v1}, Lcom/android/systemui/floattouch/TargetViewHelper;->processUserGesture(Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;)V

    goto :goto_0

    .line 86
    :cond_2
    sget-object v1, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;->UP:Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    invoke-direct {p0, v1}, Lcom/android/systemui/floattouch/TargetViewHelper;->processUserGesture(Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;)V

    goto :goto_0
.end method

.method public final onScroll(ZI)Z
    .locals 6
    .param p1, "isDrag"    # Z
    .param p2, "rotation"    # I

    .prologue
    .line 124
    if-eqz p1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 126
    .local v0, "message":Landroid/os/Message;
    const/4 v1, -0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 127
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 128
    iget-object v1, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->onClickAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 129
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 133
    .end local v0    # "message":Landroid/os/Message;
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->onClickAnimationRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public final onSingleTapUp()Z
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;->ONE:Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    invoke-direct {p0, v0}, Lcom/android/systemui/floattouch/TargetViewHelper;->processUserGesture(Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;)V

    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method public onUnLock()V
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->moveHelper:Lcom/android/systemui/floattouch/WindowMoveHelper;

    invoke-virtual {v0}, Lcom/android/systemui/floattouch/WindowMoveHelper;->isMoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->moveHelper:Lcom/android/systemui/floattouch/WindowMoveHelper;

    invoke-virtual {v0}, Lcom/android/systemui/floattouch/WindowMoveHelper;->windowNormalIfNeed()V

    .line 162
    :cond_0
    return-void
.end method

.method public final resetForMove()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->moveHelper:Lcom/android/systemui/floattouch/WindowMoveHelper;

    invoke-virtual {v0}, Lcom/android/systemui/floattouch/WindowMoveHelper;->isMoved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper;->handler:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 151
    :cond_0
    return-void
.end method

.method public abstract updateFloatWindow(I)V
.end method
