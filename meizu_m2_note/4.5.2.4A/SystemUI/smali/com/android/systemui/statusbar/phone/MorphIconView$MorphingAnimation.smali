.class public Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;
.super Ljava/lang/Object;
.source "MorphIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/MorphIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MorphingAnimation"
.end annotation


# instance fields
.field private mAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/ValueAnimator;",
            ">;"
        }
    .end annotation
.end field

.field private mDuration:J

.field private mFromColor:I

.field private mFromCornerRadius:F

.field private mFromHeight:I

.field private mFromStrokeColor:I

.field private mFromWidth:I

.field private mFromX:I

.field private mFromY:I

.field private mGradientShapeHolder:Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;

.field private mToColor:I

.field private mToCornerRadius:F

.field private mToHeight:I

.field private mToStrokeColor:I

.field private mToWidth:I

.field private mToX:I

.field private mToY:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/MorphIconView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/MorphIconView;Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;)V
    .locals 2
    .param p2, "gradientShapeHolder"    # Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->this$0:Lcom/android/systemui/statusbar/phone/MorphIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 388
    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mDuration:J

    .line 418
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mGradientShapeHolder:Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;

    .line 419
    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .prologue
    .line 426
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mDuration:J

    return-wide v0
.end method

.method public setCurrentPlayTime(J)V
    .locals 3
    .param p1, "playTime"    # J

    .prologue
    .line 597
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 598
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/animation/ValueAnimator;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 599
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 600
    .local v0, "animation":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_0

    .line 602
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    :cond_0
    return-void
.end method

.method public setDuration(J)V
    .locals 1
    .param p1, "duration"    # J

    .prologue
    .line 422
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mDuration:J

    .line 423
    return-void
.end method

.method public setFromColor(I)V
    .locals 0
    .param p1, "fromColor"    # I

    .prologue
    .line 462
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mFromColor:I

    .line 463
    return-void
.end method

.method public setFromCornerRadius(F)V
    .locals 0
    .param p1, "fromCornerRadius"    # F

    .prologue
    .line 478
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mFromCornerRadius:F

    .line 479
    return-void
.end method

.method public setFromHeight(I)V
    .locals 0
    .param p1, "fromHeight"    # I

    .prologue
    .line 454
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mFromHeight:I

    .line 455
    return-void
.end method

.method public setFromWidth(I)V
    .locals 0
    .param p1, "fromWidth"    # I

    .prologue
    .line 446
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mFromWidth:I

    .line 447
    return-void
.end method

.method public setFromX(I)V
    .locals 0
    .param p1, "fromX"    # I

    .prologue
    .line 430
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mFromX:I

    .line 431
    return-void
.end method

.method public setFromY(I)V
    .locals 0
    .param p1, "fromY"    # I

    .prologue
    .line 438
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mFromY:I

    .line 439
    return-void
.end method

.method public setToColor(I)V
    .locals 0
    .param p1, "toColor"    # I

    .prologue
    .line 466
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mToColor:I

    .line 467
    return-void
.end method

.method public setToCornerRadius(F)V
    .locals 0
    .param p1, "toCornerRadius"    # F

    .prologue
    .line 482
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mToCornerRadius:F

    .line 483
    return-void
.end method

.method public setToHeight(I)V
    .locals 0
    .param p1, "toHeight"    # I

    .prologue
    .line 458
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mToHeight:I

    .line 459
    return-void
.end method

.method public setToWidth(I)V
    .locals 0
    .param p1, "toWidth"    # I

    .prologue
    .line 450
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mToWidth:I

    .line 451
    return-void
.end method

.method public setToX(I)V
    .locals 0
    .param p1, "toX"    # I

    .prologue
    .line 434
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mToX:I

    .line 435
    return-void
.end method

.method public setToY(I)V
    .locals 0
    .param p1, "toY"    # I

    .prologue
    .line 442
    iput p1, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mToY:I

    .line 443
    return-void
.end method

