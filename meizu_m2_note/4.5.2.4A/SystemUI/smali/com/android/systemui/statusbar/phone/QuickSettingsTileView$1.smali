.class Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$1;
.super Ljava/lang/Object;
.source "QuickSettingsTileView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->setOnPrepareListener(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$OnPrepareListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$1;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView$1;->this$0:Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;

    # invokes: Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->updatePreparedState()V
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;->access$000(Lcom/android/systemui/statusbar/phone/QuickSettingsTileView;)V

    .line 90
    return-void
.end method
