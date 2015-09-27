.class final Lcom/meizu/common/widget/RecipientEdit$RecipientRunnable;
.super Ljava/lang/Object;
.source "RecipientEdit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/RecipientEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RecipientRunnable"
.end annotation


# instance fields
.field private mName:Ljava/lang/String;

.field private mPhoneOrEmail:Ljava/lang/String;

.field final synthetic this$0:Lcom/meizu/common/widget/RecipientEdit;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/RecipientEdit;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "phoneOrEmail"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 3631
    iput-object p1, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientRunnable;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3632
    iput-object p2, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientRunnable;->mPhoneOrEmail:Ljava/lang/String;

    .line 3633
    iput-object p3, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientRunnable;->mName:Ljava/lang/String;

    .line 3634
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 3638
    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientRunnable;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->mRecipientDataList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/meizu/common/widget/RecipientEdit;->access$600(Lcom/meizu/common/widget/RecipientEdit;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientRunnable;->mPhoneOrEmail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 3639
    .local v0, "index":I
    const/4 v3, -0x1

    if-le v0, v3, :cond_1

    .line 3640
    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientRunnable;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->mRecipientMap:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/meizu/common/widget/RecipientEdit;->access$3500(Lcom/meizu/common/widget/RecipientEdit;)Ljava/util/HashMap;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientRunnable;->mPhoneOrEmail:Ljava/lang/String;

    iget-object v5, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientRunnable;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3642
    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientRunnable;->mName:Ljava/lang/String;

    .line 3643
    .local v2, "text":Ljava/lang/String;
    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientRunnable;->mName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3644
    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientRunnable;->mPhoneOrEmail:Ljava/lang/String;

    .line 3648
    :cond_0
    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientRunnable;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->mRecipientLayout:Landroid/widget/AbsoluteLayout;
    invoke-static {v3}, Lcom/meizu/common/widget/RecipientEdit;->access$3700(Lcom/meizu/common/widget/RecipientEdit;)Landroid/widget/AbsoluteLayout;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/AbsoluteLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/widget/RecipientEdit$ItemView;

    .line 3649
    .local v1, "item":Lcom/meizu/common/widget/RecipientEdit$ItemView;
    invoke-virtual {v1, v2}, Lcom/meizu/common/widget/RecipientEdit$ItemView;->setText(Ljava/lang/CharSequence;)V

    .line 3650
    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientRunnable;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    iget-object v4, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientRunnable;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    invoke-virtual {v4}, Lcom/meizu/common/widget/RecipientEdit;->hasFocus()Z

    move-result v4

    # invokes: Lcom/meizu/common/widget/RecipientEdit;->refreshLayout(Z)V
    invoke-static {v3, v4}, Lcom/meizu/common/widget/RecipientEdit;->access$1100(Lcom/meizu/common/widget/RecipientEdit;Z)V

    .line 3653
    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientRunnable;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->mIsSaveHistory:Z
    invoke-static {v3}, Lcom/meizu/common/widget/RecipientEdit;->access$3600(Lcom/meizu/common/widget/RecipientEdit;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3660
    .end local v1    # "item":Lcom/meizu/common/widget/RecipientEdit$ItemView;
    .end local v2    # "text":Ljava/lang/String;
    :cond_1
    return-void
.end method
