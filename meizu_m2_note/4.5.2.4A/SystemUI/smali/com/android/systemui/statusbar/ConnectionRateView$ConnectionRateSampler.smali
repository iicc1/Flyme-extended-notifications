.class Lcom/android/systemui/statusbar/ConnectionRateView$ConnectionRateSampler;
.super Ljava/lang/Object;
.source "ConnectionRateView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/ConnectionRateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectionRateSampler"
.end annotation


# instance fields
.field private oldRxBytes:J

.field private runThread:Ljava/lang/Thread;

.field private volatile stopRequested:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/ConnectionRateView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/ConnectionRateView;)V
    .locals 2

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/systemui/statusbar/ConnectionRateView$ConnectionRateSampler;->this$0:Lcom/android/systemui/statusbar/ConnectionRateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/ConnectionRateView$ConnectionRateSampler;->oldRxBytes:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/ConnectionRateView;Lcom/android/systemui/statusbar/ConnectionRateView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/ConnectionRateView;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/ConnectionRateView$1;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ConnectionRateView$ConnectionRateSampler;-><init>(Lcom/android/systemui/statusbar/ConnectionRateView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 82
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/ConnectionRateView$ConnectionRateSampler;->runThread:Ljava/lang/Thread;

    .line 83
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/ConnectionRateView$ConnectionRateSampler;->stopRequested:Z

    .line 84
    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/ConnectionRateView$ConnectionRateSampler;->stopRequested:Z

    if-nez v6, :cond_0

    .line 86
    invoke-static {}, Landroid/net/TrafficStats;->getTotalRxBytes()J

    move-result-wide v4

    .line 87
    .local v4, "rx":J
    iget-wide v6, p0, Lcom/android/systemui/statusbar/ConnectionRateView$ConnectionRateSampler;->oldRxBytes:J

    sub-long v0, v4, v6

    .line 89
    .local v0, "bytes":J
    long-to-double v6, v0

    const-wide/high16 v8, 0x40a8000000000000L    # 3072.0

    div-double v2, v6, v8

    .line 90
    .local v2, "rate":D
    iput-wide v4, p0, Lcom/android/systemui/statusbar/ConnectionRateView$ConnectionRateSampler;->oldRxBytes:J

    .line 91
    iget-object v6, p0, Lcom/android/systemui/statusbar/ConnectionRateView$ConnectionRateSampler;->this$0:Lcom/android/systemui/statusbar/ConnectionRateView;

    # getter for: Lcom/android/systemui/statusbar/ConnectionRateView;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/systemui/statusbar/ConnectionRateView;->access$100(Lcom/android/systemui/statusbar/ConnectionRateView;)Landroid/os/Handler;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/ConnectionRateView$ConnectionRateSampler;->this$0:Lcom/android/systemui/statusbar/ConnectionRateView;

    # getter for: Lcom/android/systemui/statusbar/ConnectionRateView;->mHandler:Landroid/os/Handler;
    invoke-static {v7}, Lcom/android/systemui/statusbar/ConnectionRateView;->access$100(Lcom/android/systemui/statusbar/ConnectionRateView;)Landroid/os/Handler;

    move-result-object v7

    const/16 v8, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 93
    const-wide/16 v6, 0xbb8

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v6

    goto :goto_0

    .line 98
    .end local v0    # "bytes":J
    .end local v2    # "rate":D
    .end local v4    # "rx":J
    :cond_0
    return-void
.end method

.method public stopRequest()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ConnectionRateView$ConnectionRateSampler;->stopRequested:Z

    .line 102
    iget-object v0, p0, Lcom/android/systemui/statusbar/ConnectionRateView$ConnectionRateSampler;->runThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/systemui/statusbar/ConnectionRateView$ConnectionRateSampler;->runThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 105
    :cond_0
    return-void
.end method
