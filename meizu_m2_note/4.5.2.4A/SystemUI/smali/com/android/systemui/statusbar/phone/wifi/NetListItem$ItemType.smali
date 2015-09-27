.class public final enum Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;
.super Ljava/lang/Enum;
.source "NetListItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/wifi/NetListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;

.field public static final enum TYPE_ACCESSPOINT:Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;

.field public static final enum TYPE_CATEGORY:Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;

.field public static final enum TYPE_TEXT:Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;

.field public static final enum TYPE_WITH_CHECKBOX:Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;

    const-string v1, "TYPE_ACCESSPOINT"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;->TYPE_ACCESSPOINT:Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;

    .line 26
    new-instance v0, Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;

    const-string v1, "TYPE_TEXT"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;->TYPE_TEXT:Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;

    .line 27
    new-instance v0, Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;

    const-string v1, "TYPE_WITH_CHECKBOX"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;->TYPE_WITH_CHECKBOX:Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;

    .line 28
    new-instance v0, Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;

    const-string v1, "TYPE_CATEGORY"

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;->TYPE_CATEGORY:Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;

    sget-object v1, Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;->TYPE_ACCESSPOINT:Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;->TYPE_TEXT:Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;->TYPE_WITH_CHECKBOX:Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;->TYPE_CATEGORY:Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;->$VALUES:[Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;->$VALUES:[Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/wifi/NetListItem$ItemType;

    return-object v0
.end method
