.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Lcom/android/systemui/mzrecent/MzSlidingDrawer$OnDrawerOpenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addRecentLayer(I)V
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
    .line 6635
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerOpened()V
    .locals 2

    .prologue
    .line 6639
    const-string v0, "PhoneStatusBar"

    const-string v1, "onDrawerOpened"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6640
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x40c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6641
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x405

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6642
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x40a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6644
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$5700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x40f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6657
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$51;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x1

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mRecentPanelOpend:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$8202(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    .line 6661
    return-void
.end method
