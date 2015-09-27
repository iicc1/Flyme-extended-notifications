.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut$2;
.super Landroid/database/ContentObserver;
.source "BrightnessShortCut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->updateViews()V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->onStateChange()V

    .line 124
    return-void
.end method
