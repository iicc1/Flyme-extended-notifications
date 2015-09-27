.class Lcom/android/systemui/floattouch/TargetViewHelper$2;
.super Ljava/lang/Object;
.source "TargetViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/floattouch/TargetViewHelper;->animateOnUp(Landroid/view/MotionEvent;)V
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
    .line 97
    iput-object p1, p0, Lcom/android/systemui/floattouch/TargetViewHelper$2;->this$0:Lcom/android/systemui/floattouch/TargetViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper$2;->this$0:Lcom/android/systemui/floattouch/TargetViewHelper;

    # getter for: Lcom/android/systemui/floattouch/TargetViewHelper;->haveDeal:Z
    invoke-static {v0}, Lcom/android/systemui/floattouch/TargetViewHelper;->access$000(Lcom/android/systemui/floattouch/TargetViewHelper;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper$2;->this$0:Lcom/android/systemui/floattouch/TargetViewHelper;

    sget-object v1, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;->LEFT:Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    # invokes: Lcom/android/systemui/floattouch/TargetViewHelper;->processUserGesture(Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;)V
    invoke-static {v0, v1}, Lcom/android/systemui/floattouch/TargetViewHelper;->access$100(Lcom/android/systemui/floattouch/TargetViewHelper;Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;)V

    .line 103
    :cond_0
    return-void
.end method
