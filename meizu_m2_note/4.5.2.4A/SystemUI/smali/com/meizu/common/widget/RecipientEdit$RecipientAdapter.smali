.class Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;
.super Lcom/meizu/common/widget/CompositeCursorAdapterMz;
.source "RecipientEdit.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/RecipientEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RecipientAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartitionFilter;,
        Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;,
        Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;,
        Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$GroupPartition;,
        Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$FlagPartition;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mCloseDelayed:Z

.field protected final mContentResolver:Landroid/content/ContentResolver;

.field private mDefaultData:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectories:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;",
            ">;"
        }
    .end annotation
.end field

.field private mDirectoryData:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGlobalSearchDelayed:Z

.field private mOnlyGlobal:Z

.field private mPreferredDirectory:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

.field private mPreferredDirectoryIndex:I

.field final synthetic this$0:Lcom/meizu/common/widget/RecipientEdit;


# direct methods
.method static synthetic access$1900(Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;)Ljava/util/LinkedHashMap;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;

    .prologue
    .line 2704
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mDefaultData:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 2704
    invoke-direct {p0, p1}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->getGroupData(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;Ljava/lang/String;ZJ)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z
    .param p3, "x3"    # J

    .prologue
    .line 2704
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->onFiltering(Ljava/lang/String;ZJ)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 1
    .param p0, "x0"    # Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 2704
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->onSnsFiltering(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # Landroid/database/Cursor;
    .param p3, "x3"    # Landroid/database/Cursor;
    .param p4, "x4"    # Landroid/database/Cursor;

    .prologue
    .line 2704
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->onDefaultLoadFinished(Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;Ljava/lang/CharSequence;JLandroid/database/Cursor;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;
    .param p1, "x1"    # Ljava/lang/CharSequence;
    .param p2, "x2"    # J
    .param p4, "x3"    # Landroid/database/Cursor;

    .prologue
    .line 2704
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->onDirectoryLoadFinished(Ljava/lang/CharSequence;JLandroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$2602(Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 2704
    iput-boolean p1, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mGlobalSearchDelayed:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;

    .prologue
    .line 2704
    invoke-direct {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->startGlobalSearch()V

    return-void
.end method

.method private canGlobalSearch(Ljava/lang/CharSequence;)Z
    .locals 12
    .param p1, "constraint"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v8, 0x0

    .line 3366
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 3367
    .local v6, "oldDirectories":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Long;Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;>;"
    iget-object v9, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 3368
    iget-object v9, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 3369
    iget-object v9, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mDirectoryData:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    .line 3370
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mPreferredDirectory:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    .line 3371
    const/4 v9, -0x1

    iput v9, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mPreferredDirectoryIndex:I

    .line 3374
    iget-object v9, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/meizu/common/widget/RecipientEdit;->access$3000(Lcom/meizu/common/widget/RecipientEdit;)Landroid/content/Context;

    move-result-object v9

    const-string v10, "connectivity"

    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 3376
    .local v0, "connManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    .line 3377
    .local v3, "info":Landroid/net/NetworkInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v9

    if-nez v9, :cond_1

    .line 3413
    :cond_0
    :goto_0
    return v8

    .line 3381
    :cond_1
    iget-object v9, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->mDirectoryLock:Ljava/lang/Object;
    invoke-static {v9}, Lcom/meizu/common/widget/RecipientEdit;->access$200(Lcom/meizu/common/widget/RecipientEdit;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 3382
    :try_start_0
    iget-object v10, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->mDirectoryList:Ljava/util/ArrayList;
    invoke-static {v10}, Lcom/meizu/common/widget/RecipientEdit;->access$3300(Lcom/meizu/common/widget/RecipientEdit;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/widget/RecipientEdit$DirectoryObject;

    .line 3383
    .local v1, "directory":Lcom/meizu/common/widget/RecipientEdit$DirectoryObject;
    iget-wide v4, v1, Lcom/meizu/common/widget/RecipientEdit$DirectoryObject;->directoryId:J

    .line 3384
    .local v4, "id":J
    invoke-direct {p0, v4, v5}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->getPartitionByDirectoryId(J)Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    move-result-object v7

    .line 3385
    .local v7, "partition":Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
    if-nez v7, :cond_2

    .line 3386
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "partition":Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
    check-cast v7, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    .line 3388
    .restart local v7    # "partition":Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
    :cond_2
    if-nez v7, :cond_3

    .line 3389
    new-instance v7, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    .end local v7    # "partition":Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
    invoke-direct {v7, p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;-><init>(Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;)V

    .line 3392
    .restart local v7    # "partition":Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
    :cond_3
    iput-wide v4, v7, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->directoryId:J

    .line 3393
    iput-object p1, v7, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->constraint:Ljava/lang/CharSequence;

    .line 3394
    iget-object v10, v1, Lcom/meizu/common/widget/RecipientEdit$DirectoryObject;->displayName:Ljava/lang/String;

    iput-object v10, v7, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->displayName:Ljava/lang/String;

    .line 3395
    iget-object v10, v1, Lcom/meizu/common/widget/RecipientEdit$DirectoryObject;->accountName:Ljava/lang/String;

    iput-object v10, v7, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->accountName:Ljava/lang/String;

    .line 3396
    iget-object v10, v1, Lcom/meizu/common/widget/RecipientEdit$DirectoryObject;->accountType:Ljava/lang/String;

    iput-object v10, v7, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->accountType:Ljava/lang/String;

    .line 3397
    iget-object v10, v1, Lcom/meizu/common/widget/RecipientEdit$DirectoryObject;->directoryType:Ljava/lang/String;

    iput-object v10, v7, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->directoryType:Ljava/lang/String;

    .line 3402
    iget-object v10, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mAccount:Landroid/accounts/Account;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->name:Ljava/lang/String;

    iget-object v11, v7, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->accountName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mAccount:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v11, v7, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->accountType:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 3404
    iput-object v7, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mPreferredDirectory:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    .line 3406
    :cond_4
    iget-object v10, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v10, v11, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3408
    .end local v1    # "directory":Lcom/meizu/common/widget/RecipientEdit$DirectoryObject;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "id":J
    .end local v7    # "partition":Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
    :catchall_0
    move-exception v8

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_5
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3410
    iget-object v9, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 3411
    const/4 v8, 0x1

    goto :goto_0
.end method

.method private cancelLoading()V
    .locals 1

    .prologue
    .line 3461
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->getPartitionCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->getPartitionCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->getPartition(I)Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    move-result-object v0

    instance-of v0, v0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$FlagPartition;

    if-eqz v0, :cond_0

    .line 3463
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->getPartitionCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->removePartition(I)V

    .line 3465
    :cond_0
    return-void
.end method

.method private doEmailMatched(Ljava/lang/String;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "filter"    # Ljava/lang/String;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3112
    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 3113
    const-string v3, "@"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1

    move-object v2, p1

    .line 3115
    .local v2, "filterSubStr":Ljava/lang/String;
    :goto_0
    const/4 v3, -0x1

    invoke-interface {p2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3116
    :cond_0
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3117
    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3118
    .local v0, "email":Ljava/lang/String;
    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_2

    move-object v1, v0

    .line 3120
    .local v1, "emailSubStr":Ljava/lang/String;
    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3121
    iget-object v3, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mDefaultData:Ljava/util/LinkedHashMap;

    invoke-interface {p2, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3113
    .end local v0    # "email":Ljava/lang/String;
    .end local v1    # "emailSubStr":Ljava/lang/String;
    .end local v2    # "filterSubStr":Ljava/lang/String;
    :cond_1
    const-string v3, "@"

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 3118
    .restart local v0    # "email":Ljava/lang/String;
    .restart local v2    # "filterSubStr":Ljava/lang/String;
    :cond_2
    const-string v3, "@"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 3127
    .end local v0    # "email":Ljava/lang/String;
    .end local v2    # "filterSubStr":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private getGroupData(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .param p1, "filter"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x1

    .line 3161
    sget-object v0, Lcom/meizu/common/widget/MzContactsContract$MzGroups;->CONTENT_SUMMARY_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3162
    .local v1, "uri":Landroid/net/Uri;
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->mInputType:I
    invoke-static {v0}, Lcom/meizu/common/widget/RecipientEdit;->access$1400(Lcom/meizu/common/widget/RecipientEdit;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3170
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "is_primary"

    invoke-static {v10}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 3177
    :goto_0
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "title"

    aput-object v0, v2, v11

    const-string v0, "summary_data_count"

    aput-object v0, v2, v10

    const-string v0, "_id"

    aput-object v0, v2, v12

    .line 3180
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3182
    .local v6, "groupCursor":Landroid/database/Cursor;
    if-eqz v6, :cond_7

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_7

    .line 3183
    new-instance v8, Landroid/database/MatrixCursor;

    invoke-direct {v8, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3184
    .local v8, "newCursor":Landroid/database/MatrixCursor;
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3185
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3186
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 3187
    invoke-virtual {v8}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v9

    .line 3188
    .local v9, "row":Landroid/database/MatrixCursor$RowBuilder;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v0, v2

    if-ge v7, v0, :cond_0

    .line 3189
    const-string v0, "title"

    aget-object v3, v2, v7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3190
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3188
    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 3164
    .end local v2    # "projection":[Ljava/lang/String;
    .end local v6    # "groupCursor":Landroid/database/Cursor;
    .end local v7    # "i":I
    .end local v8    # "newCursor":Landroid/database/MatrixCursor;
    .end local v9    # "row":Landroid/database/MatrixCursor$RowBuilder;
    :pswitch_0
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v4, "mimetype"

    const-string v5, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v0, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 3167
    goto :goto_0

    .line 3191
    .restart local v2    # "projection":[Ljava/lang/String;
    .restart local v6    # "groupCursor":Landroid/database/Cursor;
    .restart local v7    # "i":I
    .restart local v8    # "newCursor":Landroid/database/MatrixCursor;
    .restart local v9    # "row":Landroid/database/MatrixCursor$RowBuilder;
    :cond_2
    :try_start_1
    const-string v0, "summary_data_count"

    aget-object v3, v2, v7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3192
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 3203
    .end local v7    # "i":I
    .end local v8    # "newCursor":Landroid/database/MatrixCursor;
    .end local v9    # "row":Landroid/database/MatrixCursor$RowBuilder;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 3204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 3193
    .restart local v7    # "i":I
    .restart local v8    # "newCursor":Landroid/database/MatrixCursor;
    .restart local v9    # "row":Landroid/database/MatrixCursor$RowBuilder;
    :cond_4
    :try_start_2
    const-string v0, "_id"

    aget-object v3, v2, v7

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3194
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 3203
    .end local v7    # "i":I
    .end local v9    # "row":Landroid/database/MatrixCursor$RowBuilder;
    :cond_5
    if-eqz v6, :cond_6

    .line 3204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v8    # "newCursor":Landroid/database/MatrixCursor;
    :cond_6
    :goto_3
    return-object v8

    .line 3203
    :cond_7
    if-eqz v6, :cond_8

    .line 3204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_8
    move-object v8, v3

    goto :goto_3

    .line 3162
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private getPartitionByDirectoryId(J)Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
    .locals 7
    .param p1, "id"    # J

    .prologue
    .line 3436
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->getPartitionCount()I

    move-result v0

    .line 3437
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 3438
    invoke-virtual {p0, v1}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->getPartition(I)Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    move-result-object v2

    .line 3439
    .local v2, "partition":Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;
    instance-of v3, v2, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    if-eqz v3, :cond_0

    move-object v3, v2

    .line 3440
    check-cast v3, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    iget-wide v4, v3, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->directoryId:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_0

    .line 3441
    check-cast v2, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    .line 3445
    .end local v2    # "partition":Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;
    :goto_1
    return-object v2

    .line 3437
    .restart local v2    # "partition":Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3445
    .end local v2    # "partition":Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private onDefaultLoadFinished(Ljava/lang/CharSequence;Landroid/database/Cursor;Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 8
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "groupCursor"    # Landroid/database/Cursor;
    .param p3, "contactCursor"    # Landroid/database/Cursor;
    .param p4, "snsCursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 3224
    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->setNotificationsEnabled(Z)V

    .line 3225
    if-nez p1, :cond_7

    const-string v0, ""

    .line 3226
    .local v0, "filter":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 3229
    .local v1, "hasLocalContacts":Z
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-gtz v4, :cond_1

    :cond_0
    if-eqz p3, :cond_2

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    .line 3231
    :cond_1
    const/4 v1, 0x1

    .line 3232
    iput-boolean v5, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mOnlyGlobal:Z

    .line 3234
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->close()V

    .line 3236
    new-instance v4, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$GroupPartition;

    invoke-direct {v4, p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$GroupPartition;-><init>(Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;)V

    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->addPartition(Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;)V

    .line 3237
    invoke-virtual {p0, v5, p2}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 3239
    invoke-virtual {p0, v5, v5}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->addPartition(ZZ)V

    .line 3240
    invoke-virtual {p0, v7, p3}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 3243
    :cond_2
    iget-object v4, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->mOpenGlobalAddressBook:Z
    invoke-static {v4}, Lcom/meizu/common/widget/RecipientEdit;->access$3200(Lcom/meizu/common/widget/RecipientEdit;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c

    invoke-direct {p0, p1}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->canGlobalSearch(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 3245
    iput-boolean v5, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mCloseDelayed:Z

    .line 3246
    if-nez v1, :cond_8

    iget-boolean v4, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mOnlyGlobal:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->mAutoGlobalSearch:Z
    invoke-static {v4}, Lcom/meizu/common/widget/RecipientEdit;->access$2500(Lcom/meizu/common/widget/RecipientEdit;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 3248
    :cond_3
    iput-boolean v7, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mOnlyGlobal:Z

    .line 3249
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->close()V

    .line 3254
    :cond_4
    :goto_1
    iget-boolean v4, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mCloseDelayed:Z

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mPreferredDirectory:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    if-eqz v4, :cond_5

    .line 3255
    iget-object v4, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mPreferredDirectory:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    invoke-virtual {p0, v4}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->addPartition(Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;)V

    .line 3256
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->getPartitionCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mPreferredDirectoryIndex:I

    .line 3259
    :cond_5
    iput-boolean v5, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mGlobalSearchDelayed:Z

    .line 3260
    iget-object v4, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->mAutoGlobalSearch:Z
    invoke-static {v4}, Lcom/meizu/common/widget/RecipientEdit;->access$2500(Lcom/meizu/common/widget/RecipientEdit;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 3261
    iget-boolean v4, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mOnlyGlobal:Z

    if-eqz v4, :cond_9

    .line 3262
    invoke-direct {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->startGlobalSearch()V

    .line 3291
    :cond_6
    :goto_2
    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->setNotificationsEnabled(Z)V

    .line 3292
    return-void

    .line 3225
    .end local v0    # "filter":Ljava/lang/String;
    .end local v1    # "hasLocalContacts":Z
    :cond_7
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 3250
    .restart local v0    # "filter":Ljava/lang/String;
    .restart local v1    # "hasLocalContacts":Z
    :cond_8
    iget-boolean v4, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mOnlyGlobal:Z

    if-eqz v4, :cond_4

    .line 3251
    iput-boolean v7, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mCloseDelayed:Z

    goto :goto_1

    .line 3264
    :cond_9
    iget-object v4, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v4}, Lcom/meizu/common/widget/RecipientEdit;->access$000(Lcom/meizu/common/widget/RecipientEdit;)Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getPopup()Landroid/widget/ListPopupWindow;

    move-result-object v4

    invoke-static {v4}, Lcom/meizu/common/widget/RecipientEdit$PopupWindowHelper;->getPopupWindow(Landroid/widget/ListPopupWindow;)Landroid/widget/PopupWindow;

    move-result-object v4

    iget-object v5, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    iget-object v6, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->mEditView:Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;
    invoke-static {v6}, Lcom/meizu/common/widget/RecipientEdit;->access$000(Lcom/meizu/common/widget/RecipientEdit;)Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/meizu/common/widget/RecipientEdit$RecipientAutoCompleteTextView;->getDropDownVerticalOffset()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/PopupWindow;->getMaxAvailableHeight(Landroid/view/View;I)I

    move-result v3

    .line 3267
    .local v3, "maxHeight":I
    iget-object v4, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    invoke-virtual {v4}, Lcom/meizu/common/widget/RecipientEdit;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d01aa

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 3270
    .local v2, "listItemHeight":I
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->getCount()I

    move-result v4

    mul-int/2addr v4, v2

    if-le v3, v4, :cond_a

    .line 3271
    invoke-direct {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->startGlobalSearch()V

    goto :goto_2

    .line 3273
    :cond_a
    iput-boolean v7, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mGlobalSearchDelayed:Z

    .line 3274
    invoke-direct {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->showLoading()V

    goto :goto_2

    .line 3280
    .end local v2    # "listItemHeight":I
    .end local v3    # "maxHeight":I
    :cond_b
    iput-boolean v7, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mGlobalSearchDelayed:Z

    .line 3281
    invoke-direct {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->showLoading()V

    goto :goto_2

    .line 3284
    :cond_c
    iget-object v4, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 3286
    if-nez v1, :cond_6

    .line 3287
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->close()V

    goto :goto_2
.end method

.method private onDirectoryLoadFinished(Ljava/lang/CharSequence;JLandroid/database/Cursor;)V
    .locals 10
    .param p1, "constraint"    # Ljava/lang/CharSequence;
    .param p2, "directoryId"    # J
    .param p4, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3296
    iget-object v5, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    .line 3297
    .local v3, "partition":Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
    if-eqz v3, :cond_4

    .line 3301
    iget-object v5, v3, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->constraint:Ljava/lang/CharSequence;

    invoke-static {p1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3302
    iget-object v5, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3303
    new-instance v2, Landroid/database/MatrixCursor;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/meizu/common/widget/RecipientEdit;->access$3100()[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3304
    .local v2, "newCursor":Landroid/database/MatrixCursor;
    if-eqz p4, :cond_1

    invoke-interface {p4}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_1

    .line 3305
    const/4 v5, -0x1

    invoke-interface {p4, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3306
    :cond_0
    :goto_0
    invoke-interface {p4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 3307
    invoke-interface {p4}, Landroid/database/Cursor;->getColumnCount()I

    move-result v5

    if-le v5, v8, :cond_0

    .line 3310
    invoke-interface {p4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 3311
    .local v1, "name":Ljava/lang/String;
    invoke-interface {p4, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3312
    .local v0, "data":Ljava/lang/String;
    iget-object v5, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mDefaultData:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mDirectoryData:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3313
    iget-object v5, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mDirectoryData:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3314
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    .line 3315
    .local v4, "row":Landroid/database/MatrixCursor$RowBuilder;
    invoke-virtual {v4, v1}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 3316
    invoke-virtual {v4, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_0

    .line 3321
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "name":Ljava/lang/String;
    .end local v4    # "row":Landroid/database/MatrixCursor$RowBuilder;
    :cond_1
    invoke-virtual {v2}, Landroid/database/MatrixCursor;->getCount()I

    move-result v5

    if-lez v5, :cond_7

    .line 3322
    invoke-virtual {p0, v7}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->setNotificationsEnabled(Z)V

    .line 3323
    invoke-direct {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->cancelLoading()V

    .line 3324
    iget-boolean v5, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mCloseDelayed:Z

    if-eqz v5, :cond_2

    .line 3325
    iput-boolean v7, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mCloseDelayed:Z

    .line 3326
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->close()V

    .line 3327
    iget-object v5, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mPreferredDirectory:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    if-eqz v5, :cond_2

    .line 3328
    iget-object v5, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mPreferredDirectory:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    invoke-virtual {p0, v5}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->addPartition(Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;)V

    .line 3329
    iput v7, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mPreferredDirectoryIndex:I

    .line 3333
    :cond_2
    iget-object v5, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mPreferredDirectory:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    if-ne v3, v5, :cond_6

    .line 3334
    iget v5, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mPreferredDirectoryIndex:I

    invoke-virtual {p0, v5, v2}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->changeCursor(ILandroid/database/Cursor;)V

    .line 3341
    :goto_1
    iget-object v5, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 3342
    invoke-direct {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->showLoading()V

    .line 3344
    :cond_3
    invoke-virtual {p0, v8}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->setNotificationsEnabled(Z)V

    .line 3360
    .end local v2    # "newCursor":Landroid/database/MatrixCursor;
    :cond_4
    :goto_2
    if-eqz p4, :cond_5

    .line 3361
    invoke-interface {p4}, Landroid/database/Cursor;->close()V

    .line 3363
    :cond_5
    return-void

    .line 3336
    .restart local v2    # "newCursor":Landroid/database/MatrixCursor;
    :cond_6
    invoke-virtual {p0, v3}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->addPartition(Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;)V

    .line 3337
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->getPartitionCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v5, v2}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->changeCursor(ILandroid/database/Cursor;)V

    goto :goto_1

    .line 3347
    :cond_7
    iget-object v5, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 3348
    iget-boolean v5, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mCloseDelayed:Z

    if-eqz v5, :cond_8

    .line 3349
    iput-boolean v7, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mCloseDelayed:Z

    .line 3350
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->close()V

    goto :goto_2

    .line 3352
    :cond_8
    invoke-direct {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->cancelLoading()V

    goto :goto_2
.end method

.method private onFiltering(Ljava/lang/String;ZJ)Landroid/database/Cursor;
    .locals 27
    .param p1, "filter"    # Ljava/lang/String;
    .param p2, "isGlobal"    # Z
    .param p3, "directoryId"    # J

    .prologue
    .line 2978
    const/4 v3, 0x0

    .line 2979
    .local v3, "uri":Landroid/net/Uri;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    .line 2980
    .local v23, "sortOrder":Ljava/lang/StringBuilder;
    const-string v2, "sort_key"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2981
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->mInputType:I
    invoke-static {v2}, Lcom/meizu/common/widget/RecipientEdit;->access$1400(Lcom/meizu/common/widget/RecipientEdit;)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2997
    if-eqz p2, :cond_3

    .line 2998
    sget-object v15, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 2999
    .local v15, "globalUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->mInputType:I
    invoke-static {v2}, Lcom/meizu/common/widget/RecipientEdit;->access$1400(Lcom/meizu/common/widget/RecipientEdit;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    .line 3000
    sget-object v15, Lcom/meizu/common/widget/MzContactsContract$MzCommonDataKinds$MzPhoneAndEmail;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 3003
    :cond_0
    invoke-virtual {v15}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "convert_letters"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 3025
    .end local v15    # "globalUri":Landroid/net/Uri;
    :goto_0
    if-eqz p2, :cond_1

    .line 3026
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "directory"

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "limit"

    const/16 v5, 0x14

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 3036
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/meizu/common/widget/RecipientEdit;->access$3100()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 3038
    .local v10, "contactCursor":Landroid/database/Cursor;
    if-nez p2, :cond_b

    .line 3039
    const/16 v17, 0x0

    .line 3040
    .local v17, "locatRecipientCursor":Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->mInputType:I
    invoke-static {v2}, Lcom/meizu/common/widget/RecipientEdit;->access$1400(Lcom/meizu/common/widget/RecipientEdit;)I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 3042
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v10}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->doEmailMatched(Ljava/lang/String;Landroid/database/Cursor;)V

    .line 3043
    const/4 v2, 0x2

    new-array v9, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v4, "display_name"

    aput-object v4, v9, v2

    const/4 v2, 0x1

    const-string v4, "email"

    aput-object v4, v9, v2

    .line 3046
    .local v9, "colomns":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->mRAdapterExListener:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapterEx;
    invoke-static {v2}, Lcom/meizu/common/widget/RecipientEdit;->access$2900(Lcom/meizu/common/widget/RecipientEdit;)Lcom/meizu/common/widget/RecipientEdit$RecipientAdapterEx;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3047
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->mRAdapterExListener:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapterEx;
    invoke-static {v2}, Lcom/meizu/common/widget/RecipientEdit;->access$2900(Lcom/meizu/common/widget/RecipientEdit;)Lcom/meizu/common/widget/RecipientEdit$RecipientAdapterEx;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v2, v0, v9}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapterEx;->getLocalRecipientData(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 3053
    .end local v9    # "colomns":[Ljava/lang/String;
    :cond_2
    if-eqz v10, :cond_5

    .line 3054
    const/4 v2, -0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3055
    :goto_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3056
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mDefaultData:Ljava/util/LinkedHashMap;

    const/4 v4, 0x1

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v10, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2983
    .end local v10    # "contactCursor":Landroid/database/Cursor;
    .end local v17    # "locatRecipientCursor":Landroid/database/Cursor;
    :pswitch_0
    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "use_custom_order"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "remove_duplicate_entries"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 2994
    goto/16 :goto_0

    .line 3010
    :cond_3
    const/4 v2, 0x3

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v19, v0

    .line 3011
    .local v19, "mimeTypes":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->mInputType:I
    invoke-static {v2}, Lcom/meizu/common/widget/RecipientEdit;->access$1400(Lcom/meizu/common/widget/RecipientEdit;)I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    .line 3012
    const/4 v2, 0x1

    const-string v4, "vnd.android.cursor.item/email_v2"

    aput-object v4, v19, v2

    .line 3014
    :cond_4
    sget-object v2, Lcom/meizu/common/widget/MzContactsContract$MzData;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "convert_letters"

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 3020
    move-object/from16 v0, v19

    invoke-static {v3, v0}, Lcom/meizu/common/widget/MzContactsContract$MzData;->buildUriWithRequestMimetypes(Landroid/net/Uri;[Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto/16 :goto_0

    .line 3062
    .end local v19    # "mimeTypes":[Ljava/lang/String;
    .restart local v10    # "contactCursor":Landroid/database/Cursor;
    .restart local v17    # "locatRecipientCursor":Landroid/database/Cursor;
    :cond_5
    new-instance v20, Landroid/database/MatrixCursor;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/meizu/common/widget/RecipientEdit;->access$3100()[Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-direct {v0, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3063
    .local v20, "newCursor":Landroid/database/MatrixCursor;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mDefaultData:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .line 3064
    .local v16, "it":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 3065
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 3066
    .local v14, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v20 .. v20}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v22

    .line 3067
    .local v22, "row":Landroid/database/MatrixCursor$RowBuilder;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 3068
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_2

    .line 3071
    .end local v14    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "row":Landroid/database/MatrixCursor$RowBuilder;
    :cond_6
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/4 v2, 0x0

    const-string v4, "data"

    aput-object v4, v24, v2

    .line 3074
    .local v24, "str":[Ljava/lang/String;
    new-instance v25, Landroid/database/MatrixCursor;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3075
    .local v25, "tmpCursor":Landroid/database/MatrixCursor;
    if-eqz v17, :cond_a

    .line 3076
    const/4 v2, -0x1

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3077
    :cond_7
    :goto_3
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 3078
    const/4 v2, 0x0

    move-object/from16 v0, v17

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v13

    .line 3079
    .local v13, "data":[B
    invoke-static {v13}, Lcom/meizu/common/widget/RecipientEdit$Recipient;->dataToRecipientList([B)Ljava/util/ArrayList;

    move-result-object v21

    .line 3080
    .local v21, "recipients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/common/widget/RecipientEdit$Recipient;>;"
    const/4 v2, 0x1

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v2, v4, :cond_9

    .line 3081
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/widget/RecipientEdit$Recipient;

    iget-object v12, v2, Lcom/meizu/common/widget/RecipientEdit$Recipient;->mDisplayName:Ljava/lang/String;

    .line 3082
    .local v12, "cursorName":Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/common/widget/RecipientEdit$Recipient;

    iget-object v11, v2, Lcom/meizu/common/widget/RecipientEdit$Recipient;->mAddress:Ljava/lang/String;

    .line 3083
    .local v11, "cursorData":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mDefaultData:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v11}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mDefaultData:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v12, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 3086
    :cond_8
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v13, v2, v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 3089
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mDefaultData:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v11, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 3092
    .end local v11    # "cursorData":Ljava/lang/String;
    .end local v12    # "cursorName":Ljava/lang/String;
    :cond_9
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v13, v2, v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_3

    .line 3099
    .end local v13    # "data":[B
    .end local v21    # "recipients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/common/widget/RecipientEdit$Recipient;>;"
    :cond_a
    move-object/from16 v10, v20

    .line 3100
    if-eqz v25, :cond_b

    .line 3101
    const/4 v2, 0x2

    new-array v8, v2, [Landroid/database/Cursor;

    const/4 v2, 0x0

    aput-object v10, v8, v2

    const/4 v2, 0x1

    aput-object v25, v8, v2

    .line 3104
    .local v8, "ccursor":[Landroid/database/Cursor;
    new-instance v18, Landroid/database/MergeCursor;

    move-object/from16 v0, v18

    invoke-direct {v0, v8}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    .line 3108
    .end local v8    # "ccursor":[Landroid/database/Cursor;
    .end local v16    # "it":Ljava/util/Iterator;
    .end local v17    # "locatRecipientCursor":Landroid/database/Cursor;
    .end local v20    # "newCursor":Landroid/database/MatrixCursor;
    .end local v24    # "str":[Ljava/lang/String;
    .end local v25    # "tmpCursor":Landroid/database/MatrixCursor;
    :goto_4
    return-object v18

    :cond_b
    move-object/from16 v18, v10

    goto :goto_4

    .line 2981
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private onSnsFiltering(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 10
    .param p1, "filter"    # Ljava/lang/String;
    .param p2, "queryByNetwork"    # Z

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 3130
    invoke-virtual {p1, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 3131
    const-string v0, "content://com.meizu.sns/filter/bilateral"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 3132
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3133
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "filter_words"

    invoke-virtual {v0, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 3138
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v2, "query_by_network"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 3142
    iget-object v0, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const-string v4, "screen_name"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3145
    .local v6, "c":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 3146
    new-instance v7, Landroid/database/MatrixCursor;

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->PROJECTION:[Ljava/lang/String;
    invoke-static {}, Lcom/meizu/common/widget/RecipientEdit;->access$3100()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 3147
    .local v7, "newCursor":Landroid/database/MatrixCursor;
    const/4 v0, -0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 3148
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3149
    invoke-virtual {v7}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v8

    .line 3150
    .local v8, "row":Landroid/database/MatrixCursor$RowBuilder;
    const-string v0, ""

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 3151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_0

    .end local v7    # "newCursor":Landroid/database/MatrixCursor;
    .end local v8    # "row":Landroid/database/MatrixCursor$RowBuilder;
    :cond_1
    move-object v7, v3

    .line 3155
    :cond_2
    return-object v7
.end method

.method private showLoading()V
    .locals 2

    .prologue
    .line 3450
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->getPartitionCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->getPartitionCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->getPartition(I)Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    move-result-object v0

    instance-of v0, v0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$FlagPartition;

    if-eqz v0, :cond_0

    .line 3457
    :goto_0
    return-void

    .line 3455
    :cond_0
    new-instance v0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$FlagPartition;

    invoke-direct {v0, p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$FlagPartition;-><init>(Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;)V

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->addPartition(Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;)V

    .line 3456
    invoke-virtual {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->getPartitionCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->changeCursor(ILandroid/database/Cursor;)V

    goto :goto_0
.end method

.method private startGlobalSearch()V
    .locals 6

    .prologue
    .line 3418
    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 3419
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->setNotificationsEnabled(Z)V

    .line 3420
    invoke-direct {p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->showLoading()V

    .line 3421
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->setNotificationsEnabled(Z)V

    .line 3424
    iget-object v2, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mDirectories:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    .line 3425
    .local v1, "partition":Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
    iget-object v2, v1, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->filter:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartitionFilter;

    if-nez v2, :cond_0

    .line 3426
    new-instance v2, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartitionFilter;

    const/4 v3, -0x1

    iget-wide v4, v1, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->directoryId:J

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartitionFilter;-><init>(Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;IJ)V

    iput-object v2, v1, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->filter:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartitionFilter;

    .line 3430
    :cond_0
    iget-object v2, v1, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->filter:Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartitionFilter;

    iget-object v3, v1, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;->constraint:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartitionFilter;->filter(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3433
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "partition":Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;
    :cond_1
    return-void
.end method


# virtual methods
.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 2883
    const v1, 0x1020014

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2884
    .local v0, "text":Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->mGlobalSearchDelayed:Z

    if-eqz v1, :cond_0

    .line 2885
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 2886
    const v1, 0x7f0b017d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2891
    :goto_0
    return-void

    .line 2888
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 2889
    const v1, 0x7f0b017c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method protected bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
    .locals 21
    .param p1, "view"    # Landroid/view/View;
    .param p2, "partitionIndex"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I

    .prologue
    .line 2903
    const v16, 0x1020014

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 2904
    .local v14, "text1":Landroid/widget/TextView;
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 2905
    const v16, 0x1020006

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 2906
    .local v8, "icon":Landroid/widget/ImageView;
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2907
    const-string v3, ""

    .line 2908
    .local v3, "cursorName":Ljava/lang/String;
    const-string v2, ""

    .line 2909
    .local v2, "cursorData":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2910
    .local v9, "isRecommend":Z
    const/16 v16, 0x1

    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_4

    .line 2911
    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v4

    .line 2912
    .local v4, "data":[B
    invoke-static {v4}, Lcom/meizu/common/widget/RecipientEdit$Recipient;->dataToRecipientList([B)Ljava/util/ArrayList;

    move-result-object v12

    .line 2913
    .local v12, "recipients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/common/widget/RecipientEdit$Recipient;>;"
    const/16 v16, 0x1

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 2914
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/meizu/common/widget/RecipientEdit$Recipient;

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/meizu/common/widget/RecipientEdit$Recipient;->mDisplayName:Ljava/lang/String;

    .line 2915
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/meizu/common/widget/RecipientEdit$Recipient;

    move-object/from16 v0, v16

    iget-object v2, v0, Lcom/meizu/common/widget/RecipientEdit$Recipient;->mAddress:Ljava/lang/String;

    .line 2940
    .end local v4    # "data":[B
    .end local v12    # "recipients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/common/widget/RecipientEdit$Recipient;>;"
    :cond_0
    :goto_0
    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2941
    const v16, 0x1020015

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 2942
    .local v15, "text2":Landroid/widget/TextView;
    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 2943
    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2945
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->getPartition(I)Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    move-result-object v10

    .line 2946
    .local v10, "partition":Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;
    if-nez p2, :cond_5

    instance-of v0, v10, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$GroupPartition;

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 2948
    const/4 v5, 0x0

    .line 2950
    .local v5, "data2Int":I
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;->this$0:Lcom/meizu/common/widget/RecipientEdit;

    move-object/from16 v16, v0

    # getter for: Lcom/meizu/common/widget/RecipientEdit;->mContext:Landroid/content/Context;
    invoke-static/range {v16 .. v16}, Lcom/meizu/common/widget/RecipientEdit;->access$3000(Lcom/meizu/common/widget/RecipientEdit;)Landroid/content/Context;

    move-result-object v16

    const v17, 0x7f0b017a

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-virtual/range {v16 .. v18}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 2953
    .local v13, "str":Ljava/lang/String;
    invoke-virtual {v15, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2974
    .end local v5    # "data2Int":I
    .end local v13    # "str":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    .line 2917
    .end local v10    # "partition":Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;
    .end local v15    # "text2":Landroid/widget/TextView;
    .restart local v4    # "data":[B
    .restart local v12    # "recipients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/common/widget/RecipientEdit$Recipient;>;"
    :cond_2
    const v16, 0x7f02019e

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2918
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2920
    const/4 v9, 0x1

    .line 2921
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/meizu/common/widget/RecipientEdit$Recipient;

    .line 2923
    .local v11, "recipient":Lcom/meizu/common/widget/RecipientEdit$Recipient;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    iget-object v0, v11, Lcom/meizu/common/widget/RecipientEdit$Recipient;->mDisplayName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2924
    goto :goto_2

    .line 2925
    .end local v11    # "recipient":Lcom/meizu/common/widget/RecipientEdit$Recipient;
    :cond_3
    new-instance v16, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$3;-><init>(Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;Ljava/util/ArrayList;)V

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 2936
    .end local v4    # "data":[B
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v12    # "recipients":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/common/widget/RecipientEdit$Recipient;>;"
    :cond_4
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getColumnCount()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_0

    .line 2937
    const/16 v16, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2938
    const/16 v16, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 2954
    .restart local v5    # "data2Int":I
    .restart local v10    # "partition":Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;
    .restart local v15    # "text2":Landroid/widget/TextView;
    :catch_0
    move-exception v6

    .line 2955
    .local v6, "e":Ljava/lang/NumberFormatException;
    const-string v16, "tag"

    const-string v17, "error"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2958
    .end local v5    # "data2Int":I
    .end local v6    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 2959
    invoke-virtual {v14, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2960
    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2961
    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2969
    :goto_3
    instance-of v0, v10, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DirectoryPartition;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    .line 2970
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2971
    const v16, 0x7f0201a2

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 2963
    :cond_6
    if-nez v9, :cond_7

    .line 2964
    invoke-virtual {v15, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 2966
    :cond_7
    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 2

    .prologue
    .line 2854
    new-instance v0, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$DefaultPartitionFilter;-><init>(Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;Lcom/meizu/common/widget/RecipientEdit$1;)V

    return-object v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 3469
    const/4 v0, 0x1

    return v0
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 2866
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2867
    .local v0, "inflate":Landroid/view/LayoutInflater;
    const v2, 0x7f040034

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2869
    .local v1, "view":Landroid/view/View;
    new-instance v2, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$2;

    invoke-direct {v2, p0}, Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter$2;-><init>(Lcom/meizu/common/widget/RecipientEdit$RecipientAdapter;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2878
    return-object v1
.end method

.method protected newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "position"    # I
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 2896
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2897
    .local v0, "inflate":Landroid/view/LayoutInflater;
    const v1, 0x7f040033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1
.end method
