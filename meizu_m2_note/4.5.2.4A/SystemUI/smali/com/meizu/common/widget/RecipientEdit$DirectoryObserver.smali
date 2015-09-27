.class Lcom/meizu/common/widget/RecipientEdit$DirectoryObserver;
.super Landroid/database/ContentObserver;
.source "RecipientEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/RecipientEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DirectoryObserver"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/meizu/common/widget/RecipientEdit;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/RecipientEdit;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 3577
    iput-object p1, p0, Lcom/meizu/common/widget/RecipientEdit$DirectoryObserver;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    .line 3578
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 3579
    iput-object p2, p0, Lcom/meizu/common/widget/RecipientEdit$DirectoryObserver;->mHandler:Landroid/os/Handler;

    .line 3580
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x4

    .line 3585
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$DirectoryObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 3586
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$DirectoryObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3587
    return-void
.end method
