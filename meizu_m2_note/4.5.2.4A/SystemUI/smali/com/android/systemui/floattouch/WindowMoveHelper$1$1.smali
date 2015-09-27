.class Lcom/android/systemui/floattouch/WindowMoveHelper$1$1;
.super Ljava/lang/Object;
.source "WindowMoveHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/floattouch/WindowMoveHelper$1;->toResetMovedWin()V
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
    .line 45
    iput-object p1, p0, Lcom/android/systemui/floattouch/WindowMoveHelper$1$1;->this$1:Lcom/android/systemui/floattouch/WindowMoveHelper$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/systemui/floattouch/WindowMoveHelper$1$1;->this$1:Lcom/android/systemui/floattouch/WindowMoveHelper$1;

    iget-object v0, v0, Lcom/android/systemui/floattouch/WindowMoveHelper$1;->this$0:Lcom/android/systemui/floattouch/WindowMoveHelper;

    invoke-virtual {v0}, Lcom/android/systemui/floattouch/WindowMoveHelper;->windowNormalIfNeed()V

    .line 49
    return-void
.end method
