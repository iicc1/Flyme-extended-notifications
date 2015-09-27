.class Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$4;
.super Landroid/database/ContentObserver;
.source "PhoneStatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 726
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$4;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->toggleSuperPowerMode()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->access$200(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V

    .line 730
    return-void
.end method
