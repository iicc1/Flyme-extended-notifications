.class public Lcom/meizu/stats/UsageStatsManagerService;
.super Landroid/app/Service;
.source "UsageStatsManagerService.java"


# instance fields
.field private mServer:Lcom/meizu/stats/IUsageStatsManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 19
    iget-object v3, p0, Lcom/meizu/stats/UsageStatsManagerService;->mServer:Lcom/meizu/stats/IUsageStatsManager;

    if-nez v3, :cond_1

    .line 20
    const-string v3, "online"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 21
    .local v1, "online":Z
    const-string v3, "upload"

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 22
    .local v2, "upload":Z
    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsManagerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 23
    .local v0, "context":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 24
    move-object v0, p0

    .line 26
    :cond_0
    invoke-static {v0, v1, v2}, Lcom/meizu/stats/UsageStatsManagerServer;->getInstance(Landroid/content/Context;ZZ)Lcom/meizu/stats/UsageStatsManagerServer;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/stats/UsageStatsManagerService;->mServer:Lcom/meizu/stats/IUsageStatsManager;

    .line 28
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "online":Z
    .end local v2    # "upload":Z
    :cond_1
    iget-object v3, p0, Lcom/meizu/stats/UsageStatsManagerService;->mServer:Lcom/meizu/stats/IUsageStatsManager;

    invoke-interface {v3}, Lcom/meizu/stats/IUsageStatsManager;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    return-object v3
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 33
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 34
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 44
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 38
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
