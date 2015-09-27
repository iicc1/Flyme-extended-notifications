.class public Lcom/android/systemui/floattouch/RecentTask;
.super Ljava/lang/Object;
.source "RecentTask.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/floattouch/RecentTask$RecordTask;
    }
.end annotation


# instance fields
.field final context:Landroid/content/Context;

.field private currentTask:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

.field final handler:Landroid/os/Handler;

.field private recordTaskMap:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/systemui/floattouch/RecentTask$RecordTask;",
            ">;"
        }
    .end annotation
.end field

.field shouldDealWithHome:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/floattouch/RecentTask;->shouldDealWithHome:Z

    .line 35
    iput-object p2, p0, Lcom/android/systemui/floattouch/RecentTask;->handler:Landroid/os/Handler;

    .line 36
    iput-object p1, p0, Lcom/android/systemui/floattouch/RecentTask;->context:Landroid/content/Context;

    .line 37
    return-void
.end method

.method static createActivityOptions(Landroid/content/Context;I)Landroid/os/Bundle;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "oriTo"    # I

    .prologue
    .line 294
    if-gez p1, :cond_0

    .line 295
    const v0, 0xa040023

    .line 296
    .local v0, "enter":I
    const v1, 0xa040024

    .line 301
    .local v1, "exit":I
    :goto_0
    invoke-static {p0, v0, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    return-object v2

    .line 298
    .end local v0    # "enter":I
    .end local v1    # "exit":I
    :cond_0
    const v0, 0xa040021

    .line 299
    .restart local v0    # "enter":I
    const v1, 0xa040022

    .restart local v1    # "exit":I
    goto :goto_0
.end method

.method static log(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 307
    return-void
.end method


# virtual methods
.method final loadRecentTask(Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p1, "recentTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/floattouch/RecentTask;->context:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 45
    .local v10, "pm":Landroid/content/pm/PackageManager;
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v11

    .line 46
    .local v11, "size":I
    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V

    .line 48
    .local v14, "thisRecordTasks":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/android/systemui/floattouch/RecentTask$RecordTask;>;"
    new-instance v15, Landroid/content/Intent;

    const-string v16, "android.intent.action.MAIN"

    invoke-direct/range {v15 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v16, "android.intent.category.HOME"

    invoke-virtual/range {v15 .. v16}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v10, v0}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 50
    .local v1, "homeInfo":Landroid/content/pm/ActivityInfo;
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/systemui/floattouch/RecentTask;->shouldDealWithHome:Z

    .line 52
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v11, :cond_b

    .line 53
    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 55
    .local v5, "info":Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v6, Landroid/content/Intent;

    iget-object v15, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-direct {v6, v15}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 56
    .local v6, "intent":Landroid/content/Intent;
    iget-object v15, v5, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v15, :cond_0

    .line 57
    iget-object v15, v5, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v6, v15}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 59
    :cond_0
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 61
    .local v9, "packageName":Ljava/lang/String;
    if-nez v9, :cond_2

    .line 52
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 65
    :cond_2
    if-eqz v1, :cond_4

    .line 66
    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    iget-object v15, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 68
    if-nez v2, :cond_3

    const/4 v15, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v15, v0, Lcom/android/systemui/floattouch/RecentTask;->shouldDealWithHome:Z

    goto :goto_1

    :cond_3
    const/4 v15, 0x0

    goto :goto_2

    .line 73
    :cond_4
    const-string v15, "com.meizu.setup"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 75
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "remove "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/systemui/floattouch/RecentTask;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 77
    :cond_5
    const-string v15, "com.android.phone"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 78
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "remove "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/systemui/floattouch/RecentTask;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 80
    :cond_6
    const-string v15, "android"

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 81
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "remove "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/systemui/floattouch/RecentTask;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 86
    :cond_7
    iget v15, v5, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-gez v15, :cond_8

    const-string v15, "android.intent.action.MAIN"

    iget-object v0, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1

    .line 91
    :cond_8
    invoke-virtual {v14}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    .line 92
    .local v12, "task":Lcom/android/systemui/floattouch/RecentTask$RecordTask;
    iget-object v15, v12, Lcom/android/systemui/floattouch/RecentTask$RecordTask;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 93
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "remove "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/android/systemui/floattouch/RecentTask;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 98
    .end local v12    # "task":Lcom/android/systemui/floattouch/RecentTask$RecordTask;
    :cond_a
    new-instance v15, Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    move-object/from16 v0, p0

    invoke-direct {v15, v0, v6}, Lcom/android/systemui/floattouch/RecentTask$RecordTask;-><init>(Lcom/android/systemui/floattouch/RecentTask;Landroid/content/Intent;)V

    invoke-virtual {v14, v15}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 101
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v5    # "info":Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v6    # "intent":Landroid/content/Intent;
    .end local v9    # "packageName":Ljava/lang/String;
    :cond_b
    const/4 v8, 0x0

    .line 102
    .local v8, "needRefresh":Z
    invoke-virtual {v14}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .line 103
    .local v13, "thisIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/floattouch/RecentTask$RecordTask;>;"
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/floattouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    if-eqz v15, :cond_f

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/systemui/floattouch/RecentTask;->shouldDealWithHome:Z

    if-nez v15, :cond_f

    .line 104
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/floattouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    invoke-virtual {v15}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 105
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/floattouch/RecentTask$RecordTask;>;"
    :cond_c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_d

    .line 106
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_e

    .line 107
    const/4 v8, 0x1

    .line 118
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/floattouch/RecentTask$RecordTask;>;"
    :cond_d
    :goto_3
    if-eqz v8, :cond_14

    .line 119
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/floattouch/RecentTask;->currentTask:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    .line 120
    new-instance v15, Ljava/util/LinkedList;

    invoke-direct {v15}, Ljava/util/LinkedList;-><init>()V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/floattouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    .line 121
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/floattouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    invoke-virtual {v15, v14}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 122
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/floattouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    invoke-virtual {v15}, Ljava/util/LinkedList;->size()I

    move-result v11

    .line 124
    const/4 v15, 0x1

    if-le v11, v15, :cond_15

    .line 125
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/floattouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    invoke-virtual {v15}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    .line 126
    .restart local v12    # "task":Lcom/android/systemui/floattouch/RecentTask$RecordTask;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/floattouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    invoke-virtual {v15, v12}, Ljava/util/LinkedList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 127
    .local v4, "index":I
    add-int/lit8 v15, v11, -0x1

    if-ne v4, v15, :cond_10

    .line 128
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/floattouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    add-int/lit8 v16, v4, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    iput-object v15, v12, Lcom/android/systemui/floattouch/RecentTask$RecordTask;->back:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    goto :goto_4

    .line 110
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "index":I
    .end local v12    # "task":Lcom/android/systemui/floattouch/RecentTask$RecordTask;
    .restart local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/floattouch/RecentTask$RecordTask;>;"
    :cond_e
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    iget-object v0, v15, Lcom/android/systemui/floattouch/RecentTask$RecordTask;->packageName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    iget-object v15, v15, Lcom/android/systemui/floattouch/RecentTask$RecordTask;->packageName:Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_c

    .line 111
    const/4 v8, 0x1

    .line 112
    goto :goto_3

    .line 116
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/systemui/floattouch/RecentTask$RecordTask;>;"
    :cond_f
    const/4 v8, 0x1

    goto :goto_3

    .line 129
    .restart local v3    # "i$":Ljava/util/Iterator;
    .restart local v4    # "index":I
    .restart local v12    # "task":Lcom/android/systemui/floattouch/RecentTask$RecordTask;
    :cond_10
    if-nez v4, :cond_11

    .line 130
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/floattouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    const/16 v16, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    iput-object v15, v12, Lcom/android/systemui/floattouch/RecentTask$RecordTask;->toward:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    goto :goto_4

    .line 132
    :cond_11
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/floattouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    add-int/lit8 v16, v4, 0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    iput-object v15, v12, Lcom/android/systemui/floattouch/RecentTask$RecordTask;->toward:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    .line 133
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/floattouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    add-int/lit8 v16, v4, -0x1

    invoke-virtual/range {v15 .. v16}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    iput-object v15, v12, Lcom/android/systemui/floattouch/RecentTask$RecordTask;->back:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    goto :goto_4

    .line 136
    .end local v4    # "index":I
    .end local v12    # "task":Lcom/android/systemui/floattouch/RecentTask$RecordTask;
    :cond_12
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/floattouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    invoke-virtual {v15}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/floattouch/RecentTask;->currentTask:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    .line 140
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_13
    :goto_5
    const-string v15, "SmartTouch"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "refresh task size : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/floattouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->size()I

    move-result v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_14
    return-void

    .line 137
    :cond_15
    const/4 v15, 0x1

    if-ne v11, v15, :cond_13

    .line 138
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/floattouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    invoke-virtual {v15}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    move-object/from16 v0, p0

    iput-object v15, v0, Lcom/android/systemui/floattouch/RecentTask;->currentTask:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    goto :goto_5
.end method

.method final recent(Landroid/app/ActivityManager;Ljava/util/List;I)Z
    .locals 11
    .param p1, "am"    # Landroid/app/ActivityManager;
    .param p3, "oriTo"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActivityManager;",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p2, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 218
    iget-object v8, p0, Lcom/android/systemui/floattouch/RecentTask;->context:Landroid/content/Context;

    const-string v9, "recent"

    invoke-static {v8, v9}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    const/4 v5, 0x0

    .line 220
    .local v5, "toTask":Landroid/app/ActivityManager$RecentTaskInfo;
    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 221
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    .line 222
    .local v3, "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    iget-object v8, p0, Lcom/android/systemui/floattouch/RecentTask;->currentTask:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    iget-object v8, v8, Lcom/android/systemui/floattouch/RecentTask$RecordTask;->packageName:Ljava/lang/String;

    iget-object v9, v3, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 223
    move-object v5, v3

    .line 229
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "taskInfo":Landroid/app/ActivityManager$RecentTaskInfo;
    :cond_1
    if-nez v5, :cond_2

    .line 269
    :goto_0
    return v6

    .line 231
    :cond_2
    iget v8, v5, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    if-lez v8, :cond_3

    .line 232
    const-string v6, "SmartTouch"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "move task to : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/systemui/floattouch/RecentTask;->currentTask:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    iget-object v9, v9, Lcom/android/systemui/floattouch/RecentTask$RecordTask;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget v6, v5, Landroid/app/ActivityManager$RecentTaskInfo;->id:I

    iget-object v8, p0, Lcom/android/systemui/floattouch/RecentTask;->context:Landroid/content/Context;

    invoke-static {v8, p3}, Lcom/android/systemui/floattouch/RecentTask;->createActivityOptions(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p1, v6, v7, v8}, Landroid/app/ActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    move v6, v7

    .line 234
    goto :goto_0

    .line 236
    :cond_3
    const-string v8, "SmartTouch"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "new task to : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/floattouch/RecentTask;->currentTask:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    iget-object v10, v10, Lcom/android/systemui/floattouch/RecentTask$RecordTask;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :try_start_0
    iget-object v4, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 240
    .local v4, "toIntent":Landroid/content/Intent;
    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "android.intent.action.MAIN"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 243
    iget-object v8, p0, Lcom/android/systemui/floattouch/RecentTask;->context:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 244
    .local v2, "pm":Landroid/content/pm/PackageManager;
    iget-object v8, p0, Lcom/android/systemui/floattouch/RecentTask;->currentTask:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    iget-object v8, v8, Lcom/android/systemui/floattouch/RecentTask$RecordTask;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 246
    if-eqz v4, :cond_4

    .line 247
    const/high16 v8, 0x200000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 248
    const-string v8, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    :goto_1
    const-string v8, "start launcherer activity"

    invoke-static {v8}, Lcom/android/systemui/floattouch/RecentTask;->log(Ljava/lang/String;)V

    .line 259
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_2
    iget-object v8, p0, Lcom/android/systemui/floattouch/RecentTask;->context:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/systemui/floattouch/RecentTask;->context:Landroid/content/Context;

    invoke-static {v9, p3}, Lcom/android/systemui/floattouch/RecentTask;->createActivityOptions(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object v9

    invoke-virtual {v8, v4, v9}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    move v6, v7

    .line 260
    goto/16 :goto_0

    .line 250
    .restart local v2    # "pm":Landroid/content/pm/PackageManager;
    :cond_4
    iget-object v4, v5, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    .line 251
    const/high16 v8, 0x10100000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 261
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    .end local v4    # "toIntent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 262
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v7, "Unable to launch recent task"

    invoke-static {v7}, Lcom/android/systemui/floattouch/RecentTask;->log(Ljava/lang/String;)V

    .line 263
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 268
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_3
    const-string v7, "SmartTouch"

    const-string v8, "new task error"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 256
    .restart local v4    # "toIntent":Landroid/content/Intent;
    :cond_5
    const/high16 v8, 0x10100000

    :try_start_1
    invoke-virtual {v4, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 264
    .end local v4    # "toIntent":Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "other error"

    invoke-static {v7}, Lcom/android/systemui/floattouch/RecentTask;->log(Ljava/lang/String;)V

    .line 266
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method final recentL()Z
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 145
    const-string v4, "SmartTouch"

    const-string v5, "switch task forward"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v4, "forward"

    invoke-static {v4}, Lcom/android/systemui/floattouch/RecentTask;->log(Ljava/lang/String;)V

    .line 147
    iget-object v4, p0, Lcom/android/systemui/floattouch/RecentTask;->context:Landroid/content/Context;

    const-string v5, "activity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 148
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v4, 0xa

    const/4 v5, 0x2

    const/4 v6, -0x2

    invoke-virtual {v0, v4, v5, v6}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v2

    .line 151
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual {p0, v2}, Lcom/android/systemui/floattouch/RecentTask;->refreshIfNeed(Ljava/util/List;)V

    .line 153
    iget-object v4, p0, Lcom/android/systemui/floattouch/RecentTask;->currentTask:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    if-nez v4, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v3

    .line 157
    :cond_1
    iget-boolean v4, p0, Lcom/android/systemui/floattouch/RecentTask;->shouldDealWithHome:Z

    if-eqz v4, :cond_2

    .line 158
    iput-boolean v3, p0, Lcom/android/systemui/floattouch/RecentTask;->shouldDealWithHome:Z

    .line 173
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/floattouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    iget-object v4, p0, Lcom/android/systemui/floattouch/RecentTask;->currentTask:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 174
    iget-object v3, p0, Lcom/android/systemui/floattouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    iget-object v4, p0, Lcom/android/systemui/floattouch/RecentTask;->currentTask:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 176
    const/4 v3, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/floattouch/RecentTask;->recent(Landroid/app/ActivityManager;Ljava/util/List;I)Z

    move-result v3

    goto :goto_0

    .line 160
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/floattouch/RecentTask;->currentTask:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    iget-object v4, v4, Lcom/android/systemui/floattouch/RecentTask$RecordTask;->toward:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    if-eqz v4, :cond_0

    .line 164
    iget-object v4, p0, Lcom/android/systemui/floattouch/RecentTask;->currentTask:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    iget-object v4, v4, Lcom/android/systemui/floattouch/RecentTask$RecordTask;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/floattouch/RecentTask;->currentTask:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    iget-object v5, v5, Lcom/android/systemui/floattouch/RecentTask$RecordTask;->toward:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    iget-object v5, v5, Lcom/android/systemui/floattouch/RecentTask$RecordTask;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/floattouch/RecentTask;->currentTask:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    iget-object v1, v4, Lcom/android/systemui/floattouch/RecentTask$RecordTask;->toward:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    .line 167
    .local v1, "recordTask":Lcom/android/systemui/floattouch/RecentTask$RecordTask;
    :goto_2
    if-eqz v1, :cond_0

    .line 170
    iput-object v1, p0, Lcom/android/systemui/floattouch/RecentTask;->currentTask:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    goto :goto_1

    .line 164
    .end local v1    # "recordTask":Lcom/android/systemui/floattouch/RecentTask$RecordTask;
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/floattouch/RecentTask;->currentTask:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    iget-object v4, v4, Lcom/android/systemui/floattouch/RecentTask$RecordTask;->toward:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    iget-object v1, v4, Lcom/android/systemui/floattouch/RecentTask$RecordTask;->toward:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    goto :goto_2
.end method

.method final recentR()Z
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 181
    const-string v5, "SmartTouch"

    const-string v6, "switch task back"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const-string v5, "back"

    invoke-static {v5}, Lcom/android/systemui/floattouch/RecentTask;->log(Ljava/lang/String;)V

    .line 184
    iget-object v5, p0, Lcom/android/systemui/floattouch/RecentTask;->context:Landroid/content/Context;

    const-string v6, "activity"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 185
    .local v0, "am":Landroid/app/ActivityManager;
    const/16 v5, 0xa

    const/4 v6, 0x2

    const/4 v7, -0x2

    invoke-virtual {v0, v5, v6, v7}, Landroid/app/ActivityManager;->getRecentTasksForUser(III)Ljava/util/List;

    move-result-object v2

    .line 188
    .local v2, "tasks":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual {p0, v2}, Lcom/android/systemui/floattouch/RecentTask;->refreshIfNeed(Ljava/util/List;)V

    .line 190
    iget-object v5, p0, Lcom/android/systemui/floattouch/RecentTask;->currentTask:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    if-nez v5, :cond_1

    .line 214
    :cond_0
    :goto_0
    return v3

    .line 194
    :cond_1
    iget-boolean v5, p0, Lcom/android/systemui/floattouch/RecentTask;->shouldDealWithHome:Z

    if-nez v5, :cond_0

    .line 197
    iget-object v5, p0, Lcom/android/systemui/floattouch/RecentTask;->currentTask:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    iget-object v5, v5, Lcom/android/systemui/floattouch/RecentTask$RecordTask;->back:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    if-eqz v5, :cond_0

    .line 201
    iget-object v5, p0, Lcom/android/systemui/floattouch/RecentTask;->currentTask:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    iget-object v5, v5, Lcom/android/systemui/floattouch/RecentTask$RecordTask;->packageName:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/floattouch/RecentTask;->currentTask:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    iget-object v6, v6, Lcom/android/systemui/floattouch/RecentTask$RecordTask;->back:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    iget-object v6, v6, Lcom/android/systemui/floattouch/RecentTask$RecordTask;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/floattouch/RecentTask;->currentTask:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    iget-object v1, v5, Lcom/android/systemui/floattouch/RecentTask$RecordTask;->back:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    .line 204
    .local v1, "recordTask":Lcom/android/systemui/floattouch/RecentTask$RecordTask;
    :goto_1
    if-eqz v1, :cond_0

    .line 207
    iput-object v1, p0, Lcom/android/systemui/floattouch/RecentTask;->currentTask:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    .line 210
    iget-object v3, p0, Lcom/android/systemui/floattouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    iget-object v5, p0, Lcom/android/systemui/floattouch/RecentTask;->currentTask:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 211
    iget-object v3, p0, Lcom/android/systemui/floattouch/RecentTask;->recordTaskMap:Ljava/util/LinkedList;

    iget-object v5, p0, Lcom/android/systemui/floattouch/RecentTask;->currentTask:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 213
    invoke-virtual {p0, v0, v2, v4}, Lcom/android/systemui/floattouch/RecentTask;->recent(Landroid/app/ActivityManager;Ljava/util/List;I)Z

    move v3, v4

    .line 214
    goto :goto_0

    .line 201
    .end local v1    # "recordTask":Lcom/android/systemui/floattouch/RecentTask$RecordTask;
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/floattouch/RecentTask;->currentTask:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    iget-object v5, v5, Lcom/android/systemui/floattouch/RecentTask$RecordTask;->back:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    iget-object v1, v5, Lcom/android/systemui/floattouch/RecentTask$RecordTask;->back:Lcom/android/systemui/floattouch/RecentTask$RecordTask;

    goto :goto_1
.end method

.method final refreshIfNeed(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "recentTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual {p0, p1}, Lcom/android/systemui/floattouch/RecentTask;->loadRecentTask(Ljava/util/List;)V

    .line 41
    return-void
.end method
