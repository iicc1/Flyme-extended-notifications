.class Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21;
.super Landroid/os/AsyncTask;
.source "RecentSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->initRecentTasks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/util/ArrayList",
        "<",
        "Lcom/android/systemui/mzrecent/TaskDescription;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;


# direct methods
.method constructor <init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)V
    .locals 0

    .prologue
    .line 3388
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 3388
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/mzrecent/TaskDescription;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3392
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    # getter for: Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mAsyncLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->access$300(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 3394
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->clearData()V

    .line 3395
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v1, v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    const-string v3, "activity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 3398
    .local v0, "am":Landroid/app/ActivityManager;
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    const/16 v3, 0x1c

    const/4 v4, 0x6

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v3

    # setter for: Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLatestTasksInfo:Ljava/util/List;
    invoke-static {v1, v3}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->access$402(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;Ljava/util/List;)Ljava/util/List;

    .line 3404
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v1, v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mRecentTasksLoader:Lcom/android/systemui/mzrecent/RecentTasksLoader;

    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    # getter for: Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLatestTasksInfo:Ljava/util/List;
    invoke-static {v3}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->access$400(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/systemui/mzrecent/RecentTasksLoader;->setLatestTaskInfos(Ljava/util/List;)V

    .line 3405
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v3, v3, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mRecentTasksLoader:Lcom/android/systemui/mzrecent/RecentTasksLoader;

    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v4, v4, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mHashMap:Ljava/util/HashMap;

    iget-object v5, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v5, v5, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mArrayList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    const/16 v7, 0x1c

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/systemui/mzrecent/RecentTasksLoader;->getRecentTasks(Ljava/util/HashMap;Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v3

    # setter for: Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLatestTasksDes:Ljava/util/ArrayList;
    invoke-static {v1, v3}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->access$502(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 3408
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3409
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    # getter for: Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLatestTasksDes:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->access$500(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1

    .line 3408
    .end local v0    # "am":Landroid/app/ActivityManager;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 3388
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/mzrecent/TaskDescription;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3415
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/mzrecent/TaskDescription;>;"
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    # getter for: Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLatestTasksDes:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->access$500(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->reloadFirstPage(Ljava/util/ArrayList;)V

    .line 3416
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    # getter for: Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLatestTasksDes:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->access$500(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->reloadButtons(Ljava/util/ArrayList;)V

    .line 3417
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21$1;-><init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer$21;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3425
    return-void
.end method
