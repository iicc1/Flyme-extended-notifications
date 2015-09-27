.class final Lcom/meizu/stats/UsageStatsManager;
.super Ljava/lang/Object;
.source "UsageStatsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;,
        Lcom/meizu/stats/UsageStatsManager$SettingsObserver;,
        Lcom/meizu/stats/UsageStatsManager$RecordHandler;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/meizu/stats/UsageStatsManager$RecordHandler;

.field private mOnline:Z

.field private volatile mRecording:Z

.field private mSettingsObserver:Lcom/meizu/stats/UsageStatsManager$SettingsObserver;

.field private mUpload:Z

.field private volatile mUsageStatsManager:Lcom/meizu/stats/IUsageStatsManager;

.field private mUsageStatsManagerThread:Landroid/os/HandlerThread;

.field private mUsageStatsServiceConn:Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;


# direct methods
.method constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "online"    # Z
    .param p3, "upload"    # Z

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UsageStatsManagerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsManager;->mUsageStatsManagerThread:Landroid/os/HandlerThread;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/stats/UsageStatsManager;->mRecording:Z

    .line 51
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsManager;->mContext:Landroid/content/Context;

    .line 52
    iput-boolean p2, p0, Lcom/meizu/stats/UsageStatsManager;->mOnline:Z

    .line 53
    iput-boolean p3, p0, Lcom/meizu/stats/UsageStatsManager;->mUpload:Z

    .line 54
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManager;->mUsageStatsManagerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 55
    new-instance v0, Lcom/meizu/stats/UsageStatsManager$RecordHandler;

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManager;->mUsageStatsManagerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/meizu/stats/UsageStatsManager$RecordHandler;-><init>(Lcom/meizu/stats/UsageStatsManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsManager;->mHandler:Lcom/meizu/stats/UsageStatsManager$RecordHandler;

    .line 56
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManager;->mHandler:Lcom/meizu/stats/UsageStatsManager$RecordHandler;

    new-instance v1, Lcom/meizu/stats/UsageStatsManager$1;

    invoke-direct {v1, p0}, Lcom/meizu/stats/UsageStatsManager$1;-><init>(Lcom/meizu/stats/UsageStatsManager;)V

    invoke-virtual {v0, v1}, Lcom/meizu/stats/UsageStatsManager$RecordHandler;->post(Ljava/lang/Runnable;)Z

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/meizu/stats/UsageStatsManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManager;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsManager;->init()V

    return-void
.end method

.method static synthetic access$200(Lcom/meizu/stats/UsageStatsManager;)Lcom/meizu/stats/IUsageStatsManager;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManager;->mUsageStatsManager:Lcom/meizu/stats/IUsageStatsManager;

    return-object v0
.end method

.method static synthetic access$202(Lcom/meizu/stats/UsageStatsManager;Lcom/meizu/stats/IUsageStatsManager;)Lcom/meizu/stats/IUsageStatsManager;
    .locals 0
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManager;
    .param p1, "x1"    # Lcom/meizu/stats/IUsageStatsManager;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsManager;->mUsageStatsManager:Lcom/meizu/stats/IUsageStatsManager;

    return-object p1
.end method

.method static synthetic access$300(Lcom/meizu/stats/UsageStatsManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManager;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsManager;->mUpload:Z

    return v0
.end method

.method static synthetic access$302(Lcom/meizu/stats/UsageStatsManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManager;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/meizu/stats/UsageStatsManager;->mUpload:Z

    return p1
.end method

.method static synthetic access$400(Lcom/meizu/stats/UsageStatsManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/meizu/stats/UsageStatsManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManager;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsManager;->mRecording:Z

    return v0
.end method

.method static synthetic access$502(Lcom/meizu/stats/UsageStatsManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManager;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/meizu/stats/UsageStatsManager;->mRecording:Z

    return p1
.end method

.method static synthetic access$600(Lcom/meizu/stats/UsageStatsManager;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManager;->mUsageStatsManagerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$700(Lcom/meizu/stats/UsageStatsManager;)Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/stats/UsageStatsManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsManager;->mUsageStatsServiceConn:Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;

    return-object v0
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 65
    invoke-static {}, Lcom/meizu/stats/UsageStatusLog;->initLog()V

    .line 66
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManager;->isMultiProcess(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 67
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsManager;->mUsageStatsManagerThread:Landroid/os/HandlerThread;

    monitor-enter v4

    .line 68
    :try_start_0
    new-instance v5, Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;-><init>(Lcom/meizu/stats/UsageStatsManager;Lcom/meizu/stats/UsageStatsManager$1;)V

    iput-object v5, p0, Lcom/meizu/stats/UsageStatsManager;->mUsageStatsServiceConn:Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;

    .line 69
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/meizu/stats/UsageStatsManager;->mContext:Landroid/content/Context;

    const-class v6, Lcom/meizu/stats/UsageStatsManagerService;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "online"

    iget-boolean v6, p0, Lcom/meizu/stats/UsageStatsManager;->mOnline:Z

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    const-string v5, "upload"

    iget-boolean v6, p0, Lcom/meizu/stats/UsageStatsManager;->mUpload:Z

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 72
    const-string v5, "UsageStatsManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bindService, "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/meizu/stats/UsageStatsManager;->mUsageStatsServiceConn:Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsManager;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/meizu/stats/UsageStatsManager;->mUsageStatsServiceConn:Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;

    const/4 v7, 0x1

    invoke-virtual {v5, v1, v6, v7}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :try_start_1
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsManager;->mUsageStatsManagerThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    :goto_0
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    iget-boolean v4, p0, Lcom/meizu/stats/UsageStatsManager;->mOnline:Z

    if-nez v4, :cond_1

    .line 85
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "meizu_data_collection"

    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/meizu/stats/UsageStatsManager;->mRecording:Z

    .line 86
    new-instance v2, Lcom/meizu/stats/UsageStatsManager$SettingsObserver;

    iget-object v4, p0, Lcom/meizu/stats/UsageStatsManager;->mHandler:Lcom/meizu/stats/UsageStatsManager$RecordHandler;

    invoke-direct {v2, p0, v4}, Lcom/meizu/stats/UsageStatsManager$SettingsObserver;-><init>(Lcom/meizu/stats/UsageStatsManager;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/meizu/stats/UsageStatsManager;->mSettingsObserver:Lcom/meizu/stats/UsageStatsManager$SettingsObserver;

    .line 87
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "meizu_data_collection"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/stats/UsageStatsManager;->mSettingsObserver:Lcom/meizu/stats/UsageStatsManager$SettingsObserver;

    invoke-virtual {v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 90
    :cond_1
    return-void

    .line 76
    .restart local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 79
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 81
    :cond_2
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsManager;->mContext:Landroid/content/Context;

    iget-boolean v5, p0, Lcom/meizu/stats/UsageStatsManager;->mOnline:Z

    iget-boolean v6, p0, Lcom/meizu/stats/UsageStatsManager;->mUpload:Z

    invoke-static {v4, v5, v6}, Lcom/meizu/stats/UsageStatsManagerServer;->getInstance(Landroid/content/Context;ZZ)Lcom/meizu/stats/UsageStatsManagerServer;

    move-result-object v4

    iput-object v4, p0, Lcom/meizu/stats/UsageStatsManager;->mUsageStatsManager:Lcom/meizu/stats/IUsageStatsManager;

    goto :goto_1
.end method

.method private static isMultiProcess(Landroid/content/Context;)Z
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 94
    .local v1, "pm":Landroid/content/pm/PackageManager;
    if-eqz v1, :cond_0

    .line 96
    :try_start_0
    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/meizu/stats/UsageStatsManagerService;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 98
    .local v2, "si":Landroid/content/pm/ServiceInfo;
    if-eqz v2, :cond_0

    .line 99
    const/4 v3, 0x1

    .line 105
    .end local v2    # "si":Landroid/content/pm/ServiceInfo;
    :cond_0
    :goto_0
    return v3

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public isRecording()Z
    .locals 1

    .prologue
    .line 141
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsManager;->mRecording:Z

    return v0
.end method

.method public onEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V
    .locals 3
    .param p1, "event"    # Lcom/meizu/stats/UsageStatsProxy$Event;

    .prologue
    .line 123
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManager;->mHandler:Lcom/meizu/stats/UsageStatsManager$RecordHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/meizu/stats/UsageStatsManager$RecordHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 124
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 125
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManager;->mHandler:Lcom/meizu/stats/UsageStatsManager$RecordHandler;

    invoke-virtual {v1, v0}, Lcom/meizu/stats/UsageStatsManager$RecordHandler;->sendMessage(Landroid/os/Message;)Z

    .line 126
    return-void
.end method
