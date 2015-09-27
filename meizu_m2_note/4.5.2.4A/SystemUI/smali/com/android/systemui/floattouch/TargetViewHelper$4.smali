.class Lcom/android/systemui/floattouch/TargetViewHelper$4;
.super Ljava/lang/Object;
.source "TargetViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/floattouch/TargetViewHelper;
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
    .line 136
    iput-object p1, p0, Lcom/android/systemui/floattouch/TargetViewHelper$4;->this$0:Lcom/android/systemui/floattouch/TargetViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 139
    iget-object v1, p0, Lcom/android/systemui/floattouch/TargetViewHelper$4;->this$0:Lcom/android/systemui/floattouch/TargetViewHelper;

    # getter for: Lcom/android/systemui/floattouch/TargetViewHelper;->handler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/floattouch/TargetViewHelper;->access$200(Lcom/android/systemui/floattouch/TargetViewHelper;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 140
    .local v0, "message":Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 141
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 142
    return-void
.end method
