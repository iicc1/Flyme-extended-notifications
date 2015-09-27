.class Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;
.super Ljava/lang/Object;
.source "EnhanceSeekBar.java"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/EnhanceSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XYEvaluator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceSeekBar;


# virtual methods
.method public evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .param p1, "fraction"    # F
    .param p2, "startValue"    # Ljava/lang/Object;
    .param p3, "endValue"    # Ljava/lang/Object;

    .prologue
    .line 812
    move-object v1, p2

    check-cast v1, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    .local v1, "startXY":Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;
    move-object v0, p3

    .line 813
    check-cast v0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    .line 814
    .local v0, "endXY":Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;
    new-instance v2, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;

    iget-object v3, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYEvaluator;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-virtual {v1}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getX()F

    move-result v4

    invoke-virtual {v0}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getX()F

    move-result v5

    invoke-virtual {v1}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getX()F

    move-result v6

    sub-float/2addr v5, v6

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    invoke-virtual {v1}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getY()F

    move-result v5

    invoke-virtual {v0}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getY()F

    move-result v6

    invoke-virtual {v1}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->getY()F

    move-result v7

    sub-float/2addr v6, v7

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    invoke-direct {v2, v3, v4, v5}, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;-><init>(Lcom/meizu/common/widget/EnhanceSeekBar;FF)V

    return-object v2
.end method
