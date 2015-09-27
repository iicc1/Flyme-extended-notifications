.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$1;
.super Ljava/lang/Object;
.source "FlashlightShortCut.java"

# interfaces
.implements Lcom/meizu/camera/MeizuCamera$FlashLightListener;


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
    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFlashLight(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 62
    const-string v0, "FlashlightShortCut"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFlashLight call back called --- enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FlashlightShortCut;->setFlashLightSwitchEnabled(Z)V

    .line 64
    return-void
.end method
