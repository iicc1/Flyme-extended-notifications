.class Lcom/android/systemui/statusbar/phone/NetPopupWindow$2;
.super Ljava/lang/Object;
.source "NetPopupWindow.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NetPopupWindow;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NetPopupWindow;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NetPopupWindow;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow$2;->this$0:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 0
    .param p1, "reason"    # I

    .prologue
    .line 208
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .prologue
    .line 203
    return-void
.end method
