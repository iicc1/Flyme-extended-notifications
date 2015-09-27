.class Lcom/android/systemui/mzrecent/RecentSlidingDrawer$7;
.super Landroid/content/BroadcastReceiver;
.source "RecentSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->onFinishInflate()V
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
    .line 788
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$7;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0x3ee

    const/4 v4, 0x0

    .line 793
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 794
    .local v0, "action":Ljava/lang/String;
    const-string v3, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 795
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 796
    .local v2, "uri":Landroid/net/Uri;
    if-nez v2, :cond_1

    .line 829
    .end local v2    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 799
    .restart local v2    # "uri":Landroid/net/Uri;
    :cond_1
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 800
    .local v1, "pkgName":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 803
    const-string v3, "com.android.music"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 804
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$7;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-boolean v3, v3, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mIsPlaying:Z

    if-eqz v3, :cond_0

    .line 805
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$7;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iput-boolean v4, v3, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mIsPlaying:Z

    .line 806
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$7;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    sget-object v4, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;->MUSIC_APP:Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;

    invoke-virtual {v3, v4}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->listenMusicAppChanged(Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;)V

    .line 807
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$7;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v3, v3, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$7;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v4, v4, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 811
    :try_start_0
    sget-object v3, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->sStatusBar:Landroid/app/StatusBarManager;

    const-string v4, "music"

    invoke-virtual {v3, v4}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 812
    :catch_0
    move-exception v3

    goto :goto_0

    .line 818
    :cond_2
    const-string v3, "com.meizu.musiconline"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 819
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$7;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-boolean v3, v3, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mIsPlaying:Z

    if-nez v3, :cond_0

    .line 820
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$7;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iput-boolean v4, v3, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mIsOnlineMusicPlaying:Z

    .line 821
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$7;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    sget-object v4, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;->MUSIC_APP:Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;

    invoke-virtual {v3, v4}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->listenMusicAppChanged(Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;)V

    .line 822
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$7;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v3, v3, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$7;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v4, v4, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 824
    iget-object v3, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$7;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-virtual {v3}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->sendRuestInfo()V

    goto :goto_0
.end method
