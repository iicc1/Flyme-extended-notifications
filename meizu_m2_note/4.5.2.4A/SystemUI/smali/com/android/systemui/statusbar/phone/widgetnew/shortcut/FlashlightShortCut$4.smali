.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$4;
.super Landroid/content/BroadcastReceiver;
.source "FlashlightShortCut.java"


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
    .line 228
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 231
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mIsFlashLightSwitchEnabled:Z
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->access$500(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 232
    const-string v1, "FlashlightShortCut"

    const-string v2, "clickFlashLight() -- flash disabled, so return..."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->getToast()Lcom/android/systemui/statusbar/phone/widget/util/MyToast;

    move-result-object v1

    const v2, 0x7f0b00f7

    invoke-virtual {v1, v2, v4}, Lcom/android/systemui/statusbar/phone/widget/util/MyToast;->show(II)V

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 238
    :cond_1
    const-string v1, "reason"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 239
    .local v0, "reason":Ljava/lang/String;
    const-string v1, "FlashlightShortCut"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,mIsFlashLightOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mIsFlashLightOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    if-eqz v0, :cond_3

    const-string v1, "gesture"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 242
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mIsFlashLightOn:Z

    if-eqz v1, :cond_2

    .line 243
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->turnOffFlashLight()V

    goto :goto_0

    .line 246
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->turnOnFlashLight()V

    goto :goto_0

    .line 251
    :cond_3
    const-string v1, "state"

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 252
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mIsFlashLightOn:Z

    if-nez v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->turnOnFlashLight()V

    goto :goto_0

    .line 257
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->mIsFlashLightOn:Z

    if-eqz v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$4;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->turnOffFlashLight()V

    goto :goto_0
.end method
