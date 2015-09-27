.class final Lcom/meizu/stats/UsageStatsProviderHelper;
.super Ljava/lang/Object;
.source "UsageStatsProviderHelper.java"


# static fields
.field private static sLock:Ljava/lang/Object;

.field private static volatile sUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOnline:Z

.field private mUsageStatsProvider:Lcom/meizu/stats/UsageStatsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/stats/UsageStatsProviderHelper;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "onLine"    # Z

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mContext:Landroid/content/Context;

    .line 38
    iput-boolean p2, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mOnline:Z

    .line 39
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mOnline:Z

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Lcom/meizu/stats/UsageStatsProvider;

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/meizu/stats/UsageStatsProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mUsageStatsProvider:Lcom/meizu/stats/UsageStatsProvider;

    .line 41
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mUsageStatsProvider:Lcom/meizu/stats/UsageStatsProvider;

    invoke-virtual {v0}, Lcom/meizu/stats/UsageStatsProvider;->onCreate()Z

    .line 43
    :cond_0
    return-void
.end method

.method private applyBatch(Ljava/util/ArrayList;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v1, 0x0

    .line 151
    .local v1, "delCount":I
    const/4 v6, 0x0

    .line 152
    .local v6, "result":[Landroid/content/ContentProviderResult;
    iget-boolean v7, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mOnline:Z

    if-eqz v7, :cond_0

    .line 154
    :try_start_0
    iget-object v7, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mUsageStatsProvider:Lcom/meizu/stats/UsageStatsProvider;

    invoke-virtual {v7, p1}, Lcom/meizu/stats/UsageStatsProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 168
    :goto_0
    if-eqz v6, :cond_1

    array-length v7, v6

    if-lez v7, :cond_1

    .line 169
    move-object v0, v6

    .local v0, "arr$":[Landroid/content/ContentProviderResult;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v5, v0, v3

    .line 170
    .local v5, "res":Landroid/content/ContentProviderResult;
    iget-object v7, v5, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/2addr v1, v7

    .line 169
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 155
    .end local v0    # "arr$":[Landroid/content/ContentProviderResult;
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v5    # "res":Landroid/content/ContentProviderResult;
    :catch_0
    move-exception v2

    .line 156
    .local v2, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v2}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_0

    .line 160
    .end local v2    # "e":Landroid/content/OperationApplicationException;
    :cond_0
    :try_start_1
    iget-object v7, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.meizu.usagestats"

    invoke-virtual {v7, v8, p1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/OperationApplicationException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v6

    goto :goto_0

    .line 161
    :catch_1
    move-exception v2

    .line 162
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 163
    .end local v2    # "e":Landroid/os/RemoteException;
    :catch_2
    move-exception v2

    .line 164
    .local v2, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v2}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_0

    .line 173
    .end local v2    # "e":Landroid/content/OperationApplicationException;
    :cond_1
    return v1
.end method

.method public static creatEvent(Landroid/database/Cursor;)Lcom/meizu/stats/UsageStatsProxy$Event;
    .locals 6
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 206
    if-nez p0, :cond_0

    .line 207
    const/4 v1, 0x0

    .line 227
    :goto_0
    return-object v1

    .line 209
    :cond_0
    new-instance v1, Lcom/meizu/stats/UsageStatsProxy$Event;

    invoke-direct {v1}, Lcom/meizu/stats/UsageStatsProxy$Event;-><init>()V

    .line 210
    .local v1, "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    const-string v3, "_id"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/meizu/stats/UsageStatsProxy$Event;->setId(I)V

    .line 211
    const-string v3, "name"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/meizu/stats/UsageStatsProxy$Event;->setName(Ljava/lang/String;)V

    .line 212
    const-string v3, "type"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/meizu/stats/UsageStatsProxy$Event;->setType(I)V

    .line 213
    const-string v3, "sessionid"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/meizu/stats/UsageStatsProxy$Event;->setSessionid(Ljava/lang/String;)V

    .line 214
    const-string v3, "package"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/meizu/stats/UsageStatsProxy$Event;->setPackageName(Ljava/lang/String;)V

    .line 215
    const-string v3, "page"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/meizu/stats/UsageStatsProxy$Event;->setPage(Ljava/lang/String;)V

    .line 216
    const-string v3, "time"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/meizu/stats/UsageStatsProxy$Event;->setTime(J)V

    .line 217
    const-string v3, "properties"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 218
    .local v2, "propertiesStr":Ljava/lang/String;
    invoke-static {v2}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 220
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/meizu/stats/UsageStatsProxy$Event;->setProperties(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 225
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v3}, Lcom/meizu/stats/UsageStatsProxy$Event;->setProperties(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public static creatEventValuse(Lcom/meizu/stats/UsageStatsProxy$Event;)Landroid/content/ContentValues;
    .locals 6
    .param p0, "event"    # Lcom/meizu/stats/UsageStatsProxy$Event;

    .prologue
    .line 186
    if-nez p0, :cond_1

    .line 187
    const/4 v1, 0x0

    .line 202
    :cond_0
    :goto_0
    return-object v1

    .line 189
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 190
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v2, "type"

    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    const-string v2, "package"

    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v2, "sessionid"

    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getSessionid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v2, "time"

    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 195
    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 196
    const-string v2, "page"

    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :cond_2
    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPropertiesToJSONString()Ljava/lang/String;

    move-result-object v0

    .line 199
    .local v0, "propertiesStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 200
    const-string v2, "properties"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;Z)Lcom/meizu/stats/UsageStatsProviderHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onLine"    # Z

    .prologue
    .line 46
    sget-object v0, Lcom/meizu/stats/UsageStatsProviderHelper;->sUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    if-nez v0, :cond_1

    .line 47
    sget-object v1, Lcom/meizu/stats/UsageStatsProviderHelper;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 48
    :try_start_0
    sget-object v0, Lcom/meizu/stats/UsageStatsProviderHelper;->sUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/meizu/stats/UsageStatsProviderHelper;

    invoke-direct {v0, p0, p1}, Lcom/meizu/stats/UsageStatsProviderHelper;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/meizu/stats/UsageStatsProviderHelper;->sUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    .line 51
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    :cond_1
    sget-object v0, Lcom/meizu/stats/UsageStatsProviderHelper;->sUsageStatsProviderHelper:Lcom/meizu/stats/UsageStatsProviderHelper;

    return-object v0

    .line 51
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearOldData()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 177
    const-string v1, "content://com.meizu.usagestats/clear_events"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 178
    .local v0, "uri":Landroid/net/Uri;
    iget-boolean v1, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mOnline:Z

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mUsageStatsProvider:Lcom/meizu/stats/UsageStatsProvider;

    invoke-virtual {v1, v0, v2, v2}, Lcom/meizu/stats/UsageStatsProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 181
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method public deleteEvent(Ljava/util/Collection;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/meizu/stats/UsageStatsProxy$Event;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "events":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/meizu/stats/UsageStatsProxy$Event;>;"
    const/4 v11, 0x1

    const/4 v7, 0x0

    .line 123
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v8

    if-ge v8, v11, :cond_2

    :cond_0
    move v2, v7

    .line 146
    :cond_1
    :goto_0
    return v2

    .line 126
    :cond_2
    const-string v8, "content://com.meizu.usagestats/event"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 127
    .local v6, "uri":Landroid/net/Uri;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v5, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    const/4 v2, 0x0

    .line 129
    .local v2, "delCount":I
    const/4 v1, 0x0

    .line 130
    .local v1, "count":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meizu/stats/UsageStatsProxy$Event;

    .line 131
    .local v3, "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    add-int/lit8 v1, v1, 0x1

    .line 132
    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v0

    .line 133
    .local v0, "builder":Landroid/content/ContentProviderOperation$Builder;
    const-string v8, "_id=?"

    new-array v9, v11, [Ljava/lang/String;

    invoke-virtual {v3}, Lcom/meizu/stats/UsageStatsProxy$Event;->getId()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-virtual {v0, v8, v9}, Landroid/content/ContentProviderOperation$Builder;->withSelection(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/ContentProviderOperation$Builder;

    .line 136
    invoke-virtual {v0}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    const/16 v8, 0x32

    if-le v1, v8, :cond_3

    .line 138
    invoke-direct {p0, v5}, Lcom/meizu/stats/UsageStatsProviderHelper;->applyBatch(Ljava/util/ArrayList;)I

    move-result v8

    add-int/2addr v2, v8

    .line 139
    const/4 v1, 0x0

    .line 140
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 143
    .end local v0    # "builder":Landroid/content/ContentProviderOperation$Builder;
    .end local v3    # "event":Lcom/meizu/stats/UsageStatsProxy$Event;
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 144
    invoke-direct {p0, v5}, Lcom/meizu/stats/UsageStatsProviderHelper;->applyBatch(Ljava/util/ArrayList;)I

    move-result v7

    add-int/2addr v2, v7

    goto :goto_0
.end method

.method public getEvents(I)Landroid/database/Cursor;
    .locals 6
    .param p1, "count"    # I

    .prologue
    const/4 v2, 0x0

    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, "uri":Landroid/net/Uri;
    if-lez p1, :cond_0

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://com.meizu.usagestats/event?limit="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 63
    :goto_0
    iget-boolean v0, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mOnline:Z

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mUsageStatsProvider:Lcom/meizu/stats/UsageStatsProvider;

    const-string v5, "time ASC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/meizu/stats/UsageStatsProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 66
    :goto_1
    return-object v0

    .line 61
    :cond_0
    const-string v0, "content://com.meizu.usagestats/event"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v5, "time ASC"

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1
.end method

.method public getEventsCount()I
    .locals 5

    .prologue
    .line 71
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/meizu/stats/UsageStatsProviderHelper;->getEvents(I)Landroid/database/Cursor;

    move-result-object v2

    .line 72
    .local v2, "cursor":Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 73
    .local v0, "count":I
    if-nez v2, :cond_0

    move v1, v0

    .line 83
    .end local v0    # "count":I
    .local v1, "count":I
    :goto_0
    return v1

    .line 77
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :cond_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 81
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_1
    move v1, v0

    .line 83
    .end local v0    # "count":I
    .restart local v1    # "count":I
    goto :goto_0

    .line 78
    .end local v1    # "count":I
    .restart local v0    # "count":I
    :catch_0
    move-exception v3

    .line 79
    .local v3, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method public insertEvent(Lcom/meizu/stats/UsageStatsProxy$Event;)V
    .locals 4
    .param p1, "event"    # Lcom/meizu/stats/UsageStatsProxy$Event;

    .prologue
    .line 87
    if-nez p1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 90
    :cond_0
    const-string v3, "content://com.meizu.usagestats/event"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 91
    .local v1, "uri":Landroid/net/Uri;
    invoke-static {p1}, Lcom/meizu/stats/UsageStatsProviderHelper;->creatEventValuse(Lcom/meizu/stats/UsageStatsProxy$Event;)Landroid/content/ContentValues;

    move-result-object v2

    .line 93
    .local v2, "values":Landroid/content/ContentValues;
    :try_start_0
    iget-boolean v3, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mOnline:Z

    if-eqz v3, :cond_1

    .line 94
    iget-object v3, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mUsageStatsProvider:Lcom/meizu/stats/UsageStatsProvider;

    invoke-virtual {v3, v1, v2}, Lcom/meizu/stats/UsageStatsProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Landroid/database/sqlite/SQLiteFullException;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteFullException;->printStackTrace()V

    .line 100
    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProviderHelper;->clearOldData()I

    goto :goto_0

    .line 96
    .end local v0    # "e":Landroid/database/sqlite/SQLiteFullException;
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/meizu/stats/UsageStatsProviderHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 101
    :catch_1
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
