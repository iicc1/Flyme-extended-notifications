.class public Lcom/meizu/stats/UsageStatsProvider;
.super Landroid/content/ContentProvider;
.source "UsageStatsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabaseHelper:Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;

.field private mEventLimit:I

.field private mOnline:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 47
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/meizu/stats/UsageStatsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 52
    sget-object v0, Lcom/meizu/stats/UsageStatsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.meizu.usagestats"

    const-string v2, "event"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 53
    sget-object v0, Lcom/meizu/stats/UsageStatsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.meizu.usagestats"

    const-string v2, "clear_events"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 62
    sget v0, Lcom/meizu/stats/UsageStatsConstants;->MAX_EVENT_RECORD:I

    iput v0, p0, Lcom/meizu/stats/UsageStatsProvider;->mEventLimit:I

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/stats/UsageStatsProvider;->mOnline:Z

    .line 67
    sget v0, Lcom/meizu/stats/UsageStatsConstants;->ONLINE_MAX_EVENT_RECORD:I

    iput v0, p0, Lcom/meizu/stats/UsageStatsProvider;->mEventLimit:I

    .line 68
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProvider;->mContext:Landroid/content/Context;

    .line 69
    return-void
.end method

.method private clearOldEvents()V
    .locals 10

    .prologue
    .line 246
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProvider;->mDatabaseHelper:Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;

    invoke-virtual {v1}, Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 247
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 257
    :goto_0
    return-void

    .line 250
    :cond_0
    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsProvider;->getEventsCount()I

    move-result v1

    iget v2, p0, Lcom/meizu/stats/UsageStatsProvider;->mEventLimit:I

    if-le v1, v2, :cond_1

    .line 251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delete from event where _id not in ( select _id from event order by time desc limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/meizu/stats/UsageStatsProvider;->mEventLimit:I

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 254
    :cond_1
    const-string v1, "event"

    const-string v2, "time < ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x240c8400

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getEventsCount()I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 222
    iget-object v4, p0, Lcom/meizu/stats/UsageStatsProvider;->mDatabaseHelper:Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;

    invoke-virtual {v4}, Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 223
    .local v2, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v2, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v0

    .line 226
    :cond_1
    const/4 v0, 0x0

    .line 227
    .local v0, "count":I
    const/4 v1, 0x0

    .line 229
    .local v1, "cursor":Landroid/database/Cursor;
    :try_start_0
    const-string v4, "select count(*) from event"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 230
    if-eqz v1, :cond_2

    .line 231
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 232
    const/4 v4, 0x0

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 238
    :cond_2
    if-eqz v1, :cond_0

    .line 239
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 235
    :catch_0
    move-exception v3

    .line 236
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    if-eqz v1, :cond_0

    .line 239
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 238
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_3

    .line 239
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v4
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 201
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 202
    .local v3, "numOperations":I
    new-array v4, v3, [Landroid/content/ContentProviderResult;

    .line 203
    .local v4, "results":[Landroid/content/ContentProviderResult;
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsProvider;->mDatabaseHelper:Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;

    invoke-virtual {v5}, Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 204
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_0

    .line 205
    const/4 v4, 0x0

    .line 218
    .end local v4    # "results":[Landroid/content/ContentProviderResult;
    :goto_0
    return-object v4

    .line 208
    .restart local v4    # "results":[Landroid/content/ContentProviderResult;
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 209
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 210
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentProviderOperation;

    invoke-virtual {v5, p0, v4, v2}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v5

    aput-object v5, v4, v2

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 212
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 213
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 214
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 216
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v5
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 150
    sget-object v3, Lcom/meizu/stats/UsageStatsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 151
    .local v2, "table":I
    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 172
    :cond_0
    :goto_0
    return v1

    .line 154
    :cond_1
    iget-object v3, p0, Lcom/meizu/stats/UsageStatsProvider;->mDatabaseHelper:Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 155
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 158
    const/4 v1, 0x0

    .line 159
    .local v1, "rows":I
    packed-switch v2, :pswitch_data_0

    .line 169
    :goto_1
    if-lez v1, :cond_0

    .line 170
    iget-object v3, p0, Lcom/meizu/stats/UsageStatsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 161
    :pswitch_0
    const-string v3, "event"

    invoke-virtual {v0, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 162
    goto :goto_1

    .line 165
    :pswitch_1
    invoke-direct {p0}, Lcom/meizu/stats/UsageStatsProvider;->clearOldEvents()V

    goto :goto_1

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 109
    sget-object v1, Lcom/meizu/stats/UsageStatsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 110
    .local v0, "table":I
    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 111
    const/4 v1, 0x0

    .line 115
    :goto_0
    return-object v1

    .line 113
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 118
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 115
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/event"

    goto :goto_0

    .line 113
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v5, 0x0

    .line 123
    sget-object v6, Lcom/meizu/stats/UsageStatsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 124
    .local v4, "table":I
    const/4 v6, 0x1

    if-ge v4, v6, :cond_1

    move-object v1, v5

    .line 145
    :cond_0
    :goto_0
    return-object v1

    .line 127
    :cond_1
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsProvider;->mDatabaseHelper:Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;

    invoke-virtual {v6}, Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 128
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-nez v0, :cond_2

    move-object v1, v5

    .line 129
    goto :goto_0

    .line 131
    :cond_2
    const-wide/16 v2, -0x1

    .line 132
    .local v2, "rowId":J
    const/4 v1, 0x0

    .line 133
    .local v1, "newUri":Landroid/net/Uri;
    packed-switch v4, :pswitch_data_0

    .line 142
    :cond_3
    :goto_1
    if-eqz v1, :cond_0

    .line 143
    iget-object v6, p0, Lcom/meizu/stats/UsageStatsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1, v5}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 135
    :pswitch_0
    const-string v6, "event"

    invoke-virtual {v0, v6, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 136
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_3

    .line 137
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "content://com.meizu.usagestats/event/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 133
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsProvider;->mOnline:Z

    if-nez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsProvider;->mContext:Landroid/content/Context;

    .line 76
    :cond_0
    new-instance v0, Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsProvider;->mDatabaseHelper:Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;

    .line 77
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 82
    sget-object v2, Lcom/meizu/stats/UsageStatsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v9

    .line 83
    .local v9, "table":I
    if-ge v9, v3, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-object v5

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/meizu/stats/UsageStatsProvider;->mDatabaseHelper:Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;

    invoke-virtual {v2}, Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 87
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v1, :cond_0

    .line 90
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 91
    .local v0, "qb":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v2, "limit"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 92
    .local v8, "limit":Ljava/lang/String;
    const-string v2, "distinct"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 93
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setDistinct(Z)V

    .line 95
    :cond_2
    packed-switch v9, :pswitch_data_0

    .line 101
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 97
    :pswitch_0
    const-string v2, "event"

    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, v5

    move-object v7, p5

    .line 104
    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    goto :goto_0

    .line 95
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 5
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 177
    sget-object v3, Lcom/meizu/stats/UsageStatsProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    .line 178
    .local v2, "table":I
    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 195
    :cond_0
    :goto_0
    return v1

    .line 181
    :cond_1
    iget-object v3, p0, Lcom/meizu/stats/UsageStatsProvider;->mDatabaseHelper:Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;

    invoke-virtual {v3}, Lcom/meizu/stats/UsageStatsProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 182
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    if-eqz v0, :cond_0

    .line 185
    const/4 v1, 0x0

    .line 186
    .local v1, "rows":I
    packed-switch v2, :pswitch_data_0

    .line 192
    :goto_1
    if-lez v1, :cond_0

    .line 193
    iget-object v3, p0, Lcom/meizu/stats/UsageStatsProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 188
    :pswitch_0
    const-string v3, "event"

    invoke-virtual {v0, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    .line 186
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
