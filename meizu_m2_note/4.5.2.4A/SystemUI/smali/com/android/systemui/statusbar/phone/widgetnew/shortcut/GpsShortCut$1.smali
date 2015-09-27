.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut$1;
.super Landroid/database/ContentObserver;
.source "GpsShortCut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 151
    const-string v0, "GpsShortCut"

    const-string v1, "mGpsObserver  onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/GpsShortCut;->updateViews()V

    .line 155
    return-void
.end method
