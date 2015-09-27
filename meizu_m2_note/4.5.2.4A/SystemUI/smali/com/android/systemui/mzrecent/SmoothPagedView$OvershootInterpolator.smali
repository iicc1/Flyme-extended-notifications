.class public Lcom/android/systemui/mzrecent/SmoothPagedView$OvershootInterpolator;
.super Ljava/lang/Object;
.source "SmoothPagedView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/mzrecent/SmoothPagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OvershootInterpolator"
.end annotation


# instance fields
.field private mTension:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/android/systemui/mzrecent/SmoothPagedView$OvershootInterpolator;->mTension:F

    .line 45
    return-void
.end method


# virtual methods
.method public disableSettle()V
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/mzrecent/SmoothPagedView$OvershootInterpolator;->mTension:F

    .line 54
    return-void
.end method

.method public getInterpolation(F)F
    .locals 4
    .param p1, "t"    # F

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 59
    sub-float/2addr p1, v3

    .line 60
    mul-float v0, p1, p1

    iget v1, p0, Lcom/android/systemui/mzrecent/SmoothPagedView$OvershootInterpolator;->mTension:F

    add-float/2addr v1, v3

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/android/systemui/mzrecent/SmoothPagedView$OvershootInterpolator;->mTension:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, v3

    return v0
.end method

.method public setDistance(I)V
    .locals 2
    .param p1, "distance"    # I

    .prologue
    const v0, 0x3fa66666    # 1.3f

    .line 48
    if-lez p1, :cond_0

    int-to-float v1, p1

    div-float/2addr v0, v1

    :cond_0
    iput v0, p0, Lcom/android/systemui/mzrecent/SmoothPagedView$OvershootInterpolator;->mTension:F

    .line 50
    return-void
.end method
