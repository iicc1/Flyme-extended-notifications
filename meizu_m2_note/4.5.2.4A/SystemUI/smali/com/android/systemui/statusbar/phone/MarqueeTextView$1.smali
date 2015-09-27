.class Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;
.super Ljava/lang/Object;
.source "MarqueeTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/MarqueeTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/MarqueeTextView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/MarqueeTextView;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const v5, 0x3d8f5c29    # 0.07f

    .line 150
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    # getter for: Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mTextWidth:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->access$000(Lcom/android/systemui/statusbar/phone/MarqueeTextView;)I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    # getter for: Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mTextViewWidth:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->access$100(Lcom/android/systemui/statusbar/phone/MarqueeTextView;)I

    move-result v3

    if-nez v3, :cond_1

    .line 152
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    # invokes: Lcom/android/systemui/statusbar/phone/MarqueeTextView;->getTextWidth()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->access$200(Lcom/android/systemui/statusbar/phone/MarqueeTextView;)V

    .line 158
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    # getter for: Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mTextWidth:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->access$000(Lcom/android/systemui/statusbar/phone/MarqueeTextView;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    # getter for: Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mTextViewWidth:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->access$100(Lcom/android/systemui/statusbar/phone/MarqueeTextView;)I

    move-result v4

    sub-int/2addr v3, v4

    if-ge v3, v7, :cond_3

    .line 159
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    # setter for: Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mIsScrolling:Z
    invoke-static {v3, v6}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->access$302(Lcom/android/systemui/statusbar/phone/MarqueeTextView;Z)Z

    .line 226
    :cond_2
    :goto_0
    return-void

    .line 163
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    # getter for: Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mTextWidth:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->access$000(Lcom/android/systemui/statusbar/phone/MarqueeTextView;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    # getter for: Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mTextViewWidth:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->access$100(Lcom/android/systemui/statusbar/phone/MarqueeTextView;)I

    move-result v4

    sub-int v1, v3, v4

    .line 164
    .local v1, "endPosition":I
    const/16 v2, 0x64

    .line 165
    .local v2, "startPhase":I
    add-int/lit8 v0, v1, -0x64

    .line 169
    .local v0, "endPhase":I
    const/16 v3, 0xc8

    if-ge v1, v3, :cond_5

    .line 173
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    const/16 v4, 0xa

    # setter for: Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mCurrentScrollInterval:I
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->access$402(Lcom/android/systemui/statusbar/phone/MarqueeTextView;I)I

    .line 191
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    # += operator for: Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mCurrentScrollPosition:I
    invoke-static {v3, v7}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->access$512(Lcom/android/systemui/statusbar/phone/MarqueeTextView;I)I

    .line 194
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    # getter for: Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mIsScrolling:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->access$300(Lcom/android/systemui/statusbar/phone/MarqueeTextView;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 203
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->getScrollX()I

    move-result v3

    if-le v3, v1, :cond_4

    .line 204
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    # setter for: Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mIsScrolling:Z
    invoke-static {v3, v6}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->access$302(Lcom/android/systemui/statusbar/phone/MarqueeTextView;Z)Z

    .line 214
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    # getter for: Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->access$600(Lcom/android/systemui/statusbar/phone/MarqueeTextView;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1$1;-><init>(Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 224
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    # getter for: Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mMyHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->access$800(Lcom/android/systemui/statusbar/phone/MarqueeTextView;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    # getter for: Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mScrollTickerRunnable:Ljava/lang/Runnable;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->access$700(Lcom/android/systemui/statusbar/phone/MarqueeTextView;)Ljava/lang/Runnable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    # getter for: Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mCurrentScrollInterval:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->access$400(Lcom/android/systemui/statusbar/phone/MarqueeTextView;)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 175
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->getScrollX()I

    move-result v3

    if-ge v3, v2, :cond_6

    .line 176
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    rsub-int/lit8 v4, v4, 0xa

    # setter for: Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mCurrentScrollInterval:I
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->access$402(Lcom/android/systemui/statusbar/phone/MarqueeTextView;I)I

    goto :goto_1

    .line 179
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->getScrollX()I

    move-result v3

    if-le v3, v0, :cond_7

    .line 180
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->getScrollX()I

    move-result v4

    sub-int/2addr v4, v0

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    add-int/lit8 v4, v4, 0x3

    # setter for: Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mCurrentScrollInterval:I
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->access$402(Lcom/android/systemui/statusbar/phone/MarqueeTextView;I)I

    goto :goto_1

    .line 184
    :cond_7
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    const/4 v4, 0x3

    # setter for: Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mCurrentScrollInterval:I
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->access$402(Lcom/android/systemui/statusbar/phone/MarqueeTextView;I)I

    goto :goto_1
.end method
