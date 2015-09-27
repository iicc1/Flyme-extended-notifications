.class Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$GroupPartition;
.super Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;
.source "RecipientEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupPartition"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2715
    iput-object p1, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$GroupPartition;->this$1:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;

    .line 2716
    invoke-direct {p0, v0, v0}, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;-><init>(ZZ)V

    .line 2717
    return-void
.end method
