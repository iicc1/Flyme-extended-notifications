.class public Lcom/facebook/rebound/Spring;
.super Ljava/lang/Object;
.source "Spring.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rebound/Spring$1;,
        Lcom/facebook/rebound/Spring$PhysicsState;
    }
.end annotation


# static fields
.field private static ID:I


# instance fields
.field private final mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

.field private mDisplacementFromRestThreshold:D

.field private mEndValue:D

.field private final mId:Ljava/lang/String;

.field private mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/facebook/rebound/SpringListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOvershootClampingEnabled:Z

.field private final mPreviousState:Lcom/facebook/rebound/Spring$PhysicsState;

.field private mRestSpeedThreshold:D

.field private mSpringConfig:Lcom/facebook/rebound/SpringConfig;

.field private final mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

.field private mStartValue:D

.field private final mTempState:Lcom/facebook/rebound/Spring$PhysicsState;

.field private mTimeAccumulator:D

.field private mWasAtRest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    sput v0, Lcom/facebook/rebound/Spring;->ID:I

    return-void
.end method

.method constructor <init>(Lcom/facebook/rebound/BaseSpringSystem;)V
    .locals 4
    .param p1, "springSystem"    # Lcom/facebook/rebound/BaseSpringSystem;

    .prologue
    const-wide v2, 0x3f747ae147ae147bL    # 0.005

    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lcom/facebook/rebound/Spring$PhysicsState;

    invoke-direct {v0, v1}, Lcom/facebook/rebound/Spring$PhysicsState;-><init>(Lcom/facebook/rebound/Spring$1;)V

    iput-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    .line 40
    new-instance v0, Lcom/facebook/rebound/Spring$PhysicsState;

    invoke-direct {v0, v1}, Lcom/facebook/rebound/Spring$PhysicsState;-><init>(Lcom/facebook/rebound/Spring$1;)V

    iput-object v0, p0, Lcom/facebook/rebound/Spring;->mPreviousState:Lcom/facebook/rebound/Spring$PhysicsState;

    .line 41
    new-instance v0, Lcom/facebook/rebound/Spring$PhysicsState;

    invoke-direct {v0, v1}, Lcom/facebook/rebound/Spring$PhysicsState;-><init>(Lcom/facebook/rebound/Spring$1;)V

    iput-object v0, p0, Lcom/facebook/rebound/Spring;->mTempState:Lcom/facebook/rebound/Spring$PhysicsState;

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/rebound/Spring;->mWasAtRest:Z

    .line 46
    iput-wide v2, p0, Lcom/facebook/rebound/Spring;->mRestSpeedThreshold:D

    .line 47
    iput-wide v2, p0, Lcom/facebook/rebound/Spring;->mDisplacementFromRestThreshold:D

    .line 48
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 49
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Spring cannot be created outside of a BaseSpringSystem"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    iput-object p1, p0, Lcom/facebook/rebound/Spring;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "spring:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/facebook/rebound/Spring;->ID:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/facebook/rebound/Spring;->ID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rebound/Spring;->mId:Ljava/lang/String;

    .line 62
    sget-object v0, Lcom/facebook/rebound/SpringConfig;->defaultConfig:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {p0, v0}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    .line 63
    return-void
.end method

.method private getDisplacementDistanceForState(Lcom/facebook/rebound/Spring$PhysicsState;)D
    .locals 4
    .param p1, "state"    # Lcom/facebook/rebound/Spring$PhysicsState;

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/facebook/rebound/Spring;->mEndValue:D

    iget-wide v2, p1, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    sub-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private interpolate(D)V
    .locals 11
    .param p1, "alpha"    # D

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 495
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-object v1, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v2, v1, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    mul-double/2addr v2, p1

    iget-object v1, p0, Lcom/facebook/rebound/Spring;->mPreviousState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v4, v1, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    sub-double v6, v8, p1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 496
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-object v1, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v2, v1, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    mul-double/2addr v2, p1

    iget-object v1, p0, Lcom/facebook/rebound/Spring;->mPreviousState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v4, v1, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    sub-double v6, v8, p1

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, v0, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    .line 497
    return-void
.end method


