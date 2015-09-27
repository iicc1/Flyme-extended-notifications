.class public final enum Lcom/meizu/common/widget/SlidingMenu$State;
.super Ljava/lang/Enum;
.source "SlidingMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/SlidingMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/common/widget/SlidingMenu$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/common/widget/SlidingMenu$State;

.field public static final enum CLOSE:Lcom/meizu/common/widget/SlidingMenu$State;

.field public static final enum OPEN:Lcom/meizu/common/widget/SlidingMenu$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    new-instance v0, Lcom/meizu/common/widget/SlidingMenu$State;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v2}, Lcom/meizu/common/widget/SlidingMenu$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/common/widget/SlidingMenu$State;->OPEN:Lcom/meizu/common/widget/SlidingMenu$State;

    new-instance v0, Lcom/meizu/common/widget/SlidingMenu$State;

    const-string v1, "CLOSE"

    invoke-direct {v0, v1, v3}, Lcom/meizu/common/widget/SlidingMenu$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/common/widget/SlidingMenu$State;->CLOSE:Lcom/meizu/common/widget/SlidingMenu$State;

    .line 100
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/meizu/common/widget/SlidingMenu$State;

    sget-object v1, Lcom/meizu/common/widget/SlidingMenu$State;->OPEN:Lcom/meizu/common/widget/SlidingMenu$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/common/widget/SlidingMenu$State;->CLOSE:Lcom/meizu/common/widget/SlidingMenu$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/meizu/common/widget/SlidingMenu$State;->$VALUES:[Lcom/meizu/common/widget/SlidingMenu$State;

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
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/common/widget/SlidingMenu$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 100
    const-class v0, Lcom/meizu/common/widget/SlidingMenu$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/SlidingMenu$State;

    return-object v0
.end method

.method public static values()[Lcom/meizu/common/widget/SlidingMenu$State;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/meizu/common/widget/SlidingMenu$State;->$VALUES:[Lcom/meizu/common/widget/SlidingMenu$State;

    invoke-virtual {v0}, [Lcom/meizu/common/widget/SlidingMenu$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/common/widget/SlidingMenu$State;

    return-object v0
.end method
