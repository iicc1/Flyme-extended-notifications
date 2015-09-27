.class Lcom/android/systemui/statusbar/phone/MarqueeTicker$2;
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
    .line 209
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$2;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 214
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$2;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTicker;

    # getter for: Lcom/android/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/MarqueeTicker;->access$400(Lcom/android/systemui/statusbar/phone/MarqueeTicker;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$2;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTicker;

    # getter for: Lcom/android/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/MarqueeTicker;->access$400(Lcom/android/systemui/statusbar/phone/MarqueeTicker;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 218
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$2;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTicker;

    # getter for: Lcom/android/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/MarqueeTicker;->access$400(Lcom/android/systemui/statusbar/phone/MarqueeTicker;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 219
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$2;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTicker;

    # getter for: Lcom/android/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/MarqueeTicker;->access$400(Lcom/android/systemui/statusbar/phone/MarqueeTicker;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$Segment;

    .line 221
    .local v0, "seg":Lcom/android/systemui/statusbar/phone/MarqueeTicker$Segment;
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$Segment;->isRemoved:Z

    if-nez v1, :cond_1

    .line 222
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$2;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/MarqueeTicker;->mIconSwitcher:Landroid/widget/ImageSwitcher;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$Segment;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 223
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$2;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/MarqueeTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$Segment;->text:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$2;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTicker;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$2;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTicker;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/MarqueeTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$2;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTicker;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/MarqueeTicker;->mTextSwitcher:Landroid/widget/TextSwitcher;

    invoke-virtual {v3}, Landroid/widget/TextSwitcher;->getDisplayedChild()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    # setter for: Lcom/android/systemui/statusbar/phone/MarqueeTicker;->mCurrentTicker:Lcom/android/systemui/statusbar/phone/MarqueeTextView;
    invoke-static {v2, v1}, Lcom/android/systemui/statusbar/phone/MarqueeTicker;->access$002(Lcom/android/systemui/statusbar/phone/MarqueeTicker;Lcom/android/systemui/statusbar/phone/MarqueeTextView;)Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    .line 226
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$2;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTicker;

    # getter for: Lcom/android/systemui/statusbar/phone/MarqueeTicker;->mCurrentTicker:Lcom/android/systemui/statusbar/phone/MarqueeTextView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/MarqueeTicker;->access$000(Lcom/android/systemui/statusbar/phone/MarqueeTicker;)Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    move-result-object v1

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->mSegment:Lcom/android/systemui/statusbar/phone/MarqueeTicker$Segment;

    .line 227
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$2;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTicker;

    # getter for: Lcom/android/systemui/statusbar/phone/MarqueeTicker;->mCurrentTicker:Lcom/android/systemui/statusbar/phone/MarqueeTextView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/MarqueeTicker;->access$000(Lcom/android/systemui/statusbar/phone/MarqueeTicker;)Lcom/android/systemui/statusbar/phone/MarqueeTextView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/MarqueeTextView;->startScrollSoon()V

    .line 230
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$2;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTicker;

    # invokes: Lcom/android/systemui/statusbar/phone/MarqueeTicker;->scheduleAdvance()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/MarqueeTicker;->access$100(Lcom/android/systemui/statusbar/phone/MarqueeTicker;)V

    .line 233
    .end local v0    # "seg":Lcom/android/systemui/statusbar/phone/MarqueeTicker$Segment;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$2;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTicker;

    # getter for: Lcom/android/systemui/statusbar/phone/MarqueeTicker;->mSegments:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/MarqueeTicker;->access$400(Lcom/android/systemui/statusbar/phone/MarqueeTicker;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 234
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/MarqueeTicker$2;->this$0:Lcom/android/systemui/statusbar/phone/MarqueeTicker;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/MarqueeTicker;->tickerDone()V

    .line 236
    :cond_3
    return-void
.end method
