.class final Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;
.super Lcom/android/systemui/LoadAverageService$DeviceAttribute;
.source "LoadAverageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/LoadAverageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceAttribute_MX4_MTK"
.end annotation


# instance fields
.field private mACCSensorString:Ljava/lang/String;

.field private mBATCurrentString:Ljava/lang/String;

.field private mBATTempratureString:Ljava/lang/String;

.field private mBATVoltageString:Ljava/lang/String;

.field private mCOMPsensorString:Ljava/lang/String;

.field private mCPUAvailableCoreString:Ljava/lang/String;

.field private mCPUClockString:Ljava/lang/String;

.field private mCPUTempratureString:Ljava/lang/String;

.field private mCachedMemMb:J

.field private mFreeMemMb:J

.field private mGEOMsensorString:Ljava/lang/String;

.field private mGPUClockString:Ljava/lang/String;

.field private mGPUUtilizationString:Ljava/lang/String;

.field private mGYROSensorString:Ljava/lang/String;

.field private mQUAT9sensorString:Ljava/lang/String;

.field private mSTEPCNTsensorString:Ljava/lang/String;

.field private mTotalMemMb:J

.field private minfo:Lcom/android/internal/util/MemInfoReader;

.field final synthetic this$0:Lcom/android/systemui/LoadAverageService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/LoadAverageService;)V
    .locals 2

    .prologue
    .line 332
    iput-object p1, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->this$0:Lcom/android/systemui/LoadAverageService;

    invoke-direct {p0, p1}, Lcom/android/systemui/LoadAverageService$DeviceAttribute;-><init>(Lcom/android/systemui/LoadAverageService;)V

    .line 334
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mCPUClockString:Ljava/lang/String;

    .line 335
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/online"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mCPUAvailableCoreString:Ljava/lang/String;

    .line 336
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/class/thermal/thermal_zone1/temp"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mCPUTempratureString:Ljava/lang/String;

    .line 338
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/module/pvrsrvkm/parameters/gpu_cust_boost_freq"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mGPUClockString:Ljava/lang/String;

    .line 339
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/module/pvrsrvkm/parameters/gpu_loading"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mGPUUtilizationString:Ljava/lang/String;

    .line 341
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/class/power_supply/battery/batt_temp"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mBATTempratureString:Ljava/lang/String;

    .line 342
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/class/power_supply/battery/current_now"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mBATCurrentString:Ljava/lang/String;

    .line 343
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/class/power_supply/battery/batt_vol"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mBATVoltageString:Ljava/lang/String;

    .line 346
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->minfo:Lcom/android/internal/util/MemInfoReader;

    .line 348
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/bus/iio/devices/iio:device0/in_accel_enable"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mACCSensorString:Ljava/lang/String;

    .line 349
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/bus/iio/devices/iio:device0/in_calib_anglvel_enable"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mGYROSensorString:Ljava/lang/String;

    .line 350
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/bus/iio/devices/iio:device0/in_calib_magn_enable"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mCOMPsensorString:Ljava/lang/String;

    .line 351
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/bus/iio/devices/iio:device0/in_geomag_enable"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mGEOMsensorString:Ljava/lang/String;

    .line 352
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/bus/iio/devices/iio:device0/event_pedometer_enable"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mSTEPCNTsensorString:Ljava/lang/String;

    .line 353
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/bus/iio/devices/iio:device0/in_9quat_enable"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mQUAT9sensorString:Ljava/lang/String;

    .line 354
    return-void
.end method


# virtual methods
.method public getLineSize()I
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x5

    return v0
.end method

.method public updateDeviceAttribute()[Ljava/lang/String;
    .locals 24

    .prologue
    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->getLineSize()I

    move-result v20

    move/from16 v0, v20

    new-array v14, v0, [Ljava/lang/String;

    .line 365
    .local v14, "lineString":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mCPUTempratureString:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 368
    .local v17, "tempString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mCPUClockString:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 369
    .local v8, "clockString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mCPUAvailableCoreString:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 370
    .local v10, "coreAvailString":Ljava/lang/String;
    const/16 v20, 0x0

    new-instance v21, Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "CPU Clk:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " Online:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\u2103"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v21, v14, v20

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mGPUClockString:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mGPUUtilizationString:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 375
    .local v18, "utilizationString":Ljava/lang/String;
    const/16 v20, 0x1

    new-instance v21, Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "GPU Clk:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " Util:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v21, v14, v20

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->minfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->minfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v20

    const-wide/32 v22, 0x100000

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mTotalMemMb:J

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->minfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v20

    const-wide/32 v22, 0x100000

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mFreeMemMb:J

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->minfo:Lcom/android/internal/util/MemInfoReader;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v20

    const-wide/32 v22, 0x100000

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mCachedMemMb:J

    .line 382
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mTotalMemMb:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    .line 383
    .local v6, "TotalMemString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mFreeMemMb:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    .line 384
    .local v5, "FreeMemString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mCachedMemMb:J

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 385
    .local v4, "CachedMemString":Ljava/lang/String;
    const/16 v20, 0x2

    new-instance v21, Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Mem Total:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " FreeSize:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " Cached:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v21, v14, v20

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mBATTempratureString:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mBATCurrentString:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 394
    .local v11, "currentString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mBATVoltageString:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 395
    .local v19, "voltageString":Ljava/lang/String;
    const/16 v20, 0x3

    new-instance v21, Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "BAT:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\u2103"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " Cur:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " Vol:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v21, v14, v20

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mACCSensorString:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 399
    .local v7, "accString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mGYROSensorString:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 400
    .local v13, "gyroString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mCOMPsensorString:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 401
    .local v9, "compString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mGEOMsensorString:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 402
    .local v12, "geomString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mSTEPCNTsensorString:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 403
    .local v16, "stepcntString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX4_MTK;->mQUAT9sensorString:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 404
    .local v15, "quat9String":Ljava/lang/String;
    const/16 v20, 0x4

    new-instance v21, Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "ACCEL:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " GYRO:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " COMP:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " GEOM:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " STEPCNT:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " QUAT9:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-direct/range {v21 .. v22}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v21, v14, v20

    .line 408
    return-object v14
.end method
