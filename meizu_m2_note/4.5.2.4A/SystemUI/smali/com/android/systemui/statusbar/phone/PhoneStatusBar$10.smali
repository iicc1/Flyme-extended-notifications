.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;
.super Ljava/lang/Object;
.source "PhoneStatusBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->makeStatusBarView()Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
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
    .line 978
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 981
    const-string v0, "PhoneStatusBar"

    const-string v1, "mNetSpinner onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 982
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dismissNetWindow()Z

    .line 996
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetDropdownWindow:Lcom/android/systemui/statusbar/phone/NetPopupWindow;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1402(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Lcom/android/systemui/statusbar/phone/NetPopupWindow;)Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    .line 997
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNetDropdownWindow:Lcom/android/systemui/statusbar/phone/NetPopupWindow;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$1400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->show()V

    .line 998
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$10;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateNetApName(Z)V

    .line 999
    return-void
.end method
