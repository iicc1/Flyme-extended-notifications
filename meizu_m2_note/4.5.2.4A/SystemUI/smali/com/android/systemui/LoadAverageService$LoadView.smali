.class Lcom/android/systemui/LoadAverageService$LoadView;
.super Landroid/view/View;
.source "LoadAverageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/LoadAverageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadView"
.end annotation


# instance fields
.field private mAddedPaint:Landroid/graphics/Paint;

.field private mAscent:F

.field private mFH:I

.field private mHandler:Landroid/os/Handler;

.field private mIOPaint:Landroid/graphics/Paint;

.field private mIrqPaint:Landroid/graphics/Paint;

.field private mLinesPaint:Landroid/graphics/Paint;

.field private mLinesString:[Ljava/lang/String;

.field private mLoadPaint:Landroid/graphics/Paint;

.field private final mMemInfo:Lcom/android/systemui/LoadAverageService$MemoryInfo;

.field private mNeededHeight:I

.field private mNeededWidth:I

.field private mRemovedPaint:Landroid/graphics/Paint;

.field private mShadow2Paint:Landroid/graphics/Paint;

.field private mShadowPaint:Landroid/graphics/Paint;

.field private final mStats:Lcom/android/systemui/LoadAverageService$CpuTracker;

.field private mSystemPaint:Landroid/graphics/Paint;

.field private mUserPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/android/systemui/LoadAverageService;


# direct methods
.method constructor <init>(Lcom/android/systemui/LoadAverageService;Landroid/content/Context;)V
    .locals 12
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    const/high16 v11, -0x1000000

    const/4 v10, 0x1

    const/16 v9, 0xff

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 852
    iput-object p1, p0, Lcom/android/systemui/LoadAverageService$LoadView;->this$0:Lcom/android/systemui/LoadAverageService;

    .line 853
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 820
    new-instance v3, Lcom/android/systemui/LoadAverageService$LoadView$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/LoadAverageService$LoadView$1;-><init>(Lcom/android/systemui/LoadAverageService$LoadView;)V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mHandler:Landroid/os/Handler;

    .line 855
    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/systemui/LoadAverageService$LoadView;->setPadding(IIII)V

    .line 862
    const/16 v2, 0xa

    .line 863
    .local v2, "textSize":I
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 864
    .local v0, "density":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 865
    const/16 v2, 0x9

    .line 872
    :cond_0
    :goto_0
    # getter for: Lcom/android/systemui/LoadAverageService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/LoadAverageService;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Screen density %d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " textSize %d"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    .line 879
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 880
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 881
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v9, v9, v9, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 883
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLinesPaint:Landroid/graphics/Paint;

    .line 884
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLinesPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 885
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLinesPaint:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 886
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLinesPaint:Landroid/graphics/Paint;

    const/16 v4, 0xf4

    const/16 v5, 0xa4

    const/16 v6, 0x60

    invoke-virtual {v3, v9, v4, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 888
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mAddedPaint:Landroid/graphics/Paint;

    .line 889
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mAddedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 890
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mAddedPaint:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 891
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mAddedPaint:Landroid/graphics/Paint;

    const/16 v4, 0x8b

    const/16 v5, 0x8b

    invoke-virtual {v3, v9, v7, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 893
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    .line 894
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 895
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 896
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 897
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    const/16 v4, 0x80

    const/16 v5, 0x80

    invoke-virtual {v3, v9, v9, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 899
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    .line 900
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 901
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 903
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    const/16 v4, 0xc0

    invoke-virtual {v3, v4, v7, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 905
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    .line 906
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 907
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 909
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    const/16 v4, 0xc0

    invoke-virtual {v3, v4, v7, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 911
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v3, v4, v8, v8, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 912
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLinesPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v3, v4, v8, v8, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 914
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mIrqPaint:Landroid/graphics/Paint;

    .line 915
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mIrqPaint:Landroid/graphics/Paint;

    const/16 v4, 0x80

    invoke-virtual {v3, v4, v7, v7, v9}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 916
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mIrqPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v3, v4, v8, v8, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 918
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    .line 919
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    const/16 v4, 0x80

    invoke-virtual {v3, v4, v9, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 920
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v3, v4, v8, v8, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 922
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mUserPaint:Landroid/graphics/Paint;

    .line 923
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mUserPaint:Landroid/graphics/Paint;

    const/16 v4, 0x80

    invoke-virtual {v3, v4, v7, v9, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 924
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mUserPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v3, v4, v8, v8, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 926
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mIOPaint:Landroid/graphics/Paint;

    .line 927
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mIOPaint:Landroid/graphics/Paint;

    const/16 v4, 0x80

    const/16 v5, 0xd7

    invoke-virtual {v3, v4, v9, v5, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 928
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mIOPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v3, v4, v8, v8, v11}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 930
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mAscent:F

    .line 931
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v1

    .line 932
    .local v1, "descent":F
    iget v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mAscent:F

    sub-float v3, v1, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mFH:I

    .line 934
    new-instance v3, Lcom/android/systemui/LoadAverageService$CpuTracker;

    iget-object v4, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Lcom/android/systemui/LoadAverageService$CpuTracker;-><init>(Landroid/graphics/Paint;)V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mStats:Lcom/android/systemui/LoadAverageService$CpuTracker;

    .line 935
    # invokes: Lcom/android/systemui/LoadAverageService;->initDeviceAttribute()V
    invoke-static {p1}, Lcom/android/systemui/LoadAverageService;->access$200(Lcom/android/systemui/LoadAverageService;)V

    .line 936
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mStats:Lcom/android/systemui/LoadAverageService$CpuTracker;

    invoke-virtual {v3}, Lcom/android/systemui/LoadAverageService$CpuTracker;->init()V

    .line 937
    invoke-virtual {p0}, Lcom/android/systemui/LoadAverageService$LoadView;->updateDisplay()V

    .line 938
    new-instance v3, Lcom/android/systemui/LoadAverageService$MemoryInfo;

    const/4 v4, 0x0

    invoke-direct {v3, p1, p2, v4}, Lcom/android/systemui/LoadAverageService$MemoryInfo;-><init>(Lcom/android/systemui/LoadAverageService;Landroid/content/Context;Lcom/android/systemui/LoadAverageService$1;)V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mMemInfo:Lcom/android/systemui/LoadAverageService$MemoryInfo;

    .line 939
    return-void

    .line 867
    .end local v1    # "descent":F
    :cond_1
    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v3, v0

    float-to-int v2, v3

    .line 868
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 869
    const/16 v2, 0xa

    goto/16 :goto_0
.end method

.method static synthetic access$100(Lcom/android/systemui/LoadAverageService$LoadView;)Lcom/android/systemui/LoadAverageService$CpuTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/LoadAverageService$LoadView;

    .prologue
    .line 819
    iget-object v0, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mStats:Lcom/android/systemui/LoadAverageService$CpuTracker;

    return-object v0
.end method


# virtual methods
.method getDeviceAttributeLines()I
    .locals 1

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/android/systemui/LoadAverageService$LoadView;->this$0:Lcom/android/systemui/LoadAverageService;

    # getter for: Lcom/android/systemui/LoadAverageService;->mCurrentDeviceAttribute:Lcom/android/systemui/LoadAverageService$DeviceAttribute;
    invoke-static {v0}, Lcom/android/systemui/LoadAverageService;->access$500(Lcom/android/systemui/LoadAverageService;)Lcom/android/systemui/LoadAverageService$DeviceAttribute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/LoadAverageService$DeviceAttribute;->getLineSize()I

    move-result v0

    return v0
.end method

.method getMaxWidthFromDeviceAttribute()I
    .locals 4

    .prologue
    .line 1098
    invoke-virtual {p0}, Lcom/android/systemui/LoadAverageService$LoadView;->updateDeviceAttributeInfo()[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLinesString:[Ljava/lang/String;

    .line 1099
    invoke-virtual {p0}, Lcom/android/systemui/LoadAverageService$LoadView;->getDeviceAttributeLines()I

    move-result v1

    .line 1100
    .local v1, "linesNumber":I
    const/4 v2, 0x0

    .line 1101
    .local v2, "maxAttrLength":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1102
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLinesString:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1103
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLinesString:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 1101
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1106
    :cond_1
    return v2
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 943
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 944
    iget-object v0, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 945
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 949
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 950
    iget-object v0, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 951
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 33
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 961
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 962
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mNeededWidth:I

    .line 963
    .local v10, "W":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/LoadAverageService$LoadView;->getWidth()I

    move-result v2

    add-int/lit8 v9, v2, -0x1

    .line 966
    .local v9, "RIGHT":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mStats:Lcom/android/systemui/LoadAverageService$CpuTracker;

    move-object/from16 v24, v0

    .line 967
    .local v24, "stats":Lcom/android/systemui/LoadAverageService$CpuTracker;
    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/LoadAverageService$CpuTracker;->getLastUserTime()I

    move-result v29

    .line 968
    .local v29, "userTime":I
    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/LoadAverageService$CpuTracker;->getLastSystemTime()I

    move-result v25

    .line 970
    .local v25, "systemTime":I
    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/LoadAverageService$CpuTracker;->getLastIoWaitTime()I

    move-result v16

    .line 971
    .local v16, "iowaitTime":I
    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/LoadAverageService$CpuTracker;->getLastIrqTime()I

    move-result v17

    .line 972
    .local v17, "irqTime":I
    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/LoadAverageService$CpuTracker;->getLastSoftIrqTime()I

    move-result v22

    .line 974
    .local v22, "softIrqTime":I
    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/LoadAverageService$CpuTracker;->getLastIdleTime()I

    move-result v14

    .line 976
    .local v14, "idleTime":I
    add-int v2, v29, v25

    add-int v2, v2, v16

    add-int v2, v2, v17

    add-int v2, v2, v22

    add-int v28, v2, v14

    .line 978
    .local v28, "totalTime":I
    if-nez v28, :cond_1

    .line 1087
    :cond_0
    return-void

    .line 981
    :cond_1
    mul-int v2, v29, v10

    div-int v30, v2, v28

    .line 982
    .local v30, "userW":I
    mul-int v2, v25, v10

    div-int v26, v2, v28

    .line 983
    .local v26, "systemW":I
    add-int v2, v17, v22

    mul-int/2addr v2, v10

    div-int v18, v2, v28

    .line 984
    .local v18, "irqW":I
    mul-int v2, v16, v10

    div-int v15, v2, v28

    .line 986
    .local v15, "ioW":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v31, v9, v2

    .line 987
    .local v31, "x":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingTop:I

    add-int/lit8 v27, v2, 0x2

    .line 988
    .local v27, "top":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mFH:I

    add-int/2addr v2, v3

    add-int/lit8 v11, v2, -0x2

    .line 990
    .local v11, "bottom":I
    if-lez v15, :cond_2

    .line 991
    sub-int v2, v31, v15

    int-to-float v3, v2

    move/from16 v0, v27

    int-to-float v4, v0

    move/from16 v0, v31

    int-to-float v5, v0

    int-to-float v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mIOPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 992
    sub-int v31, v31, v15

    .line 994
    :cond_2
    if-lez v18, :cond_3

    .line 995
    sub-int v2, v31, v18

    int-to-float v3, v2

    move/from16 v0, v27

    int-to-float v4, v0

    move/from16 v0, v31

    int-to-float v5, v0

    int-to-float v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mIrqPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 997
    sub-int v31, v31, v18

    .line 999
    :cond_3
    if-lez v26, :cond_4

    .line 1000
    sub-int v2, v31, v26

    int-to-float v3, v2

    move/from16 v0, v27

    int-to-float v4, v0

    move/from16 v0, v31

    int-to-float v5, v0

    int-to-float v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1002
    sub-int v31, v31, v26

    .line 1004
    :cond_4
    if-lez v30, :cond_5

    .line 1005
    sub-int v2, v31, v30

    int-to-float v3, v2

    move/from16 v0, v27

    int-to-float v4, v0

    move/from16 v0, v31

    int-to-float v5, v0

    int-to-float v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mUserPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1007
    sub-int v31, v31, v30

    .line 1010
    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mAscent:F

    float-to-int v3, v3

    sub-int v32, v2, v3

    .line 1011
    .local v32, "y":I
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/systemui/LoadAverageService$CpuTracker;->mLoadText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v3, v9, v3

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/systemui/LoadAverageService$CpuTracker;->mLoadWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    add-int/lit8 v4, v32, -0x1

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1013
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/systemui/LoadAverageService$CpuTracker;->mLoadText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v3, v9, v3

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/systemui/LoadAverageService$CpuTracker;->mLoadWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    add-int/lit8 v4, v32, 0x1

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1015
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/systemui/LoadAverageService$CpuTracker;->mLoadText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v3, v9, v3

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/systemui/LoadAverageService$CpuTracker;->mLoadWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    add-int/lit8 v4, v32, -0x1

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1017
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/systemui/LoadAverageService$CpuTracker;->mLoadText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v3, v9, v3

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/systemui/LoadAverageService$CpuTracker;->mLoadWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    add-int/lit8 v4, v32, 0x1

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1019
    move-object/from16 v0, v24

    iget-object v2, v0, Lcom/android/systemui/LoadAverageService$CpuTracker;->mLoadText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v3, v9, v3

    move-object/from16 v0, v24

    iget v4, v0, Lcom/android/systemui/LoadAverageService$CpuTracker;->mLoadWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move/from16 v0, v32

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1023
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/LoadAverageService$LoadView;->getDeviceAttributeLines()I

    move-result v20

    .line 1026
    .local v20, "lines":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    move/from16 v0, v20

    if-ge v13, v0, :cond_6

    .line 1027
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mLinesString:[Ljava/lang/String;

    aget-object v19, v2, v13

    .line 1028
    .local v19, "lineString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v12, v2

    .line 1030
    .local v12, "currentLineWidth":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mFH:I

    add-int v32, v32, v2

    .line 1032
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v2, v9, v2

    sub-int/2addr v2, v12

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    add-int/lit8 v3, v32, -0x1

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1034
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v2, v9, v2

    sub-int/2addr v2, v12

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    add-int/lit8 v3, v32, 0x1

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1036
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v2, v9, v2

    sub-int/2addr v2, v12

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    add-int/lit8 v3, v32, -0x1

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1038
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v2, v9, v2

    sub-int/2addr v2, v12

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    add-int/lit8 v3, v32, 0x1

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1040
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v2, v9, v2

    sub-int/2addr v2, v12

    int-to-float v2, v2

    move/from16 v0, v32

    int-to-float v3, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mLinesPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1026
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_0

    .line 1045
    .end local v12    # "currentLineWidth":I
    .end local v19    # "lineString":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mFH:I

    mul-int v2, v2, v20

    add-int v27, v27, v2

    .line 1046
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mFH:I

    mul-int v2, v2, v20

    add-int/2addr v11, v2

    .line 1049
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mMemInfo:Lcom/android/systemui/LoadAverageService$MemoryInfo;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mFH:I

    move-object/from16 v0, p1

    move/from16 v1, v32

    # invokes: Lcom/android/systemui/LoadAverageService$MemoryInfo;->draw(Landroid/graphics/Canvas;II)V
    invoke-static {v2, v0, v1, v3}, Lcom/android/systemui/LoadAverageService$MemoryInfo;->access$400(Lcom/android/systemui/LoadAverageService$MemoryInfo;Landroid/graphics/Canvas;II)V

    .line 1052
    invoke-virtual/range {v24 .. v24}, Lcom/android/systemui/LoadAverageService$CpuTracker;->countWorkingStats()I

    move-result v8

    .line 1053
    .local v8, "N":I
    const/4 v13, 0x0

    :goto_1
    if-ge v13, v8, :cond_0

    .line 1054
    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Lcom/android/systemui/LoadAverageService$CpuTracker;->getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v23

    .line 1055
    .local v23, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mFH:I

    add-int v32, v32, v2

    .line 1056
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mFH:I

    add-int v27, v27, v2

    .line 1057
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mFH:I

    add-int/2addr v11, v2

    .line 1059
    move-object/from16 v0, v23

    iget v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    mul-int/2addr v2, v10

    div-int v30, v2, v28

    .line 1060
    move-object/from16 v0, v23

    iget v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    mul-int/2addr v2, v10

    div-int v26, v2, v28

    .line 1061
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v31, v9, v2

    .line 1062
    if-lez v26, :cond_7

    .line 1063
    sub-int v2, v31, v26

    int-to-float v3, v2

    move/from16 v0, v27

    int-to-float v4, v0

    move/from16 v0, v31

    int-to-float v5, v0

    int-to-float v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1064
    sub-int v31, v31, v26

    .line 1066
    :cond_7
    if-lez v30, :cond_8

    .line 1067
    sub-int v2, v31, v30

    int-to-float v3, v2

    move/from16 v0, v27

    int-to-float v4, v0

    move/from16 v0, v31

    int-to-float v5, v0

    int-to-float v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mUserPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1068
    sub-int v31, v31, v30

    .line 1071
    :cond_8
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v3, v9, v3

    move-object/from16 v0, v23

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    add-int/lit8 v4, v32, -0x1

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1073
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v3, v9, v3

    move-object/from16 v0, v23

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    add-int/lit8 v4, v32, 0x1

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1075
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v3, v9, v3

    move-object/from16 v0, v23

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    add-int/lit8 v4, v32, -0x1

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1077
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v3, v9, v3

    move-object/from16 v0, v23

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    add-int/lit8 v4, v32, 0x1

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    .line 1081
    .local v21, "p":Landroid/graphics/Paint;
    move-object/from16 v0, v23

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eqz v2, :cond_9

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mAddedPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    .line 1083
    :cond_9
    move-object/from16 v0, v23

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-eqz v2, :cond_a

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    move-object/from16 v21, v0

    .line 1085
    :cond_a
    move-object/from16 v0, v23

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v3, v9, v3

    move-object/from16 v0, v23

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move/from16 v0, v32

    int-to-float v4, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1053
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 955
    iget v0, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mNeededWidth:I

    invoke-static {v0, p1}, Lcom/android/systemui/LoadAverageService$LoadView;->resolveSize(II)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mNeededHeight:I

    invoke-static {v1, p2}, Lcom/android/systemui/LoadAverageService$LoadView;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/LoadAverageService$LoadView;->setMeasuredDimension(II)V

    .line 957
    return-void
.end method

.method updateDeviceAttributeInfo()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1090
    iget-object v0, p0, Lcom/android/systemui/LoadAverageService$LoadView;->this$0:Lcom/android/systemui/LoadAverageService;

    # getter for: Lcom/android/systemui/LoadAverageService;->mCurrentDeviceAttribute:Lcom/android/systemui/LoadAverageService$DeviceAttribute;
    invoke-static {v0}, Lcom/android/systemui/LoadAverageService;->access$500(Lcom/android/systemui/LoadAverageService;)Lcom/android/systemui/LoadAverageService$DeviceAttribute;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/LoadAverageService$DeviceAttribute;->updateDeviceAttribute()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateDisplay()V
    .locals 12

    .prologue
    .line 1113
    iget-object v7, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mStats:Lcom/android/systemui/LoadAverageService$CpuTracker;

    .line 1114
    .local v7, "stats":Lcom/android/systemui/LoadAverageService$CpuTracker;
    invoke-virtual {v7}, Lcom/android/systemui/LoadAverageService$CpuTracker;->countWorkingStats()I

    move-result v8

    .line 1116
    .local v8, "workingProcess":I
    iget v2, v7, Lcom/android/systemui/LoadAverageService$CpuTracker;->mLoadWidth:I

    .line 1117
    .local v2, "maxWidth":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v8, :cond_1

    .line 1118
    invoke-virtual {v7, v1}, Lcom/android/systemui/LoadAverageService$CpuTracker;->getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v6

    .line 1119
    .local v6, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget v9, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    if-le v9, v2, :cond_0

    .line 1120
    iget v2, v6, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    .line 1117
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1128
    .end local v6    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/LoadAverageService$LoadView;->getMaxWidthFromDeviceAttribute()I

    move-result v9

    if-ge v2, v9, :cond_2

    .line 1129
    invoke-virtual {p0}, Lcom/android/systemui/LoadAverageService$LoadView;->getMaxWidthFromDeviceAttribute()I

    move-result v2

    .line 1134
    :cond_2
    iget-object v9, p0, Lcom/android/systemui/LoadAverageService$LoadView;->this$0:Lcom/android/systemui/LoadAverageService;

    # getter for: Lcom/android/systemui/LoadAverageService;->mCurrentDeviceAttribute:Lcom/android/systemui/LoadAverageService$DeviceAttribute;
    invoke-static {v9}, Lcom/android/systemui/LoadAverageService;->access$500(Lcom/android/systemui/LoadAverageService;)Lcom/android/systemui/LoadAverageService$DeviceAttribute;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/LoadAverageService$DeviceAttribute;->getLineSize()I

    move-result v0

    .line 1135
    .local v0, "attrLine":I
    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1136
    .local v5, "processLine":I
    iget v9, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingLeft:I

    iget v10, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    add-int/2addr v9, v10

    add-int v4, v9, v2

    .line 1137
    .local v4, "neededWidth":I
    iget v9, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingTop:I

    iget v10, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingBottom:I

    add-int/2addr v9, v10

    iget v10, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mFH:I

    add-int/lit8 v11, v0, 0x1

    add-int/2addr v11, v5

    mul-int/2addr v10, v11

    add-int v3, v9, v10

    .line 1139
    .local v3, "neededHeight":I
    iget v9, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mNeededWidth:I

    if-ne v4, v9, :cond_3

    iget v9, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mNeededHeight:I

    if-eq v3, v9, :cond_4

    .line 1140
    :cond_3
    iput v4, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mNeededWidth:I

    .line 1141
    iput v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mNeededHeight:I

    .line 1142
    invoke-virtual {p0}, Lcom/android/systemui/LoadAverageService$LoadView;->requestLayout()V

    .line 1146
    :goto_1
    return-void

    .line 1144
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/LoadAverageService$LoadView;->invalidate()V

    goto :goto_1
.end method
