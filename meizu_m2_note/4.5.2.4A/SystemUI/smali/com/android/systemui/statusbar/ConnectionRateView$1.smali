.class Lcom/android/systemui/statusbar/ConnectionRateView$1;
.super Landroid/os/Handler;
.source "ConnectionRateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ConnectionRateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/ConnectionRateView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/ConnectionRateView;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/systemui/statusbar/ConnectionRateView$1;->this$0:Lcom/android/systemui/statusbar/ConnectionRateView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 110
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 117
    :goto_0
    return-void

    .line 112
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ConnectionRateView$1;->this$0:Lcom/android/systemui/statusbar/ConnectionRateView;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    # invokes: Lcom/android/systemui/statusbar/ConnectionRateView;->updateConnectionRate(D)V
    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/ConnectionRateView;->access$200(Lcom/android/systemui/statusbar/ConnectionRateView;D)V

    goto :goto_0

    .line 110
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
