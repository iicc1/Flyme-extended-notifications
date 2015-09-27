.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;
.super Landroid/content/BroadcastReceiver;
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
    .line 4111
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 36
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 4114
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    .line 4115
    .local v5, "action":Ljava/lang/String;
    const-string v31, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_2

    .line 4116
    const/4 v12, 0x0

    .line 4117
    .local v12, "flags":I
    const-string v31, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 4118
    const-string v31, "reason"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 4119
    .local v25, "reason":Ljava/lang/String;
    if-eqz v25, :cond_0

    const-string v31, "recentapps"

    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_0

    .line 4120
    or-int/lit8 v12, v12, 0x2

    .line 4123
    .end local v25    # "reason":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    .line 4124
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setStatusbarExpanded(Z)V

    .line 4125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hideRecentPanel()V

    .line 4361
    .end local v12    # "flags":I
    :cond_1
    :goto_0
    return-void

    .line 4127
    :cond_2
    const-string v31, "android.intent.action.SCREEN_OFF"

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_3

    .line 4128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;
    invoke-static/range {v31 .. v32}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5002(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 4130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeExpandedInvisible()V

    .line 4131
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static/range {v31 .. v32}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 4132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyHeadsUpScreenOn(Z)V
    invoke-static/range {v31 .. v32}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    .line 4133
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->finishBarAnimations()V
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 4134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGestureBarView:Lcom/android/systemui/statusbar/phone/GestureBarView;
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/GestureBarView;

    move-result-object v31

    if-eqz v31, :cond_1

    .line 4135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGestureBarView:Lcom/android/systemui/statusbar/phone/GestureBarView;
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/GestureBarView;

    move-result-object v31

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Lcom/android/systemui/statusbar/phone/GestureBarView;->setVisibility(I)V

    goto :goto_0

    .line 4138
    :cond_3
    const-string v31, "android.intent.action.SCREEN_ON"

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_4

    .line 4139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v32

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mScreenOn:Ljava/lang/Boolean;
    invoke-static/range {v31 .. v32}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5002(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 4141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionNavigationBar()V
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 4142
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->notifyNavigationBarScreenOn(Z)V
    invoke-static/range {v31 .. v32}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    goto/16 :goto_0

    .line 4144
    :cond_4
    const-string v31, "android.net.wifi.STATE_CHANGE"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_5

    const-string v31, "android.net.wifi.WIFI_STATE_CHANGED"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_5

    const-string v31, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-nez v31, :cond_5

    const-string v31, "android.net.wifi.SCAN_RESULTS"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_6

    .line 4148
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    invoke-virtual/range {v31 .. v32}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNetApName(Z)V

    goto/16 :goto_0

    .line 4154
    :cond_6
    const-string v31, "action.change.phonestatusview"

    move-object/from16 v0, v31

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_7

    .line 4155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNetApName(Z)V

    goto/16 :goto_0

    .line 4157
    :cond_7
    const-string v31, "com.meizu.action.SHOW_GESTURE_BAR"

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_8

    .line 4158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGestureBarView:Lcom/android/systemui/statusbar/phone/GestureBarView;
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/GestureBarView;

    move-result-object v31

    const/16 v32, 0x0

    invoke-virtual/range {v31 .. v32}, Lcom/android/systemui/statusbar/phone/GestureBarView;->setVisibility(I)V

    goto/16 :goto_0

    .line 4160
    :cond_8
    const-string v31, "com.meizu.action.HIDE_GESTURE_BAR"

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_9

    .line 4161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGestureBarView:Lcom/android/systemui/statusbar/phone/GestureBarView;
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/GestureBarView;

    move-result-object v31

    const/16 v32, 0x8

    invoke-virtual/range {v31 .. v32}, Lcom/android/systemui/statusbar/phone/GestureBarView;->setVisibility(I)V

    goto/16 :goto_0

    .line 4163
    :cond_9
    const-string v31, "com.meizu.action.CHANGE_GESTURE_BAR_MODE"

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_a

    .line 4164
    const-string v31, "mode"

    const/16 v32, 0x2

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    .line 4165
    .local v20, "mode":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mGestureBarView:Lcom/android/systemui/statusbar/phone/GestureBarView;
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/GestureBarView;

    move-result-object v31

    move-object/from16 v0, v31

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/GestureBarView;->setMode(I)V

    .line 4166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->repositionGestureBar()V
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto/16 :goto_0

    .line 4168
    .end local v20    # "mode":I
    :cond_a
    const-string v31, "com.android.systemui.demo"

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_b

    .line 4169
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 4170
    .local v6, "bundle":Landroid/os/Bundle;
    if-eqz v6, :cond_1

    .line 4171
    const-string v31, "command"

    const-string v32, ""

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v6, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    .line 4172
    .local v7, "command":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v31

    if-lez v31, :cond_1

    .line 4174
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v7, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 4175
    :catch_0
    move-exception v27

    .line 4176
    .local v27, "t":Ljava/lang/Throwable;
    const-string v31, "PhoneStatusBar"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Error running demo command, intent="

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    move-object/from16 v2, v27

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 4180
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v7    # "command":Ljava/lang/String;
    .end local v27    # "t":Ljava/lang/Throwable;
    :cond_b
    const-string v31, "com.meizu.recenttask.changed"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_c

    .line 4181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/os/Handler;

    move-result-object v31

    const/16 v32, 0x40b

    invoke-virtual/range {v31 .. v32}, Landroid/os/Handler;->removeMessages(I)V

    .line 4182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentHandler:Landroid/os/Handler;
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/os/Handler;

    move-result-object v31

    const/16 v32, 0x40b

    const-wide/16 v34, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v32

    move-wide/from16 v2, v34

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 4184
    :cond_c
    const-string v31, "com.android.systemui.TOGGLE_RECENTS"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_d

    .line 4185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showRecentPanel()V
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto/16 :goto_0

    .line 4186
    :cond_d
    const-string v31, "com.android.systemui.recent.action.TOGGLE_RECENTS"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_e

    .line 4187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showRecentPanel()V
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto/16 :goto_0

    .line 4188
    :cond_e
    const-string v31, "com.android.systemui.recent.action.CLOSE"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_f

    .line 4189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->hideRecentPanel()V

    goto/16 :goto_0

    .line 4190
    :cond_f
    const-string v31, "com.android.systemui.recent.action.PRELOAD"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_10

    .line 4191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showRecentPanel()V
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto/16 :goto_0

    .line 4192
    :cond_10
    const-string v31, "meizu.intent.double_home_key"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_11

    .line 4193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showRecentPanel()V
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$2100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto/16 :goto_0

    .line 4194
    :cond_11
    const-string v31, "meizu.intent.action.PACKAGE_CHANGED"

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_12

    .line 4201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setGuestModeChanged()V
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 4202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNotificationIcons()V

    .line 4203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setThirdPartyNotifyIcon()V
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 4204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    goto/16 :goto_0

    .line 4207
    :cond_12
    const-string v31, "meizu.intent.action.FLYME_FINDPHONE_LOCK"

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_13

    .line 4208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsFlymeFindPhoneLocked:Z

    .line 4209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    const/16 v32, 0x1

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setLockPhoneViewDisplay(Z)V
    invoke-static/range {v31 .. v32}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    goto/16 :goto_0

    .line 4211
    :cond_13
    const-string v31, "meizu.intent.action.FLYME_FINDPHONE_UNLOCK"

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_14

    .line 4212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, v31

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsFlymeFindPhoneLocked:Z

    .line 4213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setLockPhoneViewDisplay(Z)V
    invoke-static/range {v31 .. v32}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    goto/16 :goto_0

    .line 4215
    :cond_14
    const-string v31, "com.meizu.systemui.action.UPDATE_NFC_VIEW"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_15

    .line 4216
    const-string v31, "visible"

    const/16 v32, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v30

    .line 4217
    .local v30, "visible":Z
    const-string v31, "style"

    const/16 v32, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    .line 4218
    .local v26, "style":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v30

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNfcEffectView(ZI)V

    goto/16 :goto_0

    .line 4219
    .end local v26    # "style":I
    .end local v30    # "visible":Z
    :cond_15
    const-string v31, "mz.android.nfc.action.MZ_NFC_P2P_STATE_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v32

    invoke-virtual/range {v31 .. v32}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_16

    .line 4221
    const-string v31, "mz.android.nfc.extra.MZ_NFC_P2P_STATE"

    const/16 v32, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v31

    if-nez v31, :cond_1

    .line 4223
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    const/16 v33, 0x0

    invoke-virtual/range {v31 .. v33}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNfcEffectView(ZI)V

    goto/16 :goto_0

    .line 4225
    :cond_16
    const-string v31, "android.intent.action.ACCESS_CONTROL_CHANGED"

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_24

    .line 4226
    const-string v31, "PhoneStatusBar"

    const-string v32, "ACCESS_CONTROL_CHANGED!!!"

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4228
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/content/Intent;->mFlymeIntent:Landroid/content/IntentExt;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/content/IntentExt;->getAccessPackageName()Ljava/lang/String;

    move-result-object v23

    .line 4230
    .local v23, "pkg":Ljava/lang/String;
    const-string v31, "fromNotification"

    const/16 v32, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 4232
    .local v13, "fromNotification":Z
    const-string v31, "PhoneStatusBar"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "changed pkg = "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4237
    if-nez v23, :cond_20

    .line 4239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsAppLockEnabled:Z
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v31

    if-eqz v31, :cond_1b

    .line 4243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v4

    .line 4245
    .local v4, "N":I
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_1
    if-ge v14, v4, :cond_1a

    .line 4246
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v9

    .line 4247
    .local v9, "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/service/notification/StatusBarNotification;->getPkg()Ljava/lang/String;

    move-result-object v8

    .line 4249
    .local v8, "curPkg":Ljava/lang/String;
    const/16 v17, 0x0

    .line 4250
    .local v17, "isFakeExist":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->fakeNotiEntryMap:Ljava/util/Map;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    if-eqz v31, :cond_17

    .line 4251
    const/16 v17, 0x1

    .line 4254
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isPkgEncrypt(Ljava/lang/String;)Ljava/lang/Boolean;
    invoke-static {v0, v8}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-eqz v31, :cond_19

    if-nez v17, :cond_19

    .line 4257
    new-instance v11, Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v0, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-direct {v11, v0}, Lcom/android/systemui/statusbar/NotificationData$Entry;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 4259
    .local v11, "fakeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    const/16 v31, 0x1

    move/from16 v0, v31

    iput-boolean v0, v11, Lcom/android/systemui/statusbar/NotificationData$Entry;->isFake:Z

    .line 4261
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v32, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mPile:Lcom/android/systemui/statusbar/policy/NotificationRowLayout;
    invoke-static/range {v32 .. v32}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/policy/NotificationRowLayout;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-virtual {v0, v11, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->inflateFakeViews(Lcom/android/systemui/statusbar/NotificationData$Entry;Landroid/view/ViewGroup;)Z

    move-result v31

    if-nez v31, :cond_18

    .line 4266
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/NotificationData;->add(Lcom/android/systemui/statusbar/NotificationData$Entry;)I

    move-result v24

    .line 4268
    .local v24, "pos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->fakeNotiEntryMap:Ljava/util/Map;

    move-object/from16 v31, v0

    iget-object v0, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v32, v0

    invoke-virtual/range {v32 .. v32}, Landroid/service/notification/StatusBarNotification;->getPkg()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    invoke-interface {v0, v1, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4245
    .end local v11    # "fakeEntry":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v24    # "pos":I
    :cond_19
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .line 4271
    .end local v8    # "curPkg":Ljava/lang/String;
    .end local v9    # "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v17    # "isFakeExist":Z
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadNotificationShade()V
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 4272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    goto/16 :goto_0

    .line 4277
    .end local v4    # "N":I
    .end local v14    # "i":I
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Lcom/android/systemui/statusbar/NotificationData;->size()I

    move-result v4

    .line 4279
    .restart local v4    # "N":I
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 4281
    .local v29, "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_2
    if-ge v14, v4, :cond_1d

    .line 4282
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/NotificationData;

    move-result-object v31

    move-object/from16 v0, v31

    invoke-virtual {v0, v14}, Lcom/android/systemui/statusbar/NotificationData;->get(I)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v9

    .line 4283
    .restart local v9    # "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    iget-object v0, v9, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/service/notification/StatusBarNotification;->getPkg()Ljava/lang/String;

    move-result-object v8

    .line 4285
    .restart local v8    # "curPkg":Ljava/lang/String;
    const/16 v17, 0x0

    .line 4286
    .restart local v17    # "isFakeExist":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->fakeNotiEntryMap:Ljava/util/Map;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    if-eqz v31, :cond_1c

    .line 4287
    const/16 v17, 0x1

    .line 4292
    if-eqz v17, :cond_1c

    .line 4293
    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4281
    :cond_1c
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 4297
    .end local v8    # "curPkg":Ljava/lang/String;
    .end local v9    # "e":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v17    # "isFakeExist":Z
    :cond_1d
    invoke-virtual/range {v29 .. v29}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "i$":Ljava/util/Iterator;
    :cond_1e
    :goto_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v31

    if-eqz v31, :cond_1f

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 4298
    .local v10, "fake":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeFakeNotificationViews(Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;

    .line 4299
    const-string v31, "com.android.dialer"

    move-object/from16 v0, v31

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1e

    .line 4300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    const-string v32, "com.android.phone"

    invoke-virtual/range {v31 .. v32}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeFakeNotificationViews(Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;

    .line 4301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    const-string v32, "com.android.server.telecom"

    invoke-virtual/range {v31 .. v32}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeFakeNotificationViews(Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;

    goto :goto_3

    .line 4305
    .end local v10    # "fake":Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadNotificationShade()V
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 4306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    goto/16 :goto_0

    .line 4314
    .end local v4    # "N":I
    .end local v14    # "i":I
    .end local v15    # "i$":Ljava/util/Iterator;
    .end local v29    # "toRemove":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isPkgEncrypt(Ljava/lang/String;)Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v31

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v31

    if-eqz v31, :cond_21

    .line 4315
    const-string v31, "PhoneStatusBar"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "wrong password or exit password input activity..."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4317
    :cond_21
    const-string v31, "PhoneStatusBar"

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "correct password!!"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    invoke-static/range {v31 .. v32}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeFakeNotificationViews(Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;

    .line 4319
    const-string v31, "com.android.dialer"

    move-object/from16 v0, v23

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_22

    .line 4320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    const-string v32, "com.android.phone"

    invoke-virtual/range {v31 .. v32}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeFakeNotificationViews(Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;

    .line 4321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    const-string v32, "com.android.server.telecom"

    invoke-virtual/range {v31 .. v32}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->removeFakeNotificationViews(Ljava/lang/String;)Landroid/service/notification/StatusBarNotification;

    .line 4323
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->loadNotificationShade()V
    invoke-static/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$6600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    .line 4324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setAreThereNotifications()V

    .line 4329
    if-eqz v13, :cond_1

    .line 4330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getOnlyOneNotiForPkg(Ljava/lang/String;)Lcom/android/systemui/statusbar/NotificationData$Entry;

    move-result-object v21

    .line 4331
    .local v21, "only":Lcom/android/systemui/statusbar/NotificationData$Entry;
    if-eqz v21, :cond_23

    .line 4335
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v31

    move-object/from16 v0, v31

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    .line 4336
    .local v18, "it":Landroid/app/PendingIntent;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/service/notification/StatusBarNotification;->getPkg()Ljava/lang/String;

    move-result-object v22

    .line 4337
    .local v22, "pk":Ljava/lang/String;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v28

    .line 4338
    .local v28, "tag":Ljava/lang/String;
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v16

    .line 4341
    .local v16, "id":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->simulateNotiOnClick(Landroid/service/notification/StatusBarNotification;)V

    goto/16 :goto_0

    .line 4346
    .end local v16    # "id":I
    .end local v18    # "it":Landroid/app/PendingIntent;
    .end local v22    # "pk":Ljava/lang/String;
    .end local v28    # "tag":Ljava/lang/String;
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandNotificationsPanel()V

    goto/16 :goto_0

    .line 4352
    .end local v13    # "fromNotification":Z
    .end local v21    # "only":Lcom/android/systemui/statusbar/NotificationData$Entry;
    .end local v23    # "pkg":Ljava/lang/String;
    :cond_24
    const-string v31, "com.meizu.keyguard.updatestatusbar"

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_25

    .line 4353
    const-string v31, "udpate_statusbar_extra"

    const/16 v32, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v19

    .line 4354
    .local v19, "keyguardShow":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    move-object/from16 v0, v31

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateKeyguardStatusBar(Z)V

    goto/16 :goto_0

    .line 4355
    .end local v19    # "keyguardShow":Z
    :cond_25
    const-string v31, "android.intent.action.RESET_FOR_DEMO"

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v31

    if-eqz v31, :cond_1

    .line 4359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$40;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->clearAllNotifications()V

    goto/16 :goto_0
.end method
