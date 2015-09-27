.class public Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$MyDragShadowBuilder;
.super Landroid/view/View$DragShadowBuilder;
.source "SwapDragableGridView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyDragShadowBuilder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1012
    invoke-direct {p0}, Landroid/view/View$DragShadowBuilder;-><init>()V

    .line 1013
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1016
    invoke-direct {p0, p1}, Landroid/view/View$DragShadowBuilder;-><init>(Landroid/view/View;)V

    .line 1017
    return-void
.end method


# virtual methods
.method public onProvideShadowMetrics(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 5
    .param p1, "shadowSize"    # Landroid/graphics/Point;
    .param p2, "shadowTouchPoint"    # Landroid/graphics/Point;

    .prologue
    .line 1021
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/SwapDragableGridView$MyDragShadowBuilder;->getView()Landroid/view/View;

    move-result-object v0

    .line 1022
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1023
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 1024
    iget v1, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x41f00000    # 30.0f

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/widgetnew/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 1028
    :goto_0
    return-void

    .line 1026
    :cond_0
    const-string v1, "View"

    const-string v2, "Asked for drag thumb metrics but no view"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
