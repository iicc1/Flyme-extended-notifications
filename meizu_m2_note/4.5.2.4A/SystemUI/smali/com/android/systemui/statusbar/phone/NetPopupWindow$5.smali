.class Lcom/android/systemui/statusbar/phone/NetPopupWindow$5;
.super Landroid/content/BroadcastReceiver;
.source "NetPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NetPopupWindow;
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
    .line 445
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow$5;->this$0:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 449
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NetPopupWindow$5;->this$0:Lcom/android/systemui/statusbar/phone/NetPopupWindow;

    # invokes: Lcom/android/systemui/statusbar/phone/NetPopupWindow;->handleEvent(Landroid/content/Context;Landroid/content/Intent;)V
    invoke-static {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/NetPopupWindow;->access$100(Lcom/android/systemui/statusbar/phone/NetPopupWindow;Landroid/content/Context;Landroid/content/Intent;)V

    .line 450
    return-void
.end method
