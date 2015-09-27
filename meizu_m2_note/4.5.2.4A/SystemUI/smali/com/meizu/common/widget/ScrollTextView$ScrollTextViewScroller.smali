.class Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;
.super Ljava/lang/Object;
.source "ScrollTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/ScrollTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollTextViewScroller"
.end annotation


# instance fields
.field private final MESSAGE_JUSTIFY:I

.field private final MESSAGE_SCROLL:I

.field private animationHandler:Landroid/os/Handler;

.field private context:Landroid/content/Context;

.field private gestureDetector:Landroid/view/GestureDetector;

.field private gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private isScrollingPerformed:Z

.field private lastScrollY:I

.field private lastTouchedY:F

.field private listener:Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;

.field private scroller:Landroid/widget/Scroller;

.field final synthetic this$0:Lcom/meizu/common/widget/ScrollTextView;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/ScrollTextView;Landroid/content/Context;Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;)V
    .locals 3
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;

    .prologue
    const/4 v2, 0x0

    .line 1350
    iput-object p1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->this$0:Lcom/meizu/common/widget/ScrollTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1423
    new-instance v0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$1;-><init>(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 1442
    iput v2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->MESSAGE_SCROLL:I

    .line 1443
    const/4 v0, 0x1

    iput v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->MESSAGE_JUSTIFY:I

    .line 1463
    new-instance v0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$2;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller$2;-><init>(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->animationHandler:Landroid/os/Handler;

    .line 1351
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->gestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->gestureDetector:Landroid/view/GestureDetector;

    .line 1352
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, v2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 1354
    new-instance v0, Landroid/widget/Scroller;

    invoke-direct {v0, p2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->scroller:Landroid/widget/Scroller;

    .line 1356
    iput-object p3, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->listener:Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;

    .line 1357
    iput-object p2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->context:Landroid/content/Context;

    .line 1358
    return-void
.end method

.method static synthetic access$1000(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;I)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;
    .param p1, "x1"    # I

    .prologue
    .line 1324
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->setNextMessage(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->listener:Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->animationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    .prologue
    .line 1324
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->justify()V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    .prologue
    .line 1324
    iget v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->lastScrollY:I

    return v0
.end method

.method static synthetic access$602(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;I)I
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;
    .param p1, "x1"    # I

    .prologue
    .line 1324
    iput p1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->lastScrollY:I

    return p1
.end method

.method static synthetic access$900(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/widget/Scroller;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->scroller:Landroid/widget/Scroller;

    return-object v0
.end method

.method private clearMessages()V
    .locals 2

    .prologue
    .line 1458
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->animationHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1459
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->animationHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1460
    return-void
.end method

.method private justify()V
    .locals 1

    .prologue
    .line 1493
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->listener:Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;

    invoke-interface {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;->onJustify()V

    .line 1494
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->setNextMessage(I)V

    .line 1495
    return-void
.end method

.method private setNextMessage(I)V
    .locals 1
    .param p1, "message"    # I

    .prologue
    .line 1450
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->clearMessages()V

    .line 1451
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->animationHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1452
    return-void
.end method

.method private startScrolling()V
    .locals 1

    .prologue
    .line 1501
    iget-boolean v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->isScrollingPerformed:Z

    if-nez v0, :cond_0

    .line 1502
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->isScrollingPerformed:Z

    .line 1503
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->listener:Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;

    invoke-interface {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;->onStarted()V

    .line 1505
    :cond_0
    return-void
.end method


# virtual methods
.method finishScrolling()V
    .locals 1

    .prologue
    .line 1511
    iget-boolean v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->isScrollingPerformed:Z

    if-eqz v0, :cond_0

    .line 1512
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->listener:Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;

    invoke-interface {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;->onFinished()V

    .line 1513
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->isScrollingPerformed:Z

    .line 1515
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 1397
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1415
    :cond_0
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 1416
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->justify()V

    .line 1419
    :cond_1
    return v3

    .line 1399
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->lastTouchedY:F

    .line 1400
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1401
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->clearMessages()V

    goto :goto_0

    .line 1406
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->lastTouchedY:F

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 1407
    .local v0, "distanceY":I
    if-eqz v0, :cond_0

    .line 1408
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->startScrolling()V

    .line 1409
    iget-object v1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->listener:Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;

    invoke-interface {v1, v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;->onScroll(I)V

    .line 1410
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->lastTouchedY:F

    goto :goto_0

    .line 1397
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public scroll(II)V
    .locals 6
    .param p1, "distance"    # I
    .param p2, "time"    # I

    .prologue
    const/4 v1, 0x0

    .line 1375
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->scroller:Landroid/widget/Scroller;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1377
    iput v1, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->lastScrollY:I

    .line 1378
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->scroller:Landroid/widget/Scroller;

    if-eqz p2, :cond_0

    move v5, p2

    :goto_0
    move v2, v1

    move v3, v1

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1379
    invoke-direct {p0, v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->setNextMessage(I)V

    .line 1381
    invoke-direct {p0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->startScrolling()V

    .line 1382
    return-void

    .line 1378
    :cond_0
    const/16 v5, 0x190

    goto :goto_0
.end method

.method public stopScrolling()V
    .locals 2

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1389
    return-void
.end method
