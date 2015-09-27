.class public Lcom/android/systemui/mzrecent/RecentSlidingDrawer$FastAnimationSet;
.super Landroid/view/animation/AnimationSet;
.source "RecentSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FastAnimationSet"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 3550
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 3551
    return-void
.end method


# virtual methods
.method public willChangeBounds()Z
    .locals 1

    .prologue
    .line 3560
    const/4 v0, 0x0

    return v0
.end method

.method public willChangeTransformationMatrix()Z
    .locals 1

    .prologue
    .line 3555
    const/4 v0, 0x1

    return v0
.end method
