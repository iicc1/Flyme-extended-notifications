.class Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation$5;
.super Ljava/lang/Object;
.source "MorphIconView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;

.field final synthetic val$gradientShapeHolder:Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;)V
    .locals 0

    .prologue
    .line 549
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation$5;->this$1:Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation$5;->val$gradientShapeHolder:Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 552
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation$5;->val$gradientShapeHolder:Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;->setCornerRadius(F)V

    .line 553
    return-void
.end method
