.class final enum Lcom/android/systemui/power/PowerUI$SoundType;
.super Ljava/lang/Enum;
.source "PowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SoundType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/power/PowerUI$SoundType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/power/PowerUI$SoundType;

.field public static final enum BATTERY_LOW:Lcom/android/systemui/power/PowerUI$SoundType;

.field public static final enum CHARGED:Lcom/android/systemui/power/PowerUI$SoundType;

.field public static final enum PLUGIN:Lcom/android/systemui/power/PowerUI$SoundType;

.field public static final enum UNKNOWN:Lcom/android/systemui/power/PowerUI$SoundType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-instance v0, Lcom/android/systemui/power/PowerUI$SoundType;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/power/PowerUI$SoundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/power/PowerUI$SoundType;->UNKNOWN:Lcom/android/systemui/power/PowerUI$SoundType;

    .line 77
    new-instance v0, Lcom/android/systemui/power/PowerUI$SoundType;

    const-string v1, "BATTERY_LOW"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/power/PowerUI$SoundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/power/PowerUI$SoundType;->BATTERY_LOW:Lcom/android/systemui/power/PowerUI$SoundType;

    .line 78
    new-instance v0, Lcom/android/systemui/power/PowerUI$SoundType;

    const-string v1, "PLUGIN"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/power/PowerUI$SoundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/power/PowerUI$SoundType;->PLUGIN:Lcom/android/systemui/power/PowerUI$SoundType;

    .line 79
    new-instance v0, Lcom/android/systemui/power/PowerUI$SoundType;

    const-string v1, "CHARGED"

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/power/PowerUI$SoundType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/power/PowerUI$SoundType;->CHARGED:Lcom/android/systemui/power/PowerUI$SoundType;

    .line 75
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/systemui/power/PowerUI$SoundType;

    sget-object v1, Lcom/android/systemui/power/PowerUI$SoundType;->UNKNOWN:Lcom/android/systemui/power/PowerUI$SoundType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/power/PowerUI$SoundType;->BATTERY_LOW:Lcom/android/systemui/power/PowerUI$SoundType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/power/PowerUI$SoundType;->PLUGIN:Lcom/android/systemui/power/PowerUI$SoundType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/power/PowerUI$SoundType;->CHARGED:Lcom/android/systemui/power/PowerUI$SoundType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/power/PowerUI$SoundType;->$VALUES:[Lcom/android/systemui/power/PowerUI$SoundType;

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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/power/PowerUI$SoundType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 75
    const-class v0, Lcom/android/systemui/power/PowerUI$SoundType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/PowerUI$SoundType;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/power/PowerUI$SoundType;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/systemui/power/PowerUI$SoundType;->$VALUES:[Lcom/android/systemui/power/PowerUI$SoundType;

    invoke-virtual {v0}, [Lcom/android/systemui/power/PowerUI$SoundType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/power/PowerUI$SoundType;

    return-object v0
.end method
