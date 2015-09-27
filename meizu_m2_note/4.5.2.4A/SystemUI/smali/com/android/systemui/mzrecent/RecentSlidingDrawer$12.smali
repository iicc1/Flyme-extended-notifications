.class Lcom/android/systemui/mzrecent/RecentSlidingDrawer$12;
.super Ljava/lang/Object;
.source "RecentSlidingDrawer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->handleOnClick(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

.field final synthetic val$ad:Lcom/android/systemui/mzrecent/TaskDescription;

.field final synthetic val$am:Landroid/app/ActivityManager;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;Lcom/android/systemui/mzrecent/TaskDescription;Landroid/app/ActivityManager;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1584
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$12;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iput-object p2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$12;->val$ad:Lcom/android/systemui/mzrecent/TaskDescription;

    iput-object p3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$12;->val$am:Landroid/app/ActivityManager;

    iput-object p4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$12;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1589
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$12;->val$ad:Lcom/android/systemui/mzrecent/TaskDescription;

    iget-object v3, v3, Lcom/android/systemui/mzrecent/TaskDescription;->intent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 1590
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$12;->val$ad:Lcom/android/systemui/mzrecent/TaskDescription;

    iget-object v3, v3, Lcom/android/systemui/mzrecent/TaskDescription;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1591
    .local v0, "cName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 1592
    const-string v3, "com.android.camera.Camera"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1613
    .end local v0    # "cName":Landroid/content/ComponentName;
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$12;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v3, v3, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLasTaskDescription:Lcom/android/systemui/mzrecent/TaskDescription;

    if-eqz v3, :cond_1

    .line 1614
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$12;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v3, v3, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLasTaskDescription:Lcom/android/systemui/mzrecent/TaskDescription;

    iget-object v3, v3, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    const-string v4, "com.meizu.filemanager"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1616
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1617
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "com.meizu.action.recentapp"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1618
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$12;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v3, v3, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1621
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$12;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$12;->val$ad:Lcom/android/systemui/mzrecent/TaskDescription;

    # invokes: Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->checkTaskIdValid(Lcom/android/systemui/mzrecent/TaskDescription;)Z
    invoke-static {v3, v4}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->access$100(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;Lcom/android/systemui/mzrecent/TaskDescription;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1624
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$12;->val$am:Landroid/app/ActivityManager;

    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$12;->val$ad:Lcom/android/systemui/mzrecent/TaskDescription;

    iget v4, v4, Lcom/android/systemui/mzrecent/TaskDescription;->taskId:I

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$12;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v6}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->createActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 1638
    :goto_1
    return-void

    .line 1603
    .restart local v0    # "cName":Landroid/content/ComponentName;
    :cond_2
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.meizu.filemanager"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1606
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1607
    .restart local v2    # "intent":Landroid/content/Intent;
    const-string v3, "com.meizu.action.recentapp"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1608
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$12;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v3, v3, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 1627
    .end local v0    # "cName":Landroid/content/ComponentName;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$12;->val$ad:Lcom/android/systemui/mzrecent/TaskDescription;

    iget-object v2, v3, Lcom/android/systemui/mzrecent/TaskDescription;->intent:Landroid/content/Intent;

    .line 1628
    .restart local v2    # "intent":Landroid/content/Intent;
    const v3, 0x10104000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1632
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$12;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$12;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v4}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->createActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1634
    :catch_0
    move-exception v1

    .line 1635
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1
.end method
