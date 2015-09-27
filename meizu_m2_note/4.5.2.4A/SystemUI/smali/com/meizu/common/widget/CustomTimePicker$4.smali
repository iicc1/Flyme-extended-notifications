.class Lcom/meizu/common/widget/CustomTimePicker$4;
.super Ljava/lang/Object;
.source "CustomTimePicker.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/CustomTimePicker;->setTabColor(IZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/CustomTimePicker;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/CustomTimePicker;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker$4;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 436
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$4;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mIndicator:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$800(Lcom/meizu/common/widget/CustomTimePicker;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 437
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$4;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->isLunar:Z
    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$4;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mLunarIndicator:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$900(Lcom/meizu/common/widget/CustomTimePicker;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 442
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$4;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mGregorianIndicator:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$1000(Lcom/meizu/common/widget/CustomTimePicker;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 432
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x0

    .line 425
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$4;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mIndicator:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$800(Lcom/meizu/common/widget/CustomTimePicker;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 426
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$4;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mLunarIndicator:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$900(Lcom/meizu/common/widget/CustomTimePicker;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 427
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$4;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    # getter for: Lcom/meizu/common/widget/CustomTimePicker;->mGregorianIndicator:Landroid/view/View;
    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$1000(Lcom/meizu/common/widget/CustomTimePicker;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 428
    return-void
.end method
