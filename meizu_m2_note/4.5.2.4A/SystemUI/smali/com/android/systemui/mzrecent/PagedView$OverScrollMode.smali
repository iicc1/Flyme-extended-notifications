.class final enum Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;
.super Ljava/lang/Enum;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/mzrecent/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "OverScrollMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;

.field public static final enum OVERTUREPAGE:Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;

.field public static final enum SCROLL:Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2208
    new-instance v0, Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;

    const-string v1, "SCROLL"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;->SCROLL:Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;

    new-instance v0, Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;

    const-string v1, "OVERTUREPAGE"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;->OVERTUREPAGE:Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;

    .line 2207
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;

    sget-object v1, Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;->SCROLL:Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;->OVERTUREPAGE:Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;->$VALUES:[Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;

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
    .line 2207
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2207
    const-class v0, Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;
    .locals 1

    .prologue
    .line 2207
    sget-object v0, Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;->$VALUES:[Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;

    invoke-virtual {v0}, [Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/mzrecent/PagedView$OverScrollMode;

    return-object v0
.end method
