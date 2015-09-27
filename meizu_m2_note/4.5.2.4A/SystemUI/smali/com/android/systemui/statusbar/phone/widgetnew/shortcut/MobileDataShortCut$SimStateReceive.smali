.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$SimStateReceive;
.super Landroid/content/BroadcastReceiver;
.source "MobileDataShortCut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimStateReceive"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$SimStateReceive;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$1;

    .prologue
    .line 455
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$SimStateReceive;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 458
    const-string v3, "phone"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 459
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    .line 460
    .local v1, "state":I
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 469
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$SimStateReceive;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v4

    # setter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mCurrentDataSubId:I
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->access$102(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;I)I

    .line 470
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$SimStateReceive;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mCurrentDataSubId:I
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$SimStateReceive;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->isValidSubId(ILandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 471
    const-string v3, "MobileDataShortCut"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerContentObserver mDataUseObserverUsingSub with sub"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$SimStateReceive;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mCurrentDataSubId:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$SimStateReceive;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$SimStateReceive;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mMobileDataObserver:Landroid/database/ContentObserver;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->access$200(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)Landroid/database/ContentObserver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 473
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$SimStateReceive;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$SimStateReceive;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mCurrentDataSubId:I
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$SimStateReceive;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mMobileDataObserver:Landroid/database/ContentObserver;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->access$200(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)Landroid/database/ContentObserver;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 476
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$SimStateReceive;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->updateViews()V

    .line 477
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$SimStateReceive;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    # invokes: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->initStrArrays()V
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->access$600(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)V

    .line 487
    :cond_1
    :goto_0
    return-void

    .line 478
    :cond_2
    const-string v3, "android.intent.action.hide_ntmode_menu"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 479
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$SimStateReceive;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mIsSimReceiveHideAction:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->access$700(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)Z

    move-result v0

    .line 480
    .local v0, "preHide":Z
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$SimStateReceive;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    const-string v4, "HIDE_VAL"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    # setter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mIsSimReceiveHideAction:Z
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->access$702(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;Z)Z

    .line 481
    const-string v3, "MobileDataShortCut"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive SIM_HIDE_ACTION mIsSimReceiveHideAction = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$SimStateReceive;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mIsSimReceiveHideAction:Z
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->access$700(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$SimStateReceive;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mIsSimReceiveHideAction:Z
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->access$700(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)Z

    move-result v3

    if-eq v0, v3, :cond_1

    .line 484
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$SimStateReceive;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->updateViews()V

    goto :goto_0
.end method
