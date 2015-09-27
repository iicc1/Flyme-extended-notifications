.class Lcom/android/systemui/mzrecent/RecentSlidingDrawer$25;
.super Ljava/lang/Object;
.source "RecentSlidingDrawer.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->setBlurView(Landroid/view/View;)V
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
    .line 4651
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$25;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 4662
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$25;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iput-boolean v1, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBlurViewAttached:Z

    .line 4663
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$25;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-boolean v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mNeedBlurWhenAttached:Z

    if-eqz v0, :cond_0

    .line 4664
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$25;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4666
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$25;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBlurView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->blurUnderMeRect(Z)V

    .line 4667
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$25;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBlurView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setStaticBlurMode(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4671
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$25;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mNeedBlurWhenAttached:Z

    .line 4673
    :cond_0
    return-void

    .line 4668
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 4656
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$25;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mBlurViewAttached:Z

    .line 4657
    return-void
.end method
