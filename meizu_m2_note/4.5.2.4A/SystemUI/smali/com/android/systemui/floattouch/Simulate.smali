.class public Lcom/android/systemui/floattouch/Simulate;
.super Ljava/lang/Object;
.source "Simulate.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method public static back(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 33
    const-string v0, "SmartTouch"

    const-string v1, "simulate back"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v0, Lcom/android/systemui/floattouch/Simulate$1;

    invoke-direct {v0}, Lcom/android/systemui/floattouch/Simulate$1;-><init>()V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    const-string v0, "back"

    invoke-static {p0, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method static createActivityOptions(Landroid/content/Context;I)Landroid/os/Bundle;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oriTo"    # I

    .prologue
    .line 79
    const/high16 v0, 0x7f050000

    .line 80
    .local v0, "enter":I
    const v1, 0x7f050001

    .line 82
    .local v1, "exit":I
    invoke-static {p0, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    return-object v2
.end method

.method public static expandNotifications(Landroid/content/Context;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const-string v3, "SmartTouch"

    const-string v4, "simulate expandNotifications"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const-string v3, "statusbar"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 52
    .local v2, "statusbar":Ljava/lang/Object;
    :try_start_0
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "expandNotificationsPanel"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 53
    .local v1, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_0
    const-string v3, "expand_statusbar"

    invoke-static {p0, v3}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V

    .line 58
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static expandTask(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 97
    const-string v0, "SmartTouch"

    const-string v1, "simulate expand recenttask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.systemui.TOGGLE_RECENTS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 99
    const-string v0, "expand_task"

    invoke-static {p0, v0}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public static killTask(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 103
    const-string v15, "SmartTouch"

    const-string v16, "simulate kill current task"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v15, "activity"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 105
    .local v1, "am":Landroid/app/ActivityManager;
    const/16 v15, 0x1c

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v14

    .line 107
    .local v14, "taskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    if-nez v14, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 111
    .local v13, "pm":Landroid/content/pm/PackageManager;
    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.MAIN"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v16, "android.intent.category.HOME"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v13, v0}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v7

    .line 115
    .local v7, "homeInfo":Landroid/content/pm/ActivityInfo;
    const/4 v15, 0x0

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 116
    .local v4, "currentInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    if-eqz v4, :cond_0

    .line 121
    iget-object v15, v4, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v15, :cond_4

    .line 122
    iget-object v15, v4, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 123
    .local v5, "currentPackageName":Ljava/lang/String;
    iget-object v15, v4, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 133
    .local v2, "currentClassName":Ljava/lang/String;
    :goto_1
    :try_start_0
    iget-object v15, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2

    iget-object v15, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v15

    if-nez v15, :cond_0

    .line 140
    :cond_2
    :goto_2
    iget v3, v4, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 141
    .local v3, "currentId":I
    invoke-static {}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getInstance()Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v11

    .line 142
    .local v11, "mRecentSlidingDrawer":Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-virtual {v11, v3, v5}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->clearRecentAppsPolicy(ILjava/lang/String;)V

    .line 145
    const/4 v8, 0x1

    .local v8, "i":I
    :goto_3
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-ge v8, v15, :cond_7

    .line 146
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 147
    .local v10, "info":Landroid/app/ActivityManager$RecentTaskInfo;
    if-nez v10, :cond_5

    .line 145
    :cond_3
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 125
    .end local v2    # "currentClassName":Ljava/lang/String;
    .end local v3    # "currentId":I
    .end local v5    # "currentPackageName":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v10    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v11    # "mRecentSlidingDrawer":Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    :cond_4
    iget-object v15, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v15, :cond_0

    iget-object v15, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 128
    iget-object v15, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 129
    .restart local v5    # "currentPackageName":Ljava/lang/String;
    iget-object v15, v4, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "currentClassName":Ljava/lang/String;
    goto :goto_1

    .line 136
    :catch_0
    move-exception v6

    .line 138
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 151
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v3    # "currentId":I
    .restart local v8    # "i":I
    .restart local v10    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    .restart local v11    # "mRecentSlidingDrawer":Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    :cond_5
    iget-object v15, v10, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v15, :cond_6

    .line 152
    iget-object v15, v10, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 159
    .local v12, "packageName":Ljava/lang/String;
    :goto_5
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 160
    iget v9, v10, Landroid/app/ActivityManager$RecentTaskInfo;->persistentId:I

    .line 161
    .local v9, "id":I
    invoke-virtual {v11, v9, v12}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->clearRecentAppsPolicy(ILjava/lang/String;)V

    goto :goto_4

    .line 154
    .end local v9    # "id":I
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_6
    iget-object v15, v10, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    if-eqz v15, :cond_3

    iget-object v15, v10, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 157
    iget-object v15, v10, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .restart local v12    # "packageName":Ljava/lang/String;
    goto :goto_5

    .line 164
    .end local v10    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v12    # "packageName":Ljava/lang/String;
    :cond_7
    const-string v15, "kill_task"

    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static lockNow(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 86
    const-string v1, "SmartTouch"

    const-string v2, "simulate lock screen"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :try_start_0
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 89
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 90
    const-string v1, "lock"

    invoke-static {p0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    .end local v0    # "pm":Landroid/os/PowerManager;
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static toHome(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 61
    const-string v2, "SmartTouch"

    const-string v3, "simulate launche home"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 64
    .local v1, "it":Landroid/content/Intent;
    const v2, 0x10104000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 66
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    const/4 v2, 0x1

    :try_start_0
    invoke-static {p0, v2}, Lcom/android/systemui/floattouch/Simulate;->createActivityOptions(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    const-string v2, "tohome"

    invoke-static {p0, v2}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V

    .line 73
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
