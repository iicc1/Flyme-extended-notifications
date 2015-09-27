.class Lcom/meizu/common/widget/Switch$SwitchAnimator$ThumbDrawableHolder;
.super Ljava/lang/Object;
.source "Switch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/Switch$SwitchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThumbDrawableHolder"
.end annotation


# instance fields
.field private position:I

.field final synthetic this$1:Lcom/meizu/common/widget/Switch$SwitchAnimator;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/Switch$SwitchAnimator;I)V
    .locals 0
    .param p2, "position"    # I

    .prologue
    .line 844
    iput-object p1, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator$ThumbDrawableHolder;->this$1:Lcom/meizu/common/widget/Switch$SwitchAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 845
    iput p2, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator$ThumbDrawableHolder;->position:I

    .line 846
    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    .prologue
    .line 849
    iget v0, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator$ThumbDrawableHolder;->position:I

    return v0
.end method

.method public setPosition(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 853
    iget-object v0, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator$ThumbDrawableHolder;->this$1:Lcom/meizu/common/widget/Switch$SwitchAnimator;

    iget-object v0, v0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->this$0:Lcom/meizu/common/widget/Switch;

    invoke-virtual {v0}, Lcom/meizu/common/widget/Switch;->isLayoutRtl()Z

    move-result v0

    if-nez v0, :cond_1

    .line 854
    iget-object v0, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator$ThumbDrawableHolder;->this$1:Lcom/meizu/common/widget/Switch$SwitchAnimator;

    # getter for: Lcom/meizu/common/widget/Switch$SwitchAnimator;->targetState:Z
    invoke-static {v0}, Lcom/meizu/common/widget/Switch$SwitchAnimator;->access$200(Lcom/meizu/common/widget/Switch$SwitchAnimator;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "position":I
    :goto_0
    iput p1, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator$ThumbDrawableHolder;->position:I

    .line 859
    :goto_1
    return-void

    .line 854
    .restart local p1    # "position":I
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator$ThumbDrawableHolder;->this$1:Lcom/meizu/common/widget/Switch$SwitchAnimator;

    iget-object v0, v0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->this$0:Lcom/meizu/common/widget/Switch;

    # getter for: Lcom/meizu/common/widget/Switch;->mAnimationLength:I
    invoke-static {v0}, Lcom/meizu/common/widget/Switch;->access$300(Lcom/meizu/common/widget/Switch;)I

    move-result v0

    sub-int p1, v0, p1

    goto :goto_0

    .line 856
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator$ThumbDrawableHolder;->this$1:Lcom/meizu/common/widget/Switch$SwitchAnimator;

    # getter for: Lcom/meizu/common/widget/Switch$SwitchAnimator;->targetState:Z
    invoke-static {v0}, Lcom/meizu/common/widget/Switch$SwitchAnimator;->access$200(Lcom/meizu/common/widget/Switch$SwitchAnimator;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator$ThumbDrawableHolder;->this$1:Lcom/meizu/common/widget/Switch$SwitchAnimator;

    iget-object v0, v0, Lcom/meizu/common/widget/Switch$SwitchAnimator;->this$0:Lcom/meizu/common/widget/Switch;

    # getter for: Lcom/meizu/common/widget/Switch;->mAnimationLength:I
    invoke-static {v0}, Lcom/meizu/common/widget/Switch;->access$300(Lcom/meizu/common/widget/Switch;)I

    move-result v0

    sub-int p1, v0, p1

    .end local p1    # "position":I
    :cond_2
    iput p1, p0, Lcom/meizu/common/widget/Switch$SwitchAnimator$ThumbDrawableHolder;->position:I

    goto :goto_1
.end method
