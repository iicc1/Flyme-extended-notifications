.class Lcom/android/systemui/mzrecent/RecentSlidingDrawer$16;
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
    .line 2711
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$16;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2714
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2715
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2717
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$16;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v1, v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mCachedInfos:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 2718
    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$16;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->initRecentPages(Z)V

    .line 2720
    :cond_1
    return-void
.end method
