.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addRecentLayer(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 6605
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .locals 5

    .prologue
    const/16 v4, 0x40a

    const/4 v2, 0x0

    .line 6610
    const-string v0, "PhoneStatusBar"

    const-string v1, "onDrawerClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6611
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6612
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->initRecentPages(Z)V

    .line 6624
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentPanelOpend:Z
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8202(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 6625
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v0

    iput-boolean v2, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mManuRemoveTask:Z

    .line 6626
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 6627
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6629
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$50;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x410

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6632
    return-void
.end method
