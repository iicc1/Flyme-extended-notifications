.class Lcom/android/systemui/mzrecent/RecentSlidingDrawer$14;
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
    .line 2620
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$14;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 2625
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2626
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2629
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$14;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->findAllResolveInfo()V

    .line 2630
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$14;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iput-boolean v2, v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mIsNeedUpdteMethod:Z

    .line 2631
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$14;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iput-boolean v2, v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mIsNeedUpdteLivePaper:Z

    .line 2632
    sput v3, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mPortNeedInitFlag:I

    .line 2633
    sput v3, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mLandNeedInitFlag:I

    .line 2634
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2635
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$14;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v1, v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCachedInfos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2636
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$14;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v1, v2}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->initRecentPages(Z)V

    .line 2639
    :cond_1
    return-void
.end method
