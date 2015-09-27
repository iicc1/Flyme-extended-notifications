.class Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;
.super Ljava/lang/Object;
.source "RecipientEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/RecipientEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RecipientWorker"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;

.field private mRefCount:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 3527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3523
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;->mLock:Ljava/lang/Object;

    .line 3528
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 3529
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 3530
    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 3531
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;->mLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 3533
    :try_start_1
    iget-object v1, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3534
    :catch_0
    move-exception v1

    goto :goto_0

    .line 3537
    :cond_0
    :try_start_2
    monitor-exit v2

    .line 3538
    return-void

    .line 3537
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method static synthetic access$104(Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;

    .prologue
    .line 3522
    iget v0, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;->mRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;->mRefCount:I

    return v0
.end method

.method static synthetic access$106(Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;)I
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;

    .prologue
    .line 3522
    iget v0, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;->mRefCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;->mRefCount:I

    return v0
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 3551
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 3555
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 3556
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 3542
    iget-object v1, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 3543
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 3544
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;->mLooper:Landroid/os/Looper;

    .line 3545
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientWorker;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3546
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3547
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 3548
    return-void

    .line 3546
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
