.class Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler$3;
.super Lcom/facebook/rebound/SimpleSpringListener;
.source "FloatTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field intEvaluator:Landroid/animation/IntEvaluator;

.field final synthetic this$1:Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;

.field final synthetic val$startY:I

.field final synthetic val$toY:I


# direct methods
.method constructor <init>(Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;II)V
    .locals 1

    .prologue
    .line 496
    iput-object p1, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler$3;->this$1:Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;

    iput p2, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler$3;->val$startY:I

    iput p3, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler$3;->val$toY:I

    invoke-direct {p0}, Lcom/facebook/rebound/SimpleSpringListener;-><init>()V

    .line 497
    new-instance v0, Landroid/animation/IntEvaluator;

    invoke-direct {v0}, Landroid/animation/IntEvaluator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler$3;->intEvaluator:Landroid/animation/IntEvaluator;

    return-void
.end method


# virtual methods
.method public onSpringUpdate(Lcom/facebook/rebound/Spring;)V
    .locals 5
    .param p1, "spring"    # Lcom/facebook/rebound/Spring;

    .prologue
    .line 501
    iget-object v1, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler$3;->this$1:Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;

    iget-object v1, v1, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->mTopViewGroup:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/systemui/floattouch/FloatTouch;->access$200(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 502
    iget-object v1, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler$3;->this$1:Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;

    iget-object v1, v1, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->mTopViewGroup:Landroid/view/ViewGroup;
    invoke-static {v1}, Lcom/android/systemui/floattouch/FloatTouch;->access$200(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 504
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler$3;->intEvaluator:Landroid/animation/IntEvaluator;

    invoke-virtual {p1}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v2

    double-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler$3;->val$startY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler$3;->val$toY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/animation/IntEvaluator;->evaluate(FLjava/lang/Integer;Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 505
    iget-object v1, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler$3;->this$1:Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;

    iget-object v1, v1, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/floattouch/FloatTouch;->access$500(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler$3;->this$1:Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;

    iget-object v2, v2, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->mTopViewGroup:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/android/systemui/floattouch/FloatTouch;->access$200(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 508
    .end local v0    # "params":Landroid/view/WindowManager$LayoutParams;
    :cond_0
    return-void
.end method
