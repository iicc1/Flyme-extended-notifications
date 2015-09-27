.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HotspotShortCut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->onCreateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 69
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;

    # operator++ for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mAnimationRepeatCount:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->access$008(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;)I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;)Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->cancel()V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mRadarIcon:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;)Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;->setVisibility(I)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;

    # setter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mAnimationRepeatCount:I
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->access$002(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;I)I

    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->updateViews()V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;

    # setter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->mIsInProgress:Z
    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;->access$202(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/HotspotShortCut;Z)Z

    .line 80
    :cond_0
    return-void
.end method
