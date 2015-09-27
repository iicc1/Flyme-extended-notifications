.class final Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MoveGestureDetector;
.super Landroid/view/GestureDetector;
.source "FloatTouch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MoveGestureDetector"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 250
    iput-object p1, p0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MoveGestureDetector;->this$1:Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;

    .line 251
    new-instance v0, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MoveOnGestureListener;

    invoke-direct {v0, p1}, Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener$MoveOnGestureListener;-><init>(Lcom/android/systemui/floattouch/FloatTouch$MainTouchListener;)V

    invoke-direct {p0, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 252
    return-void
.end method
