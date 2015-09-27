.class Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;
.super Ljava/lang/Object;
.source "EnhanceSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/EnhanceSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "XYHolder"
.end annotation


# instance fields
.field private mX:F

.field private mY:F

.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceSeekBar;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/EnhanceSeekBar;FF)V
    .locals 0
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 784
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->this$0:Lcom/meizu/common/widget/EnhanceSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 785
    iput p2, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mX:F

    .line 786
    iput p3, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mY:F

    .line 787
    return-void
.end method


# virtual methods
.method public getX()F
    .locals 1

    .prologue
    .line 790
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 802
    iget v0, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mY:F

    return v0
.end method

.method public setXY(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 793
    iput p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mX:F

    .line 794
    iput p2, p0, Lcom/meizu/common/widget/EnhanceSeekBar$XYHolder;->mY:F

    .line 796
    return-void
.end method
