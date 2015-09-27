.class public final Lcom/android/systemui/statusbar/policy/RotationLockController;
.super Ljava/lang/Object;
.source "RotationLockController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;
    }
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    new-instance v0, Lcom/android/systemui/statusbar/policy/RotationLockController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/RotationLockController$1;-><init>(Lcom/android/systemui/statusbar/policy/RotationLockController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockController;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 44
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/RotationLockController;->mContext:Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->notifyChanged()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/policy/RotationLockController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/systemui/statusbar/policy/RotationLockController;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->notifyChanged()V

    return-void
.end method

.method private notifyChanged()V
    .locals 4

    .prologue
    .line 89
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RotationLockController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    .line 90
    .local v0, "callback":Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/RotationLockController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/RotationLockController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/view/RotationPolicy;->isRotationLockToggleVisible(Landroid/content/Context;)Z

    move-result v3

    invoke-interface {v0, v2, v3}, Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;->onRotationLockStateChanged(ZZ)V

    goto :goto_0

    .line 93
    .end local v0    # "callback":Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;
    :cond_0
    return-void
.end method


# virtual methods
.method public addRotationLockControllerCallback(Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;)V
    .locals 1
    .param p1, "callback"    # Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/RotationLockController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public isRotationLockAffordanceVisible()Z
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public isRotationLocked()Z
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public setRotationLocked(Z)V
    .locals 0
    .param p1, "locked"    # Z

    .prologue
    .line 70
    return-void
.end method
