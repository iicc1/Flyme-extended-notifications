.class Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;
.super Ljava/lang/Object;
.source "NavigationBarView.java"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NavTransitionListener"
.end annotation


# instance fields
.field private mBackTransitioning:Z

.field private mDuration:J

.field private mHomeAppearing:Z

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mStartDelay:J

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Lcom/android/systemui/statusbar/phone/NavigationBarView$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/phone/NavigationBarView$1;

    .prologue
    .line 112
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 3
    .param p1, "transition"    # Landroid/animation/LayoutTransition;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "transitionType"    # I

    .prologue
    const/4 v2, 0x0

    .line 135
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e011d

    if-ne v0, v1, :cond_1

    .line 136
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mBackTransitioning:Z

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e011e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    .line 138
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mHomeAppearing:Z

    goto :goto_0
.end method

.method public onBackAltCleared()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 145
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mBackTransitioning:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mHomeAppearing:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getHomeButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 148
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getBackButton()Landroid/view/View;

    move-result-object v1

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 149
    .local v0, "a":Landroid/animation/ValueAnimator;
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mStartDelay:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 150
    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mDuration:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 151
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 152
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 154
    .end local v0    # "a":Landroid/animation/ValueAnimator;
    :cond_0
    return-void

    .line 148
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 3
    .param p1, "transition"    # Landroid/animation/LayoutTransition;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "transitionType"    # I

    .prologue
    const/4 v2, 0x1

    .line 122
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e011d

    if-ne v0, v1, :cond_1

    .line 123
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mBackTransitioning:Z

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 124
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0e011e

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    if-ne p4, v0, :cond_0

    .line 125
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mHomeAppearing:Z

    .line 126
    invoke-virtual {p1, p4}, Landroid/animation/LayoutTransition;->getStartDelay(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mStartDelay:J

    .line 127
    invoke-virtual {p1, p4}, Landroid/animation/LayoutTransition;->getDuration(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mDuration:J

    .line 128
    invoke-virtual {p1, p4}, Landroid/animation/LayoutTransition;->getInterpolator(I)Landroid/animation/TimeInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$NavTransitionListener;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0
.end method
