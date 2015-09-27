.class Lcom/android/systemui/statusbar/policy/KeyButtonView$3;
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

.field final synthetic val$x:I

.field final synthetic val$y:I


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/KeyButtonView;II)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iput p2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$3;->val$x:I

    iput p3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$3;->val$y:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    # getter for: Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRecentTrigger:Z
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->access$000(Lcom/android/systemui/statusbar/policy/KeyButtonView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$3;->val$x:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    neg-int v2, v2

    if-lt v0, v2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$3;->val$x:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$3;->val$y:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    neg-int v2, v2

    if-lt v0, v2, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$3;->val$y:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView$3;->this$0:Lcom/android/systemui/statusbar/policy/KeyButtonView;

    iget v3, v3, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    add-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 285
    :cond_0
    return-void

    .line 280
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
