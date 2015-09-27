.class Lcom/android/systemui/mzrecent/RecentSlidingDrawer$19;
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


# direct methods
.method constructor <init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)V
    .locals 0

    .prologue
    .line 2901
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$19;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2906
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$19;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2907
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$19;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->animateClose()V

    .line 2909
    :cond_0
    return-void
.end method
