.class final Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;
.super Lcom/android/systemui/LoadAverageService$DeviceAttribute;
.source "LoadAverageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/LoadAverageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceAttribute_MX3"
.end annotation


# instance fields
.field mBATCurrentString:Ljava/lang/String;

.field mBATTempratureString:Ljava/lang/String;

.field mBATVoltageString:Ljava/lang/String;

.field mBUSMemString:Ljava/lang/String;

.field mBUSSystemString:Ljava/lang/String;

.field mCPUAvailableCoreString:Ljava/lang/String;

.field mCPUClockString:Ljava/lang/String;

.field mCPUTempratureString:Ljava/lang/String;

.field mCachedMemMb:J

.field mFreeMemMb:J

.field mGPUClockString:Ljava/lang/String;

.field mGPUUtilizationString:Ljava/lang/String;

.field mTotalMemMb:J

.field minfo:Lcom/android/internal/util/MemInfoReader;

.field final synthetic this$0:Lcom/android/systemui/LoadAverageService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/LoadAverageService;)V
    .locals 2

    .prologue
    .line 242
    iput-object p1, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->this$0:Lcom/android/systemui/LoadAverageService;

    invoke-direct {p0, p1}, Lcom/android/systemui/LoadAverageService$DeviceAttribute;-><init>(Lcom/android/systemui/LoadAverageService;)V

    .line 244
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/module/pvrsrvkm/parameters/sgx_gpu_clk"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->mGPUClockString:Ljava/lang/String;

    .line 245
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/module/pvrsrvkm/parameters/sgx_gpu_utilization"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->mGPUUtilizationString:Ljava/lang/String;

    .line 247
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->mCPUClockString:Ljava/lang/String;

    .line 248
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/online"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->mCPUAvailableCoreString:Ljava/lang/String;

    .line 249
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/class/hwmon/hwmon0/temp1_input"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->mCPUTempratureString:Ljava/lang/String;

    .line 251
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/class/power_supply/fuelgauge/temp"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->mBATTempratureString:Ljava/lang/String;

    .line 252
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/class/power_supply/fuelgauge/current_now"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->mBATCurrentString:Ljava/lang/String;

    .line 253
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/class/power_supply/fuelgauge/voltage_now"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->mBATVoltageString:Ljava/lang/String;

    .line 255
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/class/devfreq/exynos5-busfreq-mif/cur_freq"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->mBUSMemString:Ljava/lang/String;

    .line 256
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/class/devfreq/exynos5-busfreq-int/cur_freq"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->mBUSSystemString:Ljava/lang/String;

    .line 259
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->minfo:Lcom/android/internal/util/MemInfoReader;

    .line 260
    return-void
.end method


# virtual methods
.method public getLineSize()I
    .locals 1

    .prologue
    .line 264
    const/4 v0, 0x5

    return v0
.end method

.method public updateDeviceAttribute()[Ljava/lang/String;
    .locals 18

    .prologue
    .line 269
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->mCPUClockString:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 270
    .local v5, "clockString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->mCPUAvailableCoreString:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 271
    .local v6, "coreAvailString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->mCPUTempratureString:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 272
    .local v11, "tempString":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->getLineSize()I

    move-result v14

    new-array v8, v14, [Ljava/lang/String;

    .line 273
    .local v8, "lineString":[Ljava/lang/String;
    const/4 v14, 0x0

    new-instance v15, Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "CPU Clk:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Online:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\u2103"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v15, v8, v14

    .line 276
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->mGPUClockString:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 277
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->mGPUUtilizationString:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 278
    .local v12, "utilizationString":Ljava/lang/String;
    const/4 v14, 0x1

    new-instance v15, Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "GPU Clk:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Util:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v15, v8, v14

    .line 280
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->mBATTempratureString:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 281
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->mBATCurrentString:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 282
    .local v7, "currentString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->mBATVoltageString:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 283
    .local v13, "voltageString":Ljava/lang/String;
    const/4 v14, 0x2

    new-instance v15, Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "BAT:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "\u2103"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Cur:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Vol:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v15, v8, v14

    .line 286
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->mBUSMemString:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 287
    .local v9, "memString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->mBUSSystemString:Ljava/lang/String;

    invoke-static {v14}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 288
    .local v10, "sysString":Ljava/lang/String;
    const/4 v14, 0x3

    new-instance v15, Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "BUS mem:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " sys:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v15, v8, v14

    .line 291
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->minfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v14}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 292
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->minfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v14}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v14

    const-wide/32 v16, 0x100000

    div-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->mTotalMemMb:J

    .line 293
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->minfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v14}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v14

    const-wide/32 v16, 0x100000

    div-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->mFreeMemMb:J

    .line 294
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->minfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v14}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v14

    const-wide/32 v16, 0x100000

    div-long v14, v14, v16

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->mCachedMemMb:J

    .line 295
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->mTotalMemMb:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    .line 296
    .local v4, "TotalMemString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->mFreeMemMb:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 297
    .local v3, "FreeMemString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_MX3;->mCachedMemMb:J

    invoke-static {v14, v15}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "CachedMemString":Ljava/lang/String;
    const/4 v14, 0x4

    new-instance v15, Ljava/lang/String;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Mem Total:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " FreeSize:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Cached:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v15, v8, v14

    .line 304
    return-object v8
.end method
