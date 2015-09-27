.class Lcom/android/systemui/statusbar/policy/KeyButtonView$5;
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
    .line 310
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 315
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->isPressed()Z

    move-result v0

    .line 316
    .local v0, "doIt":Z
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 317
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    # getter for: Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRecentTrigger:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->access$000(Lcom/android/systemui/statusbar/policy/KeyButtonView;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 318
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget v1, v1, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v1, :cond_3

    .line 319
    if-eqz v0, :cond_2

    .line 320
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 321
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 322
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    .line 336
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v1, :cond_1

    .line 337
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 339
    :cond_1
    return-void

    .line 324
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/16 v2, 0x20

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    goto :goto_0

    .line 329
    :cond_3
    if-eqz v0, :cond_0

    .line 330
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->performClick()Z

    goto :goto_0

    .line 334
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$5;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    # setter for: Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRecentTrigger:Z
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->access$002(Lcom/android/systemui/statusbar/policy/KeyButtonView;Z)Z

    goto :goto_0
.end method
