.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut$1;
.super Landroid/database/ContentObserver;
.source "VibrateShortCut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;->updateViews()V

    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VibrateShortCut;->onStateChange()V

    .line 132
    return-void
.end method
