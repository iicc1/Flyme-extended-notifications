.class Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;
.super Ljava/lang/Object;
.source "UsageStatsManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/stats/UsageStatsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UsageStatsServiceConn"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/stats/UsageStatsManager;


# direct methods
.method private constructor <init>(Lcom/meizu/stats/UsageStatsManager;)V
    .locals 0

    .prologue
    .line 222
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;->this$0:Lcom/meizu/stats/UsageStatsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/stats/UsageStatsManager;Lcom/meizu/stats/UsageStatsManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/stats/UsageStatsManager;
    .param p2, "x1"    # Lcom/meizu/stats/UsageStatsManager$1;

    .prologue
    .line 222
    invoke-direct {p0, p1}, Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;-><init>(Lcom/meizu/stats/UsageStatsManager;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 226
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;->this$0:Lcom/meizu/stats/UsageStatsManager;

    # getter for: Lcom/meizu/stats/UsageStatsManager;->mUsageStatsManagerThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lcom/meizu/stats/UsageStatsManager;->access$600(Lcom/meizu/stats/UsageStatsManager;)Landroid/os/HandlerThread;

    move-result-object v2

    monitor-enter v2

    .line 228
    :try_start_0
    const-string v1, "UsageStatsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;->this$0:Lcom/meizu/stats/UsageStatsManager;

    # getter for: Lcom/meizu/stats/UsageStatsManager;->mUsageStatsServiceConn:Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManager;->access$700(Lcom/meizu/stats/UsageStatsManager;)Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;->this$0:Lcom/meizu/stats/UsageStatsManager;

    invoke-static {p2}, Lcom/meizu/stats/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/meizu/stats/IUsageStatsManager;

    move-result-object v3

    # setter for: Lcom/meizu/stats/UsageStatsManager;->mUsageStatsManager:Lcom/meizu/stats/IUsageStatsManager;
    invoke-static {v1, v3}, Lcom/meizu/stats/UsageStatsManager;->access$202(Lcom/meizu/stats/UsageStatsManager;Lcom/meizu/stats/IUsageStatsManager;)Lcom/meizu/stats/IUsageStatsManager;

    .line 230
    const-string v1, "UsageStatsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unbindService, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;->this$0:Lcom/meizu/stats/UsageStatsManager;

    # getter for: Lcom/meizu/stats/UsageStatsManager;->mUsageStatsServiceConn:Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;
    invoke-static {v4}, Lcom/meizu/stats/UsageStatsManager;->access$700(Lcom/meizu/stats/UsageStatsManager;)Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;->this$0:Lcom/meizu/stats/UsageStatsManager;

    # getter for: Lcom/meizu/stats/UsageStatsManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/meizu/stats/UsageStatsManager;->access$400(Lcom/meizu/stats/UsageStatsManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;->this$0:Lcom/meizu/stats/UsageStatsManager;

    # getter for: Lcom/meizu/stats/UsageStatsManager;->mUsageStatsServiceConn:Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;
    invoke-static {v3}, Lcom/meizu/stats/UsageStatsManager;->access$700(Lcom/meizu/stats/UsageStatsManager;)Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;->this$0:Lcom/meizu/stats/UsageStatsManager;

    # getter for: Lcom/meizu/stats/UsageStatsManager;->mUsageStatsManagerThread:Landroid/os/HandlerThread;
    invoke-static {v1}, Lcom/meizu/stats/UsageStatsManager;->access$600(Lcom/meizu/stats/UsageStatsManager;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 236
    monitor-exit v2

    .line 237
    return-void

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 236
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 241
    const-string v0, "UsageStatsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;->this$0:Lcom/meizu/stats/UsageStatsManager;

    # getter for: Lcom/meizu/stats/UsageStatsManager;->mUsageStatsServiceConn:Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;
    invoke-static {v2}, Lcom/meizu/stats/UsageStatsManager;->access$700(Lcom/meizu/stats/UsageStatsManager;)Lcom/meizu/stats/UsageStatsManager$UsageStatsServiceConn;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/stats/UsageStatusLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method
