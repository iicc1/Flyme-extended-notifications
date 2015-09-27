.class final Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;
.super Lcom/android/systemui/LoadAverageService$DeviceAttribute;
.source "LoadAverageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/LoadAverageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceAttribute_MX4_SAMSUNG"
.end annotation


# instance fields
.field private mBATCurrentString:Ljava/lang/String;

.field private mBATTempratureString:Ljava/lang/String;

.field private mBOARDTempratureString:Ljava/lang/String;

.field private mCPU0ClockString:Ljava/lang/String;

.field private mCPU0LoadString:Ljava/lang/String;

.field private mCPU4ClockString:Ljava/lang/String;

.field private mCPU4LoadString:Ljava/lang/String;

.field private mCPUAvailableCoreString:Ljava/lang/String;

.field private mCPUTempratureString:Ljava/lang/String;

.field private mCachedMemMb:J

.field private mFreeMemMb:J

.field private mGPUClockString:Ljava/lang/String;

.field private mGPUOnlineString:Ljava/lang/String;

.field private mGPUUtilizationString:Ljava/lang/String;

.field private mInfraredString:Ljava/lang/String;

.field private mPhotoSensor:Ljava/lang/String;

.field private mSensorHubString:Ljava/lang/String;

.field private mTotalMemMb:J

.field private minfo:Lcom/android/internal/util/MemInfoReader;

.field final synthetic this$0:Lcom/android/systemui/LoadAverageService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/LoadAverageService;)V
    .locals 2

    .prologue
    .line 437
    iput-object p1, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->this$0:Lcom/android/systemui/LoadAverageService;

    invoke-direct {p0, p1}, Lcom/android/systemui/LoadAverageService$DeviceAttribute;-><init>(Lcom/android/systemui/LoadAverageService;)V

    .line 439
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mCPU0ClockString:Ljava/lang/String;

    .line 440
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/bus/cpu/devices/cpu0/cpufreq/interactive/cpu_util"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mCPU0LoadString:Ljava/lang/String;

    .line 441
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpu4/cpufreq/scaling_cur_freq"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mCPU4ClockString:Ljava/lang/String;

    .line 442
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/bus/cpu/devices/cpu4/cpufreq/interactive/cpu_util"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mCPU4LoadString:Ljava/lang/String;

    .line 443
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/online"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mCPUAvailableCoreString:Ljava/lang/String;

    .line 444
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/devices/10060000.tmu/cpu_temp"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mCPUTempratureString:Ljava/lang/String;

    .line 445
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/devices/10060000.tmu/ntc_temp"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mBOARDTempratureString:Ljava/lang/String;

    .line 447
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/bus/platform/devices/14ac0000.mali/power_state"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mGPUOnlineString:Ljava/lang/String;

    .line 448
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/devices/14ac0000.mali/clock"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mGPUClockString:Ljava/lang/String;

    .line 449
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/bus/platform/devices/14ac0000.mali/utilization"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mGPUUtilizationString:Ljava/lang/String;

    .line 451
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/class/power_supply/battery/temp"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mBATTempratureString:Ljava/lang/String;

    .line 452
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/class/power_supply/battery/current_now"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mBATCurrentString:Ljava/lang/String;

    .line 454
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->minfo:Lcom/android/internal/util/MemInfoReader;

    .line 456
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/devices/14e30000.i2c/i2c-66/66-003a/input/input0/enable"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mSensorHubString:Ljava/lang/String;

    .line 457
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/devices/14e80000.i2c/i2c-67/67-001e/ps_enable"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mInfraredString:Ljava/lang/String;

    .line 458
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/devices/14e80000.i2c/i2c-67/67-0044/sensor_enable"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mPhotoSensor:Ljava/lang/String;

    .line 459
    return-void
.end method


# virtual methods
.method public getLineSize()I
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x6

    return v0
.end method

.method public updateDeviceAttribute()[Ljava/lang/String;
    .locals 30

    .prologue
    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->getLineSize()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    .line 469
    .local v18, "lineString":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mCPUTempratureString:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 472
    .local v24, "tempString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mCPU0ClockString:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 473
    .local v10, "cpu0ClockString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mCPU0LoadString:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 474
    .local v11, "cpu0LoadString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mCPUAvailableCoreString:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 475
    .local v9, "coreAvailString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mCPU4ClockString:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 476
    .local v12, "cpu4ClockString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mCPU4LoadString:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 477
    .local v13, "cpu4LoadString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mBOARDTempratureString:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 478
    .local v7, "boardTempString":Ljava/lang/String;
    const/16 v26, 0x0

    new-instance v27, Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "CPU: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\u2103"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Board:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\u2103"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " online:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " CPU0 Clk:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Load: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v27, v18, v26

    .line 480
    const/16 v26, 0x1

    new-instance v27, Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "CPU4 Clk:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Load: "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v27, v18, v26

    .line 482
    const-string v8, ""

    .line 483
    .local v8, "clockString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mGPUClockString:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mGPUOnlineString:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 485
    .local v20, "onlineString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mGPUUtilizationString:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 486
    .local v25, "utilizationString":Ljava/lang/String;
    const/16 v26, 0x2

    new-instance v27, Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "GPU State :"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Clk:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Load:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v27, v18, v26

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->minfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->minfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v26

    const-wide/32 v28, 0x100000

    div-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mTotalMemMb:J

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->minfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v26

    const-wide/32 v28, 0x100000

    div-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mFreeMemMb:J

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->minfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v26

    const-wide/32 v28, 0x100000

    div-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mCachedMemMb:J

    .line 493
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mTotalMemMb:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 494
    .local v6, "TotalMemString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mFreeMemMb:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 495
    .local v5, "FreeMemString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mCachedMemMb:J

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 496
    .local v4, "CachedMemString":Ljava/lang/String;
    const/16 v26, 0x3

    new-instance v27, Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Mem Total:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " FreeSize:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Cached:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v27, v18, v26

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mBATTempratureString:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mBATCurrentString:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 502
    .local v14, "currentString":Ljava/lang/String;
    const/16 v26, 0x4

    new-instance v27, Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "BAT:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, "\u2103"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Cur:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v27, v18, v26

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mSensorHubString:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 505
    .local v23, "sensorHubString":Ljava/lang/String;
    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v0, v23

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    .line 506
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v22

    .line 507
    .local v22, "sensorHubInt":I
    and-int/lit8 v26, v22, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    .line 508
    .local v15, "gSensorStateString":Ljava/lang/String;
    shr-int/lit8 v26, v22, 0x1

    and-int/lit8 v26, v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v19

    .line 509
    .local v19, "magStateString":Ljava/lang/String;
    shr-int/lit8 v26, v22, 0x2

    and-int/lit8 v26, v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    .line 510
    .local v16, "gyroSStateString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mInfraredString:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 511
    .local v17, "infraredString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_SAMSUNG;->mPhotoSensor:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-static/range {v26 .. v26}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 512
    .local v21, "photoSensor":Ljava/lang/String;
    const/16 v26, 0x5

    new-instance v27, Ljava/lang/String;

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "Sensor g-sensor:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " MAG:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " GYRO:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Infrared:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " Photo-Sensor:"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-direct/range {v27 .. v28}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v27, v18, v26

    .line 514
    return-object v18
.end method
