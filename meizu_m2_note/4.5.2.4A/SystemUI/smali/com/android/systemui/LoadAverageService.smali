.class public Lcom/android/systemui/LoadAverageService;
.super Landroid/app/Service;
.source "LoadAverageService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/LoadAverageService$1;,
        Lcom/android/systemui/LoadAverageService$MemoryInfo;,
        Lcom/android/systemui/LoadAverageService$LoadView;,
        Lcom/android/systemui/LoadAverageService$CpuTracker;,
        Lcom/android/systemui/LoadAverageService$DeviceAttribute_M79_MTK;,
        Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;,
        Lcom/android/systemui/LoadAverageService$DeviceAttribute_Hammerhead;,
        Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;,
        Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;,
        Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;,
        Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX2;,
        Lcom/android/systemui/LoadAverageService$DeviceAttribute_CPU;,
        Lcom/android/systemui/LoadAverageService$DeviceAttribute;,
        Lcom/android/systemui/LoadAverageService$fileReadHelper;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mCurrentDeviceAttribute:Lcom/android/systemui/LoadAverageService$DeviceAttribute;

.field private mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 752
    const-string v0, "SystemMonitorService"

    sput-object v0, Lcom/android/systemui/LoadAverageService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 1180
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/systemui/LoadAverageService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/LoadAverageService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/LoadAverageService;

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/systemui/LoadAverageService;->initDeviceAttribute()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/LoadAverageService;)Lcom/android/systemui/LoadAverageService$DeviceAttribute;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/LoadAverageService;

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/systemui/LoadAverageService;->mCurrentDeviceAttribute:Lcom/android/systemui/LoadAverageService$DeviceAttribute;

    return-object v0
.end method

