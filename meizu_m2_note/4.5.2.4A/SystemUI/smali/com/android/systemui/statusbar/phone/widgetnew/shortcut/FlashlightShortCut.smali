.class public Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;
.super Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;
.source "FlashlightShortCut.java"


# static fields
.field private static FLASH_LIGHT_MODE:I


# instance fields
.field private mFlashLightListener:Lcom/meizu/camera/MeizuCamera$FlashLightListener;

.field private mFlashLightReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field public mIsFlashLightOn:Z

.field private mIsFlashLightSwitchEnabled:Z

.field private mMeizuCamera:Lcom/meizu/camera/MeizuCamera;

.field private mMeizuCameraErrorCallback:Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;

.field private mReInitMeizuCamera:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x3

    sput v0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->FLASH_LIGHT_MODE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mIsFlashLightOn:Z

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mIsFlashLightSwitchEnabled:Z

    .line 27
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mMeizuCamera:Lcom/meizu/camera/MeizuCamera;

    .line 28
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mFlashLightListener:Lcom/meizu/camera/MeizuCamera$FlashLightListener;

    .line 29
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mMeizuCameraErrorCallback:Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mHandler:Landroid/os/Handler;

    .line 117
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$3;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mReInitMeizuCamera:Ljava/lang/Runnable;

    .line 228
    new-instance v0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$4;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mFlashLightReceiver:Landroid/content/BroadcastReceiver;

    .line 35
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->initFlashLight()V

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mReInitMeizuCamera:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;)Lcom/meizu/camera/MeizuCamera;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mMeizuCamera:Lcom/meizu/camera/MeizuCamera;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;Lcom/meizu/camera/MeizuCamera;)Lcom/meizu/camera/MeizuCamera;
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;
    .param p1, "x1"    # Lcom/meizu/camera/MeizuCamera;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mMeizuCamera:Lcom/meizu/camera/MeizuCamera;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;)Lcom/meizu/camera/MeizuCamera$FlashLightListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mFlashLightListener:Lcom/meizu/camera/MeizuCamera$FlashLightListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;)Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mMeizuCameraErrorCallback:Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mIsFlashLightSwitchEnabled:Z

    return v0
.end method