# virtual methods
.method public addListener(Lcom/facebook/rebound/SpringListener;)Lcom/facebook/rebound/Spring;
    .locals 2
    .param p1, "newListener"    # Lcom/facebook/rebound/SpringListener;

    .prologue
    .line 507
    if-nez p1, :cond_0

    .line 508
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "newListener is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 510
    :cond_0
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 511
    return-object p0
.end method

.method advance(D)V
    .locals 51
    .param p1, "realDeltaTime"    # D

    .prologue
    .line 294
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    move-result v29

    .line 296
    .local v29, "isAtRest":Z
    if-eqz v29, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/facebook/rebound/Spring;->mWasAtRest:Z

    move/from16 v33, v0

    if-eqz v33, :cond_1

    .line 448
    :cond_0
    return-void

    .line 305
    :cond_1
    move-wide/from16 v8, p1

    .line 306
    .local v8, "adjustedDeltaTime":D
    const-wide v44, 0x3fb0624dd2f1a9fcL    # 0.064

    cmpl-double v33, p1, v44

    if-lez v33, :cond_2

    .line 307
    const-wide v8, 0x3fb0624dd2f1a9fcL    # 0.064

    .line 315
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    move-wide/from16 v44, v0

    add-double v44, v44, v8

    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rebound/Spring;->mSpringConfig:Lcom/facebook/rebound/SpringConfig;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/facebook/rebound/SpringConfig;->tension:D

    move-wide/from16 v40, v0

    .line 318
    .local v40, "tension":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rebound/Spring;->mSpringConfig:Lcom/facebook/rebound/SpringConfig;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/facebook/rebound/SpringConfig;->friction:D

    move-wide/from16 v26, v0

    .line 320
    .local v26, "friction":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    move-wide/from16 v34, v0

    .line 321
    .local v34, "position":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    move-wide/from16 v42, v0

    .line 322
    .local v42, "velocity":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rebound/Spring;->mTempState:Lcom/facebook/rebound/Spring$PhysicsState;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    move-wide/from16 v36, v0

    .line 323
    .local v36, "tempPosition":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rebound/Spring;->mTempState:Lcom/facebook/rebound/Spring$PhysicsState;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    move-wide/from16 v38, v0

    .line 333
    .local v38, "tempVelocity":D
    :goto_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    move-wide/from16 v44, v0

    const-wide v46, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v33, v44, v46

    if-ltz v33, :cond_4

    .line 337
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    move-wide/from16 v44, v0

    const-wide v46, 0x3f50624dd2f1a9fcL    # 0.001

    sub-double v44, v44, v46

    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    .line 339
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    move-wide/from16 v44, v0

    const-wide v46, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v33, v44, v46

    if-gez v33, :cond_3

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rebound/Spring;->mPreviousState:Lcom/facebook/rebound/Spring$PhysicsState;

    move-object/from16 v33, v0

    move-wide/from16 v0, v34

    move-object/from16 v2, v33

    iput-wide v0, v2, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rebound/Spring;->mPreviousState:Lcom/facebook/rebound/Spring$PhysicsState;

    move-object/from16 v33, v0

    move-wide/from16 v0, v42

    move-object/from16 v2, v33

    iput-wide v0, v2, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    .line 354
    :cond_3
    move-wide/from16 v6, v42

    .line 355
    .local v6, "aVelocity":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/facebook/rebound/Spring;->mEndValue:D

    move-wide/from16 v44, v0

    sub-double v44, v44, v36

    mul-double v44, v44, v40

    mul-double v46, v26, v42

    sub-double v4, v44, v46

    .line 359
    .local v4, "aAcceleration":D
    const-wide v44, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v44, v44, v6

    const-wide/high16 v46, 0x3fe0000000000000L    # 0.5

    mul-double v44, v44, v46

    add-double v36, v34, v44

    .line 360
    const-wide v44, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v44, v44, v4

    const-wide/high16 v46, 0x3fe0000000000000L    # 0.5

    mul-double v44, v44, v46

    add-double v38, v42, v44

    .line 361
    move-wide/from16 v12, v38

    .line 362
    .local v12, "bVelocity":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/facebook/rebound/Spring;->mEndValue:D

    move-wide/from16 v44, v0

    sub-double v44, v44, v36

    mul-double v44, v44, v40

    mul-double v46, v26, v38

    sub-double v10, v44, v46

    .line 364
    .local v10, "bAcceleration":D
    const-wide v44, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v44, v44, v12

    const-wide/high16 v46, 0x3fe0000000000000L    # 0.5

    mul-double v44, v44, v46

    add-double v36, v34, v44

    .line 365
    const-wide v44, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v44, v44, v10

    const-wide/high16 v46, 0x3fe0000000000000L    # 0.5

    mul-double v44, v44, v46

    add-double v38, v42, v44

    .line 366
    move-wide/from16 v16, v38

    .line 367
    .local v16, "cVelocity":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/facebook/rebound/Spring;->mEndValue:D

    move-wide/from16 v44, v0

    sub-double v44, v44, v36

    mul-double v44, v44, v40

    mul-double v46, v26, v38

    sub-double v14, v44, v46

    .line 369
    .local v14, "cAcceleration":D
    const-wide v44, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v44, v44, v16

    add-double v36, v34, v44

    .line 370
    const-wide v44, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v44, v44, v14

    add-double v38, v42, v44

    .line 371
    move-wide/from16 v20, v38

    .line 372
    .local v20, "dVelocity":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/facebook/rebound/Spring;->mEndValue:D

    move-wide/from16 v44, v0

    sub-double v44, v44, v36

    mul-double v44, v44, v40

    mul-double v46, v26, v38

    sub-double v18, v44, v46

    .line 375
    .local v18, "dAcceleration":D
    const-wide v44, 0x3fc5555555555555L    # 0.16666666666666666

    const-wide/high16 v46, 0x4000000000000000L    # 2.0

    add-double v48, v12, v16

    mul-double v46, v46, v48

    add-double v46, v46, v6

    add-double v46, v46, v20

    mul-double v24, v44, v46

    .line 376
    .local v24, "dxdt":D
    const-wide v44, 0x3fc5555555555555L    # 0.16666666666666666

    const-wide/high16 v46, 0x4000000000000000L    # 2.0

    add-double v48, v10, v14

    mul-double v46, v46, v48

    add-double v46, v46, v4

    add-double v46, v46, v18

    mul-double v22, v44, v46

    .line 378
    .local v22, "dvdt":D
    const-wide v44, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v44, v44, v24

    add-double v34, v34, v44

    .line 379
    const-wide v44, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v44, v44, v22

    add-double v42, v42, v44

    goto/16 :goto_0

    .line 382
    .end local v4    # "aAcceleration":D
    .end local v6    # "aVelocity":D
    .end local v10    # "bAcceleration":D
    .end local v12    # "bVelocity":D
    .end local v14    # "cAcceleration":D
    .end local v16    # "cVelocity":D
    .end local v18    # "dAcceleration":D
    .end local v20    # "dVelocity":D
    .end local v22    # "dvdt":D
    .end local v24    # "dxdt":D
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rebound/Spring;->mTempState:Lcom/facebook/rebound/Spring$PhysicsState;

    move-object/from16 v33, v0

    move-wide/from16 v0, v36

    move-object/from16 v2, v33

    iput-wide v0, v2, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rebound/Spring;->mTempState:Lcom/facebook/rebound/Spring$PhysicsState;

    move-object/from16 v33, v0

    move-wide/from16 v0, v38

    move-object/from16 v2, v33

    iput-wide v0, v2, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    move-object/from16 v33, v0

    move-wide/from16 v0, v34

    move-object/from16 v2, v33

    iput-wide v0, v2, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    move-object/from16 v33, v0

    move-wide/from16 v0, v42

    move-object/from16 v2, v33

    iput-wide v0, v2, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    .line 388
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x0

    cmpl-double v33, v44, v46

    if-lez v33, :cond_5

    .line 389
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/facebook/rebound/Spring;->mTimeAccumulator:D

    move-wide/from16 v44, v0

    const-wide v46, 0x3f50624dd2f1a9fcL    # 0.001

    div-double v44, v44, v46

    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    invoke-direct {v0, v1, v2}, Lcom/facebook/rebound/Spring;->interpolate(D)V

    .line 395
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    move-result v33

    if-nez v33, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/facebook/rebound/Spring;->mOvershootClampingEnabled:Z

    move/from16 v33, v0

    if-eqz v33, :cond_7

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/rebound/Spring;->isOvershooting()Z

    move-result v33

    if-eqz v33, :cond_7

    .line 397
    :cond_6
    const-wide/16 v44, 0x0

    cmpl-double v33, v40, v44

    if-lez v33, :cond_c

    .line 398
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/facebook/rebound/Spring;->mEndValue:D

    move-wide/from16 v44, v0

    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/facebook/rebound/Spring;->mStartValue:D

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/facebook/rebound/Spring;->mEndValue:D

    move-wide/from16 v44, v0

    move-wide/from16 v0, v44

    move-object/from16 v2, v33

    iput-wide v0, v2, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 404
    :goto_1
    const-wide/16 v44, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rebound/Spring;->setVelocity(D)Lcom/facebook/rebound/Spring;

    .line 405
    const/16 v29, 0x1

    .line 424
    :cond_7
    const/16 v31, 0x0

    .line 425
    .local v31, "notifyActivate":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/facebook/rebound/Spring;->mWasAtRest:Z

    move/from16 v33, v0

    if-eqz v33, :cond_8

    .line 426
    const/16 v33, 0x0

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/facebook/rebound/Spring;->mWasAtRest:Z

    .line 427
    const/16 v31, 0x1

    .line 429
    :cond_8
    const/16 v32, 0x0

    .line 430
    .local v32, "notifyAtRest":Z
    if-eqz v29, :cond_9

    .line 431
    const/16 v33, 0x1

    move/from16 v0, v33

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/facebook/rebound/Spring;->mWasAtRest:Z

    .line 432
    const/16 v32, 0x1

    .line 434
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, "i$":Ljava/util/Iterator;
    :cond_a
    :goto_2
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v33

    if-eqz v33, :cond_0

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/facebook/rebound/SpringListener;

    .line 436
    .local v30, "listener":Lcom/facebook/rebound/SpringListener;
    if-eqz v31, :cond_b

    .line 437
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/facebook/rebound/SpringListener;->onSpringActivate(Lcom/facebook/rebound/Spring;)V

    .line 441
    :cond_b
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/facebook/rebound/SpringListener;->onSpringUpdate(Lcom/facebook/rebound/Spring;)V

    .line 444
    if-eqz v32, :cond_a

    .line 445
    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Lcom/facebook/rebound/SpringListener;->onSpringAtRest(Lcom/facebook/rebound/Spring;)V

    goto :goto_2

    .line 401
    .end local v28    # "i$":Ljava/util/Iterator;
    .end local v30    # "listener":Lcom/facebook/rebound/SpringListener;
    .end local v31    # "notifyActivate":Z
    .end local v32    # "notifyAtRest":Z
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    iget-wide v0, v0, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    move-wide/from16 v44, v0

    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/facebook/rebound/Spring;->mEndValue:D

    .line 402
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/facebook/rebound/Spring;->mEndValue:D

    move-wide/from16 v44, v0

    move-wide/from16 v0, v44

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/facebook/rebound/Spring;->mStartValue:D

    goto :goto_1
