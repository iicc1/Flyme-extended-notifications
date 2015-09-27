.class public abstract Lcom/meizu/common/widget/CompositeCursorAdapterMz;
.super Landroid/widget/BaseAdapter;
.source "CompositeCursorAdapterMz.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;
    }
.end annotation


# instance fields
.field private mCacheValid:Z

.field private final mContext:Landroid/content/Context;

.field private mCount:I

.field private mNotificationNeeded:Z

.field private mNotificationsEnabled:Z

.field private mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

.field private mSize:I


# virtual methods
.method public addPartition(Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;)V
    .locals 5
    .param p1, "partition"    # Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    .prologue
    const/4 v4, 0x0

    .line 94
    iget v2, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mSize:I

    iget-object v3, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    array-length v3, v3

    if-lt v2, v3, :cond_0

    .line 95
    iget v2, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mSize:I

    add-int/lit8 v1, v2, 0x2

    .line 96
    .local v1, "newCapacity":I
    new-array v0, v1, [Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    .line 97
    .local v0, "newAdapters":[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;
    iget-object v2, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    iget v3, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mSize:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iput-object v0, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    .line 100
    .end local v0    # "newAdapters":[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;
    .end local v1    # "newCapacity":I
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    iget v3, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mSize:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mSize:I

    aput-object p1, v2, v3

    .line 101
    invoke-virtual {p0}, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->invalidate()V

    .line 102
    invoke-virtual {p0}, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->notifyDataSetChanged()V

    .line 103
    return-void
.end method

.method public addPartition(ZZ)V
    .locals 1
    .param p1, "showIfEmpty"    # Z
    .param p2, "hasHeader"    # Z

    .prologue
    .line 90
    new-instance v0, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    invoke-direct {v0, p1, p2}, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;-><init>(ZZ)V

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->addPartition(Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;)V

    .line 91
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 2

    .prologue
    .line 492
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mSize:I

    if-ge v0, v1, :cond_1

    .line 493
    iget-object v1, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;->hasHeader:Z

    if-eqz v1, :cond_0

    .line 494
    const/4 v1, 0x0

    .line 497
    :goto_1
    return v1

    .line 492
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 497
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method protected bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 399
    return-void
.end method

.method protected abstract bindView(Landroid/view/View;ILandroid/database/Cursor;I)V
.end method

.method public changeCursor(ILandroid/database/Cursor;)V
    .locals 3
    .param p1, "partition"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 217
    iget-object v1, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    aget-object v1, v1, p1

    iget-object v0, v1, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    .line 218
    .local v0, "prevCursor":Landroid/database/Cursor;
    if-eq v0, p2, :cond_2

    .line 219
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 220
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    aget-object v1, v1, p1

    iput-object p2, v1, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    .line 223
    if-eqz p2, :cond_1

    .line 224
    iget-object v1, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    aget-object v1, v1, p1

    const-string v2, "_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;->idColumnIndex:I

    .line 226
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->invalidate()V

    .line 227
    invoke-virtual {p0}, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->notifyDataSetChanged()V

    .line 229
    :cond_2
    return-void
.end method

.method public close()V
    .locals 4

    .prologue
    .line 133
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mSize:I

    if-ge v1, v2, :cond_1

    .line 134
    iget-object v2, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    aget-object v2, v2, v1

    iget-object v0, v2, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    .line 135
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 136
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 137
    iget-object v2, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    .line 133
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mSize:I

    .line 141
    invoke-virtual {p0}, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->invalidate()V

    .line 142
    invoke-virtual {p0}, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->notifyDataSetChanged()V

    .line 143
    return-void
.end method

.method protected ensureCacheValid()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 171
    iget-boolean v4, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mCacheValid:Z

    if-eqz v4, :cond_0

    .line 189
    :goto_0
    return-void

    .line 175
    :cond_0
    iput v3, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mCount:I

    .line 176
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    iget v4, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mSize:I

    if-ge v2, v4, :cond_4

    .line 177
    iget-object v4, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    aget-object v4, v4, v2

    iget-object v1, v4, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    .line 178
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 179
    .local v0, "count":I
    :goto_2
    iget-object v4, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    aget-object v4, v4, v2

    iget-boolean v4, v4, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;->hasHeader:Z

    if-eqz v4, :cond_2

    .line 180
    if-nez v0, :cond_1

    iget-object v4, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    aget-object v4, v4, v2

    iget-boolean v4, v4, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;->showIfEmpty:Z

    if-eqz v4, :cond_2

    .line 181
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 184
    :cond_2
    iget-object v4, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    aget-object v4, v4, v2

    iput v0, v4, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;->count:I

    .line 185
    iget v4, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mCount:I

    add-int/2addr v4, v0

    iput v4, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mCount:I

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0    # "count":I
    :cond_3
    move v0, v3

    .line 178
    goto :goto_2

    .line 188
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_4
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mCacheValid:Z

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p0}, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->ensureCacheValid()V

    .line 203
    iget v0, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mCount:I

    return v0
.end method

.method protected getHeaderView(ILandroid/database/Cursor;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .param p1, "partition"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "convertView"    # Landroid/view/View;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 380
    if-eqz p3, :cond_0

    move-object v0, p3

    .line 383
    .local v0, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v0, p1, p2}, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->bindHeaderView(Landroid/view/View;ILandroid/database/Cursor;)V

    .line 384
    return-object v0

    .line 380
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1, p2, p4}, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x0

    .line 433
    invoke-virtual {p0}, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->ensureCacheValid()V

    .line 434
    const/4 v4, 0x0

    .line 435
    .local v4, "start":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mSize:I

    if-ge v2, v5, :cond_1

    .line 436
    iget-object v5, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;->count:I

    add-int v1, v4, v5

    .line 437
    .local v1, "end":I
    if-lt p1, v4, :cond_3

    if-ge p1, v1, :cond_3

    .line 438
    sub-int v3, p1, v4

    .line 439
    .local v3, "offset":I
    iget-object v5, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    aget-object v5, v5, v2

    iget-boolean v5, v5, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;->hasHeader:Z

    if-eqz v5, :cond_0

    .line 440
    add-int/lit8 v3, v3, -0x1

    .line 442
    :cond_0
    const/4 v5, -0x1

    if-ne v3, v5, :cond_2

    .line 452
    .end local v1    # "end":I
    .end local v3    # "offset":I
    :cond_1
    :goto_1
    return-object v0

    .line 445
    .restart local v1    # "end":I
    .restart local v3    # "offset":I
    :cond_2
    iget-object v5, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    aget-object v5, v5, v2

    iget-object v0, v5, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    .line 446
    .local v0, "cursor":Landroid/database/Cursor;
    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_1

    .line 449
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v3    # "offset":I
    :cond_3
    move v4, v1

    .line 435
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/4 v8, -0x1

    const-wide/16 v6, 0x0

    .line 459
    invoke-virtual {p0}, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->ensureCacheValid()V

    .line 460
    const/4 v4, 0x0

    .line 461
    .local v4, "start":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v5, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mSize:I

    if-ge v2, v5, :cond_1

    .line 462
    iget-object v5, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;->count:I

    add-int v1, v4, v5

    .line 463
    .local v1, "end":I
    if-lt p1, v4, :cond_3

    if-ge p1, v1, :cond_3

    .line 464
    sub-int v3, p1, v4

    .line 465
    .local v3, "offset":I
    iget-object v5, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    aget-object v5, v5, v2

    iget-boolean v5, v5, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;->hasHeader:Z

    if-eqz v5, :cond_0

    .line 466
    add-int/lit8 v3, v3, -0x1

    .line 468
    :cond_0
    if-ne v3, v8, :cond_2

    .line 484
    .end local v1    # "end":I
    .end local v3    # "offset":I
    :cond_1
    :goto_1
    return-wide v6

    .line 471
    .restart local v1    # "end":I
    .restart local v3    # "offset":I
    :cond_2
    iget-object v5, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;->idColumnIndex:I

    if-eq v5, v8, :cond_1

    .line 475
    iget-object v5, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    aget-object v5, v5, v2

    iget-object v0, v5, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    .line 476
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 479
    iget-object v5, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    aget-object v5, v5, v2

    iget v5, v5, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;->idColumnIndex:I

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    goto :goto_1

    .line 481
    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v3    # "offset":I
    :cond_3
    move v4, v1

    .line 461
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 5
    .param p1, "position"    # I

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->ensureCacheValid()V

    .line 327
    const/4 v3, 0x0

    .line 328
    .local v3, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mSize:I

    if-ge v1, v4, :cond_2

    .line 329
    iget-object v4, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    aget-object v4, v4, v1

    iget v4, v4, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;->count:I

    add-int v0, v3, v4

    .line 330
    .local v0, "end":I
    if-lt p1, v3, :cond_1

    if-ge p1, v0, :cond_1

    .line 331
    sub-int v2, p1, v3

    .line 332
    .local v2, "offset":I
    iget-object v4, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    aget-object v4, v4, v1

    iget-boolean v4, v4, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;->hasHeader:Z

    if-eqz v4, :cond_0

    if-nez v2, :cond_0

    .line 333
    const/4 v4, -0x1

    .line 335
    :goto_1
    return v4

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->getItemViewType(II)I

    move-result v4

    goto :goto_1

    .line 337
    .end local v2    # "offset":I
    :cond_1
    move v3, v0

    .line 328
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 340
    .end local v0    # "end":I
    :cond_2
    new-instance v4, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v4, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v4
