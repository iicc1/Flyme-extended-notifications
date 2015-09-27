.class Lcom/android/systemui/statusbar/phone/wifi/WifiDialog$2;
.super Ljava/lang/Object;
.source "WifiDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;->showSecurityFields()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 558
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog$2;->this$0:Lcom/android/systemui/statusbar/phone/wifi/WifiDialog;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 560
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 561
    .local v0, "intent3":Landroid/content/Intent;
    const-string v1, "android.intent.action.WAPICERTMANAGER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 562
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/wifi/WifiDialog$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 563
    return-void
.end method
