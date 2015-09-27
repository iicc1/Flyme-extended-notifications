.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NfcShortCut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->onCreateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 61
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->access$000(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;)Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->cancel()V

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;)Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/NfcShortCut;->updateViews()V

    .line 68
    :cond_0
    return-void
.end method
