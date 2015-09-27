.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$69;
.super Landroid/hardware/input/ILidSwitchCallback$Stub;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->registerLidCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    .prologue
    .line 8812
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$69;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/hardware/input/ILidSwitchCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onLidSwitchChanged(Z)V
    .locals 7
    .param p1, "lidopen"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x40e

    const/16 v5, 0x40d

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 8815
    const-string v0, "PhoneStatusBar"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLidSwitchChanged(), lidopen="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8816
    if-nez p1, :cond_1

    .line 8817
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$69;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsLidClosed:Z

    .line 8818
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$69;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 8819
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$69;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 8820
    sget-object v0, Lcom/android/systemui/floattouch/FloatTouch;->floatTouch:Lcom/android/systemui/floattouch/FloatTouch;

    if-eqz v0, :cond_0

    .line 8821
    sget-object v0, Lcom/android/systemui/floattouch/FloatTouch;->floatTouch:Lcom/android/systemui/floattouch/FloatTouch;

    invoke-virtual {v0, v4}, Lcom/android/systemui/floattouch/FloatTouch;->onLidChange(Z)V

    .line 8831
    :cond_0
    :goto_0
    return-void

    .line 8824
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$69;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsLidClosed:Z

    .line 8825
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$69;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->removeMessages(I)V

    .line 8826
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$69;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mHandler:Lcom/android/systemui/statusbar/BaseStatusBar$H;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/BaseStatusBar$H;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/systemui/statusbar/BaseStatusBar$H;->sendEmptyMessage(I)Z

    .line 8827
    sget-object v0, Lcom/android/systemui/floattouch/FloatTouch;->floatTouch:Lcom/android/systemui/floattouch/FloatTouch;

    if-eqz v0, :cond_0

    .line 8828
    sget-object v0, Lcom/android/systemui/floattouch/FloatTouch;->floatTouch:Lcom/android/systemui/floattouch/FloatTouch;

    invoke-virtual {v0, v3}, Lcom/android/systemui/floattouch/FloatTouch;->onLidChange(Z)V

    goto :goto_0
.end method
