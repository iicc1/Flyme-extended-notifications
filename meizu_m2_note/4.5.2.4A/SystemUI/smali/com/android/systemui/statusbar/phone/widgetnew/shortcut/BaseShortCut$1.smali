.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut$1;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "BaseShortCut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->onCreateView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 2
    .param p1, "newUserId"    # I

    .prologue
    .line 92
    const-string v0, "BaseShortCut"

    const-string v1, "onUserSwitched"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->updateViews()V

    .line 94
    return-void
.end method
