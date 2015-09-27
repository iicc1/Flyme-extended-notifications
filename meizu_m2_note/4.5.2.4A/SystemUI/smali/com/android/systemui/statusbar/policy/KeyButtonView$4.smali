.class Lcom/android/systemui/statusbar/policy/KeyButtonView$4;
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
    .line 289
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$4;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 294
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$4;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$4;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    # getter for: Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRecentTrigger:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->access$000(Lcom/android/systemui/statusbar/policy/KeyButtonView;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$4;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$4;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    const/4 v1, 0x1

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 303
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$4;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$4;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$4;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget-object v1, v1, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 306
    :cond_1
    return-void

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$4;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    # setter for: Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRecentTrigger:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->access$002(Lcom/android/systemui/statusbar/policy/KeyButtonView;Z)Z

    goto :goto_0
.end method
