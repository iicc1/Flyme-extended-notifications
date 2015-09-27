.class public Lcom/android/systemui/nfc/NfcP2pDragShareGuideActivity;
.super Landroid/app/Activity;
.source "NfcP2pDragShareGuideActivity.java"


# instance fields
.field private mFirstTouch:Z

.field private mTarget:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 14
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/nfc/NfcP2pDragShareGuideActivity;->mFirstTouch:Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/16 v1, 0x400

    .line 19
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/nfc/NfcP2pDragShareGuideActivity;->requestWindowFeature(I)Z

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/nfc/NfcP2pDragShareGuideActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f040056

    invoke-virtual {p0, v0}, Lcom/android/systemui/nfc/NfcP2pDragShareGuideActivity;->setContentView(I)V

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/nfc/NfcP2pDragShareGuideActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "target"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/systemui/nfc/NfcP2pDragShareGuideActivity;->mTarget:Landroid/content/Intent;

    .line 27
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 33
    .local v0, "result":Z
    iget-boolean v1, p0, Lcom/android/systemui/nfc/NfcP2pDragShareGuideActivity;->mFirstTouch:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 34
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/nfc/NfcP2pDragShareGuideActivity;->mFirstTouch:Z

    .line 36
    iget-object v1, p0, Lcom/android/systemui/nfc/NfcP2pDragShareGuideActivity;->mTarget:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/android/systemui/nfc/NfcP2pDragShareGuideActivity;->startActivity(Landroid/content/Intent;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/systemui/nfc/NfcP2pDragShareGuideActivity;->finish()V

    .line 39
    :cond_0
    return v0
.end method
