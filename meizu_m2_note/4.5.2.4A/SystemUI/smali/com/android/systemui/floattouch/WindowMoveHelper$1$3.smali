.class Lcom/android/systemui/floattouch/WindowMoveHelper$1$3;
.super Ljava/lang/Object;
.source "WindowMoveHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/floattouch/WindowMoveHelper$1;->imeWillShow(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/floattouch/WindowMoveHelper$1;

.field final synthetic val$imeTop:I


# direct methods
.method constructor <init>(Lcom/android/systemui/floattouch/WindowMoveHelper$1;I)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/systemui/floattouch/WindowMoveHelper$1$3;->this$1:Lcom/android/systemui/floattouch/WindowMoveHelper$1;

    iput p2, p0, Lcom/android/systemui/floattouch/WindowMoveHelper$1$3;->val$imeTop:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 74
    iget-object v1, p0, Lcom/android/systemui/floattouch/WindowMoveHelper$1$3;->this$1:Lcom/android/systemui/floattouch/WindowMoveHelper$1;

    iget-object v1, v1, Lcom/android/systemui/floattouch/WindowMoveHelper$1;->this$0:Lcom/android/systemui/floattouch/WindowMoveHelper;

    invoke-virtual {v1}, Lcom/android/systemui/floattouch/WindowMoveHelper;->isMoved()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/floattouch/WindowMoveHelper$1$3;->this$1:Lcom/android/systemui/floattouch/WindowMoveHelper$1;

    iget-object v1, v1, Lcom/android/systemui/floattouch/WindowMoveHelper$1;->this$0:Lcom/android/systemui/floattouch/WindowMoveHelper;

    invoke-virtual {v1}, Lcom/android/systemui/floattouch/WindowMoveHelper;->windowNormalIfNeed()V

    .line 76
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/floattouch/WindowMoveHelper$1$3;->this$1:Lcom/android/systemui/floattouch/WindowMoveHelper$1;

    iget-object v1, v1, Lcom/android/systemui/floattouch/WindowMoveHelper$1;->this$0:Lcom/android/systemui/floattouch/WindowMoveHelper;

    # getter for: Lcom/android/systemui/floattouch/WindowMoveHelper;->moveStateListener:Lcom/android/systemui/floattouch/WindowMoveHelper$MoveListener;
    invoke-static {v1}, Lcom/android/systemui/floattouch/WindowMoveHelper;->access$000(Lcom/android/systemui/floattouch/WindowMoveHelper;)Lcom/android/systemui/floattouch/WindowMoveHelper$MoveListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/floattouch/WindowMoveHelper$1$3;->this$1:Lcom/android/systemui/floattouch/WindowMoveHelper$1;

    iget-object v2, v2, Lcom/android/systemui/floattouch/WindowMoveHelper$1;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/lit8 v2, v2, 0x2

    div-int/lit8 v2, v2, 0x5

    invoke-interface {v1, v2}, Lcom/android/systemui/floattouch/WindowMoveHelper$MoveListener;->imeWillShow(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_0
    return-void

    .line 77
    :catch_0
    move-exception v0

    .line 78
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/android/systemui/floattouch/WindowMoveHelper$1$3;->this$1:Lcom/android/systemui/floattouch/WindowMoveHelper$1;

    iget-object v1, v1, Lcom/android/systemui/floattouch/WindowMoveHelper$1;->this$0:Lcom/android/systemui/floattouch/WindowMoveHelper;

    # getter for: Lcom/android/systemui/floattouch/WindowMoveHelper;->moveStateListener:Lcom/android/systemui/floattouch/WindowMoveHelper$MoveListener;
    invoke-static {v1}, Lcom/android/systemui/floattouch/WindowMoveHelper;->access$000(Lcom/android/systemui/floattouch/WindowMoveHelper;)Lcom/android/systemui/floattouch/WindowMoveHelper$MoveListener;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/floattouch/WindowMoveHelper$1$3;->val$imeTop:I

    invoke-interface {v1, v2}, Lcom/android/systemui/floattouch/WindowMoveHelper$MoveListener;->imeWillShow(I)V

    goto :goto_0
.end method
