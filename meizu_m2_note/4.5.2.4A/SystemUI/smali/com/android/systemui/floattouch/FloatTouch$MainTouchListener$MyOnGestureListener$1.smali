.class Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener$1;
.super Lcom/android/systemui/floattouch/TargetViewHelper;
.source "FloatTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;


# direct methods
.method constructor <init>(Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # Landroid/os/Handler;

    .prologue
    .line 283
    iput-object p1, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;

    invoke-direct {p0, p2, p3}, Lcom/android/systemui/floattouch/TargetViewHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public updateFloatWindow(I)V
    .locals 7
    .param p1, "imeTop"    # I

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 286
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;

    iget-object v3, v3, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;

    iget-object v3, v3, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # setter for: Lcom/android/systemui/floattouch/FloatTouch;->lastImeTop:I
    invoke-static {v3, p1}, Lcom/android/systemui/floattouch/FloatTouch;->access$702(Lcom/android/systemui/floattouch/FloatTouch;I)I

    .line 287
    if-nez p1, :cond_1

    .line 288
    new-array v0, v5, [I

    .line 289
    .local v0, "location":[I
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;

    iget-object v3, v3, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;

    iget-object v3, v3, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->mTopViewGroup:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/floattouch/FloatTouch;->access$200(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 290
    aget v3, v0, v4

    iget-object v4, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;

    iget-object v4, v4, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;

    iget-object v4, v4, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->floatY:I
    invoke-static {v4}, Lcom/android/systemui/floattouch/FloatTouch;->access$400(Lcom/android/systemui/floattouch/FloatTouch;)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 291
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;

    iget-object v3, v3, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;

    iget-object v3, v3, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/floattouch/FloatTouch;->access$100(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 292
    .local v1, "message":Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 293
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;

    iget-object v3, v3, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;

    iget-object v3, v3, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->floatY:I
    invoke-static {v3}, Lcom/android/systemui/floattouch/FloatTouch;->access$400(Lcom/android/systemui/floattouch/FloatTouch;)I

    move-result v3

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 294
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;

    iget-object v3, v3, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;

    iget-object v3, v3, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/floattouch/FloatTouch;->access$100(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 308
    .end local v1    # "message":Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 298
    .end local v0    # "location":[I
    :cond_1
    new-array v0, v5, [I

    .line 299
    .restart local v0    # "location":[I
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;

    iget-object v3, v3, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;

    iget-object v3, v3, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->mTopViewGroup:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/floattouch/FloatTouch;->access$200(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 300
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;

    iget-object v3, v3, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;

    iget-object v3, v3, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->mTopViewGroup:Landroid/view/ViewGroup;
    invoke-static {v3}, Lcom/android/systemui/floattouch/FloatTouch;->access$200(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int v2, p1, v3

    .line 301
    .local v2, "newPosition":I
    aget v3, v0, v4

    if-le v3, v2, :cond_0

    .line 302
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;

    iget-object v3, v3, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;

    iget-object v3, v3, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/floattouch/FloatTouch;->access$100(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 303
    .restart local v1    # "message":Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 304
    iput v2, v1, Landroid/os/Message;->arg1:I

    .line 305
    iget-object v3, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener$1;->this$2:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;

    iget-object v3, v3, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->this$1:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;

    iget-object v3, v3, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->handler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/floattouch/FloatTouch;->access$100(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
