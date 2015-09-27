.class public Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ArcShape;
.super Landroid/graphics/drawable/shapes/RectShape;
.source "RadarAnimationIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ArcShape"
.end annotation


# instance fields
.field private mStart:F

.field private mSweep:F

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;FF)V
    .locals 0
    .param p2, "startAngle"    # F
    .param p3, "sweepAngle"    # F

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ArcShape;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView;

    invoke-direct {p0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    .line 201
    iput p2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ArcShape;->mStart:F

    .line 202
    iput p3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ArcShape;->mSweep:F

    .line 203
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ArcShape;->rect()Landroid/graphics/RectF;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ArcShape;->mStart:F

    iget v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ArcShape;->mSweep:F

    const/4 v4, 0x1

    move-object v0, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 208
    return-void
.end method

.method public setSweepAngle(F)V
    .locals 0
    .param p1, "sweepAngle"    # F

    .prologue
    .line 217
    iput p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/RadarAnimationIconView$ArcShape;->mSweep:F

    .line 218
    return-void
.end method
