.class final enum Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;
.super Ljava/lang/Enum;
.source "TargetViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/floattouch/TargetViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UserGesture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

.field public static final enum DOUBLE:Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

.field public static final enum DOWN:Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

.field public static final enum LEFT:Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

.field public static final enum ONE:Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

.field public static final enum RIGHT:Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

.field public static final enum UP:Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    const-string v1, "LEFT"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;->LEFT:Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    new-instance v0, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    const-string v1, "RIGHT"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;->RIGHT:Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    new-instance v0, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    const-string v1, "UP"

    invoke-direct {v0, v1, v5}, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;->UP:Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    new-instance v0, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    const-string v1, "DOWN"

    invoke-direct {v0, v1, v6}, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;->DOWN:Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    new-instance v0, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    const-string v1, "ONE"

    invoke-direct {v0, v1, v7}, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;->ONE:Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    new-instance v0, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    const-string v1, "DOUBLE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;->DOUBLE:Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    .line 18
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    sget-object v1, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;->LEFT:Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;->RIGHT:Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;->UP:Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;->DOWN:Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;->ONE:Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;->DOUBLE:Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;->$VALUES:[Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;->$VALUES:[Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    invoke-virtual {v0}, [Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/floattouch/TargetViewHelper$UserGesture;

    return-object v0
.end method
