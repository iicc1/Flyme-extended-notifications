.class final Lcom/android/systemui/LoadAverageService$DeviceAttribute_Hammerhead;
.super Lcom/android/systemui/LoadAverageService$DeviceAttribute;
.source "LoadAverageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/LoadAverageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceAttribute_Hammerhead"
.end annotation


# instance fields
.field private mCPUAvailableCoreString:Ljava/lang/String;

.field private mCPUClockString:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/systemui/LoadAverageService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/LoadAverageService;)V
    .locals 2

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_Hammerhead;->this$0:Lcom/android/systemui/LoadAverageService;

    invoke-direct {p0, p1}, Lcom/android/systemui/LoadAverageService$DeviceAttribute;-><init>(Lcom/android/systemui/LoadAverageService;)V

    .line 526
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_Hammerhead;->mCPUClockString:Ljava/lang/String;

    .line 527
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/online"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_Hammerhead;->mCPUAvailableCoreString:Ljava/lang/String;

    .line 528
    return-void
.end method


# virtual methods
.method public getLineSize()I
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x1

    return v0
.end method

.method public updateDeviceAttribute()[Ljava/lang/String;
    .locals 7

    .prologue
    .line 538
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_Hammerhead;->mCPUClockString:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 539
    .local v1, "clockString":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_Hammerhead;->mCPUAvailableCoreString:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 540
    .local v2, "coreAvailString":Ljava/lang/String;
    const/4 v3, 0x1

    new-array v0, v3, [Ljava/lang/String;

    .line 541
    .local v0, "CPULineString":[Ljava/lang/String;
    const/4 v3, 0x0

    new-instance v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CPU Clk:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " Online:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v4, v0, v3

    .line 542
    return-object v0
.end method
