.class Lcom/android/systemui/mzrecent/RecentSlidingDrawer$8;
.super Ljava/lang/Object;
.source "RecentSlidingDrawer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->handleFavorClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

.field final synthetic val$info:Landroid/content/pm/ResolveInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;Landroid/content/pm/ResolveInfo;)V
    .locals 0

    .prologue
    .line 1090
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$8;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iput-object p2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$8;->val$info:Landroid/content/pm/ResolveInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1095
    const/4 v5, 0x0

    .line 1098
    .local v5, "launchFromRecent":Z
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$8;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v7, v7, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mKillArrayList:Ljava/util/ArrayList;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$8;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v7, v7, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mKillArrayList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 1099
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$8;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v7, v7, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mKillArrayList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 1100
    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$8;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v7, v7, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mKillArrayList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/mzrecent/TaskDescription;

    .line 1101
    .local v6, "task":Lcom/android/systemui/mzrecent/TaskDescription;
    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$8;->val$info:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v6, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1103
    const-string v7, "com.android.camera"

    iget-object v8, v6, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "com.android.gallery3d"

    iget-object v8, v6, Lcom/android/systemui/mzrecent/TaskDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1107
    :cond_0
    const/4 v4, 0x0

    .line 1108
    .local v4, "isGallery3d":Z
    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$8;->val$info:Landroid/content/pm/ResolveInfo;

    iget-object v8, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$8;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v8, v8, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPkgManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v6}, Lcom/android/systemui/mzrecent/TaskDescription;->getLabel()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1110
    const/4 v4, 0x1

    .line 1112
    :cond_1
    if-nez v4, :cond_3

    .line 1113
    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$8;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v7, v7, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mKillArrayList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eq v2, v7, :cond_4

    .line 1099
    .end local v4    # "isGallery3d":Z
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1119
    .restart local v4    # "isGallery3d":Z
    :cond_3
    iget v7, v6, Lcom/android/systemui/mzrecent/TaskDescription;->taskId:I

    if-ltz v7, :cond_4

    .line 1120
    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$8;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v7, v7, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1127
    .local v0, "am":Landroid/app/ActivityManager;
    iget v7, v6, Lcom/android/systemui/mzrecent/TaskDescription;->taskId:I

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$8;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v9}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->createActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v0, v7, v8, v9}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    .line 1130
    const/4 v5, 0x1

    .line 1151
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v2    # "i":I
    .end local v4    # "isGallery3d":Z
    .end local v6    # "task":Lcom/android/systemui/mzrecent/TaskDescription;
    :cond_4
    :goto_1
    if-nez v5, :cond_5

    .line 1153
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1154
    .local v3, "intent":Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1155
    new-instance v1, Landroid/content/ComponentName;

    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$8;->val$info:Landroid/content/pm/ResolveInfo;

    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$8;->val$info:Landroid/content/pm/ResolveInfo;

    iget-object v8, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v7, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1158
    .local v1, "cn":Landroid/content/ComponentName;
    invoke-virtual {v3, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1164
    const/high16 v7, 0x14000000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1166
    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$8;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v7, v7, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/os/UserHandle;

    const/4 v9, -0x2

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v7, v3, v8}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1177
    .end local v1    # "cn":Landroid/content/ComponentName;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_5
    :goto_2
    return-void

    .line 1133
    .restart local v2    # "i":I
    .restart local v6    # "task":Lcom/android/systemui/mzrecent/TaskDescription;
    :cond_6
    iget v7, v6, Lcom/android/systemui/mzrecent/TaskDescription;->taskId:I

    if-ltz v7, :cond_4

    .line 1134
    iget-object v7, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$8;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v7, v7, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 1141
    .restart local v0    # "am":Landroid/app/ActivityManager;
    iget v7, v6, Lcom/android/systemui/mzrecent/TaskDescription;->taskId:I

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$8;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v9}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->createActivityOptions()Landroid/app/ActivityOptions;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v0, v7, v8, v9}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1144
    const/4 v5, 0x1

    .line 1145
    goto :goto_1

    .line 1174
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v2    # "i":I
    .end local v6    # "task":Lcom/android/systemui/mzrecent/TaskDescription;
    :catch_0
    move-exception v7

    goto :goto_2
.end method
