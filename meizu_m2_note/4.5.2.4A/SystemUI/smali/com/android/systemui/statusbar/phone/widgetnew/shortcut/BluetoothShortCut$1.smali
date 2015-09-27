.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BluetoothShortCut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->onCreateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 88
    const/16 v0, 0xb

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->access$000(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;)Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->cancel()V

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;)Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->setVisibility(I)V

    .line 92
    const/16 v0, 0xc

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->mBtAdapter:Landroid/bluetooth/BluetoothAdapter;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->access$000(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BluetoothShortCut;->setViewAlpha(F)V

    .line 97
    :cond_0
    return-void
.end method
