.class Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$3;
.super Ljava/lang/Object;
.source "RecipientEdit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;

.field final synthetic val$recipients:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 2925
    iput-object p1, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$3;->this$1:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;

    iput-object p2, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$3;->val$recipients:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2928
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$3;->this$1:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;

    iget-object v0, v0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->mRAdapterExListener:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapterEx;
    invoke-static {v0}, Lcom/meizu/common/widget/RecipientEdit;->access$2900(Lcom/meizu/common/widget/RecipientEdit;)Lcom/meizu/common/widget/RecipientEdit$RecipientAdapterEx;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2929
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$3;->this$1:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;

    iget-object v0, v0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->mRAdapterExListener:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapterEx;
    invoke-static {v0}, Lcom/meizu/common/widget/RecipientEdit;->access$2900(Lcom/meizu/common/widget/RecipientEdit;)Lcom/meizu/common/widget/RecipientEdit$RecipientAdapterEx;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$3;->val$recipients:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapterEx;->deleteRecommendContact(Ljava/util/ArrayList;)V

    .line 2930
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$3;->this$1:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;

    iget-object v0, v0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v0}, Lcom/meizu/common/widget/RecipientEdit;->access$000(Lcom/meizu/common/widget/RecipientEdit;)Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2932
    :cond_0
    return-void
.end method
