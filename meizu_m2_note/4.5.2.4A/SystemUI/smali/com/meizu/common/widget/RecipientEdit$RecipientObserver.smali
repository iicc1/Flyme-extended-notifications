.class Lcom/meizu/common/widget/RecipientEdit$RecipientObserver;
.super Landroid/database/ContentObserver;
.source "RecipientEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/RecipientEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecipientObserver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mObserverRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/meizu/common/widget/RecipientEdit;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/RecipientEdit;Landroid/os/Handler;)V
    .locals 1
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 3593
    iput-object p1, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientObserver;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    .line 3594
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3605
    new-instance v0, Lcom/meizu/common/widget/RecipientEdit$RecipientObserver$1;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientObserver$1;-><init>(Lcom/meizu/common/widget/RecipientEdit$RecipientObserver;)V

    iput-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientObserver;->mObserverRunnable:Ljava/lang/Runnable;

    .line 3595
    iput-object p2, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientObserver;->mHandler:Landroid/os/Handler;

    .line 3596
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 3601
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientObserver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientObserver;->mObserverRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3602
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientObserver;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientObserver;->mObserverRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3603
    return-void
.end method