.end method

.method protected getItemViewType(II)I
    .locals 1
    .param p1, "partition"    # I
    .param p2, "position"    # I

    .prologue
    .line 321
    const/4 v0, 0x1

    return v0
.end method

.method public getItemViewTypeCount()I
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x1

    return v0
.end method

.method public getPartition(I)Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;
    .locals 1
    .param p1, "partitionIndex"    # I

    .prologue
    .line 156
    iget v0, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mSize:I

    if-lt p1, v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getPartitionCount()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mSize:I

    return v0
.end method

.method protected getView(ILandroid/database/Cursor;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "partition"    # I
    .param p2, "cursor"    # Landroid/database/Cursor;
    .param p3, "position"    # I
    .param p4, "convertView"    # Landroid/view/View;
    .param p5, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 407
    if-eqz p4, :cond_0

    .line 408
    move-object v6, p4

    .line 412
    .local v6, "view":Landroid/view/View;
    :goto_0
    invoke-virtual {p0, v6, p1, p2, p3}, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->bindView(Landroid/view/View;ILandroid/database/Cursor;I)V

    .line 413
    return-object v6

    .line 410
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mContext:Landroid/content/Context;

    move-object v0, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .restart local v6    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->ensureCacheValid()V

    .line 345
    const/4 v7, 0x0

    .line 346
    .local v7, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v0, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mSize:I

    if-ge v1, v0, :cond_4

    .line 347
    iget-object v0, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;->count:I

    add-int v6, v7, v0

    .line 348
    .local v6, "end":I
    if-lt p1, v7, :cond_3

    if-ge p1, v6, :cond_3

    .line 349
    sub-int v3, p1, v7

    .line 350
    .local v3, "offset":I
    iget-object v0, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;->hasHeader:Z

    if-eqz v0, :cond_0

    .line 351
    add-int/lit8 v3, v3, -0x1

    .line 354
    :cond_0
    const/4 v0, -0x1

    if-ne v3, v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    invoke-virtual {p0, v1, v0, p2, p3}, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->getHeaderView(ILandroid/database/Cursor;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .line 363
    .local v8, "view":Landroid/view/View;
    :goto_1
    if-nez v8, :cond_5

    .line 364
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "View should not be null, partition: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " position: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 357
    .end local v8    # "view":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    invoke-interface {v0, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 358
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t move cursor to position "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :cond_2
    iget-object v0, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    aget-object v0, v0, v1

    iget-object v2, v0, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->getView(ILandroid/database/Cursor;ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    .restart local v8    # "view":Landroid/view/View;
    goto :goto_1

    .line 369
    .end local v3    # "offset":I
    .end local v8    # "view":Landroid/view/View;
    :cond_3
    move v7, v6

    .line 346
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 372
    .end local v6    # "end":I
    :cond_4
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw v0

    .line 367
    .restart local v3    # "offset":I
    .restart local v6    # "end":I
    .restart local v8    # "view":Landroid/view/View;
    :cond_5
    return-object v8
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->getItemViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected invalidate()V
    .locals 1

    .prologue
    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mCacheValid:Z

    .line 164
    return-void
.end method

.method public isEnabled(I)Z
    .locals 6
    .param p1, "position"    # I

    .prologue
    const/4 v4, 0x0

    .line 505
    invoke-virtual {p0}, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->ensureCacheValid()V

    .line 506
    const/4 v3, 0x0

    .line 507
    .local v3, "start":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v5, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mSize:I

    if-ge v1, v5, :cond_0

    .line 508
    iget-object v5, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;->count:I

    add-int v0, v3, v5

    .line 509
    .local v0, "end":I
    if-lt p1, v3, :cond_2

    if-ge p1, v0, :cond_2

    .line 510
    sub-int v2, p1, v3

    .line 511
    .local v2, "offset":I
    iget-object v5, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;->hasHeader:Z

    if-eqz v5, :cond_1

    if-nez v2, :cond_1

    .line 520
    .end local v0    # "end":I
    .end local v2    # "offset":I
    :cond_0
    :goto_1
    return v4

    .line 514
    .restart local v0    # "end":I
    .restart local v2    # "offset":I
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->isEnabled(II)Z

    move-result v4

    goto :goto_1

    .line 517
    .end local v2    # "offset":I
    :cond_2
    move v3, v0

    .line 507
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected isEnabled(II)Z
    .locals 1
    .param p1, "partition"    # I
    .param p2, "position"    # I

    .prologue
    .line 528
    const/4 v0, 0x1

    return v0
.end method

.method protected newHeaderView(Landroid/content/Context;ILandroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "partition"    # I
    .param p3, "cursor"    # Landroid/database/Cursor;
    .param p4, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 392
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract newView(Landroid/content/Context;ILandroid/database/Cursor;ILandroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 544
    iget-boolean v0, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mNotificationsEnabled:Z

    if-eqz v0, :cond_0

    .line 545
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mNotificationNeeded:Z

    .line 546
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 550
    :goto_0
    return-void

    .line 548
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mNotificationNeeded:Z

    goto :goto_0
.end method

.method public removePartition(I)V
    .locals 5
    .param p1, "partitionIndex"    # I

    .prologue
    .line 106
    iget-object v1, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    aget-object v1, v1, p1

    iget-object v0, v1, Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;->cursor:Landroid/database/Cursor;

    .line 107
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 108
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 111
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mPartitions:[Lcom/meizu/common/widget/CompositeCursorAdapterMz$Partition;

    iget v4, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mSize:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 113
    iget v1, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mSize:I

    .line 114
    invoke-virtual {p0}, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->invalidate()V

    .line 115
    invoke-virtual {p0}, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->notifyDataSetChanged()V

    .line 116
    return-void
.end method

.method public setNotificationsEnabled(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 536
    iput-boolean p1, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mNotificationsEnabled:Z

    .line 537
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->mNotificationNeeded:Z

    if-eqz v0, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/meizu/common/widget/CompositeCursorAdapterMz;->notifyDataSetChanged()V

    .line 540
    :cond_0
    return-void
.end method
