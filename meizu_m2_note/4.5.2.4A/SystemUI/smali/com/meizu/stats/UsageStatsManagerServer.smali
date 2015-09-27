.class public Lcom/meizu/stats/UsageStatsManagerServer;
.super Lcom/meizu/stats/IUsageStatsManager$Stub;
.source "UsageStatsManagerServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/stats/UsageStatsManagerServer$Page;,
        Lcom/meizu/stats/UsageStatsManagerServer$SettingsObserver;,
        Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;
    }
.end annotation


# static fields
.field private static sLock:Ljava/lang/Object;

.field private static volatile sUsageStatsManagerServer:Lcom/meizu/stats/UsageStatsManagerServer;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

.field private mLastSwitchToBackground:J

.field private mOnline:Z

.field private mPackageSession:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPages:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/meizu/stats/UsageStatsManagerServer$Page;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordEventThread:Landroid/os/HandlerThread;

.field private volatile mRecording:Z

.field private mSettingsObserver:Lcom/meizu/stats/UsageStatsManagerServer$SettingsObserver;

.field private mUpload:Z

.field private mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

.field private mUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/stats/UsageStatsManagerServer;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "online"    # Z
    .param p3, "upload"    # Z

    .prologue
    .line 53
    invoke-direct {p0}, Lcom/meizu/stats/IUsageStatsManager$Stub;-><init>()V

    .line 45
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RecordEventThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mRecordEventThread:Landroid/os/HandlerThread;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mPackageSession:Ljava/util/Map;

    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mRecording:Z

    .line 50
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mPages:Ljava/util/LinkedList;

    .line 54
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    .line 55
    iput-boolean p2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mOnline:Z

    .line 56
    iput-boolean p3, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUpload:Z

    .line 57
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mRecordEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 58
    new-instance v0, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mRecordEventThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;-><init>(Lcom/meizu/stats/UsageStatsManagerServer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    .line 59
    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsManagerServer;->init()V

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/stats/UsageStatsManagerServer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManagerServer;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mRecording:Z

    return v0
.end method

.method static synthetic access$002(Lcom/meizu/stats/UsageStatsManagerServer;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManagerServer;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mRecording:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/stats/UsageStatsManagerServer;)Lcom/meizu/stats/UsageStatsUploader;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManagerServer;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    return-object v0
.end method

.method static synthetic access$200(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/util/LinkedList;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManagerServer;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mPages:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/stats/UsageStatsManagerServer;)J
    .locals 2
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManagerServer;

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mLastSwitchToBackground:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/meizu/stats/UsageStatsManagerServer;J)J
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManagerServer;
    .param p1, "x1"    # J

    .prologue
    .line 27
    iput-wide p1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mLastSwitchToBackground:J

    return-wide p1
.end method

.method static synthetic access$400(Lcom/meizu/stats/UsageStatsManagerServer;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManagerServer;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mPackageSession:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/stats/UsageStatsManagerServer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManagerServer;

    .prologue
    .line 27
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mOnline:Z

    return v0
.end method

.method static synthetic access$700(Lcom/meizu/stats/UsageStatsManagerServer;)Lcom/meizu/stats/UsageStatsProviderHelper;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManagerServer;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/meizu/stats/UsageStatsManagerServer;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManagerServer;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/meizu/stats/UsageStatsManagerServer;)Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManagerServer;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    return-object v0
.end method

