.class Lcom/android/systemui/statusbar/policy/KeyButtonView$2;
.super Ljava/lang/Object;
.source "KeyButtonView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/KeyButtonView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 255
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    # getter for: Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRecentTrigger:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->access$000(Lcom/android/systemui/statusbar/policy/KeyButtonView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget-wide v2, v1, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    invoke-virtual {v0, v4, v4, v2, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    .line 264
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 270
    :cond_0
    return-void

    .line 262
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$2;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->performHapticFeedback(I)Z

    goto :goto_0
.end method
