.class Lcom/android/systemui/floattouch/WindowMoveHelper$1$4;
.super Ljava/lang/Object;
.source "WindowMoveHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/floattouch/WindowMoveHelper$1;->imeWillHide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/floattouch/WindowMoveHelper$1;


# direct methods
.method constructor <init>(Lcom/android/systemui/floattouch/WindowMoveHelper$1;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/systemui/floattouch/WindowMoveHelper$1$4;->this$1:Lcom/android/systemui/floattouch/WindowMoveHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/systemui/floattouch/WindowMoveHelper$1$4;->this$1:Lcom/android/systemui/floattouch/WindowMoveHelper$1;

    iget-object v0, v0, Lcom/android/systemui/floattouch/WindowMoveHelper$1;->this$0:Lcom/android/systemui/floattouch/WindowMoveHelper;

    # getter for: Lcom/android/systemui/floattouch/WindowMoveHelper;->moveStateListener:Lcom/android/systemui/floattouch/WindowMoveHelper$MoveListener;
    invoke-static {v0}, Lcom/android/systemui/floattouch/WindowMoveHelper;->access$000(Lcom/android/systemui/floattouch/WindowMoveHelper;)Lcom/android/systemui/floattouch/WindowMoveHelper$MoveListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/floattouch/WindowMoveHelper$MoveListener;->imeWillHide()V

    .line 93
    return-void
.end method
