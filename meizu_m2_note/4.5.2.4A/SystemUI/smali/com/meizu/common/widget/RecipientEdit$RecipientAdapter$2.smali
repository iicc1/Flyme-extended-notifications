.class Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$2;
.super Ljava/lang/Object;
.source "RecipientEdit.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;)V
    .locals 0

    .prologue
    .line 2869
    iput-object p1, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$2;->this$1:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2872
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$2;->this$1:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;

    const/4 v1, 0x0

    # setter for: Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mGlobalSearchDelayed:Z
    invoke-static {v0, v1}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->access$2602(Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;Z)Z

    .line 2873
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$2;->this$1:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;

    # invokes: Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->startGlobalSearch()V
    invoke-static {v0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->access$2700(Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;)V

    .line 2874
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$2;->this$1:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;

    invoke-virtual {v0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->notifyDataSetChanged()V

    .line 2875
    return-void
.end method
