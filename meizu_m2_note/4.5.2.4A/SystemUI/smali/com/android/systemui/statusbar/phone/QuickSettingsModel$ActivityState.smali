.class Lcom/android/systemui/statusbar/phone/QuickSettingsModel$ActivityState;
.super Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;
.source "QuickSettingsModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ActivityState"
.end annotation


# instance fields
.field activityIn:Z

.field activityOut:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickSettingsModel$State;-><init>()V

    return-void
.end method