.method private initDeviceAttribute()V
    .locals 4

    .prologue
    .line 757
    const-string v1, "ro.product.device"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 758
    .local v0, "deviceString":Ljava/lang/String;
    sget-object v1, Lcom/android/systemui/LoadAverageService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ro.product.device = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const-string v1, "mx2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 761
    sget-object v1, Lcom/android/systemui/LoadAverageService;->TAG:Ljava/lang/String;

    const-string v2, "We are initializing device attribute for=> MEIZU MX2!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    new-instance v1, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX2;

    invoke-direct {v1, p0}, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX2;-><init>(Lcom/android/systemui/LoadAverageService;)V

    iput-object v1, p0, Lcom/android/systemui/LoadAverageService;->mCurrentDeviceAttribute:Lcom/android/systemui/LoadAverageService$DeviceAttribute;

    .line 785
    :goto_0
    return-void

    .line 763
    :cond_0
    const-string v1, "mx3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 764
    sget-object v1, Lcom/android/systemui/LoadAverageService;->TAG:Ljava/lang/String;

    const-string v2, "We are initializing device attribute for=> MEIZU MX3!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    new-instance v1, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;

    invoke-direct {v1, p0}, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;-><init>(Lcom/android/systemui/LoadAverageService;)V

    iput-object v1, p0, Lcom/android/systemui/LoadAverageService;->mCurrentDeviceAttribute:Lcom/android/systemui/LoadAverageService$DeviceAttribute;

    goto :goto_0

    .line 766
    :cond_1
    const-string v1, "k95v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "mx4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 767
    :cond_2
    sget-object v1, Lcom/android/systemui/LoadAverageService;->TAG:Ljava/lang/String;

    const-string v2, "We are initializing device attribute for=> MEIZU MX4-MTK!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    new-instance v1, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;

    invoke-direct {v1, p0}, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;-><init>(Lcom/android/systemui/LoadAverageService;)V

    iput-object v1, p0, Lcom/android/systemui/LoadAverageService;->mCurrentDeviceAttribute:Lcom/android/systemui/LoadAverageService$DeviceAttribute;

    goto :goto_0

    .line 769
    :cond_3
    const-string v1, "espresso5430"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "mx4pro"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 770
    :cond_4
    sget-object v1, Lcom/android/systemui/LoadAverageService;->TAG:Ljava/lang/String;

    const-string v2, "We are initializing device attribute for=> MEIZU MX4-Pro"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    new-instance v1, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;

    invoke-direct {v1, p0}, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;-><init>(Lcom/android/systemui/LoadAverageService;)V

    iput-object v1, p0, Lcom/android/systemui/LoadAverageService;->mCurrentDeviceAttribute:Lcom/android/systemui/LoadAverageService$DeviceAttribute;

    goto :goto_0

    .line 772
    :cond_5
    const-string v1, "hammerhead"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 773
    sget-object v1, Lcom/android/systemui/LoadAverageService;->TAG:Ljava/lang/String;

    const-string v2, "We are initializing device attribute for=> Nexus5 Hammerhead!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    new-instance v1, Lcom/android/systemui/LoadAverageService$DeviceAttribute_Hammerhead;

    invoke-direct {v1, p0}, Lcom/android/systemui/LoadAverageService$DeviceAttribute_Hammerhead;-><init>(Lcom/android/systemui/LoadAverageService;)V

    iput-object v1, p0, Lcom/android/systemui/LoadAverageService;->mCurrentDeviceAttribute:Lcom/android/systemui/LoadAverageService$DeviceAttribute;

    goto :goto_0

    .line 775
    :cond_6
    const-string v1, "k52v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 776
    sget-object v1, Lcom/android/systemui/LoadAverageService;->TAG:Ljava/lang/String;

    const-string v2, "We are initializing device attribute for=> M71"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    new-instance v1, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;

    invoke-direct {v1, p0}, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;-><init>(Lcom/android/systemui/LoadAverageService;)V

    iput-object v1, p0, Lcom/android/systemui/LoadAverageService;->mCurrentDeviceAttribute:Lcom/android/systemui/LoadAverageService$DeviceAttribute;

    goto/16 :goto_0

    .line 778
    :cond_7
    const-string v1, "k32v2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 779
    sget-object v1, Lcom/android/systemui/LoadAverageService;->TAG:Ljava/lang/String;

    const-string v2, "We are initializing device attribute for=> M79"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    new-instance v1, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M79_MTK;

    invoke-direct {v1, p0}, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M79_MTK;-><init>(Lcom/android/systemui/LoadAverageService;)V

    iput-object v1, p0, Lcom/android/systemui/LoadAverageService;->mCurrentDeviceAttribute:Lcom/android/systemui/LoadAverageService$DeviceAttribute;

    goto/16 :goto_0

    .line 782
    :cond_8
    sget-object v1, Lcom/android/systemui/LoadAverageService;->TAG:Ljava/lang/String;

    const-string v2, "Ok, this device not supported by LoadAveg, so just show the CPU status!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    new-instance v1, Lcom/android/systemui/LoadAverageService$DeviceAttribute_CPU;

    invoke-direct {v1, p0}, Lcom/android/systemui/LoadAverageService$DeviceAttribute_CPU;-><init>(Lcom/android/systemui/LoadAverageService;)V

    iput-object v1, p0, Lcom/android/systemui/LoadAverageService;->mCurrentDeviceAttribute:Lcom/android/systemui/LoadAverageService$DeviceAttribute;

    goto/16 :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1177
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    .line 1153
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 1154
    new-instance v1, Lcom/android/systemui/LoadAverageService$LoadView;

    invoke-direct {v1, p0, p0}, Lcom/android/systemui/LoadAverageService$LoadView;-><init>(Lcom/android/systemui/LoadAverageService;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/LoadAverageService;->mView:Landroid/view/View;

    .line 1155
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x7df

    const/16 v4, 0x18

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 1162
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const v1, 0x800035

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1163
    const-string v1, "SystemStatus_MEIZU"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 1164
    const-string v1, "window"

    invoke-virtual {p0, v1}, Lcom/android/systemui/LoadAverageService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 1165
    .local v6, "wm":Landroid/view/WindowManager;
    iget-object v1, p0, Lcom/android/systemui/LoadAverageService;->mView:Landroid/view/View;

    invoke-interface {v6, v1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1166
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1170
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 1171
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lcom/android/systemui/LoadAverageService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/LoadAverageService;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 1172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService;->mView:Landroid/view/View;

    .line 1173
    return-void
.end method
