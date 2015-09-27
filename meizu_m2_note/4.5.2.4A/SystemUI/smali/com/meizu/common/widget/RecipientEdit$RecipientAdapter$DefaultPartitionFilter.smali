.class final Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;
.super Landroid/widget/Filter;
.source "RecipientEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DefaultPartitionFilter"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;


# direct methods
.method private constructor <init>(Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;)V
    .locals 0

    .prologue
    .line 2737
    iput-object p1, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;->this$1:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;Lcom/meizu/common/widget/RecipientEdit$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;
    .param p2, "x1"    # Lcom/meizu/common/widget/RecipientEdit$1;

    .prologue
    .line 2737
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;-><init>(Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;)V

    return-void
.end method


# virtual methods
.method public convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "resultValue"    # Ljava/lang/Object;

    .prologue
    .line 2775
    const/4 v0, 0x0

    return-object v0
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 9
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v8, 0x0

    .line 2741
    iget-object v5, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;->this$1:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;

    # getter for: Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mDefaultData:Ljava/util/LinkedHashMap;
    invoke-static {v5}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->access$1900(Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;)Ljava/util/LinkedHashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->clear()V

    .line 2742
    if-nez p1, :cond_1

    const-string v1, ""

    .line 2743
    .local v1, "filter":Ljava/lang/String;
    :goto_0
    new-instance v3, Landroid/widget/Filter$FilterResults;

    invoke-direct {v3}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 2744
    .local v3, "results":Landroid/widget/Filter$FilterResults;
    const/4 v2, 0x0

    .line 2745
    .local v2, "groupCursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 2746
    .local v0, "contactCursor":Landroid/database/Cursor;
    const/4 v4, 0x0

    .line 2747
    .local v4, "snsCursor":Landroid/database/Cursor;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2749
    iget-object v5, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;->this$1:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;

    # invokes: Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->getGroupData(Ljava/lang/String;)Landroid/database/Cursor;
    invoke-static {v5, v1}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->access$2000(Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 2751
    iget-object v5, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;->this$1:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;

    const-wide/16 v6, -0x1

    # invokes: Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->onFiltering(Ljava/lang/String;ZJ)Landroid/database/Cursor;
    invoke-static {v5, v1, v8, v6, v7}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->access$2100(Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;Ljava/lang/String;ZJ)Landroid/database/Cursor;

    move-result-object v0

    .line 2753
    iget-object v5, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;->this$1:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;

    iget-object v5, v5, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->mInputType:I
    invoke-static {v5}, Lcom/meizu/common/widget/RecipientEdit;->access$1400(Lcom/meizu/common/widget/RecipientEdit;)I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    const-string v5, "@"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2754
    iget-object v5, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;->this$1:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;

    # invokes: Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->onSnsFiltering(Ljava/lang/String;Z)Landroid/database/Cursor;
    invoke-static {v5, v1, v8}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->access$2200(Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v4

    .line 2758
    :cond_0
    const/4 v5, 0x3

    new-array v5, v5, [Landroid/database/Cursor;

    aput-object v2, v5, v8

    const/4 v6, 0x1

    aput-object v0, v5, v6

    const/4 v6, 0x2

    aput-object v4, v5, v6

    iput-object v5, v3, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 2761
    return-object v3

    .line 2742
    .end local v0    # "contactCursor":Landroid/database/Cursor;
    .end local v1    # "filter":Ljava/lang/String;
    .end local v2    # "groupCursor":Landroid/database/Cursor;
    .end local v3    # "results":Landroid/widget/Filter$FilterResults;
    .end local v4    # "snsCursor":Landroid/database/Cursor;
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 5
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "results"    # Landroid/widget/Filter$FilterResults;

    .prologue
    .line 2766
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 2767
    iget-object v1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v1, [Landroid/database/Cursor;

    move-object v0, v1

    check-cast v0, [Landroid/database/Cursor;

    .line 2768
    .local v0, "cursors":[Landroid/database/Cursor;
    iget-object v1, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;->this$1:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const/4 v4, 0x2

    aget-object v4, v0, v4

    # invokes: Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->onDefaultLoadFinished(Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V
    invoke-static {v1, p1, v2, v3, v4}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->access$2300(Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V

    .line 2770
    .end local v0    # "cursors":[Landroid/database/Cursor;
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;->this$1:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;

    invoke-virtual {v1}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->getCount()I

    move-result v1

    iput v1, p2, Landroid/widget/Filter$FilterResults;->count:I

    .line 2771
    return-void
.end method
