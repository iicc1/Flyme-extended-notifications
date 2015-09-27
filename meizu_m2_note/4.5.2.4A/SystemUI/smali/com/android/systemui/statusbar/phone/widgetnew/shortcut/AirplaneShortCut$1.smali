.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut$1;
.super Landroid/content/BroadcastReceiver;
.source "AirplaneShortCut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;)V
    .locals 0

    .prologue
    .line 146
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const v4, 0x3dcccccd    # 0.1f

    .line 149
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "action":Ljava/lang/String;
    const-string v1, "AirplaneShortCut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "intent =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , AirplaneMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->mFindPhoneAbstract:Lcom/meizu/findphone/FindPhoneAbstract;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->access$000(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;)Lcom/meizu/findphone/FindPhoneAbstract;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/findphone/FindPhoneAbstract;->isFindphoneLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->setViewAlpha(F)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->updateViews()V

    .line 162
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->onStateChange()V

    goto :goto_0

    .line 164
    :cond_2
    const-string v1, "meizu.intent.action.FLYME_FINDPHONE_LOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 165
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 167
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->setAirplaneModeOn(Landroid/content/Context;Z)V

    .line 171
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->setViewAlpha(F)V

    goto :goto_0

    .line 173
    :cond_4
    const-string v1, "meizu.intent.action.FLYME_FINDPHONE_UNLOCK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;

    const v2, 0x3e4ccccd    # 0.2f

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/AirplaneShortCut;->setViewAlpha(F)V

    goto :goto_0
.end method
