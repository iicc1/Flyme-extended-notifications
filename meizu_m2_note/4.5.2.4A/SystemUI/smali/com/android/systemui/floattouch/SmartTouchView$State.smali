.class public final enum Lcom/android/systemui/floattouch/SmartTouchView$State;
.super Ljava/lang/Enum;
.source "SmartTouchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/floattouch/SmartTouchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/floattouch/SmartTouchView$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/floattouch/SmartTouchView$State;

.field public static final enum CLICK:Lcom/android/systemui/floattouch/SmartTouchView$State;

.field public static final enum DRAG:Lcom/android/systemui/floattouch/SmartTouchView$State;

.field public static final enum NORMAL:Lcom/android/systemui/floattouch/SmartTouchView$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/android/systemui/floattouch/SmartTouchView$State;

    const-string v1, "CLICK"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/floattouch/SmartTouchView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/floattouch/SmartTouchView$State;->CLICK:Lcom/android/systemui/floattouch/SmartTouchView$State;

    new-instance v0, Lcom/android/systemui/floattouch/SmartTouchView$State;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/floattouch/SmartTouchView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/floattouch/SmartTouchView$State;->NORMAL:Lcom/android/systemui/floattouch/SmartTouchView$State;

    new-instance v0, Lcom/android/systemui/floattouch/SmartTouchView$State;

    const-string v1, "DRAG"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/floattouch/SmartTouchView$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/floattouch/SmartTouchView$State;->DRAG:Lcom/android/systemui/floattouch/SmartTouchView$State;

    .line 17
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/systemui/floattouch/SmartTouchView$State;

    sget-object v1, Lcom/android/systemui/floattouch/SmartTouchView$State;->CLICK:Lcom/android/systemui/floattouch/SmartTouchView$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/floattouch/SmartTouchView$State;->NORMAL:Lcom/android/systemui/floattouch/SmartTouchView$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/floattouch/SmartTouchView$State;->DRAG:Lcom/android/systemui/floattouch/SmartTouchView$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/floattouch/SmartTouchView$State;->$VALUES:[Lcom/android/systemui/floattouch/SmartTouchView$State;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/floattouch/SmartTouchView$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 17
    const-class v0, Lcom/android/systemui/floattouch/SmartTouchView$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/floattouch/SmartTouchView$State;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/floattouch/SmartTouchView$State;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/android/systemui/floattouch/SmartTouchView$State;->$VALUES:[Lcom/android/systemui/floattouch/SmartTouchView$State;

    invoke-virtual {v0}, [Lcom/android/systemui/floattouch/SmartTouchView$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/floattouch/SmartTouchView$State;

    return-object v0
.end method
