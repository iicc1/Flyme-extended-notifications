.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut$2;
.super Landroid/content/BroadcastReceiver;
.source "BaseShortCut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 206
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->access$000(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 208
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mDescriptionLocaleString:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "oldLocaleDescription":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mDescription:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->access$200(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, "currentDescription":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mDescriptionStringResId:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->access$300(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    # setter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mDescriptionLocaleString:Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->access$102(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;Ljava/lang/String;)Ljava/lang/String;

    .line 213
    if-ne v1, v0, :cond_0

    .line 214
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mDescription:Landroid/widget/TextView;
    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->access$200(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut$2;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mDescriptionLocaleString:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->access$100(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    :cond_0
    return-void
.end method
