.class Lcom/android/systemui/floattouch/TargetViewHelper$1;
.super Ljava/lang/Object;
.source "TargetViewHelper.java"

# interfaces
.implements Lcom/android/systemui/floattouch/WindowMoveHelper$MoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/floattouch/TargetViewHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/floattouch/TargetViewHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/floattouch/TargetViewHelper;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/systemui/floattouch/TargetViewHelper$1;->this$0:Lcom/android/systemui/floattouch/TargetViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public imeWillHide()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper$1;->this$0:Lcom/android/systemui/floattouch/TargetViewHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/floattouch/TargetViewHelper;->updateFloatWindow(I)V

    .line 53
    return-void
.end method

.method public imeWillShow(I)V
    .locals 1
    .param p1, "imeTop"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper$1;->this$0:Lcom/android/systemui/floattouch/TargetViewHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/floattouch/TargetViewHelper;->updateFloatWindow(I)V

    .line 48
    return-void
.end method

.method public movedWinHasBeenReset()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method