.end method

.method public getCurrentValue()D
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v0, v0, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public isAtRest()Z
    .locals 4

    .prologue
    .line 473
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v0, v0, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/rebound/Spring;->mRestSpeedThreshold:D

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    invoke-direct {p0, v0}, Lcom/facebook/rebound/Spring;->getDisplacementDistanceForState(Lcom/facebook/rebound/Spring$PhysicsState;)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/rebound/Spring;->mDisplacementFromRestThreshold:D

    cmpg-double v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mSpringConfig:Lcom/facebook/rebound/SpringConfig;

    iget-wide v0, v0, Lcom/facebook/rebound/SpringConfig;->tension:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOvershooting()Z
    .locals 4

    .prologue
    .line 279
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mSpringConfig:Lcom/facebook/rebound/SpringConfig;

    iget-wide v0, v0, Lcom/facebook/rebound/SpringConfig;->tension:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    iget-wide v0, p0, Lcom/facebook/rebound/Spring;->mStartValue:D

    iget-wide v2, p0, Lcom/facebook/rebound/Spring;->mEndValue:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/rebound/Spring;->mEndValue:D

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_1

    :cond_0
    iget-wide v0, p0, Lcom/facebook/rebound/Spring;->mStartValue:D

    iget-wide v2, p0, Lcom/facebook/rebound/Spring;->mEndValue:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/rebound/Spring;->mEndValue:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAllListeners()Lcom/facebook/rebound/Spring;
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 533
    return-object p0
