.class Lcom/android/systemui/floattouch/FloatTouch$3;
.super Ljava/lang/Object;
.source "FloatTouch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/floattouch/FloatTouch;->hide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/floattouch/FloatTouch;


# direct methods
.method constructor <init>(Lcom/android/systemui/floattouch/FloatTouch;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/systemui/floattouch/FloatTouch$3;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$3;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->mStableShow:Lcom/android/systemui/floattouch/SmartTouchView;
    invoke-static {v0}, Lcom/android/systemui/floattouch/FloatTouch;->access$300(Lcom/android/systemui/floattouch/FloatTouch;)Lcom/android/systemui/floattouch/SmartTouchView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/floattouch/SmartTouchView;->setScaleY(F)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$3;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->mStableShow:Lcom/android/systemui/floattouch/SmartTouchView;
    invoke-static {v0}, Lcom/android/systemui/floattouch/FloatTouch;->access$300(Lcom/android/systemui/floattouch/FloatTouch;)Lcom/android/systemui/floattouch/SmartTouchView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/floattouch/SmartTouchView;->setScaleY(F)V

    .line 124
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$3;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->mStableShow:Lcom/android/systemui/floattouch/SmartTouchView;
    invoke-static {v0}, Lcom/android/systemui/floattouch/FloatTouch;->access$300(Lcom/android/systemui/floattouch/FloatTouch;)Lcom/android/systemui/floattouch/SmartTouchView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/floattouch/SmartTouchView;->invalidate()V

    .line 125
    return-void
.end method
