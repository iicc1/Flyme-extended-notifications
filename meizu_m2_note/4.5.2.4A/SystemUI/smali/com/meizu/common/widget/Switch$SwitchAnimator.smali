.class Lcom/meizu/common/widget/Switch$SwitchAnimator;
.super Ljava/lang/Object;
.source "Switch.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/Switch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/Switch$SwitchAnimator$ThumbDrawableHolder;
    }
.end annotation


# instance fields
.field private drawableHolder:Lcom/meizu/common/widget/Switch$SwitchAnimator$ThumbDrawableHolder;

.field private duration:J

.field private mIsAnimEnd:Z

.field private positionAnimator:Landroid/animation/ValueAnimator;

.field private targetState:Z

.field final synthetic this$0:Lcom/meizu/common/widget/Switch;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/Switch;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 831
    iput-object p1, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->this$0:Lcom/meizu/common/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 825
    iput-object v0, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->drawableHolder:Lcom/meizu/common/widget/Switch$SwitchAnimator$ThumbDrawableHolder;

    .line 826
    iput-object v0, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->positionAnimator:Landroid/animation/ValueAnimator;

    .line 832
    const-wide/16 v0, 0xa0

    iput-wide v0, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->duration:J

    .line 833
    return-void
.end method

.method static synthetic access$100(Lcom/meizu/common/widget/Switch$SwitchAnimator;ZI)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/Switch$SwitchAnimator;
    .param p1, "x1"    # Z
    .param p2, "x2"    # I

    .prologue
    .line 821
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/Switch$SwitchAnimator;->startAnimation(ZI)V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/common/widget/Switch$SwitchAnimator;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/Switch$SwitchAnimator;

    .prologue
    .line 821
    iget-boolean v0, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->targetState:Z

    return v0
.end method

