.class Lcom/android/systemui/BootReceiver$1;
.super Landroid/os/Handler;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/BootReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/BootReceiver;


# direct methods
.method constructor <init>(Lcom/android/systemui/BootReceiver;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/systemui/BootReceiver$1;->this$0:Lcom/android/systemui/BootReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 38
    iget v0, p1, Landroid/os/Message;->what:I

    .line 39
    .local v0, "what":I
    packed-switch v0, :pswitch_data_0

    .line 46
    :goto_0
    return-void

    .line 41
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/BootReceiver$1;->this$0:Lcom/android/systemui/BootReceiver;

    # invokes: Lcom/android/systemui/BootReceiver;->startLoadAverageService()V
    invoke-static {v1}, Lcom/android/systemui/BootReceiver;->access$000(Lcom/android/systemui/BootReceiver;)V

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