.method private initFlashLight()V
    .locals 4

    .prologue
    .line 57
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->openMeizuCamera()Lcom/meizu/camera/MeizuCamera;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mMeizuCamera:Lcom/meizu/camera/MeizuCamera;

    .line 58
    const-string v1, "FlashlightShortCut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u521b\u5efa mMeizuCamera = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mMeizuCamera:Lcom/meizu/camera/MeizuCamera;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    new-instance v1, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$1;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mFlashLightListener:Lcom/meizu/camera/MeizuCamera$FlashLightListener;

    .line 66
    new-instance v1, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$2;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mMeizuCameraErrorCallback:Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;

    .line 78
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mMeizuCamera:Lcom/meizu/camera/MeizuCamera;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mFlashLightListener:Lcom/meizu/camera/MeizuCamera$FlashLightListener;

    invoke-virtual {v1, v2}, Lcom/meizu/camera/MeizuCamera;->setFlashLightListener(Lcom/meizu/camera/MeizuCamera$FlashLightListener;)V

    .line 79
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mMeizuCamera:Lcom/meizu/camera/MeizuCamera;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mMeizuCameraErrorCallback:Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;

    invoke-virtual {v1, v2}, Lcom/meizu/camera/MeizuCamera;->setMeizuCameraErrorCallback(Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 3

    .prologue
    .line 267
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 268
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "meizu.intent.action.flashlight_state_change"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mFlashLightReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 270
    return-void
.end method


# virtual methods
.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "FlashlightShortCut"

    return-object v0
.end method

.method protected onClickDescriptionArea(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 201
    return-void
.end method

.method protected onClickIcon(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onClickIcon(Landroid/view/View;)V

    .line 146
    const-string v0, "FlashlightShortCut"

    const-string v1, "clickFlashLight() -- clickFlashLight() called!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mIsFlashLightSwitchEnabled:Z

    if-nez v0, :cond_0

    .line 149
    const-string v0, "FlashlightShortCut"

    const-string v1, "clickFlashLight() -- flash disabled, so return..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->getToast()Lcom/android/systemui/statusbar/phone/widget/util/MyToast;

    move-result-object v0

    const v1, 0x7f0b00f7

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/widget/util/MyToast;->show(II)V

    .line 159
    :goto_0
    return-void

    .line 154
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mIsFlashLightOn:Z

    if-nez v0, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->turnOnFlashLight()V

    goto :goto_0

    .line 157
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->turnOffFlashLight()V

    goto :goto_0
.end method

.method public onCreateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 45
    const v1, 0x7f04006d

    const v2, 0x7f0200bf

    invoke-virtual {p0, v1, v2, p3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->createViewFromResource(IILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f0b001f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->setDescriptionLocaleStringFromRes(I)V

    .line 49
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->registerReceiver()V

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->updateViews()V

    .line 52
    return-object v0
.end method

.method public onStateChange()V
    .locals 3

    .prologue
    .line 221
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onStateChange()V

    .line 225
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->getTag()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mIsFlashLightOn:Z

    invoke-static {v0, v1, v2}, Lcom/android/systemui/SystemUIMobEventUtils;->collectOnOffStateOfShortCut(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 226
    return-void
.end method

.method public openMeizuCamera()Lcom/meizu/camera/MeizuCamera;
    .locals 2

    .prologue
    .line 90
    sget-object v0, Landroid/os/BuildExt;->IS_MX4_Pro:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    sget v0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->FLASH_LIGHT_MODE:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/meizu/camera/MeizuCamera;->open(II)Lcom/meizu/camera/MeizuCamera;

    move-result-object v0

    .line 102
    :goto_0
    return-object v0

    .line 93
    :cond_0
    sget-object v0, Landroid/os/BuildExt;->IS_MX4:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    sget v0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->FLASH_LIGHT_MODE:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/meizu/camera/MeizuCamera;->open(II)Lcom/meizu/camera/MeizuCamera;

    move-result-object v0

    goto :goto_0

    .line 96
    :cond_1
    sget-object v0, Landroid/os/BuildExt;->IS_MX3:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    sget v0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->FLASH_LIGHT_MODE:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/camera/MeizuCamera;->open(II)Lcom/meizu/camera/MeizuCamera;

    move-result-object v0

    goto :goto_0

    .line 99
    :cond_2
    sget-object v0, Landroid/os/BuildExt;->IS_MX2:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 100
    sget v0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->FLASH_LIGHT_MODE:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/meizu/camera/MeizuCamera;->open(II)Lcom/meizu/camera/MeizuCamera;

    move-result-object v0

    goto :goto_0

    .line 102
    :cond_3
    sget v0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->FLASH_LIGHT_MODE:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/camera/MeizuCamera;->open(II)Lcom/meizu/camera/MeizuCamera;

    move-result-object v0

    goto :goto_0
.end method

.method public setFlashLightSwitchEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mIsFlashLightSwitchEnabled:Z

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->updateViews()V

    .line 112
    if-nez p1, :cond_0

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mIsFlashLightOn:Z

    .line 115
    :cond_0
    return-void
.end method

.method public turnOffFlashLight()V
    .locals 2

    .prologue
    .line 186
    const-string v0, "FlashlightShortCut"

    const-string v1, "turnOffFlashLight() -- turnOffFlashLight() called!"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mMeizuCamera:Lcom/meizu/camera/MeizuCamera;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mMeizuCamera:Lcom/meizu/camera/MeizuCamera;

    invoke-virtual {v0}, Lcom/meizu/camera/MeizuCamera;->closeTorch()I

    .line 192
    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->setViewAlpha(F)V

    .line 194
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mIsFlashLightOn:Z

    .line 196
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->onStateChange()V

    .line 197
    return-void
.end method

.method public turnOnFlashLight()V
    .locals 5

    .prologue
    .line 163
    const-string v2, "FlashlightShortCut"

    const-string v3, "turnOnFlashLight() -- turnOnFlashLight() called!"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mMeizuCamera:Lcom/meizu/camera/MeizuCamera;

    if-eqz v2, :cond_0

    .line 167
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mMeizuCamera:Lcom/meizu/camera/MeizuCamera;

    invoke-virtual {v2}, Lcom/meizu/camera/MeizuCamera;->openTorch()I

    move-result v1

    .line 168
    .local v1, "result":I
    const-string v2, "FlashlightShortCut"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMeizuCamera.openTorch() called! result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    if-nez v1, :cond_1

    .line 170
    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->setViewAlpha(F)V

    .line 172
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mIsFlashLightOn:Z

    .line 174
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->onStateChange()V

    .line 182
    .end local v1    # "result":I
    :cond_0
    :goto_0
    return-void

    .line 176
    .restart local v1    # "result":I
    :cond_1
    const-string v2, "FlashlightShortCut"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMeizuCamera.openTorch() called! but result is not right, so ignore.. result = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    .end local v1    # "result":I
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public updateViews()V
    .locals 1

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mIsFlashLightSwitchEnabled:Z

    if-nez v0, :cond_0

    .line 206
    const v0, 0x3dcccccd    # 0.1f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->setViewAlpha(F)V

    .line 216
    :goto_0
    return-void

    .line 209
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mIsFlashLightOn:Z

    if-eqz v0, :cond_1

    .line 210
    const v0, 0x3f4ccccd    # 0.8f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->setViewAlpha(F)V

    goto :goto_0

    .line 213
    :cond_1
    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->setViewAlpha(F)V

    goto :goto_0
.end method
