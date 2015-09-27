.class Lcom/meizu/common/widget/CustomTimePicker$1;
.super Ljava/lang/Object;
.source "CustomTimePicker.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/CustomTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/CustomTimePicker;


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 247
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 248
    .local v0, "factor":F
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$1;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    iget-object v1, v1, Lcom/meizu/common/widget/CustomTimePicker;->mFlipView:Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;

    invoke-virtual {v1, v0}, Lcom/meizu/common/widget/CustomDatePickerDialog$FlipView;->setFoldFactor(F)V

    .line 249
    return-void
.end method
