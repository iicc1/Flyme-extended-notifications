.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VpnShortCut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->onCreateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 62
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;

    # invokes: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->getVpnCurrentState()I
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->access$000(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;)I

    move-result v0

    .line 65
    .local v0, "state":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;)Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->cancel()V

    .line 67
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;)Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->setVisibility(I)V

    .line 70
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->updateViews()V

    .line 72
    :cond_0
    return-void
.end method
