.class Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler$1;
.super Ljava/lang/Object;
.source "FloatTouch.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;


# direct methods
.method constructor <init>(Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;)V
    .locals 0

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler$1;->this$1:Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 448
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 443
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 453
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler$1;->this$1:Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;

    iget-object v0, v0, Lcom/android/systemui/floattouch/FloatTouch$AnimatorHandler;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->mTopViewGroup:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/floattouch/FloatTouch;->access$200(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 438
    return-void
.end method
