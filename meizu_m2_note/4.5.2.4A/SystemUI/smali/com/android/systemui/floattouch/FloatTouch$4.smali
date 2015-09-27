.class Lcom/android/systemui/floattouch/FloatTouch$4;
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
    .line 127
    iput-object p1, p0, Lcom/android/systemui/floattouch/FloatTouch$4;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$4;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    invoke-virtual {v0}, Lcom/android/systemui/floattouch/FloatTouch;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/systemui/floattouch/FloatTouch$4;->this$0:Lcom/android/systemui/floattouch/FloatTouch;

    invoke-virtual {v0}, Lcom/android/systemui/floattouch/FloatTouch;->toVisible()V

    .line 134
    :cond_0
    return-void
.end method
