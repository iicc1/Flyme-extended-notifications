.class public Lcom/android/systemui/floattouch/WindowMoveHelper;
.super Ljava/lang/Object;
.source "WindowMoveHelper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/floattouch/WindowMoveHelper$MoveListener;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private final moveStateListener:Lcom/android/systemui/floattouch/WindowMoveHelper$MoveListener;

.field private final mwm:Lmeizu/view/MoveWinManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/systemui/floattouch/WindowMoveHelper$MoveListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listerner"    # Lcom/android/systemui/floattouch/WindowMoveHelper$MoveListener;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/systemui/floattouch/WindowMoveHelper;->context:Landroid/content/Context;

    .line 37
    iput-object p3, p0, Lcom/android/systemui/floattouch/WindowMoveHelper;->moveStateListener:Lcom/android/systemui/floattouch/WindowMoveHelper$MoveListener;

    .line 38
    iput-object p2, p0, Lcom/android/systemui/floattouch/WindowMoveHelper;->handler:Landroid/os/Handler;

    .line 39
    invoke-static {p1}, Lmeizu/view/MoveWinManager;->getInstance(Landroid/content/Context;)Lmeizu/view/MoveWinManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/floattouch/WindowMoveHelper;->mwm:Lmeizu/view/MoveWinManager;

    .line 40
    iget-object v0, p0, Lcom/android/systemui/floattouch/WindowMoveHelper;->mwm:Lmeizu/view/MoveWinManager;

    new-instance v1, Lcom/android/systemui/floattouch/WindowMoveHelper$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/systemui/floattouch/WindowMoveHelper$1;-><init>(Lcom/android/systemui/floattouch/WindowMoveHelper;Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lmeizu/view/MoveWinManager;->setMoveWinListener(Lmeizu/view/MoveWinManager$MoveWinListener;)V

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/floattouch/WindowMoveHelper;)Lcom/android/systemui/floattouch/WindowMoveHelper$MoveListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/floattouch/WindowMoveHelper;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/android/systemui/floattouch/WindowMoveHelper;->moveStateListener:Lcom/android/systemui/floattouch/WindowMoveHelper$MoveListener;

    return-object v0
.end method

.method public static resetOnDestroy(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 29
    const-string v1, "SmartTouch"

    const-string v2, "windowmove resetOnDestroy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {p0}, Lmeizu/view/MoveWinManager;->getInstance(Landroid/content/Context;)Lmeizu/view/MoveWinManager;

    move-result-object v0

    .line 31
    .local v0, "mwm":Lmeizu/view/MoveWinManager;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmeizu/view/MoveWinManager;->setMoveWinListener(Lmeizu/view/MoveWinManager$MoveWinListener;)V

    .line 32
    const/4 v1, 0x0

    const/16 v2, 0x15e

    invoke-virtual {v0, v1, v2}, Lmeizu/view/MoveWinManager;->moveWindow(II)Z

    .line 33
    return-void
.end method

.method public static resetWindow(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const-string v0, "SmartTouch"

    const-string v1, "windowmove resetWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-static {p0}, Lmeizu/view/MoveWinManager;->getInstance(Landroid/content/Context;)Lmeizu/view/MoveWinManager;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x15e

    invoke-virtual {v0, v1, v2}, Lmeizu/view/MoveWinManager;->moveWindow(II)Z

    .line 26
    return-void
.end method


# virtual methods
.method public isMoved()Z
    .locals 2

    .prologue
    .line 111
    iget-object v1, p0, Lcom/android/systemui/floattouch/WindowMoveHelper;->mwm:Lmeizu/view/MoveWinManager;

    invoke-virtual {v1}, Lmeizu/view/MoveWinManager;->getMovedWinPoint()Landroid/graphics/Point;

    move-result-object v0

    .line 112
    .local v0, "point":Landroid/graphics/Point;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final windowMoveIfNeed()V
    .locals 3

    .prologue
    .line 116
    const-string v0, "SmartTouch"

    const-string v1, "windowmove down"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    iget-object v0, p0, Lcom/android/systemui/floattouch/WindowMoveHelper;->mwm:Lmeizu/view/MoveWinManager;

    const/4 v1, 0x1

    const/16 v2, 0x15e

    invoke-virtual {v0, v1, v2}, Lmeizu/view/MoveWinManager;->moveWindow(II)Z

    .line 118
    iget-object v0, p0, Lcom/android/systemui/floattouch/WindowMoveHelper;->context:Landroid/content/Context;

    const-string v1, "window_down"

    invoke-static {v0, v1}, Lcom/android/systemui/SystemUIMobEventUtils;->onEventSmartTouch(Landroid/content/Context;Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method public final windowNormalIfNeed()V
    .locals 3

    .prologue
    .line 122
    const-string v0, "SmartTouch"

    const-string v1, "windowmove normal"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0}, Lcom/android/systemui/floattouch/WindowMoveHelper;->isMoved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/systemui/floattouch/WindowMoveHelper;->mwm:Lmeizu/view/MoveWinManager;

    const/4 v1, 0x0

    const/16 v2, 0x15e

    invoke-virtual {v0, v1, v2}, Lmeizu/view/MoveWinManager;->moveWindow(II)Z

    .line 126
    :cond_0
    return-void
.end method
