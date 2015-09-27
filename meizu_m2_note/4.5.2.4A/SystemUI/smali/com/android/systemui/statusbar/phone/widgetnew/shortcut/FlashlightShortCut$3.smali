.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$3;
.super Ljava/lang/Object;
.source "FlashlightShortCut.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;
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
    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mMeizuCamera:Lcom/meizu/camera/MeizuCamera;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->access$200(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;)Lcom/meizu/camera/MeizuCamera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    const-string v1, "FlashlightShortCut"

    const-string v2, "onError:   mMeizuCamera released first..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mMeizuCamera:Lcom/meizu/camera/MeizuCamera;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->access$200(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;)Lcom/meizu/camera/MeizuCamera;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/camera/MeizuCamera;->release()V

    .line 124
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    const/4 v2, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mMeizuCamera:Lcom/meizu/camera/MeizuCamera;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->access$202(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;Lcom/meizu/camera/MeizuCamera;)Lcom/meizu/camera/MeizuCamera;

    .line 127
    :cond_0
    const-string v1, "FlashlightShortCut"

    const-string v2, "onError:   init mMeizuCamera again..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->openMeizuCamera()Lcom/meizu/camera/MeizuCamera;

    move-result-object v2

    # setter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mMeizuCamera:Lcom/meizu/camera/MeizuCamera;
    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->access$202(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;Lcom/meizu/camera/MeizuCamera;)Lcom/meizu/camera/MeizuCamera;

    .line 129
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mMeizuCamera:Lcom/meizu/camera/MeizuCamera;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->access$200(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;)Lcom/meizu/camera/MeizuCamera;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mFlashLightListener:Lcom/meizu/camera/MeizuCamera$FlashLightListener;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->access$300(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;)Lcom/meizu/camera/MeizuCamera$FlashLightListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/camera/MeizuCamera;->setFlashLightListener(Lcom/meizu/camera/MeizuCamera$FlashLightListener;)V

    .line 130
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mMeizuCamera:Lcom/meizu/camera/MeizuCamera;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->access$200(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;)Lcom/meizu/camera/MeizuCamera;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mMeizuCameraErrorCallback:Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->access$400(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;)Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/camera/MeizuCamera;->setMeizuCameraErrorCallback(Lcom/meizu/camera/MeizuCamera$MeizuCameraErrorCallback;)V

    .line 131
    const-string v1, "FlashlightShortCut"

    const-string v2, "onError:   init mMeizuCamera success!!"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :cond_1
    :goto_0
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 135
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mMeizuCamera:Lcom/meizu/camera/MeizuCamera;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->access$200(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;)Lcom/meizu/camera/MeizuCamera;

    move-result-object v1

    if-nez v1, :cond_1

    .line 136
    const-string v1, "FlashlightShortCut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onError:   exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mReInitMeizuCamera:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->access$000(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v4, 0x3e8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
