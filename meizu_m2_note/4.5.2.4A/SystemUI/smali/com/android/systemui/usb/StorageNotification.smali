.class public Lcom/android/systemui/usb/StorageNotification;
.super Lcom/android/systemui/SystemUI;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/usb/StorageNotification$1;,
        Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;,
        Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;
    }
.end annotation


# instance fields
.field private mAsyncEventHandler:Landroid/os/Handler;

.field private mExternalVolumeNotifications:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaStorageNotification:Landroid/app/Notification;

.field private mStorageManager:Landroid/os/storage/StorageManager;

.field private mUmsAvailable:Z

.field private mUsbStorageNotification:Landroid/app/Notification;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mExternalVolumeNotifications:Ljava/util/ArrayList;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/usb/StorageNotification;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->onUsbMassStorageConnectionChangedAsync(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/usb/StorageNotification;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/usb/StorageNotification;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/usb/StorageNotification;->onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onStorageStateChangedAsync(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 31
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "oldState"    # Ljava/lang/String;
    .param p3, "newState"    # Ljava/lang/String;

    .prologue
    .line 200
    const-string v3, "StorageNotification"

    const-string v4, "Media {%s} state changed from {%s} -> {%s}"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    new-instance v30, Landroid/os/Environment$UserEnvironment;

    const/4 v3, -0x2

    move-object/from16 v0, v30

    invoke-direct {v0, v3}, Landroid/os/Environment$UserEnvironment;-><init>(I)V

    .line 203
    .local v30, "userEnv":Landroid/os/Environment$UserEnvironment;
    const-string v3, "/storage"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 204
    const-string v3, "shared"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 210
    .local v5, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 211
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 212
    .local v9, "pi":Landroid/app/PendingIntent;
    const v4, 0x10404f4

    const v5, 0x10404f5

    const v6, 0xa0202d7

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/usb/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 441
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v9    # "pi":Landroid/app/PendingIntent;
    :cond_0
    :goto_0
    return-void

    .line 216
    :cond_1
    const-string v3, "checking"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 221
    const v11, 0x1040512

    const v12, 0x1040513

    const v13, 0x7f02027c

    const v14, 0x7f0202b4

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v17}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIIZZLandroid/app/PendingIntent;)V

    .line 227
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto :goto_0

    .line 228
    :cond_2
    const-string v3, "mounted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 233
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v23

    .line 235
    .local v23, "currentPrimaryVolumePath":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "/"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    .line 237
    .local v24, "currentPrimaryVolumePrefix":Ljava/lang/String;
    const/4 v3, 0x0

    const-string v4, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 239
    const-string v3, "StorageNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "primary volume mounted,ignore --->"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 243
    :cond_3
    const-string v3, "StorageNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mStorageManager.getPrimaryVolume().getPath():"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.android.settings"

    const-string v6, "com.android.settings.Settings$StorageSettingsActivity"

    invoke-direct {v3, v4, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    .line 249
    .restart local v5    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    sget-object v8, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v9

    .line 251
    .restart local v9    # "pi":Landroid/app/PendingIntent;
    const v11, 0x7f0b015e

    const v12, 0x7f0b015f

    const v13, 0x7f02027c

    const v14, 0x7f0202b4

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v10, p0

    move-object/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIIZZLandroid/app/PendingIntent;)V

    .line 257
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 258
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v9    # "pi":Landroid/app/PendingIntent;
    .end local v23    # "currentPrimaryVolumePath":Ljava/lang/String;
    .end local v24    # "currentPrimaryVolumePrefix":Ljava/lang/String;
    :cond_4
    const-string v3, "unmounted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 264
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v3

    if-nez v3, :cond_7

    .line 265
    const-string v3, "shared"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 271
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v17}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIIZZLandroid/app/PendingIntent;)V

    .line 272
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 278
    :cond_5
    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 279
    const v11, 0x104051a

    const v12, 0x104051b

    const v13, 0x7f02027a

    const v14, 0x7f02027d

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v17}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIIZZLandroid/app/PendingIntent;)V

    .line 290
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 288
    :cond_6
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v17}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIIZZLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 297
    :cond_7
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v17}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIIZZLandroid/app/PendingIntent;)V

    .line 298
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 300
    :cond_8
    const-string v3, "nofs"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 305
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 306
    .restart local v5    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/internal/app/ExternalMediaFormatActivity;

    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 308
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 310
    .restart local v9    # "pi":Landroid/app/PendingIntent;
    const v11, 0x1040514

    const v12, 0x1040515

    const v13, 0x7f02027d

    const v14, 0x7f0202b5

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIIZZLandroid/app/PendingIntent;)V

    .line 315
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 316
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v9    # "pi":Landroid/app/PendingIntent;
    :cond_9
    const-string v3, "unmountable"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 321
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 322
    .restart local v5    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/internal/app/ExternalMediaFormatActivity;

    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 324
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 326
    .restart local v9    # "pi":Landroid/app/PendingIntent;
    const v11, 0x1040516

    const v12, 0x1040517

    const v13, 0x7f02027b

    const v14, 0x7f0202b3

    const/4 v15, 0x1

    const/16 v16, 0x0

    move-object/from16 v10, p0

    move-object/from16 v17, v9

    invoke-direct/range {v10 .. v17}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIIZZLandroid/app/PendingIntent;)V

    .line 331
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 332
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v9    # "pi":Landroid/app/PendingIntent;
    :cond_a
    const-string v3, "removed"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 337
    const v11, 0x104051c

    const v12, 0x104051d

    const v13, 0x7f02027d

    const v14, 0x7f0202b5

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v17}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIIZZLandroid/app/PendingIntent;)V

    .line 342
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 343
    :cond_b
    const-string v3, "bad_removal"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 349
    const v11, 0x1040518

    const v12, 0x1040519

    const v13, 0x7f02027d

    const v14, 0x7f0202b5

    const/4 v15, 0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v17}, Lcom/android/systemui/usb/StorageNotification;->setMediaStorageNotification(IIIIZZLandroid/app/PendingIntent;)V

    .line 355
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    goto/16 :goto_0

    .line 357
    :cond_c
    const-string v3, "StorageNotification"

    const-string v4, "Ignoring unknown state {%s}"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p3, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 360
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/usb/StorageNotification;->mExternalVolumeNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v28

    .line 361
    .local v28, "size":I
    const-string v3, "StorageNotification"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onStorageStateChangedAsync->size:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " oldstate="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " newstate:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/16 v29, -0x1

    .line 363
    .local v29, "targetIndex":I
    const/4 v10, 0x0

    .line 364
    .local v10, "evn":Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;
    const/16 v25, 0x0

    .local v25, "index":I
    :goto_2
    move/from16 v0, v25

    move/from16 v1, v28

    if-ge v0, v1, :cond_e

    .line 365
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/usb/StorageNotification;->mExternalVolumeNotifications:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;

    # getter for: Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->mExternalVolumeLabel:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->access$400(Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;)Ljava/lang/String;

    move-result-object v26

    .line 366
    .local v26, "mLabel":Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 367
    move/from16 v29, v25

    .line 368
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/usb/StorageNotification;->mExternalVolumeNotifications:Ljava/util/ArrayList;

    move/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "evn":Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;
    check-cast v10, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;

    .line 372
    .end local v26    # "mLabel":Ljava/lang/String;
    .restart local v10    # "evn":Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;
    :cond_e
    const-string v3, "externalvolumeinserted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 374
    const-string v3, "externalvolumeremoved"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 375
    if-eqz v10, :cond_0

    .line 377
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    # invokes: Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->updateNotification(ILjava/lang/String;Ljava/lang/CharSequence;IIZZLandroid/app/PendingIntent;)V
    invoke-static/range {v10 .. v18}, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->access$500(Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;ILjava/lang/String;Ljava/lang/CharSequence;IIZZLandroid/app/PendingIntent;)V

    .line 378
    const/4 v3, -0x1

    move/from16 v0, v29

    if-eq v0, v3, :cond_0

    .line 379
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/usb/StorageNotification;->mExternalVolumeNotifications:Ljava/util/ArrayList;

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 364
    .restart local v26    # "mLabel":Ljava/lang/String;
    :cond_f
    add-int/lit8 v25, v25, 0x1

    goto :goto_2

    .line 382
    .end local v26    # "mLabel":Ljava/lang/String;
    :cond_10
    const-string v3, "externalvolumemounted"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 383
    if-nez v10, :cond_11

    .line 384
    new-instance v27, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/usb/StorageNotification;->mExternalVolumeNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;-><init>(Lcom/android/systemui/usb/StorageNotification;Ljava/lang/String;I)V

    .line 386
    .local v27, "notification":Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;
    move-object/from16 v10, v27

    .line 387
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/usb/StorageNotification;->mExternalVolumeNotifications:Ljava/util/ArrayList;

    move-object/from16 v0, v27

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    .end local v27    # "notification":Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;
    :cond_11
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/usb/StorageNotification;->showConfirmDialog(Ljava/lang/String;)V

    .line 390
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 391
    .restart local v5    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v4, Lcom/android/systemui/usb/ExternalStorageActivity;

    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 394
    const-string v3, "disklabel"

    # getter for: Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->mExternalVolumeLabel:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->access$400(Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const v4, 0x7f0b00e1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    # getter for: Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->mExternalVolumeLabel:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->access$400(Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 399
    .local v13, "ticker":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    # getter for: Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->mId:I
    invoke-static {v10}, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->access$600(Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;)I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 401
    .restart local v9    # "pi":Landroid/app/PendingIntent;
    const v11, 0x7f0b00e0

    # getter for: Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->mExternalVolumeLabel:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->access$400(Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;)Ljava/lang/String;

    move-result-object v12

    const v14, 0xa02029e

    const v15, 0x7f020422

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object/from16 v18, v9

    # invokes: Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->updateNotification(ILjava/lang/String;Ljava/lang/CharSequence;IIZZLandroid/app/PendingIntent;)V
    invoke-static/range {v10 .. v18}, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->access$500(Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;ILjava/lang/String;Ljava/lang/CharSequence;IIZZLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 407
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v9    # "pi":Landroid/app/PendingIntent;
    .end local v13    # "ticker":Ljava/lang/CharSequence;
    :cond_12
    const-string v3, "externalvolumeidle"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 408
    if-eqz v10, :cond_0

    .line 409
    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object v14, v10

    # invokes: Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->updateNotification(ILjava/lang/String;Ljava/lang/CharSequence;IIZZLandroid/app/PendingIntent;)V
    invoke-static/range {v14 .. v22}, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->access$500(Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;ILjava/lang/String;Ljava/lang/CharSequence;IIZZLandroid/app/PendingIntent;)V

    .line 411
    const/4 v3, -0x1

    move/from16 v0, v29

    if-eq v0, v3, :cond_0

    .line 412
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/usb/StorageNotification;->mExternalVolumeNotifications:Ljava/util/ArrayList;

    move/from16 v0, v29

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto/16 :goto_0

    .line 414
    :cond_13
    const-string v3, "externalvolumeunmounting"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 415
    if-eqz v10, :cond_0

    .line 416
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00e7

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 420
    .restart local v13    # "ticker":Ljava/lang/CharSequence;
    const v11, 0x7f0b00e6

    # getter for: Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->mExternalVolumeLabel:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->access$400(Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;)Ljava/lang/String;

    move-result-object v12

    const v14, 0xa02029e

    const v15, 0x7f020422

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    # invokes: Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->updateNotification(ILjava/lang/String;Ljava/lang/CharSequence;IIZZLandroid/app/PendingIntent;)V
    invoke-static/range {v10 .. v18}, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->access$500(Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;ILjava/lang/String;Ljava/lang/CharSequence;IIZZLandroid/app/PendingIntent;)V

    goto/16 :goto_0

    .line 426
    .end local v13    # "ticker":Ljava/lang/CharSequence;
    :cond_14
    const-string v3, "externalvolumechecking"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 427
    if-eqz v10, :cond_0

    .line 428
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b00e4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    .line 432
    .restart local v13    # "ticker":Ljava/lang/CharSequence;
    const v11, 0x7f0b00e3

    const/4 v12, 0x0

    const v14, 0xa02029e

    const v15, 0x7f020422

    const/16 v16, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    # invokes: Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->updateNotification(ILjava/lang/String;Ljava/lang/CharSequence;IIZZLandroid/app/PendingIntent;)V
    invoke-static/range {v10 .. v18}, Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;->access$500(Lcom/android/systemui/usb/StorageNotification$ExternalVolumeNotification;ILjava/lang/String;Ljava/lang/CharSequence;IIZZLandroid/app/PendingIntent;)V

    goto/16 :goto_0
.end method

.method private onUsbMassStorageConnectionChangedAsync(Z)V
    .locals 6
    .param p1, "connected"    # Z

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    .line 183
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "st":Ljava/lang/String;
    const-string v1, "StorageNotification"

    const-string v2, "UMS connection changed to %s (media state %s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    if-eqz p1, :cond_1

    const-string v1, "removed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "checking"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 193
    :cond_0
    const/4 p1, 0x0

    .line 195
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/usb/StorageNotification;->updateUsbMassStorageNotification(Z)V

    .line 196
    return-void
.end method

.method private declared-synchronized setMediaStorageNotification(IIIIZZLandroid/app/PendingIntent;)V
    .locals 11
    .param p1, "titleId"    # I
    .param p2, "messageId"    # I
    .param p3, "icon"    # I
    .param p4, "notificationIcon"    # I
    .param p5, "visible"    # Z
    .param p6, "dismissable"    # Z
    .param p7, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 551
    monitor-enter p0

    if-nez p5, :cond_1

    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_1

    .line 610
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 555
    :cond_1
    :try_start_1
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/NotificationManager;

    .line 558
    .local v5, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v5, :cond_0

    .line 562
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-eqz v7, :cond_2

    if-eqz p5, :cond_2

    .line 567
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v4, v7, Landroid/app/Notification;->icon:I

    .line 568
    .local v4, "notificationId":I
    invoke-virtual {v5, v4}, Landroid/app/NotificationManager;->cancel(I)V

    .line 571
    .end local v4    # "notificationId":I
    :cond_2
    if-eqz p5, :cond_5

    .line 574
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 575
    .local v6, "title":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 577
    .local v3, "message":Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    if-nez v7, :cond_3

    .line 578
    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    iput-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    .line 579
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const-wide/16 v8, 0x0

    iput-wide v8, v7, Landroid/app/Notification;->when:J

    .line 582
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v8, v7, Landroid/app/Notification;->defaults:I

    and-int/lit8 v8, v8, -0x2

    iput v8, v7, Landroid/app/Notification;->defaults:I

    .line 584
    if-eqz p6, :cond_6

    .line 585
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const/16 v8, 0x10

    iput v8, v7, Landroid/app/Notification;->flags:I

    .line 590
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iput-object v6, v7, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 591
    if-nez p7, :cond_4

    .line 592
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 593
    .local v2, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v7, v8, v2, v9, v10}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p7

    .line 597
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_4
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iput p3, v7, Landroid/app/Notification;->icon:I

    .line 600
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, p7

    invoke-virtual {v7, v8, v6, v3, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 603
    .end local v3    # "message":Ljava/lang/CharSequence;
    .end local v6    # "title":Ljava/lang/CharSequence;
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    iget v4, v7, Landroid/app/Notification;->icon:I

    .line 604
    .restart local v4    # "notificationId":I
    if-eqz p5, :cond_7

    .line 605
    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    sget-object v9, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v7, v4, v8, v9}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 551
    .end local v4    # "notificationId":I
    .end local v5    # "notificationManager":Landroid/app/NotificationManager;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 587
    .restart local v3    # "message":Ljava/lang/CharSequence;
    .restart local v5    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v6    # "title":Ljava/lang/CharSequence;
    :cond_6
    :try_start_2
    iget-object v7, p0, Lcom/android/systemui/usb/StorageNotification;->mMediaStorageNotification:Landroid/app/Notification;

    const/4 v8, 0x2

    iput v8, v7, Landroid/app/Notification;->flags:I

    goto :goto_1

    .line 608
    .end local v3    # "message":Ljava/lang/CharSequence;
    .end local v6    # "title":Ljava/lang/CharSequence;
    .restart local v4    # "notificationId":I
    :cond_7
    const/4 v7, 0x0

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v7, v4, v8}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private declared-synchronized setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V
    .locals 13
    .param p1, "titleId"    # I
    .param p2, "messageId"    # I
    .param p3, "icon"    # I
    .param p4, "sound"    # Z
    .param p5, "visible"    # Z
    .param p6, "pi"    # Landroid/app/PendingIntent;

    .prologue
    .line 470
    monitor-enter p0

    if-nez p5, :cond_1

    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v9, :cond_1

    .line 534
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 474
    :cond_1
    :try_start_1
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v10, "notification"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 477
    .local v6, "notificationManager":Landroid/app/NotificationManager;
    if-eqz v6, :cond_0

    .line 481
    if-eqz p5, :cond_4

    .line 482
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    .line 483
    .local v7, "r":Landroid/content/res/Resources;
    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .line 484
    .local v8, "title":Ljava/lang/CharSequence;
    invoke-virtual {v7, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 486
    .local v4, "message":Ljava/lang/CharSequence;
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    if-nez v9, :cond_2

    .line 487
    new-instance v9, Landroid/app/Notification;

    invoke-direct {v9}, Landroid/app/Notification;-><init>()V

    iput-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    .line 488
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move/from16 v0, p3

    iput v0, v9, Landroid/app/Notification;->icon:I

    .line 489
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    const-wide/16 v10, 0x0

    iput-wide v10, v9, Landroid/app/Notification;->when:J

    .line 492
    :cond_2
    if-eqz p4, :cond_5

    .line 493
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget v10, v9, Landroid/app/Notification;->defaults:I

    or-int/lit8 v10, v10, 0x1

    iput v10, v9, Landroid/app/Notification;->defaults:I

    .line 498
    :goto_1
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    const/4 v10, 0x2

    iput v10, v9, Landroid/app/Notification;->flags:I

    .line 500
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iput-object v8, v9, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 501
    if-nez p6, :cond_3

    .line 502
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 503
    .local v3, "intent":Landroid/content/Intent;
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-static {v9, v10, v3, v11, v12}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p6

    .line 507
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_3
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    move-object/from16 v0, p6

    invoke-virtual {v9, v10, v8, v4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 508
    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "adb_enabled"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    if-ne v9, v10, :cond_6

    const/4 v2, 0x1

    .line 513
    .local v2, "adbOn":Z
    :goto_2
    if-nez v2, :cond_4

    .line 523
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    move-object/from16 v0, p6

    iput-object v0, v9, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 527
    .end local v2    # "adbOn":Z
    .end local v4    # "message":Ljava/lang/CharSequence;
    .end local v7    # "r":Landroid/content/res/Resources;
    .end local v8    # "title":Ljava/lang/CharSequence;
    :cond_4
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget v5, v9, Landroid/app/Notification;->icon:I

    .line 528
    .local v5, "notificationId":I
    if-eqz p5, :cond_7

    .line 529
    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    sget-object v11, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v9, v5, v10, v11}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 470
    .end local v5    # "notificationId":I
    .end local v6    # "notificationManager":Landroid/app/NotificationManager;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 495
    .restart local v4    # "message":Ljava/lang/CharSequence;
    .restart local v6    # "notificationManager":Landroid/app/NotificationManager;
    .restart local v7    # "r":Landroid/content/res/Resources;
    .restart local v8    # "title":Ljava/lang/CharSequence;
    :cond_5
    :try_start_2
    iget-object v9, p0, Lcom/android/systemui/usb/StorageNotification;->mUsbStorageNotification:Landroid/app/Notification;

    iget v10, v9, Landroid/app/Notification;->defaults:I

    and-int/lit8 v10, v10, -0x2

    iput v10, v9, Landroid/app/Notification;->defaults:I

    goto :goto_1

    .line 508
    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    .line 532
    .end local v4    # "message":Ljava/lang/CharSequence;
    .end local v7    # "r":Landroid/content/res/Resources;
    .end local v8    # "title":Ljava/lang/CharSequence;
    .restart local v5    # "notificationId":I
    :cond_7
    const/4 v9, 0x0

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v9, v5, v10}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private showConfirmDialog(Ljava/lang/String;)V
    .locals 3
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 677
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 678
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/usb/OpenFileManagerActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 680
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 682
    const-string v1, "device"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 683
    iget-object v1, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 684
    return-void
