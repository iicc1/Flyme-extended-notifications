.class final Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;
.super Ljava/lang/Object;
.source "FloatTouch.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/floattouch/FloatTouch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MainTouchListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;,
        Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MoveOnGestureListener;,
        Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MoveGestureDetector;,
        Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyGestureDetector;
    }
.end annotation


# instance fields
.field private final detector:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyGestureDetector;

.field private final moveDetector:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MoveGestureDetector;

.field private moveState:Z

.field final synthetic this$0:Lcom/android/systemui/floattouch/FloatTouch;


# direct methods
.method constructor <init>(Lcom/android/systemui/floattouch/FloatTouch;)V
    .locals 3

    .prologue
    .line 169
    iput-object p1, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->moveState:Z

    .line 403
    new-instance v0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyGestureDetector;

    iget-object v1, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/floattouch/FloatTouch;->access$500(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;

    invoke-direct {v2, p0}, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;-><init>(Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;)V

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyGestureDetector;-><init>(Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;Landroid/content/Context;Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->detector:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyGestureDetector;

    .line 405
    new-instance v0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MoveGestureDetector;

    iget-object v1, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->context:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/floattouch/FloatTouch;->access$500(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MoveGestureDetector;-><init>(Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->moveDetector:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MoveGestureDetector;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;)Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyGestureDetector;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->detector:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyGestureDetector;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;
    .param p1, "x1"    # Z

    .prologue
    .line 169
    iput-boolean p1, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->moveState:Z

    return p1
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 13
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v12, 0x3c

    const/4 v11, 0x4

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 174
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 176
    .local v0, "action":I
    if-nez v0, :cond_4

    .line 177
    iget-object v5, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/systemui/floattouch/FloatTouch;->access$100(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    iget-object v5, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/systemui/floattouch/FloatTouch;->access$100(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 183
    :cond_0
    :goto_0
    if-ne v0, v8, :cond_2

    .line 184
    iget-boolean v5, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->moveState:Z

    if-eqz v5, :cond_2

    .line 185
    new-array v2, v9, [I

    .line 186
    .local v2, "location":[I
    iget-object v5, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->mTopViewGroup:Landroid/view/ViewGroup;
    invoke-static {v5}, Lcom/android/systemui/floattouch/FloatTouch;->access$200(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 188
    aget v5, v2, v8

    if-ge v5, v12, :cond_1

    .line 189
    iget-object v5, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # setter for: Lcom/android/systemui/floattouch/FloatTouch;->floatY:I
    invoke-static {v5, v12}, Lcom/android/systemui/floattouch/FloatTouch;->access$402(Lcom/android/systemui/floattouch/FloatTouch;I)I

    .line 190
    iget-object v5, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/systemui/floattouch/FloatTouch;->access$100(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 191
    .local v3, "message":Landroid/os/Message;
    iput v11, v3, Landroid/os/Message;->what:I

    .line 192
    iget-object v5, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->floatY:I
    invoke-static {v5}, Lcom/android/systemui/floattouch/FloatTouch;->access$400(Lcom/android/systemui/floattouch/FloatTouch;)I

    move-result v5

    iput v5, v3, Landroid/os/Message;->arg1:I

    .line 193
    iget-object v5, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/systemui/floattouch/FloatTouch;->access$100(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 196
    .end local v3    # "message":Landroid/os/Message;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->context:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/systemui/floattouch/FloatTouch;->access$500(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "floattouch"

    invoke-virtual {v5, v6, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 197
    .local v1, "floattouch":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "position_x"

    iget-object v7, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->floatX:I
    invoke-static {v7}, Lcom/android/systemui/floattouch/FloatTouch;->access$600(Lcom/android/systemui/floattouch/FloatTouch;)I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "position_y"

    iget-object v7, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->floatY:I
    invoke-static {v7}, Lcom/android/systemui/floattouch/FloatTouch;->access$400(Lcom/android/systemui/floattouch/FloatTouch;)I

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 200
    iget-object v5, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->lastImeTop:I
    invoke-static {v5}, Lcom/android/systemui/floattouch/FloatTouch;->access$700(Lcom/android/systemui/floattouch/FloatTouch;)I

    move-result v5

    if-eqz v5, :cond_2

    .line 201
    iget-object v5, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->lastImeTop:I
    invoke-static {v5}, Lcom/android/systemui/floattouch/FloatTouch;->access$700(Lcom/android/systemui/floattouch/FloatTouch;)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->mTopViewGroup:Landroid/view/ViewGroup;
    invoke-static {v6}, Lcom/android/systemui/floattouch/FloatTouch;->access$200(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/view/ViewGroup;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v4, v5, -0x14

    .line 202
    .local v4, "newPosition":I
    aget v5, v2, v8

    if-le v5, v4, :cond_2

    .line 203
    iget-object v5, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/systemui/floattouch/FloatTouch;->access$100(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v3

    .line 204
    .restart local v3    # "message":Landroid/os/Message;
    iput v11, v3, Landroid/os/Message;->what:I

    .line 205
    iput v4, v3, Landroid/os/Message;->arg1:I

    .line 206
    iget-object v5, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/systemui/floattouch/FloatTouch;->access$100(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 212
    .end local v1    # "floattouch":Landroid/content/SharedPreferences;
    .end local v2    # "location":[I
    .end local v3    # "message":Landroid/os/Message;
    .end local v4    # "newPosition":I
    :cond_2
    if-eqz v0, :cond_5

    .line 213
    iget-boolean v5, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->moveState:Z

    if-eqz v5, :cond_6

    .line 214
    iget-object v5, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->moveDetector:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MoveGestureDetector;

    invoke-virtual {v5, p2}, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MoveGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 227
    :cond_3
    :goto_1
    return v8

    .line 179
    :cond_4
    if-ne v0, v8, :cond_0

    .line 180
    iget-object v5, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->handler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/systemui/floattouch/FloatTouch;->access$100(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v9, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 218
    :cond_5
    iput-boolean v10, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->moveState:Z

    .line 221
    :cond_6
    iget-object v5, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->detector:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyGestureDetector;

    invoke-virtual {v5, p2}, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 223
    if-ne v0, v8, :cond_3

    .line 224
    iget-object v5, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;->detector:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyGestureDetector;

    invoke-virtual {v5, p2}, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyGestureDetector;->onUp(Landroid/view/MotionEvent;)V

    goto :goto_1
.end method