.end method

.method public setAtRest()Lcom/facebook/rebound/Spring;
    .locals 4

    .prologue
    .line 483
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v0, v0, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    iput-wide v0, p0, Lcom/facebook/rebound/Spring;->mEndValue:D

    .line 484
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mTempState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-object v1, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v2, v1, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    iput-wide v2, v0, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 485
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    .line 486
    return-object p0
.end method

.method public setCurrentValue(D)Lcom/facebook/rebound/Spring;
    .locals 1
    .param p1, "currentValue"    # D

    .prologue
    .line 113
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/rebound/Spring;->setCurrentValue(DZ)Lcom/facebook/rebound/Spring;

    move-result-object v0

    return-object v0
.end method

.method public setCurrentValue(DZ)Lcom/facebook/rebound/Spring;
    .locals 5
    .param p1, "currentValue"    # D
    .param p3, "setAtRest"    # Z

    .prologue
    .line 128
    iput-wide p1, p0, Lcom/facebook/rebound/Spring;->mStartValue:D

    .line 129
    iget-object v2, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iput-wide p1, v2, Lcom/facebook/rebound/Spring$PhysicsState;->position:D

    .line 130
    iget-object v2, p0, Lcom/facebook/rebound/Spring;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/rebound/BaseSpringSystem;->activateSpring(Ljava/lang/String;)V

    .line 131
    iget-object v2, p0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/SpringListener;

    .line 132
    .local v1, "listener":Lcom/facebook/rebound/SpringListener;
    invoke-interface {v1, p0}, Lcom/facebook/rebound/SpringListener;->onSpringUpdate(Lcom/facebook/rebound/Spring;)V

    goto :goto_0

    .line 134
    .end local v1    # "listener":Lcom/facebook/rebound/SpringListener;
    :cond_0
    if-eqz p3, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->setAtRest()Lcom/facebook/rebound/Spring;

    .line 137
    :cond_1
    return-object p0
