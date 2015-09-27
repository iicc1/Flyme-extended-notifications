.class public Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;
.super Landroid/app/Dialog;
.source "MyBrightnessDialog.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessStateChangeCallback;


# instance fields
.field private mBrightnessController:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;

.field private final mBrightnessDialogLongTimeout:I

.field private final mBrightnessDialogShortTimeout:I

.field private mDialogPosOnScreen:[I

.field private final mDismissDialogRunnable:Ljava/lang/Runnable;

.field protected mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 42
    const v1, 0x7f100028

    invoke-direct {p0, p1, v1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 23
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;->mHandler:Landroid/os/Handler;

    .line 29
    new-instance v1, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog$1;-><init>(Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;->mDismissDialogRunnable:Ljava/lang/Runnable;

    .line 37
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;->mDialogPosOnScreen:[I

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    .local v0, "r":Landroid/content/res/Resources;
    const v1, 0x7f0c000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;->mBrightnessDialogLongTimeout:I

    .line 46
    const v1, 0x7f0c000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;->mBrightnessDialogShortTimeout:I

    .line 48
    return-void
.end method

.method private removeAllBrightnessDialogCallbacks()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;->mDismissDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    return-void
.end method


# virtual methods
.method public onBrightnessLevelChanged()V
    .locals 0

    .prologue
    .line 96
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 56
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 58
    .local v1, "window":Landroid/view/Window;
    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 59
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 60
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;->mDialogPosOnScreen:[I

    aget v2, v2, v4

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 61
    const/16 v2, 0x7e4

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 62
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 64
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 65
    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 66
    invoke-virtual {v1, v4}, Landroid/view/Window;->requestFeature(I)Z

    .line 69
    const/high16 v2, 0x20000

    const v3, 0x20008

    invoke-virtual {v1, v2, v3}, Landroid/view/Window;->setFlags(II)V

    .line 72
    const v2, 0x7f040073

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;->setContentView(I)V

    .line 73
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;->setCanceledOnTouchOutside(Z)V

    .line 74
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 78
    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    .line 80
    new-instance v1, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const v0, 0x7f0e0158

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-direct {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;-><init>(Landroid/content/Context;Landroid/widget/SeekBar;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;->mBrightnessController:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;->mBrightnessController:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->addStateChangedCallback(Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$BrightnessStateChangeCallback;)V

    .line 85
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;->mBrightnessController:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->unregisterCallbacks()V

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;->removeAllBrightnessDialogCallbacks()V

    .line 92
    return-void
.end method

.method public setDialogPosOnScreen([I)V
    .locals 0
    .param p1, "position"    # [I

    .prologue
    .line 109
    if-eqz p1, :cond_0

    .line 110
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;->mDialogPosOnScreen:[I

    .line 112
    :cond_0
    return-void
.end method
