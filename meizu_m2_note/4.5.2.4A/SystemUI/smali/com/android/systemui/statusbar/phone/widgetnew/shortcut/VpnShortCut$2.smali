.class final Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut$2;
.super Ljava/lang/Object;
.source "VpnShortCut.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut;->setVpnModeOn(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$enabling:Z


# direct methods
.method constructor <init>(ZLandroid/content/Context;)V
    .locals 0

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut$2;->val$enabling:Z

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 203
    new-instance v0, Landroid/content/Intent;

    const-string v1, "meizu.intent.action.VPN_STATE_SWITCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 204
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "vpn_action"

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut$2;->val$enabling:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 205
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 206
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/VpnShortCut$2;->val$context:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 207
    return-void
.end method
