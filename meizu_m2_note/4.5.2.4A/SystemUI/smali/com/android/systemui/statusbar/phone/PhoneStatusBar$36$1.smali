.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;

.field final synthetic val$snapshot:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 3903
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1;->val$snapshot:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 3908
    const-wide/16 v2, 0xa

    .line 3909
    .local v2, "ROW_DELAY_DECREMENT":J
    const-wide/16 v6, 0x8c

    .line 3910
    .local v6, "currentDelay":J
    const-wide/16 v10, 0x0

    .line 3919
    .local v10, "totalDelay":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/android/systemui/statusbar/policy/NotificationRowLayout;->setViewRemoval(Z)V

    .line 3921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1$1;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPostCollapseCleanup:Ljava/lang/Runnable;

    .line 3940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1;->val$snapshot:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 3941
    .local v9, "sampleView":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v15

    .line 3942
    .local v15, "width":I
    invoke-virtual {v9}, Landroid/view/View;->isLayoutRtl()Z

    move-result v16

    if-eqz v16, :cond_0

    const/4 v5, -0x1

    .line 3943
    .local v5, "dir":I
    :goto_0
    mul-int v16, v5, v15

    mul-int/lit8 v14, v16, 0x8

    .line 3944
    .local v14, "velocity":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1;->val$snapshot:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 3945
    .local v4, "_v":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v16

    new-instance v17, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1$2;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4, v14}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1$2;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1;Landroid/view/View;I)V

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v10, v11}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3959
    const-wide/16 v16, 0x32

    const-wide/16 v18, 0xa

    sub-long v18, v6, v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 3960
    add-long/2addr v10, v6

    .line 3961
    goto :goto_1

    .line 3942
    .end local v4    # "_v":Landroid/view/View;
    .end local v5    # "dir":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v14    # "velocity":I
    :cond_0
    const/4 v5, 0x1

    goto :goto_0

    .line 3963
    .restart local v5    # "dir":I
    .restart local v8    # "i$":Ljava/util/Iterator;
    .restart local v14    # "velocity":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    instance-of v0, v0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 3971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mClearButton:Landroid/view/View;

    move-object/from16 v16, v0

    check-cast v16, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;->getMInDuration()J

    move-result-wide v12

    .line 3972
    .local v12, "totalDelayForRunnable":J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v16

    new-instance v17, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1$3;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12, v13}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1$3;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1;J)V

    invoke-virtual/range {v16 .. v17}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->post(Ljava/lang/Runnable;)Z

    .line 3989
    .end local v12    # "totalDelayForRunnable":J
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1;->this$1:Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v16, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static/range {v16 .. v16}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$4900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v16

    new-instance v17, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1$4;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar$36$1;)V

    const-wide/16 v18, 0xe1

    add-long v18, v18, v10

    invoke-virtual/range {v16 .. v19}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3995
    return-void
.end method
