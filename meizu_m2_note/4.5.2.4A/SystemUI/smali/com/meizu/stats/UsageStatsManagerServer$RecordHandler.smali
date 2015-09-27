.class Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;
.super Landroid/os/Handler;
.source "UsageStatsManagerServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/stats/UsageStatsManagerServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecordHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/stats/UsageStatsManagerServer;


# direct methods
.method public constructor <init>(Lcom/meizu/stats/UsageStatsManagerServer;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    .line 115
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 116
    return-void
.end method

.method private insertEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V
    .locals 2
    .param p1, "event"    # Lcom/meizu/stats/UsageStatsProxy$Event;

    .prologue
    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;
    invoke-static {v1}, Lcom/meizu/stats/UsageStatsManagerServer;->access$700(Lcom/meizu/stats/UsageStatsManagerServer;)Lcom/meizu/stats/UsageStatsProviderHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/meizu/stats/UsageStatsProviderHelper;->insertEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V

    .line 245
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer;->mOnline:Z
    invoke-static {v1}, Lcom/meizu/stats/UsageStatsManagerServer;->access$500(Lcom/meizu/stats/UsageStatsManagerServer;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer;->mUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;
    invoke-static {v1}, Lcom/meizu/stats/UsageStatsManagerServer;->access$100(Lcom/meizu/stats/UsageStatsManagerServer;)Lcom/meizu/stats/UsageStatsUploader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/stats/UsageStatsUploader;->eventComein()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setSessionId(Lcom/meizu/stats/UsageStatsProxy$Event;)V
    .locals 5
    .param p1, "event"    # Lcom/meizu/stats/UsageStatsProxy$Event;

    .prologue
    .line 227
    const/4 v2, 0x0

    .line 228
    .local v2, "sessionid":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer;->mPackageSession:Ljava/util/Map;
    invoke-static {v3}, Lcom/meizu/stats/UsageStatsManagerServer;->access$400(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 229
    invoke-static {v2}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 230
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 231
    iget-object v3, p0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer;->mPackageSession:Ljava/util/Map;
    invoke-static {v3}, Lcom/meizu/stats/UsageStatsManagerServer;->access$400(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    :cond_0
    invoke-virtual {p1, v2}, Lcom/meizu/stats/UsageStatsProxy$Event;->setSessionid(Ljava/lang/String;)V

    .line 234
    const/4 v3, 0x3

    invoke-virtual {p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getType()I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 235
    const-string v3, "com.meizu.uxip.log"

    invoke-virtual {p1, v3}, Lcom/meizu/stats/UsageStatsProxy$Event;->setPackageName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :cond_1
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v1

    .line 238
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 19
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 121
    :try_start_0
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 123
    :pswitch_0
    const-string v4, "UsageStatsManagerServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ON_EVENT, mRecording="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer;->mRecording:Z
    invoke-static {v6}, Lcom/meizu/stats/UsageStatsManagerServer;->access$000(Lcom/meizu/stats/UsageStatsManagerServer;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", event="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer;->mRecording:Z
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->access$000(Lcom/meizu/stats/UsageStatsManagerServer;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 127
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/meizu/stats/UsageStatsProxy$Event;

    .line 128
    .local v3, "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->setSessionId(Lcom/meizu/stats/UsageStatsProxy$Event;)V

    .line 129
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->insertEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 220
    .end local v3    # "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    :catch_0
    move-exception v14

    .line 221
    .local v14, "e":Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 134
    .end local v14    # "e":Ljava/lang/Exception;
    :pswitch_1
    :try_start_1
    const-string v4, "UsageStatsManagerServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ON_EVENT_REALTIME, mRecording="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer;->mRecording:Z
    invoke-static {v6}, Lcom/meizu/stats/UsageStatsManagerServer;->access$000(Lcom/meizu/stats/UsageStatsManagerServer;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", event="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer;->mRecording:Z
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->access$000(Lcom/meizu/stats/UsageStatsManagerServer;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 138
    move-object/from16 v0, p1

    iget-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/meizu/stats/UsageStatsProxy$Event;

    .line 139
    .restart local v3    # "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->setSessionId(Lcom/meizu/stats/UsageStatsProxy$Event;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer;->mUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->access$100(Lcom/meizu/stats/UsageStatsManagerServer;)Lcom/meizu/stats/UsageStatsUploader;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/meizu/stats/UsageStatsUploader;->uploadEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 142
    const-string v4, "UsageStatsManagerServer"

    const-string v5, "ON_EVENT_REALTIME, uploadEvent unsuccessfully, store event."

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->insertEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 145
    :catch_1
    move-exception v14

    .line 146
    .restart local v14    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 152
    .end local v3    # "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    .end local v14    # "e":Ljava/lang/Exception;
    :pswitch_2
    const-string v4, "UsageStatsManagerServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ON_PAGE_START, mRecording="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer;->mRecording:Z
    invoke-static {v6}, Lcom/meizu/stats/UsageStatsManagerServer;->access$000(Lcom/meizu/stats/UsageStatsManagerServer;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", page="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer;->mRecording:Z
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->access$000(Lcom/meizu/stats/UsageStatsManagerServer;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 156
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/meizu/stats/UsageStatsManagerServer$Page;

    .line 157
    .local v17, "startPage":Lcom/meizu/stats/UsageStatsManagerServer$Page;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer;->mPages:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->access$200(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-gtz v4, :cond_2

    .line 158
    const-wide/16 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer;->mLastSwitchToBackground:J
    invoke-static {v6}, Lcom/meizu/stats/UsageStatsManagerServer;->access$300(Lcom/meizu/stats/UsageStatsManagerServer;)J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer;->mLastSwitchToBackground:J
    invoke-static {v6}, Lcom/meizu/stats/UsageStatsManagerServer;->access$300(Lcom/meizu/stats/UsageStatsManagerServer;)J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v6, 0x7530

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    .line 160
    :cond_1
    const-string v4, "UsageStatsManagerServer"

    const-string v5, "ON_PAGE_START, app boot, new session."

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer;->mPackageSession:Ljava/util/Map;
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->access$400(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lcom/meizu/stats/UsageStatsManagerServer$Page;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer;->mOnline:Z
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->access$500(Lcom/meizu/stats/UsageStatsManagerServer;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 163
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer;->mUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->access$100(Lcom/meizu/stats/UsageStatsManagerServer;)Lcom/meizu/stats/UsageStatsUploader;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/stats/UsageStatsUploader;->checkUpload()V

    .line 167
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer;->mPages:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->access$200(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/util/LinkedList;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 172
    .end local v17    # "startPage":Lcom/meizu/stats/UsageStatsManagerServer$Page;
    :pswitch_3
    const-string v4, "UsageStatsManagerServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ON_PAGE_STOP, mRecording="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer;->mRecording:Z
    invoke-static {v6}, Lcom/meizu/stats/UsageStatsManagerServer;->access$000(Lcom/meizu/stats/UsageStatsManagerServer;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", page="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer;->mRecording:Z
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->access$000(Lcom/meizu/stats/UsageStatsManagerServer;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 176
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Lcom/meizu/stats/UsageStatsManagerServer$Page;

    .line 177
    .local v18, "stopPage":Lcom/meizu/stats/UsageStatsManagerServer$Page;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer;->mPages:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->access$200(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 178
    .local v16, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/meizu/stats/UsageStatsManagerServer$Page;>;"
    if-eqz v16, :cond_0

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 182
    .local v12, "currentTime":J
    :cond_3
    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 183
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/meizu/stats/UsageStatsManagerServer$Page;

    .line 184
    .restart local v17    # "startPage":Lcom/meizu/stats/UsageStatsManagerServer$Page;
    invoke-virtual/range {v18 .. v18}, Lcom/meizu/stats/UsageStatsManagerServer$Page;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lcom/meizu/stats/UsageStatsManagerServer$Page;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 185
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->remove()V

    .line 186
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 187
    .local v11, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "start_time"

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer$Page;->time:J
    invoke-static/range {v17 .. v17}, Lcom/meizu/stats/UsageStatsManagerServer$Page;->access$600(Lcom/meizu/stats/UsageStatsManagerServer$Page;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v4, "stop_time"

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer$Page;->time:J
    invoke-static/range {v18 .. v18}, Lcom/meizu/stats/UsageStatsManagerServer$Page;->access$600(Lcom/meizu/stats/UsageStatsManagerServer$Page;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v11, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    new-instance v3, Lcom/meizu/stats/UsageStatsProxy$Event;

    invoke-virtual/range {v18 .. v18}, Lcom/meizu/stats/UsageStatsManagerServer$Page;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual/range {v18 .. v18}, Lcom/meizu/stats/UsageStatsManagerServer$Page;->getTime()J

    move-result-wide v6

    const/4 v8, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/meizu/stats/UsageStatsManagerServer$Page;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-direct/range {v3 .. v11}, Lcom/meizu/stats/UsageStatsProxy$Event;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 193
    .restart local v3    # "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->setSessionId(Lcom/meizu/stats/UsageStatsProxy$Event;)V

    .line 194
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->insertEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V

    .line 201
    .end local v3    # "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    .end local v11    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v17    # "startPage":Lcom/meizu/stats/UsageStatsManagerServer$Page;
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer;->mPages:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->access$200(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-gtz v4, :cond_5

    .line 202
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer$Page;->time:J
    invoke-static/range {v18 .. v18}, Lcom/meizu/stats/UsageStatsManagerServer$Page;->access$600(Lcom/meizu/stats/UsageStatsManagerServer$Page;)J

    move-result-wide v6

    # setter for: Lcom/meizu/stats/UsageStatsManagerServer;->mLastSwitchToBackground:J
    invoke-static {v4, v6, v7}, Lcom/meizu/stats/UsageStatsManagerServer;->access$302(Lcom/meizu/stats/UsageStatsManagerServer;J)J

    .line 203
    const-string v4, "UsageStatsManagerServer"

    const-string v5, "ON_PAGE_STOP, switch to background."

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer;->mPages:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->access$200(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x64

    .line 206
    .local v2, "delCount":I
    if-lez v2, :cond_0

    .line 207
    const-string v4, "UsageStatsManagerServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ON_PAGE_STOP, too many pages in stack, delete pages "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    if-ge v15, v2, :cond_0

    .line 209
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer;->mPages:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->access$200(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 208
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 196
    .end local v2    # "delCount":I
    .end local v15    # "i":I
    .restart local v17    # "startPage":Lcom/meizu/stats/UsageStatsManagerServer$Page;
    :cond_6
    # getter for: Lcom/meizu/stats/UsageStatsManagerServer$Page;->time:J
    invoke-static/range {v17 .. v17}, Lcom/meizu/stats/UsageStatsManagerServer$Page;->access$600(Lcom/meizu/stats/UsageStatsManagerServer$Page;)J

    move-result-wide v4

    sub-long v4, v12, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x2932e00

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 197
    const-string v4, "UsageStatsManagerServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ON_PAGE_STOP, page time out :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_1

    .line 216
    .end local v12    # "currentTime":J
    .end local v16    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/meizu/stats/UsageStatsManagerServer$Page;>;"
    .end local v17    # "startPage":Lcom/meizu/stats/UsageStatsManagerServer$Page;
    .end local v18    # "stopPage":Lcom/meizu/stats/UsageStatsManagerServer$Page;
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    # getter for: Lcom/meizu/stats/UsageStatsManagerServer;->mPages:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManagerServer;->access$200(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->clear()V

    .line 217
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->this$0:Lcom/meizu/stats/UsageStatsManagerServer;

    const-wide/16 v6, 0x0

    # setter for: Lcom/meizu/stats/UsageStatsManagerServer;->mLastSwitchToBackground:J
    invoke-static {v4, v6, v7}, Lcom/meizu/stats/UsageStatsManagerServer;->access$302(Lcom/meizu/stats/UsageStatsManagerServer;J)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 121
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
