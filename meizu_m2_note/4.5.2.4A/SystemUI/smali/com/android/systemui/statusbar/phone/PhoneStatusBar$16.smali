.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;
.super Landroid/os/Handler;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
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
    .line 1471
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    const/4 v4, 0x1

    .line 1476
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 1557
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1478
    :pswitch_1
    sget v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurRotation:I

    if-nez v1, :cond_1

    .line 1479
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1482
    :cond_1
    sget v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurRotation:I

    if-eq v1, v4, :cond_2

    sget v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurRotation:I

    if-ne v1, v2, :cond_3

    .line 1483
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentDrawerLand:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentDrawerLand:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1487
    :cond_3
    sget v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurRotation:I

    if-ne v1, v2, :cond_0

    .line 1488
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentDrawerLandReverse:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentDrawerLandReverse:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1494
    :pswitch_2
    sget v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurRotation:I

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1496
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->animateClose()V

    .line 1506
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-boolean v3, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPointDown:Z

    goto :goto_0

    .line 1497
    :cond_5
    sget v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurRotation:I

    if-eq v1, v4, :cond_6

    sget v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurRotation:I

    if-ne v1, v2, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentDrawerLand:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentDrawerLand:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1500
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentDrawerLand:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->animateClose()V

    goto :goto_1

    .line 1501
    :cond_7
    sget v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurRotation:I

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentDrawerLandReverse:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentDrawerLandReverse:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1504
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentDrawerLandReverse:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->animateClose()V

    goto :goto_1

    .line 1509
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    sget v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurRotation:I

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addRecentLayer(I)V
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)V

    goto/16 :goto_0

    .line 1512
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateRecentPanel(I)V

    goto/16 :goto_0

    .line 1515
    :pswitch_5
    sget v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurRotation:I

    if-nez v1, :cond_8

    .line 1516
    const-string v1, "PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_DELAY_UPDATE_RECENT, rotation 0,   mManuRemoveTask = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mManuRemoveTask:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mManuRemoveTask:Z

    if-nez v1, :cond_0

    .line 1520
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->initRecentPages(Z)V

    goto/16 :goto_0

    .line 1522
    :cond_8
    sget v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurRotation:I

    if-eq v1, v4, :cond_9

    sget v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurRotation:I

    if-ne v1, v2, :cond_a

    .line 1523
    :cond_9
    const-string v1, "PhoneStatusBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_DELAY_UPDATE_RECENT, rotation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurRotation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mManuRemoveTask = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentDrawerLand:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mManuRemoveTask:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentDrawerLand:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentDrawerLand:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mManuRemoveTask:Z

    if-nez v1, :cond_0

    .line 1528
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentDrawerLand:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->initRecentPages(Z)V

    goto/16 :goto_0

    .line 1530
    :cond_a
    sget v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCurRotation:I

    if-ne v1, v2, :cond_0

    .line 1531
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentDrawerLandReverse:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1532
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentDrawerLandReverse:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->initRecentPages(Z)V

    goto/16 :goto_0

    .line 1537
    :pswitch_6
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 1538
    .local v0, "temp":F
    sget v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mDownPos:F

    sub-float/2addr v1, v0

    const/high16 v2, 0x41f00000    # 30.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 1539
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->cancelRecent()V
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto/16 :goto_0

    .line 1543
    .end local v0    # "temp":F
    :pswitch_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateRecentValid(Z)V

    .line 1544
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v2, "open"

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getCurRecentAppAmount()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/systemui/SystemUIMobEventUtils;->collectRecentPanleStatus(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1549
    :pswitch_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateRecentValid(Z)V

    .line 1550
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const-string v2, "close"

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$16;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentDrawer:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->getCurRecentAppAmount()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/systemui/SystemUIMobEventUtils;->collectRecentPanleStatus(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 1476
    nop

    :pswitch_data_0
    .packed-switch 0x405
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
