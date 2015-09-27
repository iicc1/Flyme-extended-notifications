.class public final enum Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;
.super Ljava/lang/Enum;
.source "RecentSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/mzrecent/RecentSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MusicAppName"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;

.field public static final enum MUSICONLINE_APP:Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;

.field public static final enum MUSIC_APP:Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 399
    new-instance v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;

    const-string v1, "MUSIC_APP"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;->MUSIC_APP:Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;

    new-instance v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;

    const-string v1, "MUSICONLINE_APP"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;->MUSICONLINE_APP:Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;

    .line 398
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;

    sget-object v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;->MUSIC_APP:Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;->MUSICONLINE_APP:Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;->$VALUES:[Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 398
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 398
    const-class v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;
    .locals 1

    .prologue
    .line 398
    sget-object v0, Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;->$VALUES:[Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;

    invoke-virtual {v0}, [Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/mzrecent/RecentSlidingDrawer$MusicAppName;

    return-object v0
.end method
