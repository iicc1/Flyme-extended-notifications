.class Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut$3;
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
    .line 230
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->access$400(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mIconResId:I
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->access$500(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->access$400(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 242
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->access$400(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut$3;->this$0:Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;

    # getter for: Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->mIconResId:I
    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;->access$500(Lcom/android/systemui/statusbar/phone/widgetnew/shortcut/BaseShortCut;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 244
    :cond_0
    return-void
.end method
