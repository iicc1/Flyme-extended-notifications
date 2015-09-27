.class Lcom/android/systemui/statusbar/phone/NavigationBarView$5;
.super Landroid/database/ContentObserver;
.source "NavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationBarView;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 736
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 740
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarView$5;->this$0:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    # invokes: Lcom/android/systemui/statusbar/phone/NavigationBarView;->onSmartBarConfigurationChanged()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->access$700(Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    .line 741
    return-void
.end method
