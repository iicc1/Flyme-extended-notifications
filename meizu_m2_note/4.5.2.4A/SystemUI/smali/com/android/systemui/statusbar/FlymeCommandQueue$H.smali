.class final Lcom/android/systemui/statusbar/FlymeCommandQueue$H;
.super Landroid/os/Handler;
.source "FlymeCommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/FlymeCommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/FlymeCommandQueue;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/FlymeCommandQueue;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/android/systemui/statusbar/FlymeCommandQueue$H;->this$0:Lcom/android/systemui/statusbar/FlymeCommandQueue;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/FlymeCommandQueue;Lcom/android/systemui/statusbar/FlymeCommandQueue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/FlymeCommandQueue;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/FlymeCommandQueue$1;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/FlymeCommandQueue$H;-><init>(Lcom/android/systemui/statusbar/FlymeCommandQueue;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 96
    iget v3, p1, Landroid/os/Message;->what:I

    const/high16 v6, -0x10000

    and-int v2, v3, v6

    .line 97
    .local v2, "what":I
    sparse-switch v2, :sswitch_data_0

    .line 120
    :goto_0
    return-void

    .line 99
    :sswitch_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/FlymeCommandQueue$H;->this$0:Lcom/android/systemui/statusbar/FlymeCommandQueue;

    # getter for: Lcom/android/systemui/statusbar/FlymeCommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/FlymeCommandQueue$Callbacks;
    invoke-static {v3}, Lcom/android/systemui/statusbar/FlymeCommandQueue;->access$200(Lcom/android/systemui/statusbar/FlymeCommandQueue;)Lcom/android/systemui/statusbar/FlymeCommandQueue$Callbacks;

    move-result-object v6

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_0

    move v3, v4

    :goto_1
    iget v7, p1, Landroid/os/Message;->arg2:I

    if-eqz v7, :cond_1

    :goto_2
    invoke-interface {v6, v3, v4}, Lcom/android/systemui/statusbar/FlymeCommandQueue$Callbacks;->setStatusBarDarkTheme(ZZ)V

    goto :goto_0

    :cond_0
    move v3, v5

    goto :goto_1

    :cond_1
    move v4, v5

    goto :goto_2

    .line 102
    :sswitch_1
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_2

    move v1, v4

    .line 103
    .local v1, "visible":Z
    :goto_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/FlymeCommandQueue$H;->this$0:Lcom/android/systemui/statusbar/FlymeCommandQueue;

    # getter for: Lcom/android/systemui/statusbar/FlymeCommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/FlymeCommandQueue$Callbacks;
    invoke-static {v3}, Lcom/android/systemui/statusbar/FlymeCommandQueue;->access$200(Lcom/android/systemui/statusbar/FlymeCommandQueue;)Lcom/android/systemui/statusbar/FlymeCommandQueue$Callbacks;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/systemui/statusbar/FlymeCommandQueue$Callbacks;->setNavButtonVisible(Z)V

    goto :goto_0

    .end local v1    # "visible":Z
    :cond_2
    move v1, v5

    .line 102
    goto :goto_3

    .line 106
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/FlymeCommandQueue$NotificationQueueEntry;

    .line 107
    .local v0, "ne":Lcom/android/systemui/statusbar/FlymeCommandQueue$NotificationQueueEntry;
    iget-object v3, p0, Lcom/android/systemui/statusbar/FlymeCommandQueue$H;->this$0:Lcom/android/systemui/statusbar/FlymeCommandQueue;

    # getter for: Lcom/android/systemui/statusbar/FlymeCommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/FlymeCommandQueue$Callbacks;
    invoke-static {v3}, Lcom/android/systemui/statusbar/FlymeCommandQueue;->access$200(Lcom/android/systemui/statusbar/FlymeCommandQueue;)Lcom/android/systemui/statusbar/FlymeCommandQueue$Callbacks;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/statusbar/FlymeCommandQueue$NotificationQueueEntry;->key:Landroid/os/IBinder;

    iget-object v5, v0, Lcom/android/systemui/statusbar/FlymeCommandQueue$NotificationQueueEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/FlymeCommandQueue$Callbacks;->addNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    .line 111
    .end local v0    # "ne":Lcom/android/systemui/statusbar/FlymeCommandQueue$NotificationQueueEntry;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/FlymeCommandQueue$NotificationQueueEntry;

    .line 112
    .restart local v0    # "ne":Lcom/android/systemui/statusbar/FlymeCommandQueue$NotificationQueueEntry;
    iget-object v3, p0, Lcom/android/systemui/statusbar/FlymeCommandQueue$H;->this$0:Lcom/android/systemui/statusbar/FlymeCommandQueue;

    # getter for: Lcom/android/systemui/statusbar/FlymeCommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/FlymeCommandQueue$Callbacks;
    invoke-static {v3}, Lcom/android/systemui/statusbar/FlymeCommandQueue;->access$200(Lcom/android/systemui/statusbar/FlymeCommandQueue;)Lcom/android/systemui/statusbar/FlymeCommandQueue$Callbacks;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/statusbar/FlymeCommandQueue$NotificationQueueEntry;->key:Landroid/os/IBinder;

    iget-object v5, v0, Lcom/android/systemui/statusbar/FlymeCommandQueue$NotificationQueueEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/FlymeCommandQueue$Callbacks;->updateNotification(Landroid/os/IBinder;Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0

    .line 116
    .end local v0    # "ne":Lcom/android/systemui/statusbar/FlymeCommandQueue$NotificationQueueEntry;
    :sswitch_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/FlymeCommandQueue$H;->this$0:Lcom/android/systemui/statusbar/FlymeCommandQueue;

    # getter for: Lcom/android/systemui/statusbar/FlymeCommandQueue;->mCallbacks:Lcom/android/systemui/statusbar/FlymeCommandQueue$Callbacks;
    invoke-static {v3}, Lcom/android/systemui/statusbar/FlymeCommandQueue;->access$200(Lcom/android/systemui/statusbar/FlymeCommandQueue;)Lcom/android/systemui/statusbar/FlymeCommandQueue$Callbacks;

    move-result-object v4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/IBinder;

    invoke-interface {v4, v3}, Lcom/android/systemui/statusbar/FlymeCommandQueue$Callbacks;->removeNotification(Landroid/os/IBinder;)V

    goto :goto_0

    .line 97
    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_2
        0x30000 -> :sswitch_3
        0x40000 -> :sswitch_4
        0x50000 -> :sswitch_1
    .end sparse-switch
.end method
