.class public Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;
.super Ljava/lang/Object;
.source "MyBrightnessController.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;,
        Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessStateChangeCallback;
    }
.end annotation


# instance fields
.field private final BRIGHTNESS_ADJ_RESOLUTION:F

.field private mAutomatic:Z

.field private final mAutomaticAvailable:Z

.field private final mBrightnessObserver:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;

.field private mChangeCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mControl:Landroid/widget/SeekBar;

.field private final mHandler:Landroid/os/Handler;

.field private final mMaximumBacklight:I

.field private final mMinimumBacklight:I

.field private final mPower:Landroid/os/IPowerManager;

.field private mTracking:Z

.field private final mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/SeekBar;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "control"    # Landroid/widget/SeekBar;

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 130
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mContext:Landroid/content/Context;

    .line 131
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0xa0c0013

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->BRIGHTNESS_ADJ_RESOLUTION:F

    .line 134
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mControl:Landroid/widget/SeekBar;

    .line 136
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mHandler:Landroid/os/Handler;

    .line 139
    new-instance v1, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$1;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$1;-><init>(Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    .line 147
    new-instance v1, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;-><init>(Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mBrightnessObserver:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;

    .line 148
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mBrightnessObserver:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;->startObserving()V

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x112001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mAutomaticAvailable:Z

    .line 153
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 154
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mMinimumBacklight:I

    .line 155
    invoke-virtual {v0}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mMaximumBacklight:I

    .line 157
    const-string v1, "power"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mPower:Landroid/os/IPowerManager;

    .line 161
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->updateMode()V

    .line 162
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->updateSlider()V

    .line 165
    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 166
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->updateMode()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->updateSlider()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mAutomatic:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private setBrightness(I)V
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenBrightnessSettingOverride(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setBrightnessAdj(F)V
    .locals 1
    .param p1, "adj"    # F

    .prologue
    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mPower:Landroid/os/IPowerManager;

    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private updateMode()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 220
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mAutomaticAvailable:Z

    if-eqz v2, :cond_1

    .line 222
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "screen_brightness_mode"

    const/4 v4, -0x2

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 226
    .local v0, "automatic":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mAutomatic:Z

    .line 230
    .end local v0    # "automatic":I
    :cond_1
    return-void
.end method

.method private updateSlider()V
    .locals 5

    .prologue
    const/4 v4, -0x2

    .line 235
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mAutomatic:Z

    if-eqz v1, :cond_0

    .line 236
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_auto_brightness_adj"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 239
    .local v0, "value":F
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mControl:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->BRIGHTNESS_ADJ_RESOLUTION:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 240
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mControl:Landroid/widget/SeekBar;

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->BRIGHTNESS_ADJ_RESOLUTION:F

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 249
    .end local v0    # "value":F
    :goto_0
    return-void

    .line 243
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    iget v3, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mMaximumBacklight:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 246
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mControl:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mMaximumBacklight:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mMinimumBacklight:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 247
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mControl:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mMinimumBacklight:I

    sub-int v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method


# virtual methods
.method public addStateChangedCallback(Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessStateChangeCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessStateChangeCallback;

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 7
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 253
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mAutomatic:Z

    if-nez v4, :cond_1

    .line 254
    iget v4, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mMinimumBacklight:I

    add-int v3, p2, v4

    .line 255
    .local v3, "val":I
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->setBrightness(I)V

    .line 256
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mTracking:Z

    if-nez v4, :cond_0

    .line 257
    new-instance v4, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$2;

    invoke-direct {v4, p0, v3}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$2;-><init>(Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;I)V

    invoke-static {v4}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 279
    .end local v3    # "val":I
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessStateChangeCallback;

    .line 280
    .local v1, "cb":Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessStateChangeCallback;
    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessStateChangeCallback;->onBrightnessLevelChanged()V

    goto :goto_1

    .line 266
    .end local v1    # "cb":Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessStateChangeCallback;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    int-to-float v4, p2

    iget v5, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->BRIGHTNESS_ADJ_RESOLUTION:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    div-float/2addr v4, v5

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float v0, v4, v5

    .line 267
    .local v0, "adj":F
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->setBrightnessAdj(F)V

    .line 268
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mTracking:Z

    if-nez v4, :cond_0

    .line 269
    new-instance v4, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$3;

    invoke-direct {v4, p0, v0}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$3;-><init>(Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;F)V

    invoke-static {v4}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 282
    .end local v0    # "adj":F
    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mTracking:Z

    .line 287
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mTracking:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 288
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 292
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mTracking:Z

    .line 293
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mTracking:Z

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 294
    return-void
.end method

.method public unregisterCallbacks()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mBrightnessObserver:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessObserver;->stopObserving()V

    .line 179
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mChangeCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->mUserTracker:Lcom/android/systemui/settings/CurrentUserTracker;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->stopTracking()V

    .line 181
    return-void
.end method
