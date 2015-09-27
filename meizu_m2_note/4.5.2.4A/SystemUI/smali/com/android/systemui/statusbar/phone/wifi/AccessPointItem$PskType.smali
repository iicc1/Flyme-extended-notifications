.class final enum Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;
.super Ljava/lang/Enum;
.source "AccessPointItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PskType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

.field public static final enum UNKNOWN:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

.field public static final enum WPA:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

.field public static final enum WPA2:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

.field public static final enum WPA_WPA2:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;->UNKNOWN:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

    .line 53
    new-instance v0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

    const-string v1, "WPA"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;->WPA:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

    .line 54
    new-instance v0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

    const-string v1, "WPA2"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;->WPA2:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

    .line 55
    new-instance v0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

    const-string v1, "WPA_WPA2"

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;->WPA_WPA2:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

    .line 51
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

    sget-object v1, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;->UNKNOWN:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;->WPA:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;->WPA2:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;->WPA_WPA2:Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;->$VALUES:[Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

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
    .line 51
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 51
    const-class v0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;->$VALUES:[Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

    invoke-virtual {v0}, [Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/statusbar/phone/wifi/AccessPointItem$PskType;

    return-object v0
.end method
