.class Lcom/android/systemui/screenshot/TakeScreenshotService$1;
.super Landroid/os/Handler;
.source "TakeScreenshotService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/screenshot/TakeScreenshotService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;


# direct methods
.method constructor <init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 47
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 49
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 50
    .local v0, "callback":Landroid/os/Messenger;
    iget-object v1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    # invokes: Lcom/android/systemui/screenshot/TakeScreenshotService;->enoughSpace()Z
    invoke-static {v1}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$000(Lcom/android/systemui/screenshot/TakeScreenshotService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    # getter for: Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui/screenshot/GlobalScreenshot;
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$100()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v1

    if-nez v1, :cond_1

    .line 53
    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot;

    iget-object v4, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    invoke-direct {v1, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui/screenshot/GlobalScreenshot;
    invoke-static {v1}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$102(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshot;

    .line 55
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;->this$0:Lcom/android/systemui/screenshot/TakeScreenshotService;

    iget-boolean v1, v1, Lcom/android/systemui/screenshot/TakeScreenshotService;->shouldHideFloatTouch:Z

    if-eqz v1, :cond_2

    .line 57
    const-wide/16 v4, 0x3c

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_2
    :goto_1
    # getter for: Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui/screenshot/GlobalScreenshot;
    invoke-static {}, Lcom/android/systemui/screenshot/TakeScreenshotService;->access$100()Lcom/android/systemui/screenshot/GlobalScreenshot;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;

    invoke-direct {v5, p0, v0}, Lcom/android/systemui/screenshot/TakeScreenshotService$1$1;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService$1;Landroid/os/Messenger;)V

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-lez v1, :cond_3

    move v1, v2

    :goto_2
    iget v6, p1, Landroid/os/Message;->arg2:I

    if-lez v6, :cond_4

    :goto_3
    invoke-virtual {v4, v5, v1, v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;ZZ)V

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_3

    .line 58
    :catch_0
    move-exception v1

    goto :goto_1

    .line 47
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
