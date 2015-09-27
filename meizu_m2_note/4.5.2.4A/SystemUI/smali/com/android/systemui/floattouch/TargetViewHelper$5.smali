.class Lcom/android/systemui/floattouch/TargetViewHelper$5;
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
    .line 164
    iput-object p1, p0, Lcom/android/systemui/floattouch/TargetViewHelper$5;->this$0:Lcom/android/systemui/floattouch/TargetViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/systemui/floattouch/TargetViewHelper$5;->this$0:Lcom/android/systemui/floattouch/TargetViewHelper;

    # getter for: Lcom/android/systemui/floattouch/TargetViewHelper;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/floattouch/TargetViewHelper;->access$200(Lcom/android/systemui/floattouch/TargetViewHelper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 168
    return-void
.end method
