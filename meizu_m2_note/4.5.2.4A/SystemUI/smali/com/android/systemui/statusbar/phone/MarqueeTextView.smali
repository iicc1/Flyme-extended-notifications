.class public Lcom/android/systemui/statusbar/phone/MarqueeTextView;
.super Landroid/widget/TextView;
.source "MarqueeTextView.java"


# instance fields
.field private mCurrentScrollInterval:I

.field private mCurrentScrollPosition:I

.field private mHandler:Landroid/os/Handler;

.field private mIsMeasured:Z

.field private mIsScrolling:Z

.field private mMyHandler:Landroid/os/Handler;

.field private mMyThread:Landroid/os/HandlerThread;

.field private mScrollTickerRunnable:Ljava/lang/Runnable;

.field public mSegment:Lcom/android/systemui/statusbar/phone/MarqueeTicker$Segment;

.field private mTextViewWidth:I

.field private mTextWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 53
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mIsScrolling:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mIsMeasured:Z

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mHandler:Landroid/os/Handler;

    .line 69
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mMyThread:Landroid/os/HandlerThread;

    .line 73
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mMyHandler:Landroid/os/Handler;

    .line 146
    new-instance v0, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;-><init>(Lcom/android/systemui/statusbar/phone/MarqueeTextView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mScrollTickerRunnable:Ljava/lang/Runnable;

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mIsScrolling:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mIsMeasured:Z

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mHandler:Landroid/os/Handler;

    .line 69
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mMyThread:Landroid/os/HandlerThread;

    .line 73
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mMyHandler:Landroid/os/Handler;

    .line 146
    new-instance v0, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;-><init>(Lcom/android/systemui/statusbar/phone/MarqueeTextView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mScrollTickerRunnable:Ljava/lang/Runnable;

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mIsScrolling:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mIsMeasured:Z

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mHandler:Landroid/os/Handler;

    .line 69
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mMyThread:Landroid/os/HandlerThread;

    .line 73
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mMyHandler:Landroid/os/Handler;

    .line 146
    new-instance v0, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;-><init>(Lcom/android/systemui/statusbar/phone/MarqueeTextView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mScrollTickerRunnable:Ljava/lang/Runnable;

    .line 87
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/MarqueeTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    .prologue
    .line 17
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mTextWidth:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/MarqueeTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    .prologue
    .line 17
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mTextViewWidth:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/MarqueeTextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->getTextWidth()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/MarqueeTextView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    .prologue
    .line 17
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mIsScrolling:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/MarqueeTextView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MarqueeTextView;
    .param p1, "x1"    # Z

    .prologue
    .line 17
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mIsScrolling:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/MarqueeTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    .prologue
    .line 17
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mCurrentScrollInterval:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/phone/MarqueeTextView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MarqueeTextView;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mCurrentScrollInterval:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/MarqueeTextView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    .prologue
    .line 17
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mCurrentScrollPosition:I

    return v0
.end method

.method static synthetic access$512(Lcom/android/systemui/statusbar/phone/MarqueeTextView;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MarqueeTextView;
    .param p1, "x1"    # I

    .prologue
    .line 17
    iget v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mCurrentScrollPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mCurrentScrollPosition:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/MarqueeTextView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/MarqueeTextView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mScrollTickerRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/MarqueeTextView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mMyHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getTextWidth()V
    .locals 3

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    .line 128
    .local v0, "paint":Landroid/graphics/Paint;
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, "str":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mTextWidth:I

    .line 130
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mTextViewWidth:I

    .line 131
    return-void
.end method


# virtual methods
.method public isFocused()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mIsScrolling:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 91
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 95
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mIsMeasured:Z

    if-nez v0, :cond_0

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->getTextWidth()V

    .line 97
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mIsMeasured:Z

    .line 121
    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "type"    # Landroid/widget/TextView$BufferType;

    .prologue
    .line 138
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mIsMeasured:Z

    .line 140
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->getTextWidth()V

    .line 141
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 143
    return-void
.end method

.method public startScrollSoon()V
    .locals 4

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mMyThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MyThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mMyThread:Landroid/os/HandlerThread;

    .line 238
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mMyThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mMyHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 241
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mMyThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mMyHandler:Landroid/os/Handler;

    .line 244
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mCurrentScrollPosition:I

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mIsScrolling:Z

    .line 246
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mMyHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mScrollTickerRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 247
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mMyHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mScrollTickerRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 248
    return-void
.end method
