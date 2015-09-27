.class Lcom/android/systemui/statusbar/phone/NetPopupWindow$1;
.super Ljava/lang/Object;
.source "NetPopupWindow.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 178
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow$1;->this$0:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow$1;->this$0:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->dismiss()V

    .line 183
    return-void
.end method
