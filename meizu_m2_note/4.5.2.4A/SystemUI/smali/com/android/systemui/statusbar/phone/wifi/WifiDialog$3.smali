.class Lcom/android/systemui/statusbar/phone/wifi/WifiDialog$3;
.super Ljava/lang/Object;
.source "WifiDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->showSecurityFields()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;)V
    .locals 0

    .prologue
    .line 571
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog$3;->this$0:Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 573
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog$3;->this$0:Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;

    # getter for: Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->access$100(Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->requestFocus()Z

    .line 574
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog$3;->this$0:Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 576
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog$3;->this$0:Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;

    # getter for: Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->mPassword:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->access$100(Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 577
    return-void
.end method