.end method


# virtual methods
.method public start()V
    .locals 8

    .prologue
    .line 163
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-string v4, "storage"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/StorageManager;

    iput-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 164
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3}, Landroid/os/storage/StorageManager;->isUsbMassStorageConnected()Z

    move-result v0

    .line 165
    .local v0, "connected":Z
    const-string v3, "StorageNotification"

    const-string v4, "Startup with UMS connection %s (media state %s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-boolean v7, p0, Lcom/android/systemui/usb/StorageNotification;->mUmsAvailable:Z

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "SystemUI StorageNotification"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 169
    .local v2, "thr":Landroid/os/HandlerThread;
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 170
    new-instance v3, Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mAsyncEventHandler:Landroid/os/Handler;

    .line 172
    new-instance v1, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;-><init>(Lcom/android/systemui/usb/StorageNotification;Lcom/android/systemui/usb/StorageNotification$1;)V

    .line 173
    .local v1, "listener":Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;
    invoke-virtual {v1, v0}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationEventListener;->onUsbMassStorageConnectionChanged(Z)V

    .line 174
    iget-object v3, p0, Lcom/android/systemui/usb/StorageNotification;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v3, v1}, Landroid/os/storage/StorageManager;->registerListener(Landroid/os/storage/StorageEventListener;)V

    .line 175
    return-void
.end method

.method updateUsbMassStorageNotification(Z)V
    .locals 15
    .param p1, "available"    # Z

    .prologue
    .line 448
    if-eqz p1, :cond_0

    .line 449
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 450
    .local v14, "intent":Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 451
    const/high16 v0, 0x10000000

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 453
    iget-object v0, p0, Lcom/android/systemui/usb/StorageNotification;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v14, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 454
    .local v6, "pi":Landroid/app/PendingIntent;
    const v1, 0x10404f2

    const v2, 0x10404f3

    const v3, 0x108066f

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/usb/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    .line 462
    .end local v6    # "pi":Landroid/app/PendingIntent;
    .end local v14    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 460
    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, p0

    invoke-direct/range {v7 .. v13}, Lcom/android/systemui/usb/StorageNotification;->setUsbStorageNotification(IIIZZLandroid/app/PendingIntent;)V

    goto :goto_0
.end method
