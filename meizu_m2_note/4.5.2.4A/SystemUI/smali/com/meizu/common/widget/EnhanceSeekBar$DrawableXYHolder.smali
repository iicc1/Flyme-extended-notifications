.class Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;
.super Ljava/lang/Object;
.source "EnhanceSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/EnhanceSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DrawableXYHolder"
.end annotation


# instance fields
.field private mDrawable:Landroid/graphics/drawable/Drawable;


# virtual methods
.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 756
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceSeekBar$DrawableXYHolder;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 757
    return-void
.end method
