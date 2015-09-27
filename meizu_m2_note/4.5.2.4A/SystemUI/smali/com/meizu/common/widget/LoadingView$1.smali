.class Lcom/meizu/common/widget/LoadingView$1;
.super Ljava/lang/Object;
.source "LoadingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/LoadingView;->startLoadingAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/LoadingView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/LoadingView;)V
    .locals 0

    .prologue
    .line 303
    iput-object p1, p0, Lcom/meizu/common/widget/LoadingView$1;->this$0:Lcom/meizu/common/widget/LoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 308
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 309
    .local v0, "headSign":F
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingView$1;->this$0:Lcom/meizu/common/widget/LoadingView;

    invoke-virtual {v1, v0}, Lcom/meizu/common/widget/LoadingView;->setHeadSign(F)V

    .line 310
    iget-object v1, p0, Lcom/meizu/common/widget/LoadingView$1;->this$0:Lcom/meizu/common/widget/LoadingView;

    invoke-virtual {v1}, Lcom/meizu/common/widget/LoadingView;->postInvalidate()V

    .line 311
    return-void
.end method
