.class public Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;
.super Ljava/lang/Object;
.source "ClearAllNotificationIconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TranslationAnimation"
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

.field private mFromHeight:I

.field private mFromWidth:I

.field private mFromX:I

.field private mFromY:I

.field private mShapeHolder:Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;

.field private mToColor:I

.field private mToHeight:I

.field private mToWidth:I

.field private mToX:I

.field private mToY:I

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;)V
    .locals 4
    .param p2, "shapeHolder"    # Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;

    .prologue
    const-wide/16 v2, 0x12c

    .line 353
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->this$0:Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 332
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->mDuration:J

    .line 354
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->mShapeHolder:Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->mAnimators:Ljava/util/ArrayList;

    .line 357
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->setDuration(J)V

    .line 358
    return-void
.end method


# virtual methods
.method public addListener(Landroid/animation/Animator$AnimatorListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->mAnimators:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 490
    return-void
.end method

.method public setCurrentPlayTime(J)V
    .locals 3
    .param p1, "playTime"    # J

    .prologue
    .line 481
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 482
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/animation/ValueAnimator;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 483
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 484
    .local v0, "animation":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    goto :goto_0

    .line 486
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    :cond_0
    return-void
.end method

.method public setDuration(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 361
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->mDuration:J

    .line 362
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 363
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/animation/ValueAnimator;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 365
    .local v0, "animation":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_0

    .line 367
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    :cond_0
    return-void
.end method

.method public setFromColor(I)V
    .locals 0
    .param p1, "fromColor"    # I

    .prologue
    .line 406
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->mFromColor:I

    .line 407
    return-void
.end method

.method public setFromHeight(I)V
    .locals 0
    .param p1, "fromHeight"    # I

    .prologue
    .line 398
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->mFromHeight:I

    .line 399
    return-void
.end method

.method public setFromWidth(I)V
    .locals 0
    .param p1, "fromWidth"    # I

    .prologue
    .line 390
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->mFromWidth:I

    .line 391
    return-void
.end method

.method public setFromX(I)V
    .locals 0
    .param p1, "fromX"    # I

    .prologue
    .line 374
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->mFromX:I

    .line 375
    return-void
.end method

.method public setFromY(I)V
    .locals 0
    .param p1, "fromY"    # I

    .prologue
    .line 382
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->mFromY:I

    .line 383
    return-void
.end method

.method public setToColor(I)V
    .locals 0
    .param p1, "toColor"    # I

    .prologue
    .line 410
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->mToColor:I

    .line 411
    return-void
.end method

.method public setToHeight(I)V
    .locals 0
    .param p1, "toHeight"    # I

    .prologue
    .line 402
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->mToHeight:I

    .line 403
    return-void
.end method

.method public setToWidth(I)V
    .locals 0
    .param p1, "toWidth"    # I

    .prologue
    .line 394
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->mToWidth:I

    .line 395
    return-void
.end method

.method public setToX(I)V
    .locals 0
    .param p1, "toX"    # I

    .prologue
    .line 378
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->mToX:I

    .line 379
    return-void
.end method

.method public setToY(I)V
    .locals 0
    .param p1, "toY"    # I

    .prologue
    .line 386
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->mToY:I

    .line 387
    return-void
.end method

.method public setup()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 414
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->mShapeHolder:Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;

    .line 416
    .local v3, "shapeHolder":Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;
    new-array v7, v11, [I

    iget v8, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->mFromX:I

    aput v8, v7, v9

    iget v8, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->mToX:I

    aput v8, v7, v10

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 418
    .local v5, "xAnimation":Landroid/animation/ValueAnimator;
    new-instance v7, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation$1;

    invoke-direct {v7, p0, v3}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation$1;-><init>(Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;)V

    invoke-virtual {v5, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 425
    new-array v7, v11, [I

    iget v8, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->mFromY:I

    aput v8, v7, v9

    iget v8, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->mToY:I

    aput v8, v7, v10

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 427
    .local v6, "yAnimation":Landroid/animation/ValueAnimator;
    new-instance v7, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation$2;

    invoke-direct {v7, p0, v3}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation$2;-><init>(Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;)V

    invoke-virtual {v6, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 434
    new-array v7, v11, [I

    iget v8, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->mFromWidth:I

    aput v8, v7, v9

    iget v8, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->mToWidth:I

    aput v8, v7, v10

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 436
    .local v4, "widthAnimation":Landroid/animation/ValueAnimator;
    new-instance v7, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation$3;

    invoke-direct {v7, p0, v3}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation$3;-><init>(Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;)V

    invoke-virtual {v4, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 443
    new-array v7, v11, [I

    iget v8, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->mFromHeight:I

    aput v8, v7, v9

    iget v8, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->mToHeight:I

    aput v8, v7, v10

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 445
    .local v2, "heightAnimation":Landroid/animation/ValueAnimator;
    new-instance v7, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation$4;

    invoke-direct {v7, p0, v3}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation$4;-><init>(Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;)V

    invoke-virtual {v2, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 452
    new-array v7, v11, [I

    iget v8, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->mFromColor:I

    aput v8, v7, v9

    iget v8, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->mToColor:I

    aput v8, v7, v10

    invoke-static {v7}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 453
    .local v1, "bgColorAnimation":Landroid/animation/ValueAnimator;
    new-instance v7, Landroid/animation/ArgbEvaluator;

    invoke-direct {v7}, Landroid/animation/ArgbEvaluator;-><init>()V

    invoke-virtual {v1, v7}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 455
    new-instance v7, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation$5;

    invoke-direct {v7, p0, v3}, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation$5;-><init>(Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$ShapeHolder;)V

    invoke-virtual {v1, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 462
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->mAnimators:Ljava/util/ArrayList;

    .line 463
    .local v0, "animators":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/ValueAnimator;>;"
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 472
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ClearAllNotificationIconView$TranslationAnimation;->mAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 473
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/animation/ValueAnimator;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 474
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/ValueAnimator;

    .line 475
    .local v0, "animation":Landroid/animation/ValueAnimator;
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    .line 477
    .end local v0    # "animation":Landroid/animation/ValueAnimator;
    :cond_0
    return-void
.end method
