.class Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$2;
.super Landroid/os/Handler;
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
    .line 1463
    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$2;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x1

    .line 1465
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$2;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    # getter for: Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->scroller:Landroid/widget/Scroller;
    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$900(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1466
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$2;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    # getter for: Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->scroller:Landroid/widget/Scroller;
    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$900(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 1467
    .local v0, "currY":I
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$2;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    # getter for: Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->lastScrollY:I
    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$600(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)I

    move-result v2

    sub-int v1, v2, v0

    .line 1468
    .local v1, "delta":I
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$2;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    # setter for: Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->lastScrollY:I
    invoke-static {v2, v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$602(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;I)I

    .line 1469
    if-eqz v1, :cond_0

    .line 1470
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$2;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    # getter for: Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->listener:Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;
    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1100(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;->onScroll(I)V

    .line 1475
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$2;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    # getter for: Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->scroller:Landroid/widget/Scroller;
    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$900(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v2

    sub-int v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v2, v3, :cond_1

    .line 1476
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$2;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    # getter for: Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->scroller:Landroid/widget/Scroller;
    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$900(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v0

    .line 1477
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$2;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    # getter for: Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->scroller:Landroid/widget/Scroller;
    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$900(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1479
    :cond_1
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$2;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    # getter for: Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->scroller:Landroid/widget/Scroller;
    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$900(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1480
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$2;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    # getter for: Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->animationHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1200(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/os/Handler;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1486
    :goto_0
    return-void

    .line 1481
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    if-nez v2, :cond_3

    .line 1482
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$2;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    # invokes: Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->justify()V
    invoke-static {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1300(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)V

    goto :goto_0

    .line 1484
    :cond_3
    iget-object v2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$2;->this$1:Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    invoke-virtual {v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->finishScrolling()V

    goto :goto_0
.end method
