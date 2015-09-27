.class Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;
.super Landroid/os/Handler;
.source "UsageStatsUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/stats/UsageStatsUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UploaderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/stats/UsageStatsUploader;


# direct methods
.method public constructor <init>(Lcom/meizu/stats/UsageStatsUploader;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 515
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    .line 516
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 517
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x1

    .line 522
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 586
    :cond_0
    :goto_0
    return-void

    .line 524
    :pswitch_0
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # invokes: Lcom/meizu/stats/UsageStatsUploader;->isNetworkWorking()Z
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsUploader;->access$200(Lcom/meizu/stats/UsageStatsUploader;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 525
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mNetworkConnected:Z
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsUploader;->access$300(Lcom/meizu/stats/UsageStatsUploader;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 526
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    const/4 v5, 0x1

    # setter for: Lcom/meizu/stats/UsageStatsUploader;->mNetworkConnected:Z
    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatsUploader;->access$302(Lcom/meizu/stats/UsageStatsUploader;Z)Z

    .line 527
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-virtual {v4}, Lcom/meizu/stats/UsageStatsUploader;->checkUpload()V

    .line 532
    :cond_1
    :goto_1
    const-string v4, "UsageStatsUploader"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NETWORK_STATE_CHANGED, mNetworkConnected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mNetworkConnected:Z
    invoke-static {v6}, Lcom/meizu/stats/UsageStatsUploader;->access$300(Lcom/meizu/stats/UsageStatsUploader;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 583
    :catch_0
    move-exception v0

    .line 584
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 529
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mNetworkConnected:Z
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsUploader;->access$300(Lcom/meizu/stats/UsageStatsUploader;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 530
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    const/4 v5, 0x0

    # setter for: Lcom/meizu/stats/UsageStatsUploader;->mNetworkConnected:Z
    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatsUploader;->access$302(Lcom/meizu/stats/UsageStatsUploader;Z)Z

    goto :goto_1

    .line 536
    :pswitch_1
    const-string v4, "UsageStatsUploader"

    const-string v5, "UPLOAD_TIME_ALARM"

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-virtual {v4}, Lcom/meizu/stats/UsageStatsUploader;->checkUpload()V

    .line 538
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    # invokes: Lcom/meizu/stats/UsageStatsUploader;->sendUploadAlarm(J)V
    invoke-static {v4, v6, v7}, Lcom/meizu/stats/UsageStatsUploader;->access$400(Lcom/meizu/stats/UsageStatsUploader;J)V

    goto :goto_0

    .line 542
    :pswitch_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 543
    .local v2, "now":J
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mLastAlarmTime:J
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsUploader;->access$500(Lcom/meizu/stats/UsageStatsUploader;)J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    .line 544
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-virtual {v4}, Lcom/meizu/stats/UsageStatsUploader;->checkUpload()V

    .line 545
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # invokes: Lcom/meizu/stats/UsageStatsUploader;->sendUploadAlarm(J)V
    invoke-static {v4, v2, v3}, Lcom/meizu/stats/UsageStatsUploader;->access$400(Lcom/meizu/stats/UsageStatsUploader;J)V

    goto :goto_0

    .line 550
    .end local v2    # "now":J
    :pswitch_3
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    invoke-virtual {v4}, Lcom/meizu/stats/UsageStatsUploader;->checkUpload()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 555
    :pswitch_4
    :try_start_2
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mHandler:Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsUploader;->access$600(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->removeMessages(I)V

    .line 556
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsUploader;->access$000(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsProviderHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/stats/UsageStatsProviderHelper;->getEventsCount()I

    move-result v4

    if-lez v4, :cond_6

    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # invokes: Lcom/meizu/stats/UsageStatsUploader;->isNetworkWorking()Z
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsUploader;->access$200(Lcom/meizu/stats/UsageStatsUploader;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 557
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsUploader;->access$000(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsProviderHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/stats/UsageStatsProviderHelper;->clearOldData()I

    .line 558
    const/4 v1, 0x0

    .line 559
    .local v1, "uploaded":Z
    :cond_3
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # invokes: Lcom/meizu/stats/UsageStatsUploader;->uploadEvents()Z
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsUploader;->access$700(Lcom/meizu/stats/UsageStatsUploader;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 560
    if-nez v1, :cond_4

    .line 561
    const/4 v1, 0x1

    .line 563
    :cond_4
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsUploader;->access$000(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsProviderHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/stats/UsageStatsProviderHelper;->getEventsCount()I

    move-result v4

    if-ge v4, v6, :cond_3

    .line 567
    :cond_5
    if-eqz v1, :cond_6

    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsUploader;->access$800(Lcom/meizu/stats/UsageStatsUploader;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 568
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 569
    .restart local v2    # "now":J
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # invokes: Lcom/meizu/stats/UsageStatsUploader;->setLastUploadTime(J)V
    invoke-static {v4, v2, v3}, Lcom/meizu/stats/UsageStatsUploader;->access$900(Lcom/meizu/stats/UsageStatsUploader;J)V

    .line 570
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # invokes: Lcom/meizu/stats/UsageStatsUploader;->sendUploadAlarm(J)V
    invoke-static {v4, v2, v3}, Lcom/meizu/stats/UsageStatsUploader;->access$400(Lcom/meizu/stats/UsageStatsUploader;J)V

    .line 573
    .end local v1    # "uploaded":Z
    .end local v2    # "now":J
    :cond_6
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsUploader;->access$1000(Lcom/meizu/stats/UsageStatsUploader;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 577
    :goto_2
    :try_start_3
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsUploader;->access$800(Lcom/meizu/stats/UsageStatsUploader;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 578
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->this$0:Lcom/meizu/stats/UsageStatsUploader;

    # getter for: Lcom/meizu/stats/UsageStatsUploader;->mHandler:Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsUploader;->access$600(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    move-result-object v4

    const/4 v5, 0x1

    const-wide/32 v6, 0x1b7740

    invoke-virtual {v4, v5, v6, v7}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 574
    :catch_1
    move-exception v0

    .line 575
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    .line 522
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
