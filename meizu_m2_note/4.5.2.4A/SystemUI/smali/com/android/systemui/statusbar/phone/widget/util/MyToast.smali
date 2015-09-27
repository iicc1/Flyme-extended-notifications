.class public Lcom/android/systemui/statusbar/phone/widget/util/MyToast;
.super Ljava/lang/Object;
.source "MyToast.java"


# instance fields
.field mCanceled:Z

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/widget/util/MyToast;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "h"    # Landroid/os/Handler;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widget/util/MyToast;->mCanceled:Z

    .line 27
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widget/util/MyToast;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/widget/util/MyToast;->mHandler:Landroid/os/Handler;

    .line 29
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/util/MyToast;->mContext:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/util/MyToast;->mToast:Landroid/widget/Toast;

    .line 31
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/util/MyToast;->mToast:Landroid/widget/Toast;

    const/16 v1, 0x7de

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setType(I)V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/widget/util/MyToast;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/phone/widget/util/MyToast;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widget/util/MyToast;->showUntilCancel()V

    return-void
.end method

.method private showUntilCancel()V
    .locals 4

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widget/util/MyToast;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 79
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/util/MyToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/util/MyToast;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/phone/widget/util/MyToast$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/widget/util/MyToast$1;-><init>(Lcom/android/systemui/statusbar/phone/widget/util/MyToast;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method


# virtual methods
.method public show(II)V
    .locals 2
    .param p1, "resId"    # I
    .param p2, "duration"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/util/MyToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 37
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/util/MyToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p2}, Landroid/widget/Toast;->setDuration(I)V

    .line 39
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/util/MyToast;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 45
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widget/util/MyToast;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/util/MyToast;->mToast:Landroid/widget/Toast;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setDuration(I)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/widget/util/MyToast;->mCanceled:Z

    .line 43
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/widget/util/MyToast;->showUntilCancel()V

    goto :goto_0
.end method
