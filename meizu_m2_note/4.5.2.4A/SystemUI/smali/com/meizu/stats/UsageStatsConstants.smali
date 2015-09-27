.class final Lcom/meizu/stats/UsageStatsConstants;
.super Ljava/lang/Object;
.source "UsageStatsConstants.java"


# static fields
.field public static EVENTS_PARCEL_LIMIT:I

.field public static MAX_EVENT_RECORD:I

.field public static ONLINE_EVENTS_PARCEL_LIMIT:I

.field public static ONLINE_EVENTS_THRESHOLD:I

.field public static ONLINE_MAX_EVENT_RECORD:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const/16 v0, 0x190

    sput v0, Lcom/meizu/stats/UsageStatsConstants;->EVENTS_PARCEL_LIMIT:I

    .line 12
    const/16 v0, 0xc8

    sput v0, Lcom/meizu/stats/UsageStatsConstants;->ONLINE_EVENTS_PARCEL_LIMIT:I

    .line 14
    const/16 v0, 0x2710

    sput v0, Lcom/meizu/stats/UsageStatsConstants;->ONLINE_MAX_EVENT_RECORD:I

    .line 15
    const v0, 0xc350

    sput v0, Lcom/meizu/stats/UsageStatsConstants;->MAX_EVENT_RECORD:I

    .line 16
    const/16 v0, 0x32

    sput v0, Lcom/meizu/stats/UsageStatsConstants;->ONLINE_EVENTS_THRESHOLD:I

    return-void
.end method
