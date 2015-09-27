.class Lcom/android/systemui/mzrecent/DragController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "DragController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/mzrecent/DragController;->animateView(Lcom/android/systemui/mzrecent/DragView;Landroid/animation/ValueAnimator$AnimatorUpdateListener;ILandroid/animation/TimeInterpolator;Ljava/lang/Runnable;ILandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/mzrecent/DragController;

.field final synthetic val$animationEndStyle:I

.field final synthetic val$onCompleteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/systemui/mzrecent/DragController;Ljava/lang/Runnable;I)V
    .locals 0

    .prologue
    .line 926
    iput-object p1, p0, Lcom/android/systemui/mzrecent/DragController$2;->this$0:Lcom/android/systemui/mzrecent/DragController;

    iput-object p2, p0, Lcom/android/systemui/mzrecent/DragController$2;->val$onCompleteRunnable:Ljava/lang/Runnable;

    iput p3, p0, Lcom/android/systemui/mzrecent/DragController$2;->val$animationEndStyle:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 928
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController$2;->val$onCompleteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController$2;->val$onCompleteRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 931
    :cond_0
    iget v0, p0, Lcom/android/systemui/mzrecent/DragController$2;->val$animationEndStyle:I

    packed-switch v0, :pswitch_data_0

    .line 941
    :goto_0
    :pswitch_0
    return-void

    .line 933
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/mzrecent/DragController$2;->this$0:Lcom/android/systemui/mzrecent/DragController;

    # invokes: Lcom/android/systemui/mzrecent/DragController;->clearAnimatedView()V
    invoke-static {v0}, Lcom/android/systemui/mzrecent/DragController;->access$300(Lcom/android/systemui/mzrecent/DragController;)V

    goto :goto_0

    .line 931
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