.method private startAnimation(ZI)V
    .locals 6
    .param p1, "targetChecked"    # Z
    .param p2, "beginPos"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 876
    iget-object v1, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->this$0:Lcom/meizu/common/widget/Switch;

    # getter for: Lcom/meizu/common/widget/Switch;->mAnimRunning:Z
    invoke-static {v1}, Lcom/meizu/common/widget/Switch;->access$400(Lcom/meizu/common/widget/Switch;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 891
    :goto_0
    return-void

    .line 878
    :cond_0
    iput-boolean p1, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->targetState:Z

    .line 879
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch$SwitchAnimator;->createAnimation()V

    .line 880
    const/4 v0, 0x0

    .line 881
    .local v0, "pvh":Landroid/animation/PropertyValuesHolder;
    iget-object v1, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->this$0:Lcom/meizu/common/widget/Switch;

    invoke-virtual {v1}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v1

    if-nez v1, :cond_2

    .line 882
    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->this$0:Lcom/meizu/common/widget/Switch;

    # getter for: Lcom/meizu/common/widget/Switch;->mAnimationLength:I
    invoke-static {v1}, Lcom/meizu/common/widget/Switch;->access$300(Lcom/meizu/common/widget/Switch;)I

    move-result v1

    sub-int p2, v1, p2

    .line 886
    :cond_1
    :goto_1
    const-string v1, "position"

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput p2, v2, v5

    iget-object v3, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->this$0:Lcom/meizu/common/widget/Switch;

    # getter for: Lcom/meizu/common/widget/Switch;->mAnimationLength:I
    invoke-static {v3}, Lcom/meizu/common/widget/Switch;->access$300(Lcom/meizu/common/widget/Switch;)I

    move-result v3

    add-int/lit8 v3, v3, 0x0

    aput v3, v2, v4

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 887
    iget-object v1, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->drawableHolder:Lcom/meizu/common/widget/Switch$SwitchAnimator$ThumbDrawableHolder;

    invoke-virtual {v1, p2}, Lcom/meizu/common/widget/Switch$SwitchAnimator$ThumbDrawableHolder;->setPosition(I)V

    .line 888
    iget-object v1, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->positionAnimator:Landroid/animation/ValueAnimator;

    new-array v2, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v2, v5

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setValues([Landroid/animation/PropertyValuesHolder;)V

    .line 889
    iget-object v1, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->this$0:Lcom/meizu/common/widget/Switch;

    # setter for: Lcom/meizu/common/widget/Switch;->mAnimRunning:Z
    invoke-static {v1, v4}, Lcom/meizu/common/widget/Switch;->access$402(Lcom/meizu/common/widget/Switch;Z)Z

    .line 890
    iget-object v1, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->positionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 884
    :cond_2
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->this$0:Lcom/meizu/common/widget/Switch;

    # getter for: Lcom/meizu/common/widget/Switch;->mAnimationLength:I
    invoke-static {v1}, Lcom/meizu/common/widget/Switch;->access$300(Lcom/meizu/common/widget/Switch;)I

    move-result v1

    sub-int p2, v1, p2

    goto :goto_1
.end method


# virtual methods
.method public createAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 865
    iget-object v0, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->positionAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 866
    new-instance v0, Lcom/meizu/common/widget/Switch$SwitchAnimator$ThumbDrawableHolder;

    invoke-direct {v0, p0, v4}, Lcom/meizu/common/widget/Switch$SwitchAnimator$ThumbDrawableHolder;-><init>(Lcom/meizu/common/widget/Switch$SwitchAnimator;I)V

    iput-object v0, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->drawableHolder:Lcom/meizu/common/widget/Switch$SwitchAnimator$ThumbDrawableHolder;

    .line 867
    iget-object v0, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->drawableHolder:Lcom/meizu/common/widget/Switch$SwitchAnimator$ThumbDrawableHolder;

    const-string v1, "position"

    const/4 v2, 0x2

    new-array v2, v2, [I

    iget-object v3, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->drawableHolder:Lcom/meizu/common/widget/Switch$SwitchAnimator$ThumbDrawableHolder;

    invoke-virtual {v3}, Lcom/meizu/common/widget/Switch$SwitchAnimator$ThumbDrawableHolder;->getPosition()I

    move-result v3

    aput v3, v2, v4

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->this$0:Lcom/meizu/common/widget/Switch;

    # getter for: Lcom/meizu/common/widget/Switch;->mAnimationLength:I
    invoke-static {v4}, Lcom/meizu/common/widget/Switch;->access$300(Lcom/meizu/common/widget/Switch;)I

    move-result v4

    add-int/lit8 v4, v4, 0x0

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-wide v2, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->duration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->positionAnimator:Landroid/animation/ValueAnimator;

    .line 869
    iget-object v0, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->positionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 870
    iget-object v0, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->positionAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 871
    iget-object v0, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->positionAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 873
    :cond_0
    return-void
.end method

.method public getTargetState()Z
    .locals 1

    .prologue
    .line 930
    iget-boolean v0, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->targetState:Z

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 941
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 921
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch$SwitchAnimator;->getTargetState()Z

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->this$0:Lcom/meizu/common/widget/Switch;

    invoke-virtual {v1}, Lcom/meizu/common/widget/Switch;->isChecked()Z

    move-result v1

    if-ne v0, v1, :cond_0

    .line 922
    iget-object v0, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->this$0:Lcom/meizu/common/widget/Switch;

    const/4 v1, 0x0

    # setter for: Lcom/meizu/common/widget/Switch;->mAnimRunning:Z
    invoke-static {v0, v1}, Lcom/meizu/common/widget/Switch;->access$402(Lcom/meizu/common/widget/Switch;Z)Z

    .line 926
    :goto_0
    return-void

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->this$0:Lcom/meizu/common/widget/Switch;

    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch$SwitchAnimator;->getTargetState()Z

    move-result v1

    # invokes: Lcom/meizu/common/widget/Switch;->setCheckedDelayed(Z)V
    invoke-static {v0, v1}, Lcom/meizu/common/widget/Switch;->access$1100(Lcom/meizu/common/widget/Switch;Z)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 947
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 913
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->mIsAnimEnd:Z

    .line 914
    iget-object v0, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->this$0:Lcom/meizu/common/widget/Switch;

    const/4 v1, 0x1

    # setter for: Lcom/meizu/common/widget/Switch;->mAnimRunning:Z
    invoke-static {v0, v1}, Lcom/meizu/common/widget/Switch;->access$402(Lcom/meizu/common/widget/Switch;Z)Z

    .line 915
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 895
    iget-object v1, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->drawableHolder:Lcom/meizu/common/widget/Switch$SwitchAnimator$ThumbDrawableHolder;

    invoke-virtual {v1}, Lcom/meizu/common/widget/Switch$SwitchAnimator$ThumbDrawableHolder;->getPosition()I

    move-result v0

    .line 897
    .local v0, "position":I
    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 898
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->this$0:Lcom/meizu/common/widget/Switch;

    # getter for: Lcom/meizu/common/widget/Switch;->mAnimationLength:I
    invoke-static {v1}, Lcom/meizu/common/widget/Switch;->access$300(Lcom/meizu/common/widget/Switch;)I

    move-result v1

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->this$0:Lcom/meizu/common/widget/Switch;

    # getter for: Lcom/meizu/common/widget/Switch;->mAnimationLength:I
    invoke-static {v1}, Lcom/meizu/common/widget/Switch;->access$300(Lcom/meizu/common/widget/Switch;)I

    move-result v0

    .line 900
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->this$0:Lcom/meizu/common/widget/Switch;

    iget-object v2, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->this$0:Lcom/meizu/common/widget/Switch;

    # getter for: Lcom/meizu/common/widget/Switch;->mOffThumbMargin:I
    invoke-static {v2}, Lcom/meizu/common/widget/Switch;->access$600(Lcom/meizu/common/widget/Switch;)I

    move-result v2

    add-int/2addr v2, v0

    int-to-float v2, v2

    # setter for: Lcom/meizu/common/widget/Switch;->mThumbPosition:F
    invoke-static {v1, v2}, Lcom/meizu/common/widget/Switch;->access$502(Lcom/meizu/common/widget/Switch;F)F

    .line 901
    iget-object v1, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->this$0:Lcom/meizu/common/widget/Switch;

    iget-object v2, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->this$0:Lcom/meizu/common/widget/Switch;

    iget-object v3, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->this$0:Lcom/meizu/common/widget/Switch;

    # getter for: Lcom/meizu/common/widget/Switch;->mThumbPosition:F
    invoke-static {v3}, Lcom/meizu/common/widget/Switch;->access$500(Lcom/meizu/common/widget/Switch;)F

    move-result v3

    # invokes: Lcom/meizu/common/widget/Switch;->calcDrawWidth(F)I
    invoke-static {v2, v3}, Lcom/meizu/common/widget/Switch;->access$800(Lcom/meizu/common/widget/Switch;F)I

    move-result v2

    # setter for: Lcom/meizu/common/widget/Switch;->mThumbDrawWidth:I
    invoke-static {v1, v2}, Lcom/meizu/common/widget/Switch;->access$702(Lcom/meizu/common/widget/Switch;I)I

    .line 902
    iget-object v1, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->this$0:Lcom/meizu/common/widget/Switch;

    iget-object v2, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->this$0:Lcom/meizu/common/widget/Switch;

    iget-object v3, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->this$0:Lcom/meizu/common/widget/Switch;

    # getter for: Lcom/meizu/common/widget/Switch;->mThumbPosition:F
    invoke-static {v3}, Lcom/meizu/common/widget/Switch;->access$500(Lcom/meizu/common/widget/Switch;)F

    move-result v3

    # invokes: Lcom/meizu/common/widget/Switch;->calcOnThumbDrawAlpha(F)I
    invoke-static {v2, v3}, Lcom/meizu/common/widget/Switch;->access$1000(Lcom/meizu/common/widget/Switch;F)I

    move-result v2

    # setter for: Lcom/meizu/common/widget/Switch;->mOnThumbDrawAlpha:I
    invoke-static {v1, v2}, Lcom/meizu/common/widget/Switch;->access$902(Lcom/meizu/common/widget/Switch;I)I

    .line 907
    iget-object v1, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->this$0:Lcom/meizu/common/widget/Switch;

    invoke-virtual {v1}, Lcom/meizu/common/widget/Switch;->invalidate()V

    .line 908
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 953
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 959
    iget-object v1, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->this$0:Lcom/meizu/common/widget/Switch;

    # getter for: Lcom/meizu/common/widget/Switch;->mAnimRunning:Z
    invoke-static {v1}, Lcom/meizu/common/widget/Switch;->access$400(Lcom/meizu/common/widget/Switch;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 963
    :goto_0
    return-void

    .line 960
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->this$0:Lcom/meizu/common/widget/Switch;

    const/4 v2, 0x0

    # setter for: Lcom/meizu/common/widget/Switch;->mAnimRunning:Z
    invoke-static {v1, v2}, Lcom/meizu/common/widget/Switch;->access$402(Lcom/meizu/common/widget/Switch;Z)Z

    .line 961
    invoke-virtual {p0}, Lcom/meizu/common/widget/Switch$SwitchAnimator;->getTargetState()Z

    move-result v0

    .line 962
    .local v0, "targetState":Z
    iget-object v1, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->this$0:Lcom/meizu/common/widget/Switch;

    invoke-virtual {v1, v0}, Lcom/meizu/common/widget/Switch;->setChecked(Z)V

    goto :goto_0
.end method
