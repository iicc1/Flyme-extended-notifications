.class Lcom/android/systemui/statusbar/FlymeCommandQueue$NotificationQueueEntry;
.super Ljava/lang/Object;
.source "FlymeCommandQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/FlymeCommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationQueueEntry"
.end annotation


# instance fields
.field key:Landroid/os/IBinder;

.field notification:Landroid/service/notification/StatusBarNotification;

.field final synthetic this$0:Lcom/android/systemui/statusbar/FlymeCommandQueue;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/FlymeCommandQueue;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/android/systemui/statusbar/FlymeCommandQueue$NotificationQueueEntry;->this$0:Lcom/android/systemui/statusbar/FlymeCommandQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/FlymeCommandQueue;Lcom/android/systemui/statusbar/FlymeCommandQueue$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/FlymeCommandQueue;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/FlymeCommandQueue$1;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/FlymeCommandQueue$NotificationQueueEntry;-><init>(Lcom/android/systemui/statusbar/FlymeCommandQueue;)V

    return-void
.end method
