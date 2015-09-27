.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_CONNECTION_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field static final WIMAX_CONNECTION_STRENGTH:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 17
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    .line 26
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    .line 34
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    .line 41
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIMAX_CONNECTION_STRENGTH:[I

    return-void

    .line 17
    nop

    :array_0
    .array-data 4
        0x7f0b006a
        0x7f0b006b
        0x7f0b006c
        0x7f0b006d
        0x7f0b006e
        0x7f0b006f
    .end array-data

    .line 26
    :array_1
    .array-data 4
        0x7f0b0070
        0x7f0b0071
        0x7f0b0072
        0x7f0b0073
        0x7f0b0074
    .end array-data

    .line 34
    :array_2
    .array-data 4
        0x7f0b0076
        0x7f0b0077
        0x7f0b0078
        0x7f0b0079
        0x7f0b007a
    .end array-data

    .line 41
    :array_3
    .array-data 4
        0x7f0b007b
        0x7f0b007c
        0x7f0b007d
        0x7f0b007e
        0x7f0b007f
    .end array-data
.end method
