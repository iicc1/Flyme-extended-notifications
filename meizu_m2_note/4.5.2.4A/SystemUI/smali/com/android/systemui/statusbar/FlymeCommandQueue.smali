.class public Lcom/android/systemui/statusbar/FlymeCommandQueue;
.super Lmeizu/statusbar/IFlymeStatusBar$Stub;
.source "FlymeCommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/FlymeCommandQueue$1;,
        Lcom/android/systemui/statusbar/FlymeCommandQueue$H;,
        Lcom/android/systemui/statusbar/FlymeCommandQueue$Callbacks;,
        Lcom/android/systemui/statusbar/FlymeCommandQueue$NotificationQueueEntry;
    }
.end annotation


# instance fields
.field private mCallbacks:Lcom/android/systemui/statusbar/FlymeCommandQueue$Callbacks;

.field private mHandler:Landroid/os/Handler;

.field private mList:Lcom/android/internal/statusbar/StatusBarIconList;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/FlymeCommandQueue$Callbacks;Lcom/android/internal/statusbar/StatusBarIconList;)V
    .locals 2
    .param p1, "callbacks"    # Lcom/android/systemui/statusbar/FlymeCommandQueue$Callbacks;
    .param p2, "list"    # Lcom/android/internal/statusbar/StatusBarIconList;

    .prologue
    .line 46
    invoke-direct {p0}, Lmeizu/statusbar/IFlymeStatusBar$Stub;-><init>()V

    .line 24
    new-instance v0, Lcom/android/systemui/statusbar/FlymeCommandQueue$H;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/FlymeCommandQueue$H;-><init>(Lcom/android/systemui/statusbar/FlymeCommandQueue;Lcom/android/systemui/statusbar/FlymeCommandQueue$1;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    .line 47
    iput-object p1, p0, Lcom/android/systemui/statusbar/FlymeCommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/FlymeCommandQueue$Callbacks;

    .line 48
    iput-object p2, p0, Lcom/android/systemui/statusbar/FlymeCommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    .line 49
    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/FlymeCommandQueue;)Lcom/android/systemui/statusbar/FlymeCommandQueue$Callbacks;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/FlymeCommandQueue;

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/systemui/statusbar/FlymeCommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/FlymeCommandQueue$Callbacks;

    return-object v0
.end method


# virtual methods
.method public addNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    .locals 6
    .param p1, "key"    # Landroid/os/IBinder;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 71
    iget-object v2, p0, Lcom/android/systemui/statusbar/FlymeCommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    .line 72
    :try_start_0
    new-instance v0, Lcom/android/systemui/statusbar/FlymeCommandQueue$NotificationQueueEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/FlymeCommandQueue$NotificationQueueEntry;-><init>(Lcom/android/systemui/statusbar/FlymeCommandQueue;Lcom/android/systemui/statusbar/FlymeCommandQueue$1;)V

    .line 73
    .local v0, "ne":Lcom/android/systemui/statusbar/FlymeCommandQueue$NotificationQueueEntry;
    iput-object p1, v0, Lcom/android/systemui/statusbar/FlymeCommandQueue$NotificationQueueEntry;->key:Landroid/os/IBinder;

    .line 74
    iput-object p2, v0, Lcom/android/systemui/statusbar/FlymeCommandQueue$NotificationQueueEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 75
    iget-object v1, p0, Lcom/android/systemui/statusbar/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x20000

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 76
    monitor-exit v2

    .line 77
    return-void

    .line 76
    .end local v0    # "ne":Lcom/android/systemui/statusbar/FlymeCommandQueue$NotificationQueueEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeNotification(Landroid/os/IBinder;)V
    .locals 5
    .param p1, "key"    # Landroid/os/IBinder;

    .prologue
    .line 89
    iget-object v1, p0, Lcom/android/systemui/statusbar/FlymeCommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v1

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v2, 0x40000

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 91
    monitor-exit v1

    .line 92
    return-void

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setNavButtonVisible(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 58
    iget-object v2, p0, Lcom/android/systemui/statusbar/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x50000

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 59
    return-void

    :cond_0
    move v0, v1

    .line 58
    goto :goto_0
.end method

.method public setStatusBarDarkTheme(ZZ)V
    .locals 5
    .param p1, "dark"    # Z
    .param p2, "animate"    # Z

    .prologue
    const/high16 v4, 0x10000

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 65
    iget-object v2, p0, Lcom/android/systemui/statusbar/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 66
    iget-object v3, p0, Lcom/android/systemui/statusbar/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v2, v0

    :goto_0
    if-eqz p2, :cond_1

    :goto_1
    const/4 v1, 0x0

    invoke-virtual {v3, v4, v2, v0, v1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 68
    return-void

    :cond_0
    move v2, v1

    .line 66
    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public updateNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V
    .locals 6
    .param p1, "key"    # Landroid/os/IBinder;
    .param p2, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 80
    iget-object v2, p0, Lcom/android/systemui/statusbar/FlymeCommandQueue;->mList:Lcom/android/internal/statusbar/StatusBarIconList;

    monitor-enter v2

    .line 81
    :try_start_0
    new-instance v0, Lcom/android/systemui/statusbar/FlymeCommandQueue$NotificationQueueEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/FlymeCommandQueue$NotificationQueueEntry;-><init>(Lcom/android/systemui/statusbar/FlymeCommandQueue;Lcom/android/systemui/statusbar/FlymeCommandQueue$1;)V

    .line 82
    .local v0, "ne":Lcom/android/systemui/statusbar/FlymeCommandQueue$NotificationQueueEntry;
    iput-object p1, v0, Lcom/android/systemui/statusbar/FlymeCommandQueue$NotificationQueueEntry;->key:Landroid/os/IBinder;

    .line 83
    iput-object p2, v0, Lcom/android/systemui/statusbar/FlymeCommandQueue$NotificationQueueEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 84
    iget-object v1, p0, Lcom/android/systemui/statusbar/FlymeCommandQueue;->mHandler:Landroid/os/Handler;

    const/high16 v3, 0x30000

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5, v0}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 85
    monitor-exit v2

    .line 86
    return-void

    .line 85
    .end local v0    # "ne":Lcom/android/systemui/statusbar/FlymeCommandQueue$NotificationQueueEntry;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
