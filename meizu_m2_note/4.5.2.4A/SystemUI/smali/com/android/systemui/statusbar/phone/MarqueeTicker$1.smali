.class Lcom/android/systemui/statusbar/phone/MarqueeTicker$1;
.super Ljava/lang/Object;
.source "MarqueeTicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/MarqueeTicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/MarqueeTicker;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/MarqueeTicker;)V
    .locals 0

    .prologue
    .line 180
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTicker;

    # getter for: Lcom/android/systemui/statusbar/phone/MarqueeTicker;->mCurrentTicker:Lcom/android/systemui/statusbar/phone/MarqueeTextView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MarqueeTicker;->access$000(Lcom/android/systemui/statusbar/phone/MarqueeTicker;)Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTicker;

    # getter for: Lcom/android/systemui/statusbar/phone/MarqueeTicker;->mCurrentTicker:Lcom/android/systemui/statusbar/phone/MarqueeTextView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MarqueeTicker;->access$000(Lcom/android/systemui/statusbar/phone/MarqueeTicker;)Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mSegment:Lcom/android/systemui/statusbar/phone/MarqueeTicker$Segment;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$Segment;->isRemoved:Z

    if-nez v0, :cond_0

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTicker;

    # invokes: Lcom/android/systemui/statusbar/phone/MarqueeTicker;->scheduleAdvance()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MarqueeTicker;->access$100(Lcom/android/systemui/statusbar/phone/MarqueeTicker;)V

    .line 192
    :goto_0
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTicker;

    # invokes: Lcom/android/systemui/statusbar/phone/MarqueeTicker;->skipToNextTicker()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MarqueeTicker;->access$200(Lcom/android/systemui/statusbar/phone/MarqueeTicker;)V

    goto :goto_0

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$1;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTicker;

    # invokes: Lcom/android/systemui/statusbar/phone/MarqueeTicker;->scheduleAdvanceToNextTicker()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/MarqueeTicker;->access$300(Lcom/android/systemui/statusbar/phone/MarqueeTicker;)V

    goto :goto_0
.end method
