.class Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$1;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "MyBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;-><init>(Landroid/content/Context;Landroid/widget/SeekBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$1;->this$0:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$1;->this$0:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;

    # invokes: Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->updateMode()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->access$000(Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;)V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController$1;->this$0:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;

    # invokes: Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->updateSlider()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;->access$100(Lcom/android/systemui/statusbar/phone/widget/MyBrightnessController;)V

    .line 145
    return-void
.end method