.method public setup()V
    .locals 15

    .prologue
    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 486
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mGradientShapeHolder:Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;

    .line 511
    .local v3, "gradientShapeHolder":Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;
    new-array v9, v14, [I

    iget v10, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mFromX:I

    aput v10, v9, v12

    iget v10, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mToX:I

    aput v10, v9, v13

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v7

    .line 512
    .local v7, "xAnimation":Landroid/animation/ValueAnimator;
    iget-wide v10, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mDuration:J

    invoke-virtual {v7, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 513
    new-instance v9, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation$1;

    invoke-direct {v9, p0, v3}, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation$1;-><init>(Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;)V

    invoke-virtual {v7, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 520
    new-array v9, v14, [I

    iget v10, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mFromY:I

    aput v10, v9, v12

    iget v10, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mToY:I

    aput v10, v9, v13

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v8

    .line 521
    .local v8, "yAnimation":Landroid/animation/ValueAnimator;
    iget-wide v10, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mDuration:J

    invoke-virtual {v8, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 522
    new-instance v9, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation$2;

    invoke-direct {v9, p0, v3}, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation$2;-><init>(Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;)V

    invoke-virtual {v8, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 529
    new-array v9, v14, [I

    iget v10, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mFromWidth:I

    aput v10, v9, v12

    iget v10, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mToWidth:I

    aput v10, v9, v13

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 530
    .local v6, "widthAnimation":Landroid/animation/ValueAnimator;
    iget-wide v10, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mDuration:J

    invoke-virtual {v6, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 531
    new-instance v9, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation$3;

    invoke-direct {v9, p0, v3}, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation$3;-><init>(Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;)V

    invoke-virtual {v6, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 538
    new-array v9, v14, [I

    iget v10, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mFromHeight:I

    aput v10, v9, v12

    iget v10, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mToHeight:I

    aput v10, v9, v13

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 539
    .local v4, "heightAnimation":Landroid/animation/ValueAnimator;
    iget-wide v10, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mDuration:J

    invoke-virtual {v4, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 540
    new-instance v9, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation$4;

    invoke-direct {v9, p0, v3}, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation$4;-><init>(Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;)V

    invoke-virtual {v4, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 547
    new-array v9, v14, [F

    iget v10, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mFromCornerRadius:F

    aput v10, v9, v12

    iget v10, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mToCornerRadius:F

    aput v10, v9, v13

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 548
    .local v2, "cornerAnimation":Landroid/animation/ValueAnimator;
    iget-wide v10, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mDuration:J

    invoke-virtual {v2, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 549
    new-instance v9, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation$5;

    invoke-direct {v9, p0, v3}, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation$5;-><init>(Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;)V

    invoke-virtual {v2, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 556
    new-array v9, v14, [I

    iget v10, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mFromColor:I

    aput v10, v9, v12

    iget v10, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mToColor:I

    aput v10, v9, v13

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 557
    .local v1, "bgColorAnimation":Landroid/animation/ValueAnimator;
    new-instance v9, Landroid/animation/ArgbEvaluator;

    invoke-direct {v9}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v1, v9}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 558
    iget-wide v10, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mDuration:J

    invoke-virtual {v1, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 559
    new-instance v9, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation$6;

    invoke-direct {v9, p0, v3}, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation$6;-><init>(Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;)V

    invoke-virtual {v1, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 566
    new-array v9, v14, [I

    iget v10, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mFromStrokeColor:I

    aput v10, v9, v12

    iget v10, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mToStrokeColor:I

    aput v10, v9, v13

    invoke-static {v9}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 567
    .local v5, "strokeColorAnimation":Landroid/animation/ValueAnimator;
    new-instance v9, Landroid/animation/ArgbEvaluator;

    invoke-direct {v9}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 568
    iget-wide v10, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mDuration:J

    invoke-virtual {v5, v10, v11}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 569
    new-instance v9, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation$7;

    invoke-direct {v9, p0, v3}, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation$7;-><init>(Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;Lcom/android/systemui/statusbar/phone/MorphIconView$GradientShapeHolder;)V

    invoke-virtual {v5, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 576
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mAnimators:Ljava/util/ArrayList;

    if-nez v9, :cond_0

    .line 577
    new-instance v0, Ljava/util/ArrayList;

    const/16 v9, 0xf

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/MorphIconView$MorphingAnimation;->mAnimators:Ljava/util/ArrayList;

    .line 578
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 579
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 581
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 584
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 593
    .end local v0    # "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    :cond_0
    return-void
.end method
