.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut$1;
.super Ljava/lang/Object;
.source "BrightnessShortCut.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->onClickDescriptionArea(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut$1;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->mBrightnessDialog:Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;->access$002(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BrightnessShortCut;Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;)Lcom/android/systemui/statusbar/phone/widget/MyBrightnessDialog;

    .line 79
    return-void
.end method
