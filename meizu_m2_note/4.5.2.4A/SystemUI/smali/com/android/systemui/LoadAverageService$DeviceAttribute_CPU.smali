.class final Lcom/android/systemui/LoadAverageService$DeviceAttribute_CPU;
.super Lcom/android/systemui/LoadAverageService$DeviceAttribute;
.source "LoadAverageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/LoadAverageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DeviceAttribute_CPU"
.end annotation


# instance fields
.field private mCPUAvailableCoreString:Ljava/lang/String;

.field private mCPUClockString:Ljava/lang/String;

.field private mCachedMemMb:J

.field private mFreeMemMb:J

.field private mTotalMemMb:J

.field private minfo:Lcom/android/internal/util/MemInfoReader;

.field final synthetic this$0:Lcom/android/systemui/LoadAverageService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/LoadAverageService;)V
    .locals 2

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_CPU;->this$0:Lcom/android/systemui/LoadAverageService;

    invoke-direct {p0, p1}, Lcom/android/systemui/LoadAverageService$DeviceAttribute;-><init>(Lcom/android/systemui/LoadAverageService;)V

    .line 160
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_cur_freq"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_CPU;->mCPUClockString:Ljava/lang/String;

    .line 161
    new-instance v0, Ljava/lang/String;

    const-string v1, "/sys/devices/system/cpu/online"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_CPU;->mCPUAvailableCoreString:Ljava/lang/String;

    .line 163
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_CPU;->minfo:Lcom/android/internal/util/MemInfoReader;

    .line 164
    return-void
.end method


# virtual methods
.method public getLineSize()I
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x2

    return v0
.end method

.method public updateDeviceAttribute()[Ljava/lang/String;
    .locals 12

    .prologue
    const-wide/32 v10, 0x100000

    .line 174
    iget-object v6, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_CPU;->mCPUClockString:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, "clockString":Ljava/lang/String;
    iget-object v6, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_CPU;->mCPUAvailableCoreString:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/systemui/LoadAverageService$fileReadHelper;->getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, "coreAvailString":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/systemui/LoadAverageService$DeviceAttribute_CPU;->getLineSize()I

    move-result v6

    new-array v5, v6, [Ljava/lang/String;

    .line 177
    .local v5, "lineString":[Ljava/lang/String;
    const/4 v6, 0x0

    new-instance v7, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CPU Clk:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Online:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    .line 180
    iget-object v6, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_CPU;->minfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 181
    iget-object v6, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_CPU;->minfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v6

    div-long/2addr v6, v10

    iput-wide v6, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_CPU;->mTotalMemMb:J

    .line 182
    iget-object v6, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_CPU;->minfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v6

    div-long/2addr v6, v10

    iput-wide v6, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_CPU;->mFreeMemMb:J

    .line 183
    iget-object v6, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_CPU;->minfo:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v6}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v6

    div-long/2addr v6, v10

    iput-wide v6, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_CPU;->mCachedMemMb:J

    .line 184
    iget-wide v6, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_CPU;->mTotalMemMb:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .line 185
    .local v2, "TotalMemString":Ljava/lang/String;
    iget-wide v6, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_CPU;->mFreeMemMb:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    .line 186
    .local v1, "FreeMemString":Ljava/lang/String;
    iget-wide v6, p0, Lcom/android/systemui/LoadAverageService$DeviceAttribute_CPU;->mCachedMemMb:J

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "CachedMemString":Ljava/lang/String;
    const/4 v6, 0x1

    new-instance v7, Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Mem Total:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " FreeSize:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " Cached:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v7, v5, v6

    .line 189
    return-object v5
.end method
