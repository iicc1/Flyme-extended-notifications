.class public Lcom/meizu/stats/UsageStatsUploader;
.super Ljava/lang/Object;
.source "UsageStatsUploader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/stats/UsageStatsUploader$TimeChangedReceiver;,
        Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;
    }
.end annotation


# static fields
.field private static sLock:Ljava/lang/Object;

.field private static volatile sUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEventCome:I

.field private mHandler:Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

.field private mLastAlarmTime:J

.field private mLastUploadTime:J

.field private mNetworkConnected:Z

.field private mOnline:Z

.field private mPackageSession:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/stats/UsageStatsProxy$Event;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mParcelLimit:I

.field private volatile mPowerConnecting:Z

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mStatsUploadThread:Landroid/os/HandlerThread;

.field private volatile mUpload:Z

.field private mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

.field private mUsageStatsReceiver:Lcom/meizu/stats/UsageStatsReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/stats/UsageStatsUploader;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZZ)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "online"    # Z
    .param p3, "upload"    # Z

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "StatsUploadThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/meizu/stats/UsageStatsUploader;->mStatsUploadThread:Landroid/os/HandlerThread;

    .line 74
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    .line 81
    iput-boolean v8, p0, Lcom/meizu/stats/UsageStatsUploader;->mPowerConnecting:Z

    .line 84
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    .line 85
    iput-boolean p2, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    .line 86
    iput-boolean p3, p0, Lcom/meizu/stats/UsageStatsUploader;->mUpload:Z

    .line 87
    iget-boolean v3, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    if-eqz v3, :cond_5

    sget v3, Lcom/meizu/stats/UsageStatsConstants;->ONLINE_EVENTS_PARCEL_LIMIT:I

    :goto_0
    iput v3, p0, Lcom/meizu/stats/UsageStatsUploader;->mParcelLimit:I

    .line 89
    iget-object v3, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    invoke-static {v3, v4}, Lcom/meizu/stats/UsageStatsProviderHelper;->getInstance(Landroid/content/Context;Z)Lcom/meizu/stats/UsageStatsProviderHelper;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    .line 90
    iget-object v3, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    const-string v4, "com.meizu.stats"

    invoke-virtual {v3, v4, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 91
    iget-object v3, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v4, "last_upload_time"

    const-wide/16 v6, 0x0

    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mLastUploadTime:J

    .line 92
    iget-boolean v3, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    if-nez v3, :cond_0

    .line 93
    invoke-static {}, Lcom/meizu/stats/UsageStatusLog;->initLog()V

    .line 95
    :cond_0
    iget-object v3, p0, Lcom/meizu/stats/UsageStatsUploader;->mStatsUploadThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 96
    new-instance v3, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mStatsUploadThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;-><init>(Lcom/meizu/stats/UsageStatsUploader;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/meizu/stats/UsageStatsUploader;->mHandler:Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    .line 97
    iget-boolean v3, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    if-eqz v3, :cond_1

    .line 98
    new-instance v3, Lcom/meizu/stats/UsageStatsReceiver;

    invoke-direct {v3}, Lcom/meizu/stats/UsageStatsReceiver;-><init>()V

    iput-object v3, p0, Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsReceiver:Lcom/meizu/stats/UsageStatsReceiver;

    .line 99
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 100
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    :try_start_0
    iget-object v3, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsReceiver:Lcom/meizu/stats/UsageStatsReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    :goto_1
    iget-object v3, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsReceiver:Lcom/meizu/stats/UsageStatsReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 107
    .end local v1    # "filter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v3, p0, Lcom/meizu/stats/UsageStatsUploader;->mHandler:Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    new-instance v4, Lcom/meizu/stats/UsageStatsUploader$1;

    invoke-direct {v4, p0}, Lcom/meizu/stats/UsageStatsUploader$1;-><init>(Lcom/meizu/stats/UsageStatsUploader;)V

    invoke-virtual {v3, v4}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->post(Ljava/lang/Runnable;)Z

    .line 113
    iget-boolean v3, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    if-nez v3, :cond_3

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 115
    .local v0, "batteryfilter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    iget-object v3, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    .line 117
    .local v2, "result":Landroid/content/Intent;
    if-eqz v2, :cond_2

    const-string v3, "plugged"

    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_2

    .line 118
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/meizu/stats/UsageStatsUploader;->mPowerConnecting:Z

    .line 120
    :cond_2
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 121
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 122
    const-string v3, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 123
    const-string v3, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object v3, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/meizu/stats/UsageStatsUploader$TimeChangedReceiver;

    invoke-direct {v4, p0, v9}, Lcom/meizu/stats/UsageStatsUploader$TimeChangedReceiver;-><init>(Lcom/meizu/stats/UsageStatsUploader;Lcom/meizu/stats/UsageStatsUploader$1;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 126
    .end local v0    # "batteryfilter":Landroid/content/IntentFilter;
    .end local v1    # "filter":Landroid/content/IntentFilter;
    .end local v2    # "result":Landroid/content/Intent;
    :cond_3
    iget-boolean v3, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    if-nez v3, :cond_4

    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/meizu/stats/UsageStatsUploader;->sendUploadAlarm(J)V

    .line 128
    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsUploader;->checkUpload()V

    .line 130
    :cond_4
    return-void

    .line 87
    :cond_5
    sget v3, Lcom/meizu/stats/UsageStatsConstants;->EVENTS_PARCEL_LIMIT:I

    goto/16 :goto_0

    .line 103
    .restart local v1    # "filter":Landroid/content/IntentFilter;
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsProviderHelper;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/meizu/stats/UsageStatsUploader;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/meizu/stats/UsageStatsUploader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mPowerConnecting:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/meizu/stats/UsageStatsUploader;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/meizu/stats/UsageStatsUploader;->mPowerConnecting:Z

    return p1
.end method

.method static synthetic access$200(Lcom/meizu/stats/UsageStatsUploader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsUploader;->isNetworkWorking()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/meizu/stats/UsageStatsUploader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mNetworkConnected:Z

    return v0
.end method

.method static synthetic access$302(Lcom/meizu/stats/UsageStatsUploader;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/meizu/stats/UsageStatsUploader;->mNetworkConnected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/meizu/stats/UsageStatsUploader;J)V
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;
    .param p1, "x1"    # J

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/meizu/stats/UsageStatsUploader;->sendUploadAlarm(J)V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/stats/UsageStatsUploader;)J
    .locals 2
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;

    .prologue
    .line 51
    iget-wide v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mLastAlarmTime:J

    return-wide v0
.end method

.method static synthetic access$600(Lcom/meizu/stats/UsageStatsUploader;)Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mHandler:Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/stats/UsageStatsUploader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsUploader;->uploadEvents()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/meizu/stats/UsageStatsUploader;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    return v0
.end method

.method static synthetic access$900(Lcom/meizu/stats/UsageStatsUploader;J)V
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsUploader;
    .param p1, "x1"    # J

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/meizu/stats/UsageStatsUploader;->setLastUploadTime(J)V

    return-void
.end method

.method private clearUploadedEvents()V
    .locals 6

    .prologue
    .line 389
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 390
    .local v2, "packageSessionEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 391
    .local v3, "sessionMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    invoke-virtual {v5, v4}, Lcom/meizu/stats/UsageStatsProviderHelper;->deleteEvent(Ljava/util/Collection;)I

    goto :goto_0

    .line 394
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "packageSessionEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;>;"
    .end local v3    # "sessionMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :cond_1
    return-void
.end method

.method private generateMultipartEntity([B)Lcom/meizu/experiencedatasync/net/multipart/MultipartEntity;
    .locals 14
    .param p1, "pushData"    # [B

    .prologue
    .line 332
    invoke-static {p1}, Lcom/meizu/experiencedatasync/util/Utils;->getMD5([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    .line 333
    .local v6, "md5":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v12, v0

    .line 334
    .local v12, "tsValue":I
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    add-int/2addr v0, v12

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 335
    .local v8, "nonce":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 337
    .local v11, "ts":Ljava/lang/String;
    const/4 v0, 0x5

    new-array v9, v0, [Lcom/meizu/experiencedatasync/net/multipart/Part;

    .line 338
    .local v9, "partArray":[Lcom/meizu/experiencedatasync/net/multipart/Part;
    const/4 v0, 0x0

    new-instance v1, Lcom/meizu/experiencedatasync/net/multipart/StringPart;

    const-string v2, "nonce"

    invoke-direct {v1, v2, v8}, Lcom/meizu/experiencedatasync/net/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v9, v0

    .line 339
    const/4 v0, 0x1

    new-instance v1, Lcom/meizu/experiencedatasync/net/multipart/StringPart;

    const-string v2, "ts"

    invoke-direct {v1, v2, v11}, Lcom/meizu/experiencedatasync/net/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v9, v0

    .line 340
    const/4 v0, 0x2

    new-instance v1, Lcom/meizu/experiencedatasync/net/multipart/StringPart;

    const-string v2, "md5"

    invoke-direct {v1, v2, v6}, Lcom/meizu/experiencedatasync/net/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v9, v0

    .line 341
    const-string v0, "key=OjUiuYe80AUYnbgBNT6&nonce=%s&ts=%s&md5=%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v8, v1, v2

    const/4 v2, 0x1

    aput-object v11, v1, v2

    const/4 v2, 0x2

    aput-object v6, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->getMD5([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    .line 342
    .local v10, "sign":Ljava/lang/String;
    const/4 v0, 0x3

    new-instance v1, Lcom/meizu/experiencedatasync/net/multipart/StringPart;

    const-string v2, "sign"

    invoke-direct {v1, v2, v10}, Lcom/meizu/experiencedatasync/net/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v1, v9, v0

    .line 343
    const/4 v13, 0x4

    new-instance v0, Lcom/meizu/experiencedatasync/net/multipart/DataPart;

    const-string v1, "collect"

    const-string v2, "collect"

    const/4 v4, 0x0

    const-string v5, "UTF-8"

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/meizu/experiencedatasync/net/multipart/DataPart;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v9, v13

    .line 344
    new-instance v7, Lcom/meizu/experiencedatasync/net/multipart/MultipartEntity;

    invoke-direct {v7, v9}, Lcom/meizu/experiencedatasync/net/multipart/MultipartEntity;-><init>([Lcom/meizu/experiencedatasync/net/multipart/Part;)V

    .line 345
    .local v7, "multipartEntity":Lcom/meizu/experiencedatasync/net/multipart/MultipartEntity;
    return-object v7
.end method

.method private generateUploadData()Lorg/json/JSONObject;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 190
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    move-object v2, v3

    .line 206
    :goto_0
    return-object v2

    .line 193
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 195
    .local v2, "uploadData":Lorg/json/JSONObject;
    :try_start_0
    const-string v4, "ver"

    const-string v5, "2.0"

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    invoke-direct {p0, v2}, Lcom/meizu/stats/UsageStatsUploader;->parcelDeviceInfo(Lorg/json/JSONObject;)V

    .line 197
    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsUploader;->parcelPackages()Lorg/json/JSONArray;

    move-result-object v0

    .line 198
    .local v0, "apps":Lorg/json/JSONArray;
    if-nez v0, :cond_1

    move-object v2, v3

    .line 199
    goto :goto_0

    .line 201
    :cond_1
    const-string v4, "apps"

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 203
    .end local v0    # "apps":Lorg/json/JSONArray;
    :catch_0
    move-exception v1

    .line 204
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    move-object v2, v3

    .line 206
    goto :goto_0
.end method

.method private getEventType(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 289
    packed-switch p1, :pswitch_data_0

    .line 300
    const-string v0, ""

    :goto_0
    return-object v0

    .line 291
    :pswitch_0
    const-string v0, "action_x"

    goto :goto_0

    .line 294
    :pswitch_1
    const-string v0, "page"

    goto :goto_0

    .line 297
    :pswitch_2
    const-string v0, "log"

    goto :goto_0

    .line 289
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;ZZ)Lcom/meizu/stats/UsageStatsUploader;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "online"    # Z
    .param p2, "upload"    # Z

    .prologue
    .line 133
    sget-object v0, Lcom/meizu/stats/UsageStatsUploader;->sUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    if-nez v0, :cond_1

    .line 134
    sget-object v1, Lcom/meizu/stats/UsageStatsUploader;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 135
    :try_start_0
    sget-object v0, Lcom/meizu/stats/UsageStatsUploader;->sUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lcom/meizu/stats/UsageStatsUploader;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/stats/UsageStatsUploader;-><init>(Landroid/content/Context;ZZ)V

    sput-object v0, Lcom/meizu/stats/UsageStatsUploader;->sUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    .line 138
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :cond_1
    sget-object v0, Lcom/meizu/stats/UsageStatsUploader;->sUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    return-object v0

    .line 138
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getPackageVersion(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 315
    iget-object v3, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 316
    .local v2, "pm":Landroid/content/pm/PackageManager;
    if-nez v2, :cond_0

    .line 317
    const-string v3, ""

    .line 328
    :goto_0
    return-object v3

    .line 319
    :cond_0
    const/4 v1, 0x0

    .line 321
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 325
    :goto_1
    if-eqz v1, :cond_1

    .line 326
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 328
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    const-string v3, ""

    goto :goto_0
.end method

.method private isNetworkWorking()Z
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->isWiFiWorking(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->isNetworkWorking(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    :cond_0
    const/4 v0, 0x1

    .line 509
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUploadSuccess(Ljava/lang/String;)Z
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 374
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 385
    :cond_0
    :goto_0
    return v2

    .line 378
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 379
    .local v1, "object":Lorg/json/JSONObject;
    const/16 v3, 0xc8

    const-string v4, "code"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-ne v3, v4, :cond_0

    .line 380
    const/4 v2, 0x1

    goto :goto_0

    .line 382
    .end local v1    # "object":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private parcelDeviceInfo(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "data"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 210
    const-string v0, "device"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    const-string v0, "os_version"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    const-string v0, "imei"

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->getIMEI(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    const-string v0, "country"

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->getCountry(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    const-string v0, "operator"

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->getOperater(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    const-string v0, "root"

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->isRoot(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 216
    const-string v0, "sn"

    invoke-static {}, Lcom/meizu/experiencedatasync/util/Utils;->getSN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 217
    const-string v0, "flyme_uid"

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->getFlymeUid(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 218
    const-string v0, "flyme_ver"

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const-string v0, "mac_address"

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->getMACAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    const-string v0, "product_model"

    sget-object v1, Lcom/meizu/experiencedatasync/util/Utils;->PRODUCT_MODEL:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    const-string v0, "build_mask"

    sget-object v1, Lcom/meizu/experiencedatasync/util/Utils;->BUILD_MASK:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 222
    return-void
.end method

.method private parcelEvents()Lorg/json/JSONObject;
    .locals 12

    .prologue
    .line 144
    iget-object v9, p0, Lcom/meizu/stats/UsageStatsUploader;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    iget v10, p0, Lcom/meizu/stats/UsageStatsUploader;->mParcelLimit:I

    invoke-virtual {v9, v10}, Lcom/meizu/stats/UsageStatsProviderHelper;->getEvents(I)Landroid/database/Cursor;

    move-result-object v0

    .line 145
    .local v0, "cursor":Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 146
    const/4 v9, 0x0

    .line 186
    :goto_0
    return-object v9

    .line 148
    :cond_0
    const-string v9, "UsageStatsUploader"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parcelEvents, count="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    iget-object v9, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    invoke-interface {v9}, Ljava/util/Map;->clear()V

    .line 150
    const/4 v7, 0x0

    .line 151
    .local v7, "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    const/4 v3, 0x0

    .line 152
    .local v3, "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    const/4 v2, 0x0

    .line 153
    .local v2, "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    const/4 v5, 0x0

    .line 154
    .local v5, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "sessionid":Ljava/lang/String;
    move-object v4, v3

    .end local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .local v4, "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    move-object v8, v7

    .line 156
    .end local v7    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .local v8, "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 157
    invoke-static {v0}, Lcom/meizu/stats/UsageStatsProviderHelper;->creatEvent(Landroid/database/Cursor;)Lcom/meizu/stats/UsageStatsProxy$Event;

    move-result-object v2

    .line 158
    if-eqz v2, :cond_1

    .line 161
    invoke-virtual {v2}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 162
    invoke-virtual {v2}, Lcom/meizu/stats/UsageStatsProxy$Event;->getSessionid()Ljava/lang/String;

    move-result-object v6

    .line 163
    iget-object v9, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 164
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .end local v8    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v7    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :try_start_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 166
    .end local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    :try_start_2
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-interface {v7, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v9, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    invoke-interface {v9, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v4, v3

    .end local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    move-object v8, v7

    .end local v7    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v8    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    goto :goto_1

    .line 170
    :cond_2
    :try_start_3
    iget-object v9, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    invoke-interface {v9, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 171
    .end local v8    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v7    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :try_start_4
    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 172
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 173
    .end local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    :try_start_5
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-interface {v7, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-object v4, v3

    .end local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    move-object v8, v7

    .end local v7    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v8    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    goto :goto_1

    .line 176
    .end local v8    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v7    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :cond_3
    :try_start_6
    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 177
    .end local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    :try_start_7
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v4, v3

    .end local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    move-object v8, v7

    .end local v7    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v8    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    goto :goto_1

    .line 184
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v3, v4

    .end local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    move-object v7, v8

    .line 186
    .end local v8    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v7    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :goto_2
    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsUploader;->generateUploadData()Lorg/json/JSONObject;

    move-result-object v9

    goto/16 :goto_0

    .line 181
    .end local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .end local v7    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v8    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :catch_0
    move-exception v1

    move-object v3, v4

    .end local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    move-object v7, v8

    .line 182
    .end local v8    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .local v1, "e":Ljava/lang/Exception;
    .restart local v7    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :goto_3
    :try_start_8
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 184
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .end local v7    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v8    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :catchall_0
    move-exception v9

    move-object v3, v4

    .end local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    move-object v7, v8

    .end local v8    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    .restart local v7    # "sessions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :goto_4
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw v9

    .end local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    goto :goto_4

    :catchall_2
    move-exception v9

    goto :goto_4

    .line 181
    .end local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    :catch_1
    move-exception v1

    move-object v3, v4

    .end local v4    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .restart local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_3
.end method

.method private parcelPackages()Lorg/json/JSONArray;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 225
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 226
    .local v1, "apps":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .line 227
    .local v5, "version":Ljava/lang/String;
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 228
    .local v3, "packageName":Ljava/lang/String;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 229
    .local v0, "app":Lorg/json/JSONObject;
    const-string v6, "package"

    invoke-virtual {v0, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 230
    const-string v6, "com.meizu.uxip.log"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 231
    const-string v5, "1.0"

    .line 235
    :goto_1
    const-string v6, "version"

    invoke-virtual {v0, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    invoke-direct {p0, v3}, Lcom/meizu/stats/UsageStatsUploader;->parcelSessions(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 237
    .local v4, "sessions":Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    .line 240
    const-string v6, "sessions"

    invoke-virtual {v0, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 233
    .end local v4    # "sessions":Lorg/json/JSONArray;
    :cond_1
    invoke-direct {p0, v3}, Lcom/meizu/stats/UsageStatsUploader;->getPackageVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 243
    .end local v0    # "app":Lorg/json/JSONObject;
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-lez v6, :cond_3

    .end local v1    # "apps":Lorg/json/JSONArray;
    :goto_2
    return-object v1

    .restart local v1    # "apps":Lorg/json/JSONArray;
    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private parcelSessions(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 14
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 247
    iget-object v11, p0, Lcom/meizu/stats/UsageStatsUploader;->mPackageSession:Ljava/util/Map;

    invoke-interface {v11, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    .line 248
    .local v8, "sessionMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/Map;->size()I

    move-result v11

    const/4 v12, 0x1

    if-ge v11, v12, :cond_2

    .line 249
    :cond_0
    const/4 v10, 0x0

    .line 285
    :cond_1
    :goto_0
    return-object v10

    .line 251
    :cond_2
    new-instance v10, Lorg/json/JSONArray;

    invoke-direct {v10}, Lorg/json/JSONArray;-><init>()V

    .line 252
    .local v10, "sessions":Lorg/json/JSONArray;
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 253
    .local v9, "sessionMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 254
    .local v3, "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v11

    const/4 v12, 0x1

    if-lt v11, v12, :cond_3

    .line 257
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 258
    .local v7, "session":Lorg/json/JSONObject;
    const-string v11, "sid"

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 260
    .local v4, "events":Lorg/json/JSONArray;
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/stats/UsageStatsProxy$Event;

    .line 261
    .local v1, "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 262
    .local v2, "eventJson":Lorg/json/JSONObject;
    const-string v11, "type"

    invoke-virtual {v1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getType()I

    move-result v12

    invoke-direct {p0, v12}, Lcom/meizu/stats/UsageStatsUploader;->getEventType(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    const-string v11, "name"

    invoke-virtual {v1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const/4 v11, 0x2

    invoke-virtual {v1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getType()I

    move-result v12

    if-ne v11, v12, :cond_5

    .line 265
    invoke-virtual {v1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getProperties()Ljava/lang/Object;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 267
    :try_start_0
    const-string v12, "launch"

    invoke-virtual {v1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getProperties()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONObject;

    const-string v13, "start_time"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v2, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    const-string v12, "terminate"

    invoke-virtual {v1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getProperties()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/json/JSONObject;

    const-string v13, "stop_time"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v2, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :cond_4
    :goto_3
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 271
    :catch_0
    move-exception v0

    .line 272
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 276
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    const-string v11, "time"

    invoke-virtual {v1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getTime()J

    move-result-wide v12

    invoke-virtual {v2, v11, v12, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 277
    const-string v11, "page"

    invoke-virtual {v1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    const-string v11, "value"

    invoke-virtual {v1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getProperties()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    .line 282
    .end local v1    # "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    .end local v2    # "eventJson":Lorg/json/JSONObject;
    :cond_6
    const-string v11, "events"

    invoke-virtual {v7, v11, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    invoke-virtual {v10, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_1

    .line 285
    .end local v3    # "eventList":Ljava/util/List;, "Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    .end local v4    # "events":Lorg/json/JSONArray;
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "session":Lorg/json/JSONObject;
    .end local v9    # "sessionMapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/meizu/stats/UsageStatsProxy$Event;>;>;"
    :cond_7
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-gtz v11, :cond_1

    const/4 v10, 0x0

    goto/16 :goto_0
.end method

.method static receiverNotifyUpload(Z)V
    .locals 2
    .param p0, "isAlarm"    # Z

    .prologue
    .line 450
    sget-object v0, Lcom/meizu/stats/UsageStatsUploader;->sUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    if-eqz v0, :cond_0

    .line 451
    if-eqz p0, :cond_1

    .line 452
    sget-object v0, Lcom/meizu/stats/UsageStatsUploader;->sUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/meizu/stats/UsageStatsUploader;->sendEmptyMessage(I)V

    .line 457
    :cond_0
    :goto_0
    return-void

    .line 454
    :cond_1
    sget-object v0, Lcom/meizu/stats/UsageStatsUploader;->sUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/meizu/stats/UsageStatsUploader;->sendEmptyMessage(I)V

    goto :goto_0
.end method

.method private sendEmptyMessage(I)V
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 460
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mHandler:Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    invoke-virtual {v0, p1}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->sendEmptyMessage(I)Z

    .line 461
    return-void
.end method

.method private sendUploadAlarm(J)V
    .locals 7
    .param p1, "time"    # J

    .prologue
    const/4 v5, 0x1

    .line 489
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.meizu.usagestats.check_upload"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x8000000

    invoke-static {v2, v5, v3, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 491
    .local v1, "pIntent":Landroid/app/PendingIntent;
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 492
    .local v0, "alarmManager":Landroid/app/AlarmManager;
    if-nez v0, :cond_0

    .line 498
    :goto_0
    return-void

    .line 495
    :cond_0
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 496
    const-wide/32 v2, 0x1b77400

    add-long/2addr v2, p1

    invoke-virtual {v0, v5, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 497
    iput-wide p1, p0, Lcom/meizu/stats/UsageStatsUploader;->mLastAlarmTime:J

    goto :goto_0
.end method

.method private setLastUploadTime(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 501
    iput-wide p1, p0, Lcom/meizu/stats/UsageStatsUploader;->mLastUploadTime:J

    .line 502
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "last_upload_time"

    iget-wide v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mLastUploadTime:J

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 503
    return-void
.end method

.method private uploadEvents()Z
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 349
    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsUploader;->parcelEvents()Lorg/json/JSONObject;

    move-result-object v0

    .line 350
    .local v0, "data":Lorg/json/JSONObject;
    if-nez v0, :cond_1

    .line 370
    :cond_0
    :goto_0
    return v4

    .line 353
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 354
    .local v1, "dataStr":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 357
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/meizu/stats/UsageStatsUploader;->generateMultipartEntity([B)Lcom/meizu/experiencedatasync/net/multipart/MultipartEntity;

    move-result-object v3

    .line 358
    .local v3, "uploadData":Lcom/meizu/experiencedatasync/net/multipart/MultipartEntity;
    if-eqz v3, :cond_0

    .line 359
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v5, 0x3

    if-ge v2, v5, :cond_0

    .line 360
    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsUploader;->isNetworkWorking()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 363
    const-string v5, "https://uxip.meizu.com/api/upload"

    invoke-static {v5, v3}, Lcom/meizu/experiencedatasync/net/HttpHelper;->executeHttpsPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/meizu/stats/UsageStatsUploader;->isUploadSuccess(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 364
    const-string v4, "UsageStatsUploader"

    const-string v5, "uploadEvents, upload successfully."

    invoke-static {v4, v5}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsUploader;->clearUploadedEvents()V

    .line 366
    const/4 v4, 0x1

    goto :goto_0

    .line 359
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method checkUpload()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 474
    iget-boolean v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mUpload:Z

    if-nez v2, :cond_1

    .line 475
    const-string v2, "UsageStatsUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkUpload, mUpload="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mUpload:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mLastUploadTime:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 479
    .local v0, "intervalTime":J
    const-string v2, "UsageStatsUploader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkUpload, mOnline="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", intervalTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-wide/32 v4, 0x36ee80

    div-long v4, v0, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "h, mPowerConnecting="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mPowerConnecting:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mLastUploadTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mLastUploadTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-boolean v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mOnline:Z

    if-nez v2, :cond_2

    const-wide/16 v2, 0x0

    iget-wide v4, p0, Lcom/meizu/stats/UsageStatsUploader;->mLastUploadTime:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    const-wide/32 v2, 0x5265c00

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    iget-boolean v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mPowerConnecting:Z

    if-eqz v2, :cond_0

    const-wide/32 v2, 0x1b77400

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 483
    :cond_2
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mHandler:Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    invoke-virtual {v2, v6}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->removeMessages(I)V

    .line 484
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mHandler:Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;

    invoke-virtual {v2, v6}, Lcom/meizu/stats/UsageStatsUploader$UploaderHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method eventComein()V
    .locals 3

    .prologue
    .line 306
    iget v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mEventCome:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mEventCome:I

    .line 307
    iget v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mEventCome:I

    sget v1, Lcom/meizu/stats/UsageStatsConstants;->ONLINE_EVENTS_THRESHOLD:I

    if-lt v0, v1, :cond_0

    .line 308
    const-string v0, "UsageStatsUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "eventComein, mEventCome="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mEventCome:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsUploader;->checkUpload()V

    .line 310
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mEventCome:I

    .line 312
    :cond_0
    return-void
.end method

.method setUploaded(Z)V
    .locals 3
    .param p1, "upload"    # Z

    .prologue
    .line 464
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mUpload:Z

    if-eq v0, p1, :cond_0

    .line 465
    iput-boolean p1, p0, Lcom/meizu/stats/UsageStatsUploader;->mUpload:Z

    .line 466
    const-string v0, "UsageStatsUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUploaded, mUpload="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/meizu/stats/UsageStatsUploader;->mUpload:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    :cond_0
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsUploader;->mUpload:Z

    if-eqz v0, :cond_1

    .line 469
    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsUploader;->checkUpload()V

    .line 471
    :cond_1
    return-void
.end method

.method uploadEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)Z
    .locals 18
    .param p1, "event"    # Lcom/meizu/stats/UsageStatsProxy$Event;

    .prologue
    .line 397
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/meizu/stats/UsageStatsUploader;->mUpload:Z

    if-eqz v13, :cond_0

    if-nez p1, :cond_1

    .line 398
    :cond_0
    const/4 v13, 0x0

    .line 446
    :goto_0
    return v13

    .line 400
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 402
    .local v2, "data":Lorg/json/JSONObject;
    :try_start_0
    const-string v13, "ver"

    const-string v14, "2.0"

    invoke-virtual {v2, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 403
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/meizu/stats/UsageStatsUploader;->parcelDeviceInfo(Lorg/json/JSONObject;)V

    .line 404
    const-string v13, "package"

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 405
    const-string v13, "version"

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPackageName()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/meizu/stats/UsageStatsUploader;->getPackageVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    const-string v13, "sid"

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getSessionid()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 408
    .local v4, "eventJson":Lorg/json/JSONObject;
    const-string v13, "type"

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getType()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/meizu/stats/UsageStatsUploader;->getEventType(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    const-string v13, "name"

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 410
    const-string v13, "time"

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getTime()J

    move-result-wide v14

    invoke-virtual {v4, v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 411
    const-string v13, "page"

    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 412
    invoke-virtual/range {p1 .. p1}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPropertiesToJSONString()Ljava/lang/String;

    move-result-object v8

    .line 413
    .local v8, "propertiesJson":Ljava/lang/String;
    invoke-static {v8}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 414
    const-string v13, "value"

    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 418
    :goto_1
    const-string v13, "event"

    invoke-virtual {v2, v13, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    .end local v4    # "eventJson":Lorg/json/JSONObject;
    .end local v8    # "propertiesJson":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v13

    const/4 v14, 0x1

    if-ge v13, v14, :cond_3

    .line 423
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 416
    .restart local v4    # "eventJson":Lorg/json/JSONObject;
    .restart local v8    # "propertiesJson":Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v13, "value"

    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 419
    .end local v4    # "eventJson":Lorg/json/JSONObject;
    .end local v8    # "propertiesJson":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 420
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 425
    .end local v3    # "e":Lorg/json/JSONException;
    :cond_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v9

    .line 426
    .local v9, "pushData":[B
    if-nez v9, :cond_4

    .line 427
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 429
    :cond_4
    invoke-static {v9}, Lcom/meizu/experiencedatasync/util/Utils;->getMD5([B)[B

    move-result-object v13

    invoke-static {v13}, Lcom/meizu/experiencedatasync/util/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 430
    .local v5, "md5":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    long-to-int v12, v14

    .line 431
    .local v12, "tsValue":I
    new-instance v13, Ljava/util/Random;

    invoke-direct {v13}, Ljava/util/Random;-><init>()V

    invoke-virtual {v13}, Ljava/util/Random;->nextInt()I

    move-result v13

    add-int/2addr v13, v12

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 432
    .local v6, "nonce":Ljava/lang/String;
    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 433
    .local v11, "ts":Ljava/lang/String;
    const-string v13, "key=OjUiuYe80AUYnbgBNT6&nonce=%s&ts=%s&md5=%s"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v6, v14, v15

    const/4 v15, 0x1

    aput-object v11, v14, v15

    const/4 v15, 0x2

    aput-object v5, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    invoke-static {v13}, Lcom/meizu/experiencedatasync/util/Utils;->getMD5([B)[B

    move-result-object v13

    invoke-static {v13}, Lcom/meizu/experiencedatasync/util/Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    .line 435
    .local v10, "sign":Ljava/lang/String;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v7, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "nonce"

    invoke-direct {v13, v14, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 437
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "ts"

    invoke-direct {v13, v14, v11}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 438
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "md5"

    invoke-direct {v13, v14, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 439
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "sign"

    invoke-direct {v13, v14, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    new-instance v13, Lorg/apache/http/message/BasicNameValuePair;

    const-string v14, "uxip_data"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v7, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    :try_start_2
    const-string v13, "https://uxip.meizu.com/api/report/realtime"

    new-instance v14, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    invoke-direct {v14, v7}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;)V

    invoke-static {v13, v14}, Lcom/meizu/experiencedatasync/net/HttpHelper;->executeHttpsPost(Ljava/lang/String;Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/meizu/stats/UsageStatsUploader;->isUploadSuccess(Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v13

    goto/16 :goto_0

    .line 443
    :catch_1
    move-exception v3

    .line 444
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 446
    const/4 v13, 0x0

    goto/16 :goto_0
.end method
