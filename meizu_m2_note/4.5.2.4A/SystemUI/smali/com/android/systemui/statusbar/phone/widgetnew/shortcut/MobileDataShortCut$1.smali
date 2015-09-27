.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$1;
.super Ljava/lang/Object;
.source "MobileDataShortCut.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->toggle(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->mTelephonyManager:Landroid/telephony/TelephonyManager;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;->access$000(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/MobileDataShortCut;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 151
    return-void
.end method
