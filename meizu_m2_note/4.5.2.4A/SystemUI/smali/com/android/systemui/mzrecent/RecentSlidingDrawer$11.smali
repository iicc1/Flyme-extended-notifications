.class Lcom/android/systemui/mzrecent/RecentSlidingDrawer$11;
.super Ljava/lang/Object;
.source "RecentSlidingDrawer.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->performOtherFavorAnim(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;


# direct methods
.method constructor <init>(Lcom/android/systemui/mzrecent/RecentSlidingDrawer;)V
    .locals 0

    .prologue
    .line 1528
    iput-object p1, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$11;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    const/4 v2, 0x4

    .line 1538
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$11;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    aget-object v0, v0, v2

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 1539
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$11;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    aget-object v0, v0, v2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 1540
    iget-object v0, p0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$11;->this$0:Lcom/android/systemui/mzrecent/RecentSlidingDrawer;

    iget-object v0, v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer;->mFavors:[Landroid/widget/RelativeLayout;

    aget-object v0, v0, v2

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1541
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1547
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1534
    return-void
.end method
