.class Lcom/android/systemui/mzrecent/RecentSlidingDrawer$27;
.super Landroid/os/AsyncTask;
.source "RecentSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->clearAllInBackground(Z)V
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

.field final synthetic val$manual:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;Z)V
    .locals 0

    .prologue
    .line 4844
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$27;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iput-boolean p2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$27;->val$manual:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 4844
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$27;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 28
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
    .line 4848
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 4849
    .local v17, "pkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 4850
    .local v14, "keepList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$27;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-object/from16 v23, v0

    # getter for: Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mAsyncLock:Ljava/lang/Object;
    invoke-static/range {v23 .. v23}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->access$300(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)Ljava/lang/Object;

    move-result-object v24

    monitor-enter v24

    .line 4852
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$27;->val$manual:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    .line 4853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$27;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-object/from16 v23, v0

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mManuRemoveTask:Z

    .line 4856
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$27;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-object/from16 v23, v0

    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mTopComponentName:Landroid/content/ComponentName;

    .line 4857
    invoke-static {}, Landroid/os/BuildExt;->isShopDemoVersion()Z

    move-result v12

    .line 4858
    .local v12, "isForExperience":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$27;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mAM:Landroid/app/ActivityManager;

    move-object/from16 v23, v0

    const/16 v25, 0x1c

    const/16 v26, 0x6

    sget-object v27, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual/range {v27 .. v27}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v27

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v21

    .line 4863
    .local v21, "taskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v5, 0x0

    .line 4864
    .local v5, "homeInfo":Landroid/content/pm/ActivityInfo;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v6, v0, :cond_d

    .line 4865
    move-object/from16 v0, v21

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 4866
    .local v10, "info":Landroid/app/ActivityManager$RecentTaskInfo;
    const/16 v16, 0x0

    .line 4867
    .local v16, "pkg":Ljava/lang/String;
    new-instance v11, Landroid/content/Intent;

    iget-object v0, v10, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v11, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 4868
    .local v11, "intent":Landroid/content/Intent;
    if-eqz v10, :cond_2

    .line 4869
    iget-object v0, v10, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    if-eqz v23, :cond_1

    .line 4870
    iget-object v0, v10, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4872
    :cond_1
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    if-eqz v23, :cond_2

    .line 4873
    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    .line 4876
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$27;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .line 4877
    .local v18, "pm":Landroid/content/pm/PackageManager;
    if-nez v5, :cond_3

    .line 4878
    new-instance v23, Landroid/content/Intent;

    const-string v25, "android.intent.action.MAIN"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v25, "android.intent.category.HOME"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v23

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 4882
    :cond_3
    if-eqz v5, :cond_5

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    .line 4887
    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 4888
    iget-object v0, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4864
    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 4892
    :cond_5
    iget v9, v10, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 4893
    .local v9, "id":I
    const/4 v13, 0x0

    .line 4895
    .local v13, "isTop":Z
    if-eqz v10, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$27;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mRecentTasksLoader:Lcom/android/systemui/mzrecent/RecentTasksLoader;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    .line 4896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$27;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mRecentTasksLoader:Lcom/android/systemui/mzrecent/RecentTasksLoader;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/mzrecent/RecentTasksLoader;->getFirstTask()Landroid/content/ComponentName;

    move-result-object v22

    .line 4897
    .local v22, "top":Landroid/content/ComponentName;
    if-eqz v22, :cond_6

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_6

    .line 4898
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$27;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mTopComponentName:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    if-nez v23, :cond_8

    .line 4899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$27;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-object/from16 v23, v0

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mTopComponentName:Landroid/content/ComponentName;

    .line 4900
    const/4 v13, 0x1

    .line 4913
    .end local v22    # "top":Landroid/content/ComponentName;
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$27;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isAppLocked(Ljava/lang/String;)Z

    move-result v23

    if-nez v23, :cond_7

    if-eqz v13, :cond_a

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$27;->val$manual:Z

    move/from16 v23, v0

    if-eqz v23, :cond_a

    .line 4914
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 4915
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4933
    .end local v5    # "homeInfo":Landroid/content/pm/ActivityInfo;
    .end local v6    # "i":I
    .end local v9    # "id":I
    .end local v10    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v12    # "isForExperience":Z
    .end local v13    # "isTop":Z
    .end local v16    # "pkg":Ljava/lang/String;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    .end local v21    # "taskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :catchall_0
    move-exception v23

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v23

    .line 4902
    .restart local v5    # "homeInfo":Landroid/content/pm/ActivityInfo;
    .restart local v6    # "i":I
    .restart local v9    # "id":I
    .restart local v10    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    .restart local v11    # "intent":Landroid/content/Intent;
    .restart local v12    # "isForExperience":Z
    .restart local v13    # "isTop":Z
    .restart local v16    # "pkg":Ljava/lang/String;
    .restart local v18    # "pm":Landroid/content/pm/PackageManager;
    .restart local v21    # "taskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    .restart local v22    # "top":Landroid/content/ComponentName;
    :cond_8
    :try_start_1
    sget-object v23, Lcom/android/systemui/mzrecent/RecentTasksLoader;->mGallery3dPkg:Ljava/lang/String;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$27;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mTopComponentName:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_9

    .line 4905
    const/4 v13, 0x0

    goto :goto_2

    .line 4907
    :cond_9
    const/4 v13, 0x1

    goto :goto_2

    .line 4919
    .end local v22    # "top":Landroid/content/ComponentName;
    :cond_a
    if-eqz v12, :cond_c

    const-string v23, "com.android.settings"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_b

    const-string v23, "com.meizu.media.video"

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_c

    .line 4922
    :cond_b
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 4923
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 4927
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$27;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCachedInfos:Ljava/util/HashMap;

    move-object/from16 v23, v0

    invoke-virtual {v11}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$27;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v9, v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->removeTaskPolicy(ILjava/lang/String;)V

    .line 4929
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4

    .line 4930
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 4933
    .end local v9    # "id":I
    .end local v10    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v13    # "isTop":Z
    .end local v16    # "pkg":Ljava/lang/String;
    .end local v18    # "pm":Landroid/content/pm/PackageManager;
    :cond_d
    monitor-exit v24
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4934
    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$27;->publishProgress([Ljava/lang/Object;)V

    .line 4935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$27;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mAM:Landroid/app/ActivityManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v20

    .line 4937
    .local v20, "runningProcesses":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_e
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 4938
    .local v19, "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    move-object/from16 v0, v19

    iget-object v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    .local v4, "arr$":[Ljava/lang/String;
    array-length v15, v4

    .local v15, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_3
    if-ge v8, v15, :cond_e

    aget-object v16, v4, v8

    .line 4939
    .restart local v16    # "pkg":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_f

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_f

    .line 4940
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4938
    :cond_f
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 4945
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v8    # "i$":I
    .end local v15    # "len$":I
    .end local v16    # "pkg":Ljava/lang/String;
    .end local v19    # "process":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_10
    const/4 v6, 0x0

    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v23

    move/from16 v0, v23

    if-ge v6, v0, :cond_11

    .line 4946
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$27;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->forceStopPolicy(Ljava/lang/String;)V

    .line 4945
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 4948
    :cond_11
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 4949
    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 4950
    const/16 v23, 0x0

    return-object v23
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 4844
    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$27;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 0
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
    .line 4963
    .local p1, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/systemui/mzrecent/TaskDescription;>;"
    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2
    .param p1, "values"    # [Ljava/lang/Integer;

    .prologue
    .line 4956
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$27;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->initRecentTasks()V

    .line 4957
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$27;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mManuRemoveTask:Z

    .line 4958
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 4844
    check-cast p1, [Ljava/lang/Integer;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$27;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
