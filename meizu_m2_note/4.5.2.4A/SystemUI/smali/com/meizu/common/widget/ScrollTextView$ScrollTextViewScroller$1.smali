.class Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScrollTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)V
    .locals 0

    .prologue
    .line 1423
    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "velocityX"    # F
    .param p4, "velocityY"    # F

    .prologue
    const/4 v1, 0x0

    .line 1431
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    # setter for: Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->lastScrollY:I
    invoke-static {v0, v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$602(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;I)I

    .line 1432
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object v0, v0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    # invokes: Lcom/meizu/common/widget/ScrollTextView;->getYScrollEnd()I
    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView;->access$700(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v8

    .line 1433
    .local v8, "maxY":I
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    iget-object v0, v0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    # invokes: Lcom/meizu/common/widget/ScrollTextView;->getYScrollStart()I
    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView;->access$800(Lcom/meizu/common/widget/ScrollTextView;)I

    move-result v7

    .line 1435
    .local v7, "minY":I
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    # getter for: Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->scroller:Landroid/widget/Scroller;
    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$900(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/widget/Scroller;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    # getter for: Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->lastScrollY:I
    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$600(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)I

    move-result v2

    neg-float v3, p4

    float-to-int v4, v3

    move v3, v1

    move v5, v1

    move v6, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1436
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    # invokes: Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->setNextMessage(I)V
    invoke-static {v0, v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1000(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;I)V

    .line 1437
    const/4 v0, 0x1

    return v0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "distanceX"    # F
    .param p4, "distanceY"    # F

    .prologue
    .line 1427
    const/4 v0, 0x1

    return v0
.end method