.end method

.method public setEndValue(D)Lcom/facebook/rebound/Spring;
    .locals 5
    .param p1, "endValue"    # D

    .prologue
    .line 179
    iget-wide v2, p0, Lcom/facebook/rebound/Spring;->mEndValue:D

    cmpl-double v2, v2, p1

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    :cond_0
    return-object p0

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v2

    iput-wide v2, p0, Lcom/facebook/rebound/Spring;->mStartValue:D

    .line 183
    iput-wide p1, p0, Lcom/facebook/rebound/Spring;->mEndValue:D

    .line 184
    iget-object v2, p0, Lcom/facebook/rebound/Spring;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/rebound/BaseSpringSystem;->activateSpring(Ljava/lang/String;)V

    .line 185
    iget-object v2, p0, Lcom/facebook/rebound/Spring;->mListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/rebound/SpringListener;

    .line 186
    .local v1, "listener":Lcom/facebook/rebound/SpringListener;
    invoke-interface {v1, p0}, Lcom/facebook/rebound/SpringListener;->onSpringEndStateChange(Lcom/facebook/rebound/Spring;)V

    goto :goto_0
.end method

.method public setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;
    .locals 2
    .param p1, "springConfig"    # Lcom/facebook/rebound/SpringConfig;

    .prologue
    .line 89
    if-nez p1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "springConfig is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iput-object p1, p0, Lcom/facebook/rebound/Spring;->mSpringConfig:Lcom/facebook/rebound/SpringConfig;

    .line 93
    return-object p0
.end method

.method public setVelocity(D)Lcom/facebook/rebound/Spring;
    .locals 3
    .param p1, "velocity"    # D

    .prologue
    .line 204
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iget-wide v0, v0, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-object p0

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mCurrentState:Lcom/facebook/rebound/Spring$PhysicsState;

    iput-wide p1, v0, Lcom/facebook/rebound/Spring$PhysicsState;->velocity:D

    .line 208
    iget-object v0, p0, Lcom/facebook/rebound/Spring;->mSpringSystem:Lcom/facebook/rebound/BaseSpringSystem;

    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/BaseSpringSystem;->activateSpring(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public systemShouldAdvance()Z
    .locals 1

    .prologue
    .line 456
    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/facebook/rebound/Spring;->wasAtRest()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public wasAtRest()Z
    .locals 1

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/facebook/rebound/Spring;->mWasAtRest:Z

    return v0
.end method
