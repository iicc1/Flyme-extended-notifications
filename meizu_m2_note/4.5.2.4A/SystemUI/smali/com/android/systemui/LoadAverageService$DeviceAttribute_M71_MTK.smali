.class final Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;
.super Lcom/android/systemui/LoadAverageService$DeviceAttribute;
.source "LoadAverageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/LoadAverageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceAttribute_M71_MTK"
.end annotation


# instance fields
.field private mACC:Ljava/lang/String;

.field private mALS:Ljava/lang/String;

.field private mBATCurrentString:Ljava/lang/String;

.field private mBATTempratureString:Ljava/lang/String;

.field private mBOARDTempratureString:Ljava/lang/String;

.field private mCPUAvailableCoreString:Ljava/lang/String;

.field private mCPUClockString:Ljava/lang/String;

.field private mCPULoadString:Ljava/lang/String;

.field private mCPUTempratureString:Ljava/lang/String;

.field private mCachedMemMb:J

.field private mFreeMemMb:J

.field private mGPUState:Ljava/lang/String;

.field private mGyro:Ljava/lang/String;

.field private mMag:Ljava/lang/String;

.field private mPS:Ljava/lang/String;

.field private mPedo:Ljava/lang/String;

.field private mTotalMemMb:J

.field private minfo:Lcom/android/internal/util/MemInfoReader;

.field final synthetic this$0:Lcom/android/systemui/LoadAverageService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/LoadAverageService;)V
    .locals 2

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->this$0:Lcom/android/systemui/LoadAverageService;

    invoke-direct {p0, p1}, Lcom/android/systemui/LoadAverageService$DeviceAttribute;-><init>(Lcom/android/systemui/LoadAverageService;)V

    .line 573
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mCPUClockString:Ljava/lang/String;

    .line 574
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpufreq/interactive/percpu_load"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mCPULoadString:Ljava/lang/String;

    .line 575
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/online"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mCPUAvailableCoreString:Ljava/lang/String;

    .line 576
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/class/thermal/thermal_zone1/temp"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mCPUTempratureString:Ljava/lang/String;

    .line 577
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/class/thermal/thermal_zone11/temp"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mBOARDTempratureString:Ljava/lang/String;

    .line 579
    new-instance v0, Ljava/lang/String;

    const-string v1, "/proc/mali/utilization"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mGPUState:Ljava/lang/String;

    .line 581
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/class/thermal/thermal_zone8/temp"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mBATTempratureString:Ljava/lang/String;

    .line 582
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/class/power_supply/battery/current_now"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mBATCurrentString:Ljava/lang/String;

    .line 584
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->minfo:Lcom/android/internal/util/MemInfoReader;

    .line 586
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/bus/i2c/devices/1-0044/sensor_enable"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mALS:Ljava/lang/String;

    .line 587
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/bus/i2c/devices/1-001e/ps_enable"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mPS:Ljava/lang/String;

    .line 588
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/bus/iio/devices/iio:device0/accel_enable"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mACC:Ljava/lang/String;

    .line 589
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/bus/iio/devices/iio:device0/gyro_enable"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mGyro:Ljava/lang/String;

    .line 590
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/bus/iio/devices/iio:device0/compass_enable"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mMag:Ljava/lang/String;

    .line 591
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/bus/iio/devices/iio:device0/pedometer_on"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mPedo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLineSize()I
    .locals 1

    .prologue
    .line 595
    const/4 v0, 0x6

    return v0
.end method

.method public updateDeviceAttribute()[Ljava/lang/String;
    .locals 26

    .prologue
    .line 600
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->getLineSize()I

    move-result v21

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 601
    .local v18, "lineString":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mCPUTempratureString:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 602
    .local v19, "tempString":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v22, 0x0

    const/16 v23, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x2

    const/16 v23, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mCPUClockString:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 606
    .local v15, "cpu0ClockString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mCPULoadString:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 607
    .local v16, "cpu0LoadString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mCPUAvailableCoreString:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 608
    .local v14, "coreAvailString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mBOARDTempratureString:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 609
    .local v13, "boardTempString":Ljava/lang/String;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v22, 0x0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x2

    const/16 v23, 0x3

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v13, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 610
    const/16 v21, 0x0

    new-instance v22, Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "CPU: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\u2103"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " Board: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\u2103"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " online: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " Clk: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v22, v18, v21

    .line 612
    const/16 v21, 0x1

    new-instance v22, Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "CPU Load: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v22, v18, v21

    .line 614
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mGPUState:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 616
    .local v20, "utilizationString":Ljava/lang/String;
    const/16 v21, 0x2

    new-instance v22, Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "GPU State: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v22, v18, v21

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->minfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->minfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v22

    const-wide/32 v24, 0x100000

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mTotalMemMb:J

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->minfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v22

    const-wide/32 v24, 0x100000

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mFreeMemMb:J

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->minfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v22

    const-wide/32 v24, 0x100000

    div-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mCachedMemMb:J

    .line 623
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mTotalMemMb:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    .line 624
    .local v12, "TotalMemString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mFreeMemMb:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    .line 625
    .local v7, "FreeMemString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mCachedMemMb:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 626
    .local v6, "CachedMemString":Ljava/lang/String;
    const/16 v21, 0x3

    new-instance v22, Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Mem Total: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " FreeSize: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " Cached:"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v22, v18, v21

    .line 630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mBATTempratureString:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 631
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v22, 0x0

    const/16 v23, 0x2

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x2

    const/16 v23, 0x3

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 632
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mBATCurrentString:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 633
    .local v17, "currentString":Ljava/lang/String;
    const/16 v21, 0x4

    new-instance v22, Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "BAT: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\u2103"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " Cur: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v22, v18, v21

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mALS:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 637
    .local v5, "ALSString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mPS:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 638
    .local v10, "PSString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mACC:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 639
    .local v4, "ACCString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mGyro:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 640
    .local v8, "GyroString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mMag:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 641
    .local v9, "MagString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_M71_MTK;->mPedo:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 643
    .local v11, "PedoString":Ljava/lang/String;
    const/16 v21, 0x5

    new-instance v22, Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "ALS: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " PS: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " ACC: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " GYRO: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " Mag: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, " Pedo: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v22, v18, v21

    .line 645
    return-object v18
.end method
