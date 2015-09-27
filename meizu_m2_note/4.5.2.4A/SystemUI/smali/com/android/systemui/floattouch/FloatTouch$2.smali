.class Lcom/android/systemui/floattouch/FloatTouch$2;
.super Ljava/lang/Object;
.source "FloatTouch.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/floattouch/FloatTouch;->toVisible()V
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
    .line 109
    iput-object p1, p0, Lcom/android/systemui/floattouch/FloatTouch$2;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$2;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->mTopViewGroup:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/android/systemui/floattouch/FloatTouch;->access$200(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$2;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    # getter for: Lcom/android/systemui/floattouch/FloatTouch;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/floattouch/FloatTouch;->access$100(Lcom/android/systemui/floattouch/FloatTouch;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 114
    return-void
.end method
