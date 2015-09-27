.class Lcom/meizu/common/widget/EnhanceSeekBar$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "EnhanceSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/EnhanceSeekBar;->setThumbPos(ILandroid/graphics/drawable/Drawable;FI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceSeekBar;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/EnhanceSeekBar;)V
    .locals 0

    .prologue
    .line 397
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$1;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 400
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$1;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    # getter for: Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;
    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->access$100(Lcom/meizu/common/widget/EnhanceSeekBar;)Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$1;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    # getter for: Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;
    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->access$100(Lcom/meizu/common/widget/EnhanceSeekBar;)Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$1;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar$1;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-virtual {v2}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;->onProgressChanged(Lcom/meizu/common/widget/EnhanceSeekBar;I)V

    .line 403
    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 407
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$1;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    # getter for: Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;
    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->access$100(Lcom/meizu/common/widget/EnhanceSeekBar;)Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$1;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    # getter for: Lcom/meizu/common/widget/EnhanceSeekBar;->mOnEnhanceSeekBarChangeListener:Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;
    invoke-static {v0}, Lcom/meizu/common/widget/EnhanceSeekBar;->access$100(Lcom/meizu/common/widget/EnhanceSeekBar;)Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$1;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceSeekBar$1;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-virtual {v2}, Lcom/meizu/common/widget/EnhanceSeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/meizu/common/widget/EnhanceSeekBar$OnEnhanceSeekBarChangeListener;->onProgressChanged(Lcom/meizu/common/widget/EnhanceSeekBar;I)V

    .line 410
    :cond_0
    return-void
.end method
