.class public Lcom/android/systemui/statusbar/phone/ThirdPartyNotificationList;
.super Ljava/lang/Object;
.source "ThirdPartyNotificationList.java"


# instance fields
.field protected mNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field protected mOngoingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ThirdPartyNotificationList;->mOngoingList:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ThirdPartyNotificationList;->mNotificationList:Ljava/util/ArrayList;

    .line 20
    return-void
.end method


# virtual methods
.method public add(Landroid/os/IBinder;Z)V
    .locals 1
    .param p1, "notification"    # Landroid/os/IBinder;
    .param p2, "isOngoing"    # Z

    .prologue
    .line 23
    if-eqz p2, :cond_0

    .line 24
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ThirdPartyNotificationList;->mOngoingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    :goto_0
    return-void

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ThirdPartyNotificationList;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public hasNotificationItems()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ThirdPartyNotificationList;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOngoingItems()Z
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ThirdPartyNotificationList;->mOngoingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Landroid/os/IBinder;Z)V
    .locals 1
    .param p1, "notification"    # Landroid/os/IBinder;
    .param p2, "isOngoing"    # Z

    .prologue
    .line 31
    if-eqz p2, :cond_0

    .line 32
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ThirdPartyNotificationList;->mOngoingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 36
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ThirdPartyNotificationList;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method