.method static getInstance(Landroid/content/Context;ZZ)Lcom/meizu/stats/UsageStatsManagerServer;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "online"    # Z
    .param p2, "upload"    # Z

    .prologue
    .line 63
    sget-object v0, Lcom/meizu/stats/UsageStatsManagerServer;->sUsageStatsManagerServer:Lcom/meizu/stats/UsageStatsManagerServer;

    if-nez v0, :cond_1

    .line 64
    sget-object v1, Lcom/meizu/stats/UsageStatsManagerServer;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lcom/meizu/stats/UsageStatsManagerServer;->sUsageStatsManagerServer:Lcom/meizu/stats/UsageStatsManagerServer;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/meizu/stats/UsageStatsManagerServer;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/stats/UsageStatsManagerServer;-><init>(Landroid/content/Context;ZZ)V

    sput-object v0, Lcom/meizu/stats/UsageStatsManagerServer;->sUsageStatsManagerServer:Lcom/meizu/stats/UsageStatsManagerServer;

    .line 68
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    :cond_1
    sget-object v0, Lcom/meizu/stats/UsageStatsManagerServer;->sUsageStatsManagerServer:Lcom/meizu/stats/UsageStatsManagerServer;

    return-object v0

    .line 68
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 74
    invoke-static {}, Lcom/meizu/stats/UsageStatusLog;->initLog()V

    .line 75
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mOnline:Z

    invoke-static {v2, v3}, Lcom/meizu/stats/UsageStatsProviderHelper;->getInstance(Landroid/content/Context;Z)Lcom/meizu/stats/UsageStatsProviderHelper;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    .line 76
    iget-boolean v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mOnline:Z

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mOnline:Z

    iget-boolean v4, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUpload:Z

    invoke-static {v2, v3, v4}, Lcom/meizu/stats/UsageStatsUploader;->getInstance(Landroid/content/Context;ZZ)Lcom/meizu/stats/UsageStatsUploader;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    .line 79
    :cond_0
    iget-boolean v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mOnline:Z

    if-nez v2, :cond_2

    .line 81
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "meizu_data_collection"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mRecording:Z

    .line 82
    new-instance v0, Lcom/meizu/stats/UsageStatsManagerServer$SettingsObserver;

    iget-object v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    invoke-direct {v0, p0, v2}, Lcom/meizu/stats/UsageStatsManagerServer$SettingsObserver;-><init>(Lcom/meizu/stats/UsageStatsManagerServer;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mSettingsObserver:Lcom/meizu/stats/UsageStatsManagerServer$SettingsObserver;

    .line 83
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "meizu_data_collection"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mSettingsObserver:Lcom/meizu/stats/UsageStatsManagerServer$SettingsObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 86
    :cond_2
    return-void
.end method


# virtual methods
.method public onEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V
    .locals 3
    .param p1, "event"    # Lcom/meizu/stats/UsageStatsProxy$Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 103
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 104
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    invoke-virtual {v1, v0}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->sendMessage(Landroid/os/Message;)Z

    .line 105
    return-void
.end method

.method public onEventRealtime(Lcom/meizu/stats/UsageStatsProxy$Event;)V
    .locals 3
    .param p1, "event"    # Lcom/meizu/stats/UsageStatsProxy$Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 109
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    invoke-virtual {v1, v0}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->sendMessage(Landroid/os/Message;)Z

    .line 110
    return-void
.end method

.method public onPage(Ljava/lang/String;ZLjava/lang/String;J)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "start"    # Z
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "time"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 89
    invoke-static {p3}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 100
    :goto_0
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    .line 93
    .local v0, "msg":Landroid/os/Message;
    new-instance v1, Lcom/meizu/stats/UsageStatsManagerServer$Page;

    invoke-direct {v1, p1, p3, p4, p5}, Lcom/meizu/stats/UsageStatsManagerServer$Page;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 94
    .local v1, "page":Lcom/meizu/stats/UsageStatsManagerServer$Page;
    if-eqz p2, :cond_1

    .line 95
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v1}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 99
    :goto_1
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    invoke-virtual {v2, v0}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 97
    :cond_1
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mHandler:Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3, v1}, Lcom/meizu/stats/UsageStatsManagerServer$RecordHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    goto :goto_1
.end method

.method public setUploaded(Z)V
    .locals 2
    .param p1, "upload"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 303
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mOnline:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUpload:Z

    if-eq v0, p1, :cond_0

    .line 304
    iput-boolean p1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUpload:Z

    .line 305
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUsageStatsUploader:Lcom/meizu/stats/UsageStatsUploader;

    iget-boolean v1, p0, Lcom/meizu/stats/UsageStatsManagerServer;->mUpload:Z

    invoke-virtual {v0, v1}, Lcom/meizu/stats/UsageStatsUploader;->setUploaded(Z)V

    .line 307
    :cond_0
    return-void
.end method
