.class Lcom/meizu/stats/UsageStatsUploader$TimeChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsageStatsUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/stats/UsageStatsUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/stats/UsageStatsUploader;


# direct methods
.method private constructor <init>(Lcom/meizu/stats/UsageStatsUploader;)V
    .locals 0

    .prologue
    .line 590
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsUploader$TimeChangedReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/stats/UsageStatsUploader;Lcom/meizu/stats/UsageStatsUploader$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/stats/UsageStatsUploader;
    .param p2, "x1"    # Lcom/meizu/stats/UsageStatsUploader$1;

    .prologue
    .line 590
    invoke-direct {p0, p1}, Lcom/meizu/stats/UsageStatsUploader$TimeChangedReceiver;-><init>(Lcom/meizu/stats/UsageStatsUploader;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x5

    .line 594
    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 595
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader$TimeChangedReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mPowerConnecting:Z
    invoke-static {v0}, Lcom/meizu/stats/UsageStatsUploader;->access$1100(Lcom/meizu/stats/UsageStatsUploader;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 596
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader$TimeChangedReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    const/4 v1, 0x1

    # setter for: Lcom/meizu/stats/UsageStatsUploader;->mPowerConnecting:Z
    invoke-static {v0, v1}, Lcom/meizu/stats/UsageStatsUploader;->access$1102(Lcom/meizu/stats/UsageStatsUploader;Z)Z

    .line 598
    :cond_0
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader$TimeChangedReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mHandler:Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;
    invoke-static {v0}, Lcom/meizu/stats/UsageStatsUploader;->access$600(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->removeMessages(I)V

    .line 599
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader$TimeChangedReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mHandler:Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;
    invoke-static {v0}, Lcom/meizu/stats/UsageStatsUploader;->access$600(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->sendEmptyMessage(I)Z

    .line 600
    const-string v0, "UsageStatsUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_POWER_CONNECTED, mPowerConnecting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/stats/UsageStatsUploader$TimeChangedReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mPowerConnecting:Z
    invoke-static {v2}, Lcom/meizu/stats/UsageStatsUploader;->access$1100(Lcom/meizu/stats/UsageStatsUploader;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    :cond_1
    :goto_0
    return-void

    .line 601
    :cond_2
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 602
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader$TimeChangedReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mPowerConnecting:Z
    invoke-static {v0}, Lcom/meizu/stats/UsageStatsUploader;->access$1100(Lcom/meizu/stats/UsageStatsUploader;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 603
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader$TimeChangedReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    const/4 v1, 0x0

    # setter for: Lcom/meizu/stats/UsageStatsUploader;->mPowerConnecting:Z
    invoke-static {v0, v1}, Lcom/meizu/stats/UsageStatsUploader;->access$1102(Lcom/meizu/stats/UsageStatsUploader;Z)Z

    .line 605
    :cond_3
    const-string v0, "UsageStatsUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ACTION_POWER_DISCONNECTED, mPowerConnecting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/stats/UsageStatsUploader$TimeChangedReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mPowerConnecting:Z
    invoke-static {v2}, Lcom/meizu/stats/UsageStatsUploader;->access$1100(Lcom/meizu/stats/UsageStatsUploader;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 606
    :cond_4
    const-string v0, "android.intent.action.TIME_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader$TimeChangedReceiver;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mHandler:Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;
    invoke-static {v0}, Lcom/meizu/stats/UsageStatsUploader;->access$600(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
