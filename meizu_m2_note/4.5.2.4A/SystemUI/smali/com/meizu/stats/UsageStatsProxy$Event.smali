.class Lcom/meizu/stats/UsageStatsProxy$Event;
.super Ljava/lang/Object;
.source "UsageStatsProxy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/stats/UsageStatsProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Event"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/meizu/stats/UsageStatsProxy$Event;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private id:I

.field private name:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private page:Ljava/lang/String;

.field private properties:Ljava/lang/Object;

.field private sessionid:Ljava/lang/String;

.field private time:J

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 423
    new-instance v0, Lcom/meizu/stats/UsageStatsProxy$Event$1;

    invoke-direct {v0}, Lcom/meizu/stats/UsageStatsProxy$Event$1;-><init>()V

    sput-object v0, Lcom/meizu/stats/UsageStatsProxy$Event;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 383
    if-nez p1, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->id:I

    .line 387
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->name:Ljava/lang/String;

    .line 388
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->type:I

    .line 389
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->time:J

    .line 390
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->sessionid:Ljava/lang/String;

    .line 391
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageName:Ljava/lang/String;

    .line 392
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->page:Ljava/lang/String;

    .line 393
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 394
    .local v1, "propertiesStr":Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/experiencedatasync/util/Utils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 396
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "time"    # J
    .param p5, "sessionid"    # Ljava/lang/String;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "page"    # Ljava/lang/String;
    .param p8, "properties"    # Ljava/lang/Object;

    .prologue
    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->name:Ljava/lang/String;

    .line 281
    iput p2, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->type:I

    .line 282
    iput-wide p3, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->time:J

    .line 283
    iput-object p5, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->sessionid:Ljava/lang/String;

    .line 284
    iput-object p6, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageName:Ljava/lang/String;

    .line 285
    iput-object p7, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->page:Ljava/lang/String;

    .line 286
    iput-object p8, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;

    .line 287
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 375
    iget v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->page:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;

    return-object v0
.end method

.method public getPropertiesToJSONString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 342
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;

    if-nez v5, :cond_0

    .line 343
    const-string v3, ""

    .line 363
    :goto_0
    return-object v3

    .line 345
    :cond_0
    const-string v3, ""

    .line 347
    .local v3, "result":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;

    instance-of v5, v5, Ljava/util/Map;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 348
    new-instance v4, Lorg/json/JSONStringer;

    invoke-direct {v4}, Lorg/json/JSONStringer;-><init>()V

    .line 349
    .local v4, "stringer":Lorg/json/JSONStringer;
    invoke-virtual {v4}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 350
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 351
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 358
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "stringer":Lorg/json/JSONStringer;
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 353
    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v4    # "stringer":Lorg/json/JSONStringer;
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 354
    invoke-virtual {v4}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 355
    goto :goto_0

    .line 356
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "stringer":Lorg/json/JSONStringer;
    :cond_2
    iget-object v5, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    goto :goto_0

    .line 360
    :catch_1
    move-exception v0

    .line 361
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getSessionid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->sessionid:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .prologue
    .line 306
    iget-wide v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->time:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->type:I

    return v0
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 371
    iput p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->id:I

    .line 372
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->name:Ljava/lang/String;

    .line 295
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 326
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageName:Ljava/lang/String;

    .line 327
    return-void
.end method

.method public setPage(Ljava/lang/String;)V
    .locals 0
    .param p1, "page"    # Ljava/lang/String;

    .prologue
    .line 334
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->page:Ljava/lang/String;

    .line 335
    return-void
.end method

.method public setProperties(Ljava/lang/Object;)V
    .locals 0
    .param p1, "properties"    # Ljava/lang/Object;

    .prologue
    .line 367
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;

    .line 368
    return-void
.end method

.method public setSessionid(Ljava/lang/String;)V
    .locals 0
    .param p1, "sessionid"    # Ljava/lang/String;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->sessionid:Ljava/lang/String;

    .line 319
    return-void
.end method

.method public setTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 310
    iput-wide p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->time:J

    .line 311
    return-void
.end method

.method public setType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 302
    iput p1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->type:I

    .line 303
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->page:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", properties="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 410
    if-nez p1, :cond_0

    .line 421
    :goto_0
    return-void

    .line 413
    :cond_0
    iget v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 414
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 415
    iget v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 416
    iget-wide v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 417
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->sessionid:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 418
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageName:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->page:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->properties:Ljava/lang/Object;

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->sessionid:Ljava/lang/String;

    goto :goto_1

    .line 418
    :cond_2
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->packageName:Ljava/lang/String;

    goto :goto_2

    .line 419
    :cond_3
    iget-object v0, p0, Lcom/meizu/stats/UsageStatsProxy$Event;->page:Ljava/lang/String;

    goto :goto_3

    .line 420
    :cond_4
    invoke-virtual {p0}, Lcom/meizu/stats/UsageStatsProxy$Event;->getPropertiesToJSONString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4
.end method
