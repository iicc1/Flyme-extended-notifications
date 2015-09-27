.class Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$ConstructBluetoothListThread;
.super Ljava/lang/Thread;
.source "BluetoothPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConstructBluetoothListThread"
.end annotation


# instance fields
.field private runningFlag:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)V
    .locals 1

    .prologue
    .line 492
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$ConstructBluetoothListThread;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 493
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$ConstructBluetoothListThread;->runningFlag:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$1;

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$ConstructBluetoothListThread;-><init>(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 495
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$ConstructBluetoothListThread;->runningFlag:Z

    .line 496
    return-void
.end method

.method public run()V
    .locals 4

    .prologue
    .line 499
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$ConstructBluetoothListThread;->runningFlag:Z

    if-eqz v1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$ConstructBluetoothListThread;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    # getter for: Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mConstructCount:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->access$1000(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)I

    move-result v1

    if-lez v1, :cond_1

    .line 501
    const/16 v1, 0x1f4

    # setter for: Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->CONSTRUCT_THREAD_SLEEP:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->access$1102(I)I

    .line 502
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$ConstructBluetoothListThread;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    # operator-- for: Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mConstructCount:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->access$1010(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)I

    .line 507
    :goto_1
    :try_start_0
    # getter for: Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->CONSTRUCT_THREAD_SLEEP:I
    invoke-static {}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->access$1100()I

    move-result v1

    int-to-long v2, v1

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 512
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$ConstructBluetoothListThread;->runningFlag:Z

    if-nez v1, :cond_2

    .line 517
    :cond_0
    :goto_2
    return-void

    .line 504
    :cond_1
    const/16 v1, 0x5dc

    # setter for: Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->CONSTRUCT_THREAD_SLEEP:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->access$1102(I)I

    goto :goto_1

    .line 508
    :catch_0
    move-exception v0

    .line 509
    .local v0, "ignore":Ljava/lang/InterruptedException;
    const-string v1, "BluetoothPopupWindow"

    const-string v2, "exit construct thread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 515
    .end local v0    # "ignore":Ljava/lang/InterruptedException;
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow$ConstructBluetoothListThread;->this$0:Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;

    # getter for: Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->mReceiverMsgHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;->access$1200(Lcom/android/systemui/statusbar/phone/bluetooth/BluetoothPopupWindow;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
