.class Lcom/meizu/common/widget/RecipientEdit$1;
.super Ljava/lang/Object;
.source "RecipientEdit.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/RecipientEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/RecipientEdit;


# virtual methods
.method public onScrollChanged()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$1;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v0}, Lcom/meizu/common/widget/RecipientEdit;->access$000(Lcom/meizu/common/widget/RecipientEdit;)Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$1;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v0}, Lcom/meizu/common/widget/RecipientEdit;->access$000(Lcom/meizu/common/widget/RecipientEdit;)Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->changePopupBackground()V

    .line 241
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$1;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v0}, Lcom/meizu/common/widget/RecipientEdit;->access$000(Lcom/meizu/common/widget/RecipientEdit;)Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->showDropDown()V

    .line 243
    :cond_0
    return-void
.end method
