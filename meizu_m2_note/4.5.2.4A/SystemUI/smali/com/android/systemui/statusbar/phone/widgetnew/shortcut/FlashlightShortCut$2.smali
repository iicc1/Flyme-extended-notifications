.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$2;
.super Ljava/lang/Object;
.source "FlashlightShortCut.java"

# interfaces
.implements Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->initFlashLight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 4
    .param p1, "msgType"    # I

    .prologue
    .line 69
    const-string v0, "FlashlightShortCut"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError() -- msgType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    .line 73
    const-string v0, "FlashlightShortCut"

    const-string v1, "onError:   MediaServer died...so we have to init mMeizuCamera again in 1000ms..."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mReInitMeizuCamera:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->access$000(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 76
    :cond_0
    return-void
.end method
