.class Lcom/android/systemui/mzrecent/RecentSlidingDrawer$15;
.super Landroid/content/BroadcastReceiver;
.source "RecentSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;


# direct methods
.method constructor <init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)V
    .locals 0

    .prologue
    .line 2646
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$15;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 2649
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2650
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2653
    const-string v2, "reason"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2654
    .local v1, "reason":Ljava/lang/String;
    const-string v2, "recentapps"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2705
    .end local v1    # "reason":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2657
    :cond_1
    const-string v2, "meizu.intent.recent.close"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2658
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$15;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v2}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->AnimationCloseRecent()V

    goto :goto_0

    .line 2659
    :cond_2
    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2660
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$15;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v2, v2, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSelectFavorDialog:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    if-eqz v2, :cond_4

    .line 2661
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$15;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v2, v2, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSelectFavorDialog:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    invoke-virtual {v2}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2662
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$15;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v2, v2, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSelectFavorDialog:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    invoke-virtual {v2}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->dismiss()V

    .line 2664
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$15;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v2, v2, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSelectFavorDialog:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    invoke-virtual {v2}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->updateSelectTitle()V

    .line 2666
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$15;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    # invokes: Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->updateAutoText()V
    invoke-static {v2}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->access$200(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)V

    .line 2667
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$15;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v2, v2, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mEmptyIndicatorLayout:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_5

    .line 2668
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$15;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v2, v2, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mEmptyIndicatorLayout:Landroid/widget/LinearLayout;

    const v3, 0x7f0e0143

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0b0112

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 2672
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$15;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v2, v2, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCachedInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    .line 2673
    :cond_6
    const-string v2, "com.meizu.theme.change"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "notify.launcher.date.change"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 2679
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$15;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v2, v2, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCachedInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 2680
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$15;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v2}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->initRecentTasks()V

    .line 2682
    sget-boolean v2, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->FLYME4:Z

    if-nez v2, :cond_0

    .line 2683
    sget v2, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPortNeedInitFlag:I

    if-ge v2, v4, :cond_8

    .line 2684
    sput v4, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPortNeedInitFlag:I

    .line 2687
    :cond_8
    sget v2, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLandNeedInitFlag:I

    if-ge v2, v4, :cond_9

    .line 2688
    sput v4, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLandNeedInitFlag:I

    .line 2690
    :cond_9
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$15;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v2, v2, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSelectFavorDialog:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    if-eqz v2, :cond_0

    .line 2691
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$15;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v2, v2, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mSelectFavorDialog:Lcom/android/systemui/mzrecent/FavorSelectDialog;

    invoke-virtual {v2}, Lcom/android/systemui/mzrecent/FavorSelectDialog;->refreshForThemeChanged()V

    goto/16 :goto_0

    .line 2694
    :cond_a
    const-string v2, "meizu.intent.action.PACKAGE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 2696
    sput v5, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPortNeedInitFlag:I

    .line 2697
    sput v5, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLandNeedInitFlag:I

    .line 2698
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$15;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v2, v2, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCachedInfos:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 2699
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$15;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v2}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->initRecentTasks()V

    goto/16 :goto_0

    .line 2700
    :cond_b
    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2701
    sget-object v2, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLockedApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 2702
    iget-object v2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$15;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v2, v4}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->initRecentPages(Z)V

    goto/16 :goto_0
.end method
