.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$LanguageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MobileDataShortCut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LanguageReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)V
    .locals 0

    .prologue
    .line 443
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$LanguageReceiver;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;
    .param p2, "x1"    # Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$1;

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$LanguageReceiver;-><init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 446
    const-string v0, "MobileDataShortCut"

    const-string v1, "ACTION_LOCALE_CHANGED currentDescription:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$LanguageReceiver;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    # invokes: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->initStrArrays()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->access$600(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)V

    .line 450
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$LanguageReceiver;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    # invokes: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->setDescriptionStr()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->access$300(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)V

    .line 452
    :cond_0
    return-void
.end method
