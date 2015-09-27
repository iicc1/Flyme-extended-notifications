.class public abstract Lcom/android/systemui/settings/CurrentUserTracker;
.super Landroid/content/BroadcastReceiver;
.source "CurrentUserTracker.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 33
    .local v0, "filter":Landroid/content/IntentFilter;
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 34
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mCurrentUserId:I

    .line 35
    iput-object p1, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method


# virtual methods
.method public getCurrentUserId()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mCurrentUserId:I

    return v0
.end method

.method public isCurrentUserOwner()Z
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mCurrentUserId:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 44
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    iget v0, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mCurrentUserId:I

    .line 46
    .local v0, "oldUserId":I
    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mCurrentUserId:I

    .line 47
    iget v1, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mCurrentUserId:I

    if-eq v0, v1, :cond_0

    .line 48
    iget v1, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mCurrentUserId:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/settings/CurrentUserTracker;->onUserSwitched(I)V

    .line 51
    .end local v0    # "oldUserId":I
    :cond_0
    return-void
.end method

.method public abstract onUserSwitched(I)V
.end method

.method public stopTracking()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 55
    return-void
.end method
