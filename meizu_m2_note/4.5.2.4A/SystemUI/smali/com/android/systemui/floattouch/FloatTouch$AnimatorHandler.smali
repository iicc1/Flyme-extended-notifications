.class final Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;
.super Landroid/os/Handler;
.source "FloatTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/floattouch/FloatTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "AnimatorHandler"
.end annotation


# instance fields
.field positoionSpring:Lcom/facebook/rebound/Spring;

.field springSystem:Lcom/facebook/rebound/SpringSystem;

.field final synthetic this$0:Lcom/android/systemui/floattouch/FloatTouch;


# direct methods
.method constructor <init>(Lcom/android/systemui/floattouch/FloatTouch;)V
    .locals 1

    .prologue
    .line 412
    iput-object p1, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 413
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;->springSystem:Lcom/facebook/rebound/SpringSystem;

    .line 414
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;->springSystem:Lcom/facebook/rebound/SpringSystem;

    invoke-virtual {v0}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;->positoionSpring:Lcom/facebook/rebound/Spring;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 419
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 525
    :cond_0
    :goto_0
    return-void

    .line 421
    :pswitch_0
    const-string v3, "SmartTouch"

    const-string v4, "handler StableClick"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->mStableShow:Lcom/android/systemui/floattouch/SmartTouchView;
    invoke-static {v3}, Lcom/android/systemui/floattouch/FloatTouch;->access$300(Lcom/android/systemui/floattouch/FloatTouch;)Lcom/android/systemui/floattouch/SmartTouchView;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/floattouch/SmartTouchView$State;->CLICK:Lcom/android/systemui/floattouch/SmartTouchView$State;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/floattouch/SmartTouchView;->updateState(Lcom/android/systemui/floattouch/SmartTouchView$State;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "SmartTouch"

    const-string v4, "handler ERROR"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 425
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    const-string v3, "SmartTouch"

    const-string v4, "handler StablePrepare"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->mStableShow:Lcom/android/systemui/floattouch/SmartTouchView;
    invoke-static {v3}, Lcom/android/systemui/floattouch/FloatTouch;->access$300(Lcom/android/systemui/floattouch/FloatTouch;)Lcom/android/systemui/floattouch/SmartTouchView;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/floattouch/SmartTouchView$State;->NORMAL:Lcom/android/systemui/floattouch/SmartTouchView$State;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/floattouch/SmartTouchView;->updateState(Lcom/android/systemui/floattouch/SmartTouchView$State;F)V

    goto :goto_0

    .line 429
    :pswitch_2
    const-string v3, "SmartTouch"

    const-string v4, "handler StableDrag"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->mStableShow:Lcom/android/systemui/floattouch/SmartTouchView;
    invoke-static {v3}, Lcom/android/systemui/floattouch/FloatTouch;->access$300(Lcom/android/systemui/floattouch/FloatTouch;)Lcom/android/systemui/floattouch/SmartTouchView;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/floattouch/SmartTouchView$State;->DRAG:Lcom/android/systemui/floattouch/SmartTouchView$State;

    iget v5, p1, Landroid/os/Message;->arg1:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/floattouch/SmartTouchView;->updateState(Lcom/android/systemui/floattouch/SmartTouchView$State;F)V

    goto :goto_0

    .line 433
    :pswitch_3
    const-string v3, "SmartTouch"

    const-string v4, "handler ShowView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->mStableShow:Lcom/android/systemui/floattouch/SmartTouchView;
    invoke-static {v3}, Lcom/android/systemui/floattouch/FloatTouch;->access$300(Lcom/android/systemui/floattouch/FloatTouch;)Lcom/android/systemui/floattouch/SmartTouchView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/floattouch/SmartTouchView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler$1;-><init>(Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 457
    :pswitch_4
    const-string v3, "SmartTouch"

    const-string v4, "handler DismissView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->mStableShow:Lcom/android/systemui/floattouch/SmartTouchView;
    invoke-static {v3}, Lcom/android/systemui/floattouch/FloatTouch;->access$300(Lcom/android/systemui/floattouch/FloatTouch;)Lcom/android/systemui/floattouch/SmartTouchView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/floattouch/SmartTouchView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler$2;-><init>(Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 481
    :pswitch_5
    const-string v3, "SmartTouch"

    const-string v4, "handler AlphaOn"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->mStableShow:Lcom/android/systemui/floattouch/SmartTouchView;
    invoke-static {v3}, Lcom/android/systemui/floattouch/FloatTouch;->access$300(Lcom/android/systemui/floattouch/FloatTouch;)Lcom/android/systemui/floattouch/SmartTouchView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/floattouch/SmartTouchView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x3e8

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    iget v4, v4, Lcom/android/systemui/floattouch/FloatTouch;->defAlpha:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    .line 485
    :pswitch_6
    const-string v3, "SmartTouch"

    const-string v4, "handler AlphaOff"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->mStableShow:Lcom/android/systemui/floattouch/SmartTouchView;
    invoke-static {v3}, Lcom/android/systemui/floattouch/FloatTouch;->access$300(Lcom/android/systemui/floattouch/FloatTouch;)Lcom/android/systemui/floattouch/SmartTouchView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/floattouch/SmartTouchView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    iget v4, v4, Lcom/android/systemui/floattouch/FloatTouch;->defAlpha:F

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto/16 :goto_0

    .line 489
    :pswitch_7
    const-string v3, "SmartTouch"

    const-string v4, "handler UpdatePositon"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;->positoionSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v3}, Lcom/facebook/rebound/Spring;->setAtRest()Lcom/facebook/rebound/Spring;

    .line 491
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->mTopViewGroup:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/floattouch/FloatTouch;->access$200(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->isShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 492
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 493
    .local v2, "toY":I
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->mTopViewGroup:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/floattouch/FloatTouch;->access$200(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager$LayoutParams;

    iget v1, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 495
    .local v1, "startY":I
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;->positoionSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v3}, Lcom/facebook/rebound/Spring;->removeAllListeners()Lcom/facebook/rebound/Spring;

    .line 496
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;->positoionSpring:Lcom/facebook/rebound/Spring;

    new-instance v4, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler$3;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler$3;-><init>(Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;II)V

    invoke-virtual {v3, v4}, Lcom/facebook/rebound/Spring;->addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;

    .line 510
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;->positoionSpring:Lcom/facebook/rebound/Spring;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 511
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;->positoionSpring:Lcom/facebook/rebound/Spring;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v3, v4, v5}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    goto/16 :goto_0

    .line 515
    .end local v1    # "startY":I
    .end local v2    # "toY":I
    :pswitch_8
    const-string v3, "SmartTouch"

    const-string v4, "handler Vibrator"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->mTopViewGroup:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/floattouch/FloatTouch;->access$200(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->isShown()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 517
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->mTopViewGroup:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/floattouch/FloatTouch;->access$200(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/view/ViewGroup;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewGroup;->performHapticFeedback(II)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 419
    nop

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
