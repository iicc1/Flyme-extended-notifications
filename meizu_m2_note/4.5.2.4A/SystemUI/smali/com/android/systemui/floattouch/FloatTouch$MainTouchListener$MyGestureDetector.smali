.class final Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyGestureDetector;
.super Landroid/view/GestureDetector;
.source "FloatTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyGestureDetector"
.end annotation


# instance fields
.field public final listener:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;

.field final synthetic this$1:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;Landroid/content/Context;Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "listener"    # Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;

    .prologue
    .line 233
    iput-object p1, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyGestureDetector;->this$1:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;

    .line 234
    invoke-direct {p0, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 235
    iput-object p3, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyGestureDetector;->listener:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;

    .line 236
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyGestureDetector;->setIsLongpressEnabled(Z)V

    .line 237
    return-void
.end method


# virtual methods
.method public onUnLock()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyGestureDetector;->listener:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;

    invoke-virtual {v0}, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->onUnLock()V

    .line 245
    return-void
.end method

.method public onUp(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyGestureDetector;->listener:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;

    invoke-virtual {v0, p1}, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MyOnGestureListener;->onUp(Landroid/view/MotionEvent;)Z

    .line 241
    return-void
.end method
