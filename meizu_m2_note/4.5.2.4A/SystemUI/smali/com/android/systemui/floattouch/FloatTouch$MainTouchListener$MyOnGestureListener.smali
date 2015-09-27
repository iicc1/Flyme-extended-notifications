.class final Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FloatTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyOnGestureListener"
.end annotation


# instance fields
.field isDoubleTab:Z

.field final targetViewHelper:Lcom/android/systemui/floattouch/TargetViewHelper;

.field final synthetic this$1:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;)V
    .locals 3

    .prologue
    .line 282
    iput-object p1, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 283
    new-instance v0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener$1;

    iget-object v1, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;

    iget-object v1, v1, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/floattouch/FloatTouch;->access$500(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;

    iget-object v2, v2, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->handler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/systemui/floattouch/FloatTouch;->access$100(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener$1;-><init>(Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/android/systemui/floattouch/TargetViewHelper;

    .line 311
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->isDoubleTab:Z

    return-void
.end method


# virtual methods
.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 330
    iput-boolean v1, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->isDoubleTab:Z

    .line 339
    :cond_0
    :goto_0
    return v1

    .line 331
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->isDoubleTab:Z

    .line 333
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;

    iget-object v0, v0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    iget v0, v0, Lcom/android/systemui/floattouch/FloatTouch;->behavior_doubleclick:I

    if-eqz v0, :cond_2

    .line 334
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/android/systemui/floattouch/TargetViewHelper;

    invoke-virtual {v0}, Lcom/android/systemui/floattouch/TargetViewHelper;->onDoubleTapUp()Z

    goto :goto_0

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/android/systemui/floattouch/TargetViewHelper;

    invoke-virtual {v0}, Lcom/android/systemui/floattouch/TargetViewHelper;->onSingleTapUp()Z

    goto :goto_0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 314
    iget-boolean v0, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->isDoubleTab:Z

    if-nez v0, :cond_0

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->isDoubleTab:Z

    .line 317
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/android/systemui/floattouch/TargetViewHelper;

    invoke-virtual {v0}, Lcom/android/systemui/floattouch/TargetViewHelper;->initOnDown()V

    .line 319
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 4
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/android/systemui/floattouch/TargetViewHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/floattouch/TargetViewHelper;->onFling(FF)V

    .line 395
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 363
    iget-boolean v0, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->isDoubleTab:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;

    iget-object v0, v0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    iget v0, v0, Lcom/android/systemui/floattouch/FloatTouch;->behavior_long:I

    if-nez v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->moveState:Z
    invoke-static {v0, v1}, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->access$802(Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;Z)Z

    .line 365
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;

    iget-object v0, v0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/floattouch/FloatTouch;->access$100(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 366
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/android/systemui/floattouch/TargetViewHelper;

    invoke-virtual {v0}, Lcom/android/systemui/floattouch/TargetViewHelper;->resetForMove()V

    .line 368
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 12
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 371
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float v1, v3, v6

    .line 372
    .local v1, "Y":F
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    sub-float v0, v3, v6

    .line 373
    .local v0, "X":F
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v6, 0x41f00000    # 30.0f

    cmpl-float v3, v3, v6

    if-gtz v3, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v6, 0x41f00000    # 30.0f

    cmpl-float v3, v3, v6

    if-lez v3, :cond_4

    .line 374
    :cond_0
    const-wide v6, 0x4066800000000000L    # 180.0

    float-to-double v8, v0

    float-to-double v10, v1

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    div-double v4, v6, v8

    .line 375
    .local v4, "p":D
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    double-to-int v2, v6

    .line 376
    .local v2, "mp":I
    const/16 v3, 0x2d

    if-ge v2, v3, :cond_1

    .line 377
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/android/systemui/floattouch/TargetViewHelper;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/android/systemui/floattouch/TargetViewHelper;->onScroll(ZI)Z

    .line 390
    .end local v2    # "mp":I
    .end local v4    # "p":D
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 378
    .restart local v2    # "mp":I
    .restart local v4    # "p":D
    :cond_1
    const/16 v3, 0x87

    if-ge v2, v3, :cond_3

    .line 379
    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_2

    .line 380
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/android/systemui/floattouch/TargetViewHelper;

    const/4 v6, 0x1

    const/16 v7, -0x5a

    invoke-virtual {v3, v6, v7}, Lcom/android/systemui/floattouch/TargetViewHelper;->onScroll(ZI)Z

    goto :goto_0

    .line 382
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/android/systemui/floattouch/TargetViewHelper;

    const/4 v6, 0x1

    const/16 v7, 0x5a

    invoke-virtual {v3, v6, v7}, Lcom/android/systemui/floattouch/TargetViewHelper;->onScroll(ZI)Z

    goto :goto_0

    .line 385
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/android/systemui/floattouch/TargetViewHelper;

    const/4 v6, 0x1

    const/16 v7, 0xb4

    invoke-virtual {v3, v6, v7}, Lcom/android/systemui/floattouch/TargetViewHelper;->onScroll(ZI)Z

    goto :goto_0

    .line 388
    .end local v2    # "mp":I
    .end local v4    # "p":D
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/android/systemui/floattouch/TargetViewHelper;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Lcom/android/systemui/floattouch/TargetViewHelper;->onScroll(ZI)Z

    goto :goto_0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;

    iget-object v0, v0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    iget v0, v0, Lcom/android/systemui/floattouch/FloatTouch;->behavior_doubleclick:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->isDoubleTab:Z

    if-nez v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/android/systemui/floattouch/TargetViewHelper;

    invoke-virtual {v0}, Lcom/android/systemui/floattouch/TargetViewHelper;->onSingleTapUp()Z

    .line 356
    const/4 v0, 0x1

    .line 358
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;

    iget-object v0, v0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    iget v0, v0, Lcom/android/systemui/floattouch/FloatTouch;->behavior_doubleclick:I

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/android/systemui/floattouch/TargetViewHelper;

    invoke-virtual {v0}, Lcom/android/systemui/floattouch/TargetViewHelper;->onSingleTapUp()Z

    .line 347
    const/4 v0, 0x1

    .line 349
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onUnLock()V
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/android/systemui/floattouch/TargetViewHelper;

    invoke-virtual {v0}, Lcom/android/systemui/floattouch/TargetViewHelper;->onUnLock()V

    .line 400
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 323
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->targetViewHelper:Lcom/android/systemui/floattouch/TargetViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/floattouch/TargetViewHelper;->animateOnUp(Landroid/view/MotionEvent;)V

    .line 324
    const/4 v0, 0x1

    return v0
.end method
