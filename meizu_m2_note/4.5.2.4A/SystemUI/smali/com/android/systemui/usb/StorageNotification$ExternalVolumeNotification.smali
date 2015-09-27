.class Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;
.super Ljava/lang/Object;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ExternalVolumeNotification"
.end annotation


# instance fields
.field private mExternalVolumeLabel:Ljava/lang/String;

.field private mId:I

.field mNotificationManager:Landroid/app/NotificationManager;

.field final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method public constructor <init>(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;I)V
    .locals 2
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "index"    # I

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->this$0:Lcom/android/systemui/usb/StorageNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-object v0, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->mNotificationManager:Landroid/app/NotificationManager;

    .line 122
    add-int/lit16 v0, p3, 0x3e9

    iput v0, p0, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->mId:I

    .line 123
    iput-object p2, p0, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->mExternalVolumeLabel:Ljava/lang/String;

    .line 124
    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->mExternalVolumeLabel:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;ILjava/lang/String;Ljava/lang/CharSequence;IIZZLandroid/app/PendingIntent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/CharSequence;
    .param p4, "x4"    # I
    .param p5, "x5"    # I
    .param p6, "x6"    # Z
    .param p7, "x7"    # Z
    .param p8, "x8"    # Landroid/app/PendingIntent;

    .prologue
    .line 112
    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->updateNotification(ILjava/lang/String;Ljava/lang/CharSequence;IIZZLandroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;

    .prologue
    .line 112
    iget v0, p0, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->mId:I

    return v0
.end method

.method private updateNotification(ILjava/lang/String;Ljava/lang/CharSequence;IIZZLandroid/app/PendingIntent;)V
    .locals 7
    .param p1, "titleId"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "tickerText"    # Ljava/lang/CharSequence;
    .param p4, "icon"    # I
    .param p5, "notificationIcon"    # I
    .param p6, "sound"    # Z
    .param p7, "visible"    # Z
    .param p8, "pi"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v6, 0x0

    .line 129
    iget-object v5, p0, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v5, :cond_0

    .line 158
    :goto_0
    return-void

    .line 133
    :cond_0
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 134
    .local v1, "notification":Landroid/app/Notification;
    if-eqz p7, :cond_3

    .line 135
    iget-object v5, p0, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-object v5, v5, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 136
    .local v2, "r":Landroid/content/res/Resources;
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 137
    .local v4, "title":Ljava/lang/CharSequence;
    move-object v3, p3

    .line 138
    .local v3, "ticker":Ljava/lang/CharSequence;
    if-eqz p6, :cond_2

    .line 139
    iget v5, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v1, Landroid/app/Notification;->defaults:I

    .line 143
    :goto_1
    iput p4, v1, Landroid/app/Notification;->icon:I

    .line 145
    iput-object v3, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 148
    if-nez p8, :cond_1

    .line 149
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 150
    .local v0, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-object v5, v5, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p8

    .line 153
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->this$0:Lcom/android/systemui/usb/StorageNotification;

    iget-object v5, v5, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5, v4, p2, p8}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 154
    iget-object v5, p0, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget v6, p0, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->mId:I

    invoke-virtual {v5, v6, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 141
    :cond_2
    iget v5, v1, Landroid/app/Notification;->defaults:I

    and-int/lit8 v5, v5, -0x2

    iput v5, v1, Landroid/app/Notification;->defaults:I

    goto :goto_1

    .line 156
    .end local v2    # "r":Landroid/content/res/Resources;
    .end local v3    # "ticker":Ljava/lang/CharSequence;
    .end local v4    # "title":Ljava/lang/CharSequence;
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->mNotificationManager:Landroid/app/NotificationManager;

    iget v6, p0, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->mId:I

    invoke-virtual {v5, v6}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method
