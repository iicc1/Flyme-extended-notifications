.class public Lcom/android/systemui/statusbar/SIMHelper;
.super Ljava/lang/Object;
.source "SIMHelper.java"


# static fields
.field private static mGeminiSimNum:I

.field private static sSimInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static simInserted:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/statusbar/SIMHelper;->mGeminiSimNum:I

    return-void
.end method

.method public static getFirstSubInSlot(I)I
    .locals 4
    .param p0, "slotId"    # I

    .prologue
    .line 102
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    .line 103
    .local v0, "subIds":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    .line 104
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 107
    :goto_0
    return v1

    .line 106
    :cond_0
    const-string v1, "SIMHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get first sub in slot: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static getNumOfSim(Landroid/content/Context;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    invoke-static {p0}, Lcom/android/systemui/statusbar/SIMHelper;->isGemini(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x2

    .line 78
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getSIMInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 143
    sget-object v0, Lcom/android/systemui/statusbar/SIMHelper;->sSimInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/statusbar/SIMHelper;->sSimInfos:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 144
    :cond_0
    invoke-static {p0}, Lcom/android/systemui/statusbar/SIMHelper;->getSortedSIMInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/SIMHelper;->sSimInfos:Ljava/util/List;

    .line 146
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/SIMHelper;->sSimInfos:Ljava/util/List;

    return-object v0
.end method

.method private static getSortedSIMInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    sget-object v1, Lcom/android/systemui/statusbar/SIMHelper;->sSimInfos:Ljava/util/List;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/SIMHelper;->sSimInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 151
    :cond_0
    const-string v1, "SIMHelper"

    const-string v2, "getSortedSIMInfoList, SubscriptionInfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const/4 v0, 0x0

    .line 168
    :goto_0
    return-object v0

    .line 155
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/SIMHelper;->sSimInfos:Ljava/util/List;

    .line 156
    .local v0, "simInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/SubscriptionInfo;>;"
    sget-object v1, Lcom/android/systemui/statusbar/SIMHelper;->sSimInfos:Ljava/util/List;

    new-instance v2, Lcom/android/systemui/statusbar/SIMHelper$1;

    invoke-direct {v2}, Lcom/android/systemui/statusbar/SIMHelper$1;-><init>()V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public static final isGemini(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v0, 0x1

    return v0
.end method

.method public static isSimInserted(Landroid/content/Context;I)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "slotId"    # I

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-static {p0}, Lcom/android/systemui/statusbar/SIMHelper;->updateSimInsertedStatus(Landroid/content/Context;)V

    .line 45
    sget-object v1, Lcom/android/systemui/statusbar/SIMHelper;->simInserted:[Z

    if-eqz v1, :cond_1

    .line 46
    sget-object v1, Lcom/android/systemui/statusbar/SIMHelper;->simInserted:[Z

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-gt p1, v1, :cond_0

    .line 47
    const-string v0, "SIMHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSimInserted("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), SimInserted="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/statusbar/SIMHelper;->simInserted:[Z

    aget-boolean v2, v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    sget-object v0, Lcom/android/systemui/statusbar/SIMHelper;->simInserted:[Z

    aget-boolean v0, v0, p1

    .line 55
    :goto_0
    return v0

    .line 50
    :cond_0
    const-string v1, "SIMHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSimInserted("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), indexOutOfBound, arraysize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/systemui/statusbar/SIMHelper;->simInserted:[Z

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 54
    :cond_1
    const-string v1, "SIMHelper"

    const-string v2, "isSimInserted, simInserted is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static updateSIMInfos(Landroid/content/Context;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/SIMHelper;->sSimInfos:Ljava/util/List;

    .line 140
    return-void
.end method

.method public static updateSimInsertedStatus(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    sget-object v2, Lcom/android/systemui/statusbar/SIMHelper;->simInserted:[Z

    if-nez v2, :cond_0

    .line 61
    sget v2, Lcom/android/systemui/statusbar/SIMHelper;->mGeminiSimNum:I

    new-array v2, v2, [Z

    sput-object v2, Lcom/android/systemui/statusbar/SIMHelper;->simInserted:[Z

    .line 63
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/android/systemui/statusbar/SIMHelper;->mGeminiSimNum:I

    if-ge v0, v2, :cond_1

    .line 64
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 65
    .local v1, "telephonyManager":Landroid/telephony/TelephonyManager;
    sget-object v2, Lcom/android/systemui/statusbar/SIMHelper;->simInserted:[Z

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v3

    aput-boolean v3, v2, v0

    .line 66
    const-string v2, "SIMHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSimInsertedStatus, simInserted("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/statusbar/SIMHelper;->simInserted:[Z

    aget-boolean v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    .end local v1    # "telephonyManager":Landroid/telephony/TelephonyManager;
    :cond_1
    return-void
.end method
