.class Lcom/android/systemui/mzrecent/RecentSlidingDrawer$18;
.super Ljava/lang/Object;
.source "RecentSlidingDrawer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->forceStopPackage(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

.field final synthetic val$taskDescription:Lcom/android/systemui/mzrecent/TaskDescription;


# direct methods
.method constructor <init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;Lcom/android/systemui/mzrecent/TaskDescription;)V
    .locals 0

    .prologue
    .line 2880
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$18;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iput-object p2, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$18;->val$taskDescription:Lcom/android/systemui/mzrecent/TaskDescription;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2885
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$18;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$18;->val$taskDescription:Lcom/android/systemui/mzrecent/TaskDescription;

    invoke-virtual {v0, v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->clearRecentAppsByPkgBackground(Lcom/android/systemui/mzrecent/TaskDescription;)V

    .line 2886
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$18;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/SystemUIMobEventUtils;->collectClearSingle(Landroid/content/Context;)V

    .line 2887
    return-void
.end method
