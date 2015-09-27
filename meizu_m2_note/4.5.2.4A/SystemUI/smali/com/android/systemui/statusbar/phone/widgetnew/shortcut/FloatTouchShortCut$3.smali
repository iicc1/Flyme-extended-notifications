.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$3;
.super Ljava/lang/Object;
.source "FloatTouchShortCut.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->onClickIcon(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialogs"    # Landroid/content/DialogInterface;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->mHelpDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->access$002(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    const/4 v1, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->isUserOn:Z
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->access$202(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;Z)Z

    .line 129
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/FloatTouchShortCut;->updateViews()V

    .line 130
    return-void
.end method
