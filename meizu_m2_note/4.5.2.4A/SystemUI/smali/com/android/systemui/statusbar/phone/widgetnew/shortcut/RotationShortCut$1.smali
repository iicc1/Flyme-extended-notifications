.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut$1;
.super Landroid/database/ContentObserver;
.source "RotationShortCut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;->updateViews()V

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/RotationShortCut;->onStateChange()V

    .line 99
    return-void
.end method
