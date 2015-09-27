.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$3;
.super Landroid/database/ContentObserver;
.source "MobileDataShortCut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 310
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->updateViews()V

    .line 315
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->onStateChange()V

    .line 316
    return-void
.end method
