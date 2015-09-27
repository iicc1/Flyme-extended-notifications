.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut$1;
.super Landroid/content/BroadcastReceiver;
.source "MuteShortCut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MuteShortCut;->updateViews()V

    .line 141
    return-void
.end method
