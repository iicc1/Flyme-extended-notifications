.class public Lcom/android/systemui/screenshot/TakeScreenshotService;
.super Landroid/app/Service;
.source "TakeScreenshotService.java"


# static fields
.field private static mScreenshot:Lcom/android/systemui/screenshot/GlobalScreenshot;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field shouldHideFloatTouch:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 44
    new-instance v0, Lcom/android/systemui/screenshot/TakeScreenshotService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/screenshot/TakeScreenshotService$1;-><init>(Lcom/android/systemui/screenshot/TakeScreenshotService;)V

    iput-object v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mHandler:Landroid/os/Handler;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->shouldHideFloatTouch:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/screenshot/TakeScreenshotService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/screenshot/TakeScreenshotService;

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/android/systemui/screenshot/TakeScreenshotService;->enoughSpace()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()Lcom/android/systemui/screenshot/GlobalScreenshot;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui/screenshot/GlobalScreenshot;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/GlobalScreenshot;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/screenshot/GlobalScreenshot;

    .prologue
    .line 39
    sput-object p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mScreenshot:Lcom/android/systemui/screenshot/GlobalScreenshot;

    return-object p0
.end method

.method private enoughSpace()Z
    .locals 14

    .prologue
    const v10, 0x7f0b010e

    const/4 v8, 0x0

    .line 86
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v7

    .line 87
    .local v7, "status":Ljava/lang/String;
    const-string v9, "mounted"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 88
    const-wide/16 v0, 0x0

    .line 89
    .local v0, "availableBlocks":J
    const-wide/16 v2, 0x0

    .line 91
    .local v2, "blockSize":J
    :try_start_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    .line 92
    .local v5, "path":Ljava/io/File;
    new-instance v6, Landroid/os/StatFs;

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v9}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 93
    .local v6, "stat":Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v2, v9

    .line 94
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    int-to-long v0, v9

    .line 100
    mul-long v10, v0, v2

    const-wide/32 v12, 0x200000

    cmp-long v9, v10, v12

    if-gez v9, :cond_4

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/TakeScreenshotService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0b010d

    invoke-static {v9, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 104
    const-string v9, "TakeScreenshotService"

    const-string v10, "print screen Failed, Caused by: media have not enough space!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v5    # "path":Ljava/io/File;
    .end local v6    # "stat":Landroid/os/StatFs;
    :goto_0
    return v8

    .line 95
    .restart local v0    # "availableBlocks":J
    .restart local v2    # "blockSize":J
    :catch_0
    move-exception v4

    .line 97
    .local v4, "e":Ljava/lang/Exception;
    goto :goto_0

    .line 108
    .end local v0    # "availableBlocks":J
    .end local v2    # "blockSize":J
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v9, "removed"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "bad_removal"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/TakeScreenshotService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f0b010f

    invoke-static {v9, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 113
    const-string v9, "TakeScreenshotService"

    const-string v10, "print screen Failed, Caused by: media is removed!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :cond_2
    const-string v9, "shared"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/TakeScreenshotService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 118
    const-string v9, "TakeScreenshotService"

    const-string v10, "print screen Failed, Caused by: usb mass storage mode!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 121
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/TakeScreenshotService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v9

    invoke-virtual {v9}, Landroid/widget/Toast;->show()V

    .line 123
    const-string v9, "TakeScreenshotService"

    const-string v10, "print screen Failed, Caused by: media is unmounted!"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 127
    .restart local v0    # "availableBlocks":J
    .restart local v2    # "blockSize":J
    .restart local v5    # "path":Ljava/io/File;
    .restart local v6    # "stat":Landroid/os/StatFs;
    :cond_4
    const/4 v8, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/TakeScreenshotService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mz_smart_touch_switch"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->shouldHideFloatTouch:Z

    .line 79
    iget-boolean v0, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->shouldHideFloatTouch:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/systemui/floattouch/HideFloatTouchService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/TakeScreenshotService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 80
    :cond_1
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/systemui/screenshot/TakeScreenshotService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method
