.class Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
.super Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;
.source "RecipientEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DirectoryPartition"
.end annotation


# instance fields
.field public accountName:Ljava/lang/String;

.field public accountType:Ljava/lang/String;

.field public constraint:Ljava/lang/CharSequence;

.field public directoryId:J

.field public directoryType:Ljava/lang/String;

.field public displayName:Ljava/lang/String;

.field public filter:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartitionFilter;

.field final synthetic this$1:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2729
    iput-object p1, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->this$1:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;

    .line 2730
    invoke-direct {p0, v0, v0}, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;-><init>(ZZ)V

    .line 2731
    return-void
.end method
