.class public Lcom/android/systemui/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 36
    new-instance v0, Lcom/android/systemui/BootReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/BootReceiver$1;-><init>(Lcom/android/systemui/BootReceiver;)V

    iput-object v0, p0, Lcom/android/systemui/BootReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/BootReceiver;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/BootReceiver;

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/android/systemui/BootReceiver;->startLoadAverageService()V

    return-void
.end method

.method private startLoadAverageService()V
    .locals 4

    .prologue
    .line 61
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/BootReceiver;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/systemui/LoadAverageService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    .local v1, "loadavg":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/systemui/BootReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .end local v1    # "loadavg":Landroid/content/Intent;
    :goto_0
    return-void

    .line 63
    :catch_0
    move-exception v0

    .line 64
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "SystemUIBootReceiver"

    const-string v3, "Can\'t start load average service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 51
    iput-object p1, p0, Lcom/android/systemui/BootReceiver;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 54
    .local v0, "res":Landroid/content/ContentResolver;
    const-string v1, "show_processes"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/android/systemui/BootReceiver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 57
    :cond_0
    return-void
.end method
