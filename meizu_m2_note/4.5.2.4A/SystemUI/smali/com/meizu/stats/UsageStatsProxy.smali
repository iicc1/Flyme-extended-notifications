.class public Lcom/meizu/stats/UsageStatsProxy;
.super Ljava/lang/Object;
.source "UsageStatsProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/stats/UsageStatsProxy$Event;
    }
.end annotation


# static fields
.field private static sLock:Ljava/lang/Object;

.field private static volatile sUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnline:Z

.field private mPackageName:Ljava/lang/String;

.field private mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/stats/UsageStatsProxy;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZZ)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "online"    # Z
    .param p3, "upload"    # Z

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    if-nez p1, :cond_0

    .line 68
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "The context is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 71
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 76
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProxy;->mContext:Landroid/content/Context;

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageName:Ljava/lang/String;

    .line 79
    const-string v1, "android"

    iget-object v2, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 80
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "This sdk cannot be used in system process."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 82
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iput-boolean p2, p0, Lcom/meizu/stats/UsageStatsProxy;->mOnline:Z

    .line 83
    new-instance v1, Lcom/meizu/stats/UsageStatsManager;

    iget-object v2, p0, Lcom/meizu/stats/UsageStatsProxy;->mContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/meizu/stats/UsageStatsProxy;->mOnline:Z

    invoke-direct {v1, v2, v3, p3}, Lcom/meizu/stats/UsageStatsManager;-><init>(Landroid/content/Context;ZZ)V

    iput-object v1, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    .line 84
    return-void
.end method

.method private static getInstance(Landroid/content/Context;ZZ)Lcom/meizu/stats/UsageStatsProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "online"    # Z
    .param p2, "upload"    # Z

    .prologue
    .line 105
    sget-object v0, Lcom/meizu/stats/UsageStatsProxy;->sUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    if-nez v0, :cond_1

    .line 106
    sget-object v1, Lcom/meizu/stats/UsageStatsProxy;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 107
    :try_start_0
    sget-object v0, Lcom/meizu/stats/UsageStatsProxy;->sUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Lcom/meizu/stats/UsageStatsProxy;

    invoke-direct {v0, p0, p1, p2}, Lcom/meizu/stats/UsageStatsProxy;-><init>(Landroid/content/Context;ZZ)V

    sput-object v0, Lcom/meizu/stats/UsageStatsProxy;->sUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    .line 110
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    :cond_1
    sget-object v0, Lcom/meizu/stats/UsageStatsProxy;->sUsageStatsProxy:Lcom/meizu/stats/UsageStatsProxy;

    return-object v0

    .line 110
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static getOfflineInstance(Landroid/content/Context;)Lcom/meizu/stats/UsageStatsProxy;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/meizu/stats/UsageStatsProxy;->getInstance(Landroid/content/Context;ZZ)Lcom/meizu/stats/UsageStatsProxy;

    move-result-object v0

    return-object v0
.end method

.method private static isEmpty(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 254
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v0, :cond_1

    .line 257
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "pageName"    # Ljava/lang/String;
    .param p3, "property"    # Ljava/lang/String;

    .prologue
    .line 179
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mOnline:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    invoke-virtual {v0}, Lcom/meizu/stats/UsageStatsManager;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-static {p1}, Lcom/meizu/stats/UsageStatsProxy;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    const/4 v9, 0x0

    .line 186
    .local v9, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p3}, Lcom/meizu/stats/UsageStatsProxy;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 187
    new-instance v9, Ljava/util/HashMap;

    .end local v9    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 188
    .restart local v9    # "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "value"

    invoke-interface {v9, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    :cond_2
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    new-instance v1, Lcom/meizu/stats/UsageStatsProxy$Event;

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageName:Ljava/lang/String;

    move-object v2, p1

    move-object v8, p2

    invoke-direct/range {v1 .. v9}, Lcom/meizu/stats/UsageStatsProxy$Event;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/meizu/stats/UsageStatsManager;->onEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V

    goto :goto_0
.end method

.method public onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 10
    .param p1, "eventName"    # Ljava/lang/String;
    .param p2, "pageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 202
    .local p3, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mOnline:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    invoke-virtual {v0}, Lcom/meizu/stats/UsageStatsManager;->isRecording()Z

    move-result v0

    if-nez v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-static {p1}, Lcom/meizu/stats/UsageStatsProxy;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy;->mUsageStatsManager:Lcom/meizu/stats/UsageStatsManager;

    new-instance v1, Lcom/meizu/stats/UsageStatsProxy$Event;

    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/meizu/stats/UsageStatsProxy;->mPackageName:Ljava/lang/String;

    move-object v2, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v1 .. v9}, Lcom/meizu/stats/UsageStatsProxy$Event;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/meizu/stats/UsageStatsManager;->onEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V

    goto :goto_0
.end method
