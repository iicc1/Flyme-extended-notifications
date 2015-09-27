.class Lcom/meizu/common/widget/RecipientEdit$2;
.super Landroid/os/Handler;
.source "RecipientEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/RecipientEdit;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/RecipientEdit;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/RecipientEdit;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 359
    iput-object p1, p0, Lcom/meizu/common/widget/RecipientEdit$2;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 362
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 369
    :goto_0
    return-void

    .line 364
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$2;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->mDirectoryLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/meizu/common/widget/RecipientEdit;->access$200(Lcom/meizu/common/widget/RecipientEdit;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 365
    :try_start_0
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$2;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    # invokes: Lcom/meizu/common/widget/RecipientEdit;->loadDirectories()V
    invoke-static {v0}, Lcom/meizu/common/widget/RecipientEdit;->access$300(Lcom/meizu/common/widget/RecipientEdit;)V

    .line 366
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 362
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
