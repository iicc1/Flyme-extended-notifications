.class public Lcom/android/systemui/statusbar/phone/MeizuCustomizedIcons;
.super Ljava/lang/Object;
.source "MeizuCustomizedIcons.java"


# static fields
.field static final MZ_CUSTOMIZED_ICONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/android/systemui/statusbar/phone/MeizuCustomizedIcons$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/MeizuCustomizedIcons$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/MeizuCustomizedIcons;->MZ_CUSTOMIZED_ICONS:Ljava/util/Map;

    return-void
.end method

.method public static getMeizuCustomizedIcon(Ljava/lang/String;)I
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 194
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/MeizuCustomizedIcons;->isMeizuCustomizedIcon(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/phone/MeizuCustomizedIcons;->MZ_CUSTOMIZED_ICONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMeizuCustomizedIcon(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 190
    sget-object v0, Lcom/android/systemui/statusbar/phone/MeizuCustomizedIcons;->MZ_CUSTOMIZED_ICONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
